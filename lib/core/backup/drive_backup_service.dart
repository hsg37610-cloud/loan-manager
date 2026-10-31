import 'dart:io';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:path_provider/path_provider.dart';

class DriveBackupService {
  static const _backupFileName = 'loan_manager_backup.db';

  Future<void> _ensureInitialized() async {
    await GoogleSignIn.instance.initialize();
  }

  Future<drive.DriveApi?> _getDriveApi() async {
    await _ensureInitialized();
    try {
      final account = await GoogleSignIn.instance.authenticate(
        scopeHint: [drive.DriveApi.driveAppdataScope],
      );
      if (account == null) return null;
      
      final authorization = await account.authorizationClient.authorizeScopes(
        [drive.DriveApi.driveAppdataScope],
      );
      if (authorization == null) return null;
      
      final client = authorization.authClient;
      return drive.DriveApi(client);
    } catch (e) {
      print("Google Sign-In Error: $e");
      return null;
    }
  }

  Future<void> backup() async {
    final api = await _getDriveApi();
    if (api == null) throw Exception('ورود به حساب گوگل انجام نشد');

    final dir = await getApplicationDocumentsDirectory();
    final dbFile = File('${dir.path}/loan_manager.sqlite');
    if (!await dbFile.exists()) throw Exception('فایل دیتابیس یافت نشد');

    final result = await api.files.list(
      spaces: 'appDataFolder',
      q: "name = '$_backupFileName'",
      $fields: 'files(id)',
    );

    final media = drive.Media(dbFile.openRead(), await dbFile.length());

    if (result.files != null && result.files!.isNotEmpty) {
      await api.files.update(drive.File(), result.files!.first.id!, uploadMedia: media);
    } else {
      final driveFile = drive.File()
        ..name = _backupFileName
        ..parents = ['appDataFolder'];
      await api.files.create(driveFile, uploadMedia: media);
    }
  }

  Future<void> restore() async {
    final api = await _getDriveApi();
    if (api == null) throw Exception('ورود به حساب گوگل انجام نشد');

    final result = await api.files.list(
      spaces: 'appDataFolder',
      q: "name = '$_backupFileName'",
      $fields: 'files(id)',
    );

    if (result.files == null || result.files!.isEmpty) {
      throw Exception('هیچ نسخه پشتیبانی در گوگل درایو یافت نشد');
    }

    final fileId = result.files!.first.id!;
    final media = await api.files.get(
      fileId,
      downloadOptions: drive.DownloadOptions.fullMedia,
    ) as drive.Media;

    final dir = await getApplicationDocumentsDirectory();
    final sink = File('${dir.path}/loan_manager.sqlite').openWrite();
    await media.stream.pipe(sink);
    await sink.close();
  }
}