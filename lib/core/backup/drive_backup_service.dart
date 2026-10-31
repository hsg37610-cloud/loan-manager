import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class BackupException implements Exception {
  final String message;
  BackupException(this.message);
  @override
  String toString() => message;
}

final driveBackupServiceProvider = Provider<DriveBackupService>((ref) => DriveBackupService());

class DriveBackupService {
  static const _backupFileName = 'loan_manager_backup.db';
  String? _accountEmail;
  String? get accountEmail => _accountEmail;

  Future<drive.DriveApi?> _getDriveApi() async {
    try {
      await GoogleSignIn.instance.initialize();
      final account = await GoogleSignIn.instance.authenticate(scopeHint: [drive.DriveApi.driveAppdataScope]);
      _accountEmail = account.email;
      final authorization = await account.authorizationClient.authorizeScopes([drive.DriveApi.driveAppdataScope]);
      
      final credentials = AccessCredentials(
        AccessToken('Bearer', authorization.accessToken, DateTime.now().add(const Duration(hours: 1))),
        null,
        [drive.DriveApi.driveAppdataScope],
      );
      return drive.DriveApi(authenticatedClient(http.Client(), credentials));
    } catch (e) {
      return null;
    }
  }

  Future<void> backup() async {
    final api = await _getDriveApi();
    if (api == null) throw BackupException('ورود به حساب گوگل انجام نشد');
    final dir = await getApplicationDocumentsDirectory();
    final dbFile = File('${dir.path}/loan_manager.sqlite');
    if (!await dbFile.exists()) throw BackupException('فایل دیتابیس یافت نشد');
    
    final result = await api.files.list(spaces: 'appDataFolder', q: "name = '$_backupFileName'", $fields: 'files(id)');
    final media = drive.Media(dbFile.openRead(), await dbFile.length());
    
    if (result.files != null && result.files!.isNotEmpty) {
      await api.files.update(drive.File(), result.files!.first.id!, uploadMedia: media);
    } else {
      final driveFile = drive.File()..name = _backupFileName..parents = ['appDataFolder'];
      await api.files.create(driveFile, uploadMedia: media);
    }
  }

  Future<void> restore() async {
    final api = await _getDriveApi();
    if (api == null) throw BackupException('ورود به حساب گوگل انجام نشد');
    final result = await api.files.list(spaces: 'appDataFolder', q: "name = '$_backupFileName'", $fields: 'files(id)');
    if (result.files == null || result.files!.isEmpty) throw BackupException('هیچ نسخه پشتیبانی یافت نشد');
    
    final media = await api.files.get(result.files!.first.id!, downloadOptions: drive.DownloadOptions.fullMedia) as drive.Media;
    final dir = await getApplicationDocumentsDirectory();
    final sink = File('${dir.path}/loan_manager.sqlite').openWrite();
    await media.stream.pipe(sink);
    await sink.close();
  }

  Future<void> signOut() async {
    await GoogleSignIn.instance.signOut();
    _accountEmail = null;
  }
}
