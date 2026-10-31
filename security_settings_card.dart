import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/core/security/app_lock_providers.dart';
import 'package:loan_manager/core/security/app_lock_service.dart';

/// Settings card: enable/disable lock, change PIN, toggle biometrics.
class SecuritySettingsCard extends ConsumerWidget {
  const SecuritySettingsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lock = ref.watch(appLockProvider);
    final biometricAvailable = ref.watch(biometricAvailableProvider).value ?? false;

    return Card(
      child: Column(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.lock_outline_rounded),
            title: const Text('قفل برنامه'),
            subtitle: const Text('ورود با رمز ۴ رقمی'),
            value: lock.enabled,
            onChanged: (on) => on ? _enable(context, ref) : _disable(context, ref),
          ),
          if (lock.enabled) ...[
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.password_rounded),
              title: const Text('تغییر رمز'),
              trailing: const Icon(Icons.chevron_left),
              onTap: () => _change(context, ref),
            ),
            const Divider(height: 1),
            SwitchListTile(
              secondary: const Icon(Icons.fingerprint_rounded),
              title: const Text('ورود با بیومتریک'),
              subtitle: Text(biometricAvailable ? 'اثر انگشت یا تشخیص چهره' : 'در این دستگاه بیومتریک ثبت نشده است'),
              value: lock.biometrics,
              onChanged: biometricAvailable ? (on) => _toggleBiometrics(context, ref, on) : null,
            ),
          ],
        ],
      ),
    );
  }

  void _toast(BuildContext context, String text) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));

  /// Asks for a new PIN twice. Returns null when cancelled or mismatched.
  Future<String?> _askNewPin(BuildContext context) async {
    final first = await showPinDialog(context, title: 'رمز جدید', message: 'یک رمز ${AppLockService.pinLength} رقمی انتخاب کنید');
    if (first == null || !context.mounted) return null;
    final second = await showPinDialog(context, title: 'تکرار رمز', message: 'رمز را دوباره وارد کنید');
    if (second == null || !context.mounted) return null;
    if (first != second) {
      _toast(context, 'رمزها یکسان نیستند');
      return null;
    }
    return first;
  }

  Future<void> _enable(BuildContext context, WidgetRef ref) async {
    final pin = await _askNewPin(context);
    if (pin == null) return;
    await ref.read(appLockProvider.notifier).enable(pin);
    if (context.mounted) _toast(context, 'قفل برنامه فعال شد');
  }

  Future<void> _disable(BuildContext context, WidgetRef ref) async {
    final pin = await showPinDialog(context, title: 'غیرفعال کردن قفل', message: 'رمز فعلی را وارد کنید');
    if (pin == null) return;
    final ok = await ref.read(appLockProvider.notifier).disable(pin);
    if (!context.mounted) return;
    _toast(context, ok ? 'قفل برنامه غیرفعال شد' : 'رمز اشتباه است');
  }

  Future<void> _change(BuildContext context, WidgetRef ref) async {
    final notifier = ref.read(appLockProvider.notifier);
    final current = await showPinDialog(context, title: 'رمز فعلی', message: 'رمز فعلی را وارد کنید');
    if (current == null || !context.mounted) return;
    if (!notifier.verifyPin(current)) {
      _toast(context, 'رمز اشتباه است');
      return;
    }
    final next = await _askNewPin(context);
    if (next == null) return;
    final ok = await notifier.changePin(current: current, next: next);
    if (context.mounted) _toast(context, ok ? 'رمز تغییر کرد' : 'تغییر رمز انجام نشد');
  }

  Future<void> _toggleBiometrics(BuildContext context, WidgetRef ref, bool on) async {
    final ok = await ref.read(appLockProvider.notifier).setBiometrics(on);
    if (!context.mounted) return;
    if (!ok && on) _toast(context, 'تأیید بیومتریک انجام نشد');
  }
}

/// 4-digit PIN prompt. Returns the PIN as soon as the last digit is typed.
Future<String?> showPinDialog(BuildContext context, {required String title, String? message}) {
  return showDialog<String>(
    context: context,
    builder: (_) => _PinDialog(title: title, message: message),
  );
}

class _PinDialog extends StatefulWidget {
  const _PinDialog({required this.title, this.message});
  final String title;
  final String? message;

  @override
  State<_PinDialog> createState() => _PinDialogState();
}

class _PinDialogState extends State<_PinDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.message != null) ...[
            Text(widget.message!),
            const SizedBox(height: 16),
          ],
          TextField(
            controller: _controller,
            autofocus: true,
            obscureText: true,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            maxLength: AppLockService.pinLength,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            style: const TextStyle(fontSize: 24, letterSpacing: 12),
            decoration: const InputDecoration(counterText: ''),
            onChanged: (v) {
              if (v.length == AppLockService.pinLength) Navigator.of(context).pop(v);
            },
          ),
        ],
      ),
      actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('انصراف'))],
    );
  }
}
