import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';

/// Everything that touches secrets lives here: the salted SHA-256 PIN hash and
/// the biometric flag are stored in the platform keystore (flutter_secure_storage).
///
/// The hash is kept in memory after [load] so PIN checks are synchronous.
class AppLockService {
  AppLockService({FlutterSecureStorage? storage, LocalAuthentication? localAuth})
      : _storage = storage ?? const FlutterSecureStorage(),
        _auth = localAuth ?? LocalAuthentication();

  static const int pinLength = 4;

  // salt and hash share one key so a crash between two writes can never leave
  // a mismatched pair (which would lock the user out).
  static const _kPin = 'app_lock.pin'; // "<salt>:<sha256 hex>"
  static const _kBiometrics = 'app_lock.biometrics';

  final FlutterSecureStorage _storage;
  final LocalAuthentication _auth;

  String? _salt;
  String? _hash;
  bool _biometrics = false;

  bool get hasPin => _salt != null && _hash != null;
  bool get biometricsEnabled => hasPin && _biometrics;

  /// Call once in main() before runApp so the very first frame can already be locked.
  Future<void> load() async {
    try {
      final stored = await _storage.read(key: _kPin);
      if (stored != null) {
        final i = stored.indexOf(':');
        if (i > 0) {
          _salt = stored.substring(0, i);
          _hash = stored.substring(i + 1);
        }
      }
      _biometrics = (await _storage.read(key: _kBiometrics)) == 'true';
    } catch (e) {
      // Keystore entries can become unreadable (e.g. app data restored onto another
      // device). Starting unlocked is better than a permanent lock-out.
      debugPrint('AppLockService.load failed, resetting lock: $e');
      _salt = _hash = null;
      _biometrics = false;
      try {
        await _storage.deleteAll();
      } catch (_) {}
    }
  }

  Future<void> setPin(String pin) async {
    final salt = _newSalt();
    final hash = _hashPin(pin, salt);
    await _storage.write(key: _kPin, value: '$salt:$hash');
    _salt = salt;
    _hash = hash;
  }

  bool verifyPin(String pin) {
    final salt = _salt, hash = _hash;
    if (salt == null || hash == null) return false;
    return _constantTimeEquals(_hashPin(pin, salt), hash);
  }

  Future<void> clearPin() async {
    await _storage.delete(key: _kPin);
    await _storage.delete(key: _kBiometrics);
    _salt = _hash = null;
    _biometrics = false;
  }

  Future<void> setBiometricsEnabled(bool enabled) async {
    if (enabled) {
      await _storage.write(key: _kBiometrics, value: 'true');
    } else {
      await _storage.delete(key: _kBiometrics);
    }
    _biometrics = enabled;
  }

  Future<bool> canUseBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } catch (_) {
      return false;
    }
  }

  /// Biometric only: the app's own PIN is the fallback, not the device PIN.
  Future<bool> authenticateWithBiometrics({
    String reason = 'برای باز کردن قفل برنامه هویت خود را تأیید کنید',
  }) async {
    try {
      return await _auth.authenticate(
        localizedReason: reason,
        biometricOnly: true,
        persistAcrossBackgrounding: true,
      );
    } on LocalAuthException {
      return false; // cancelled, locked out, not enrolled, ...
    } catch (_) {
      return false;
    }
  }

  static String _hashPin(String pin, String salt) =>
      sha256.convert(utf8.encode('$salt:$pin')).toString();

  static String _newSalt() {
    final rnd = Random.secure();
    return base64UrlEncode(List<int>.generate(16, (_) => rnd.nextInt(256)));
  }

  static bool _constantTimeEquals(String a, String b) {
    if (a.length != b.length) return false;
    var diff = 0;
    for (var i = 0; i < a.length; i++) {
      diff |= a.codeUnitAt(i) ^ b.codeUnitAt(i);
    }
    return diff == 0;
  }
}
