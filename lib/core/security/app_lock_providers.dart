import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/core/security/app_lock_service.dart';

/// Overridden in main() with an already-loaded instance.
final appLockServiceProvider = Provider<AppLockService>(
  (ref) => throw UnimplementedError('appLockServiceProvider must be overridden in main().'),
);

final biometricAvailableProvider = FutureProvider.autoDispose<bool>(
  (ref) => ref.read(appLockServiceProvider).canUseBiometrics(),
);

@immutable
class AppLockState {
  const AppLockState({required this.enabled, required this.biometrics, required this.locked});

  final bool enabled;
  final bool biometrics;
  final bool locked;

  AppLockState copyWith({bool? enabled, bool? biometrics, bool? locked}) => AppLockState(
        enabled: enabled ?? this.enabled,
        biometrics: biometrics ?? this.biometrics,
        locked: locked ?? this.locked,
      );
}

class AppLockNotifier extends Notifier<AppLockState> {
  static const Duration gracePeriod = Duration(seconds: 10);

  DateTime? _backgroundedAt;

  AppLockService get _service => ref.read(appLockServiceProvider);

  @override
  AppLockState build() {
    final s = ref.read(appLockServiceProvider);
    // Cold start with a PIN set => locked from the first frame.
    return AppLockState(enabled: s.hasPin, biometrics: s.biometricsEnabled, locked: s.hasPin);
  }

  // ---- settings -----------------------------------------------------------

  Future<void> enable(String pin) async {
    await _service.setPin(pin);
    state = state.copyWith(enabled: true, locked: false);
  }

  bool verifyPin(String pin) => _service.verifyPin(pin);

  Future<bool> changePin({required String current, required String next}) async {
    if (!_service.verifyPin(current)) return false;
    await _service.setPin(next);
    return true;
  }

  Future<bool> disable(String pin) async {
    if (!_service.verifyPin(pin)) return false;
    await _service.clearPin();
    state = const AppLockState(enabled: false, biometrics: false, locked: false);
    return true;
  }

  /// Turning it on requires one successful scan so we know it actually works.
  Future<bool> setBiometrics(bool on) async {
    if (!state.enabled) return false;
    if (on && !await _service.authenticateWithBiometrics()) return false;
    await _service.setBiometricsEnabled(on);
    state = state.copyWith(biometrics: on);
    return true;
  }

  // ---- lock screen --------------------------------------------------------

  bool unlockWithPin(String pin) {
    if (!_service.verifyPin(pin)) return false;
    _unlock();
    return true;
  }

  Future<bool> unlockWithBiometrics() async {
    if (!state.biometrics || !state.locked) return false;
    final ok = await _service.authenticateWithBiometrics();
    if (ok) _unlock();
    return ok;
  }

  void _unlock() {
    _backgroundedAt = null;
    state = state.copyWith(locked: false);
  }

  void lockNow() {
    if (state.enabled) state = state.copyWith(locked: true);
  }

  // ---- lifecycle ----------------------------------------------------------

  /// A wall-clock timestamp (not a Timer) is used on purpose: timers don't fire
  /// while the process is suspended, so a Timer could leave the app unlocked.
  void appBackgrounded() {
    if (!state.enabled || state.locked) return;
    _backgroundedAt ??= DateTime.now();
  }

  void appResumed() {
    final since = _backgroundedAt;
    _backgroundedAt = null;
    if (since == null || !state.enabled || state.locked) return;
    final away = DateTime.now().difference(since);
    // A negative duration means the clock was moved back: treat as expired.
    if (away >= gracePeriod || away.isNegative) {
      state = state.copyWith(locked: true);
    }
  }
}

final appLockProvider = NotifierProvider<AppLockNotifier, AppLockState>(AppLockNotifier.new);
