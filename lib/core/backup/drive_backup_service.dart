import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:http/http.dart' as http;
import 'package:loan_manager/core/database/app_database.dart';
import 'package:loan_manager/core/database/app_database_provider.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

final driveBackupServiceProvider = Provider<DriveBackupService>(
  (ref) => DriveBackupService(ref.read(appDatabaseProvider)),
);

class BackupException implements Exception {
  const BackupException(this.message);
  final String message;
  @override
  String toString() => message;
}

class BackupInfo {
  const BackupInfo({required this.id, required this.modified, required this.sizeBytes});
  final String id;
  final DateTime modified;
  final int sizeBytes;
}

/// Backs the raw SQLite file up to the hidden `appDataFolder` of the user's
/// Google Drive (invisible in the Drive UI, only this app can read it).
///
/// Written against google_sign_in >= 7 (singleton + separate authorization step).
class DriveBackupService {
  DriveBackupService(this._db);

  final AppDatabase _db;

  static const _remoteName = 'loan_manager.sqlite';
  static const _scopes = <String>[drive.DriveApi.driveAppdataScope];

  /// Web OAuth client id, needed by Google Sign-In on Android:
  /// `flutter run --dart-define=GOOGLE_SERVER_CLIENT_ID=xxxx.apps.googleusercontent.com`
  static const _serverClientId = String.fromEnvironment('GOOGLE_SERVER_CLIENT_ID');

  static Future<void>? _initialized;

  /// E-mail of the account used by the last operation (for display only).
  String? accountEmail;

  // Must match _openConnection() in app_database.dart.
  Future<File> _databaseFile() async =>
      File(p.join((await getApplicationDocumentsDirectory()).path, 'loan_manager.sqlite'));

  Future<void> signOut() async {
    await GoogleSignIn.instance.signOut();
    accountEmail = null;
  }

  // ---- public API ---------------------------------------------------------

  /// Uploads a consistent snapshot of the database. Returns the Drive modified time.
  Future<DateTime> backup() async {
    final snapshot = await _snapshot();
    try {
      return await _withDrive((api) async {
        final existing = await _find(api);
        final media = drive.Media(snapshot.openRead(), await snapshot.length());
        final drive.File result;
        if (existing == null) {
          result = await api.files.create(
            drive.File(name: _remoteName, parents: ['appDataFolder']),
            uploadMedia: media,
            $fields: 'id,modifiedTime',
          );
        } else {
          result = await api.files.update(drive.File(), existing.id, uploadMedia: media, $fields: 'id,modifiedTime');
        }
        return result.modifiedTime ?? DateTime.now().toUtc();
      });
    } finally {
      if (await snapshot.exists()) await snapshot.delete();
    }
  }

  Future<BackupInfo?> latestBackup() => _withDrive(_find);

  /// Downloads [info], validates it, then closes the Drift database and swaps the
  /// file. The previous database is kept as `loan_manager.sqlite.pre_restore`.
  /// After this returns the app MUST be restarted: the database is closed.
  Future<void> restore(BackupInfo info) async {
    final dbFile = await _databaseFile();
    final incoming = File('${dbFile.path}.restore');
    if (await incoming.exists()) await incoming.delete();

    // 1) Download + validate while the live database is still untouched.
    try {
      await _withDrive((api) async {
        final media = await api.files.get(info.id, downloadOptions: drive.DownloadOptions.fullMedia) as drive.Media;
        await media.stream.pipe(incoming.openWrite());
      });
      await _validate(incoming);
    } catch (_) {
      if (await incoming.exists()) await incoming.delete();
      rethrow;
    }

    // 2) Close Drift, then swap files.
    await _db.close();
    for (final suffix in const ['-wal', '-shm', '-journal']) {
      final stale = File('${dbFile.path}$suffix');
      if (await stale.exists()) await stale.delete();
    }
    final previous = File('${dbFile.path}.pre_restore');
    if (await previous.exists()) await previous.delete();
    if (await dbFile.exists()) await dbFile.rename(previous.path);
    try {
      await incoming.rename(dbFile.path);
    } catch (_) {
      if (await previous.exists()) await previous.rename(dbFile.path); // roll back
      rethrow;
    }
  }

  // ---- internals ----------------------------------------------------------

  /// VACUUM INTO writes a transactionally consistent copy (safe with WAL and
  /// concurrent writes); falls back to a plain file copy if unavailable.
  Future<File> _snapshot() async {
    final tmp = File(p.join((await getTemporaryDirectory()).path, 'loan_manager_snapshot.sqlite'));
    if (await tmp.exists()) await tmp.delete();
    try {
      await _db.customStatement('VACUUM INTO ?', [tmp.path]);
    } catch (e) {
      debugPrint('VACUUM INTO failed, copying file instead: $e');
      await (await _databaseFile()).copy(tmp.path);
    }
    return tmp;
  }

  Future<void> _validate(File file) async {
    final raf = await file.open();
    try {
      final head = await raf.read(100);
      final magicOk = head.length >= 100 &&
          ascii.decode(head.sublist(0, 15), allowInvalid: true) == 'SQLite format 3' &&
          head[15] == 0;
      if (!magicOk) throw const BackupException('فایل پشتیبان معتبر نیست.');
      // Drift keeps schemaVersion in PRAGMA user_version (header offset 60, big-endian).
      final userVersion = ByteData.sublistView(head, 60, 64).getUint32(0, Endian.big);
      if (userVersion > _db.schemaVersion) {
        throw const BackupException('این نسخه پشتیبان با نسخه جدیدتری از برنامه ساخته شده است. ابتدا برنامه را به‌روزرسانی کنید.');
      }
    } finally {
      await raf.close();
    }
  }

  Future<BackupInfo?> _find(drive.DriveApi api) async {
    final list = await api.files.list(
      spaces: 'appDataFolder',
      q: "name = '$_remoteName' and trashed = false",
      orderBy: 'modifiedTime desc',
      pageSize: 1,
      $fields: 'files(id,modifiedTime,size)',
    );
    final file = list.files?.firstOrNull;
    if (file == null || file.id == null) return null;
    return BackupInfo(
      id: file.id!,
      modified: file.modifiedTime ?? DateTime.now().toUtc(),
      sizeBytes: int.tryParse(file.size ?? '') ?? 0,
    );
  }

  Future<T> _withDrive<T>(Future<T> Function(drive.DriveApi api) action) async {
    final signIn = GoogleSignIn.instance;
    try {
      _initialized ??= signIn.initialize(serverClientId: _serverClientId.isEmpty ? null : _serverClientId);
      await _initialized;
    } catch (_) {
      _initialized = null; // allow a retry after a configuration error
      rethrow;
    }

    final silent = signIn.attemptLightweightAuthentication();
    GoogleSignInAccount? account = silent == null ? null : await silent;
    account ??= await signIn.authenticate(scopeHint: _scopes);
    accountEmail = account.email;

    final authClient = account.authorizationClient;
    final authorization = await authClient.authorizationForScopes(_scopes) ?? await authClient.authorizeScopes(_scopes);

    final client = _BearerClient(authorization.accessToken);
    try {
      return await action(drive.DriveApi(client));
    } finally {
      client.close();
    }
  }
}

class _BearerClient extends http.BaseClient {
  _BearerClient(this._token);
  final String _token;
  final http.Client _inner = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = 'Bearer $_token';
    return _inner.send(request);
  }

  @override
  void close() => _inner.close();
}
