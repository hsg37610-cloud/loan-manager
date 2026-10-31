import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/core/security/app_lock_providers.dart';
import 'package:loan_manager/core/security/app_lock_service.dart';

/// Wraps the child of `MaterialApp.router`'s builder and paints the lock screen
/// on top of it. The router below keeps its state, so the user returns to the
/// same screen after unlocking.
class AppLockGate extends ConsumerStatefulWidget {
  const AppLockGate({super.key, required this.child});
  final Widget child;

  @override
  ConsumerState<AppLockGate> createState() => _AppLockGateState();
}

class _AppLockGateState extends ConsumerState<AppLockGate> with WidgetsBindingObserver {
  AppLifecycleState _lifecycle = AppLifecycleState.resumed;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final lock = ref.read(appLockProvider.notifier);
    switch (state) {
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        lock.appBackgrounded();
      case AppLifecycleState.resumed:
        lock.appResumed();
      case AppLifecycleState.inactive:
      case AppLifecycleState.detached:
        break;
    }
    setState(() => _lifecycle = state);
  }

  /// While locked, the Android back button must not navigate the hidden app.
  /// This gate sits above the Router, so it handles the system back event itself.
  @override
  Future<bool> didPopRoute() async {
    if (!ref.read(appLockProvider).locked) return false;
    await SystemNavigator.pop();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final lock = ref.watch(appLockProvider);
    // Hide content in the app switcher / recents snapshot.
    final covered = lock.enabled && !lock.locked && _lifecycle != AppLifecycleState.resumed;

    return Stack(
      fit: StackFit.expand,
      children: [
        ExcludeSemantics(
          excluding: lock.locked,
          child: ExcludeFocus(excluding: lock.locked, child: widget.child),
        ),
        if (lock.locked)
          const _LockScreen()
        else if (covered)
          const _PrivacyCover(),
      ],
    );
  }
}

class _PrivacyCover extends StatelessWidget {
  const _PrivacyCover();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ColoredBox(
      color: scheme.surface,
      child: Center(child: Icon(Icons.lock_rounded, size: 48, color: scheme.primary)),
    );
  }
}

class _LockScreen extends ConsumerStatefulWidget {
  const _LockScreen();

  @override
  ConsumerState<_LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends ConsumerState<_LockScreen> {
  static const int _maxFailures = 5;
  static const Duration _cooldown = Duration(seconds: 30);

  String _pin = '';
  bool _wrong = false;
  int _failures = 0;
  DateTime? _blockedUntil;
  Timer? _ticker;
  bool _biometricBusy = false;

  bool get _blocked => _blockedUntil != null && DateTime.now().isBefore(_blockedUntil!);

  int get _secondsLeft => _blockedUntil == null ? 0 : _blockedUntil!.difference(DateTime.now()).inSeconds + 1;

  @override
  void initState() {
    super.initState();
    // NOTE: this overlay lives outside the Navigator, so there is no Overlay
    // ancestor: don't add Tooltips / TextFields / PopupMenus in here.
    if (ref.read(appLockProvider).biometrics) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _tryBiometric());
    }
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  Future<void> _tryBiometric() async {
    if (!mounted || _biometricBusy || _blocked) return;
    _biometricBusy = true;
    try {
      await ref.read(appLockProvider.notifier).unlockWithBiometrics();
    } finally {
      _biometricBusy = false;
    }
  }

  void _press(String digit) {
    if (_blocked || _pin.length >= AppLockService.pinLength) return;
    HapticFeedback.selectionClick();
    setState(() {
      _pin += digit;
      _wrong = false;
    });
    if (_pin.length == AppLockService.pinLength) _submit();
  }

  void _backspace() {
    if (_pin.isEmpty) return;
    setState(() => _pin = _pin.substring(0, _pin.length - 1));
  }

  void _submit() {
    if (ref.read(appLockProvider.notifier).unlockWithPin(_pin)) return; // overlay disappears
    HapticFeedback.heavyImpact();
    _failures++;
    setState(() {
      _pin = '';
      _wrong = true;
      if (_failures >= _maxFailures) {
        _failures = 0;
        _blockedUntil = DateTime.now().add(_cooldown);
        _ticker?.cancel();
        _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
          if (!mounted) return;
          setState(() {
            if (!_blocked) {
              _ticker?.cancel();
              _blockedUntil = null;
              _wrong = false;
            }
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final biometrics = ref.watch(appLockProvider.select((s) => s.biometrics));

    final String message;
    if (_blocked) {
      message = 'تلاش ناموفق زیاد بود. $_secondsLeft ثانیه صبر کنید';
    } else if (_wrong) {
      message = 'رمز اشتباه است';
    } else {
      message = 'رمز ${AppLockService.pinLength} رقمی را وارد کنید';
    }

    return Scaffold(
      backgroundColor: scheme.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.lock_rounded, size: 56, color: scheme.primary),
                const SizedBox(height: 16),
                Text('برنامه قفل است', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: (_wrong || _blocked) ? scheme.error : scheme.onSurfaceVariant),
                ),
                const SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < AppLockService.pinLength; i++)
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 150),
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: i < _pin.length ? (_wrong ? scheme.error : scheme.primary) : Colors.transparent,
                          border: Border.all(color: _wrong ? scheme.error : scheme.outline, width: 2),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 32),
                // Keypad reads 1-2-3 left-to-right regardless of the RTL app direction.
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (final row in const [
                        ['1', '2', '3'],
                        ['4', '5', '6'],
                        ['7', '8', '9'],
                      ])
                        _keyRow([for (final d in row) _digitKey(d)]),
                      _keyRow([
                        biometrics ? _iconKey(Icons.fingerprint_rounded, _tryBiometric) : const SizedBox(width: 72, height: 72),
                        _digitKey('0'),
                        _iconKey(Icons.backspace_outlined, _backspace),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _keyRow(List<Widget> keys) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [for (final k in keys) Padding(padding: const EdgeInsets.symmetric(horizontal: 10), child: k)],
        ),
      );

  Widget _digitKey(String d) => SizedBox(
        width: 72,
        height: 72,
        child: FilledButton.tonal(
          onPressed: () => _press(d),
          style: FilledButton.styleFrom(shape: const CircleBorder(), padding: EdgeInsets.zero),
          child: Text(d, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
        ),
      );

  Widget _iconKey(IconData icon, VoidCallback onTap) => SizedBox(
        width: 72,
        height: 72,
        child: IconButton(iconSize: 28, onPressed: onTap, icon: Icon(icon)),
      );
}
