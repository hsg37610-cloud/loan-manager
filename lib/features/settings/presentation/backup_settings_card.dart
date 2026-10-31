import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:loan_manager/core/backup/drive_backup_service.dart';
import 'package:loan_manager/core/utils/jalali_utils.dart';

class BackupSettingsCard extends ConsumerStatefulWidget {
  const BackupSettingsCard({super.key});

  @override
  ConsumerState<BackupSettingsCard> createState() => _BackupSettingsCardState();
}

class _BackupSettingsCardState extends ConsumerState<BackupSettingsCard> {
  bool _busy = false;
  String? _email;

  String _format(DateTime utc) {
    final local = utc.toLocal();
    final hh = local.hour.toString().padLeft(2, '0');
    final mm = local.minute.toString().padLeft(2, '0');
    return '${JalaliUtils.formatFromDateTime(local)}  $hh:$mm';
  }

  void _toast(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  String _describe(Object e) {
    if (e is GoogleSignInException) {
      return e.code == GoogleSignInExceptionCode.canceled
          ? 'ورود به حساب Google لغو شد.'
          : 'ورود به Google ناموفق بود (${e.code.name}).';
    }
    if (e is BackupException) return e.message;
    if (e is SocketException) return 'اتصال اینترنت برقرار نیست.';
    if (e is drive.DetailedApiRequestError) return 'خطای Google Drive (${e.status}): ${e.message ?? ''}';
    return 'خطا: $e';
  }

  Future<void> _run(Future<void> Function() job) async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      await job();
    } catch (e) {
      _toast(_describe(e));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _backup() => _run(() async {
        final service = ref.read(driveBackupServiceProvider);
        final when = await service.backup();
        if (mounted) setState(() => _email = service.accountEmail);
        _toast('پشتیبان‌گیری انجام شد (${_format(when)})');
      });

  Future<void> _restore() => _run(() async {
        final service = ref.read(driveBackupServiceProvider);
        final info = await service.latestBackup();
        if (mounted) setState(() => _email = service.accountEmail);
        if (!mounted) return;
        if (info == null) {
          _toast('نسخهٔ پشتیبانی در حساب Google شما پیدا نشد.');
          return;
        }

        final confirmed = await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('بازیابی اطلاعات'),
            content: Text(
              'آخرین نسخهٔ پشتیبان: ${_format(info.modified)}\n\n'
              'با بازیابی، تمام وام‌ها و پرداخت‌های فعلی این دستگاه با این نسخه جایگزین می‌شوند. ادامه می‌دهید؟',
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('انصراف')),
              FilledButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('بازیابی')),
            ],
          ),
        );
        if (confirmed != true || !mounted) return;

        await service.restore(info);
        if (!mounted) return;
        await showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => PopScope(
            canPop: false,
            child: AlertDialog(
              title: const Text('بازیابی انجام شد'),
              content: const Text('برای اعمال تغییرات، برنامه را کاملاً ببندید و دوباره باز کنید.'),
              actions: [FilledButton(onPressed: SystemNavigator.pop, child: const Text('بستن برنامه'))],
            ),
          ),
        );
      });

  Future<void> _switchAccount() => _run(() async {
        await ref.read(driveBackupServiceProvider).signOut();
        if (mounted) setState(() => _email = null);
        _toast('از حساب Google خارج شدید. در عملیات بعدی حساب را انتخاب کنید.');
      });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(Icons.cloud_sync_outlined, color: scheme.primary),
              const SizedBox(width: 12),
              const Expanded(child: Text('پشتیبان‌گیری در Google Drive')),
            ]),
            const SizedBox(height: 8),
            Text(
              'نسخه در پوشهٔ مخفی برنامه در Drive ذخیره می‌شود و در فهرست فایل‌های شما دیده نمی‌شود.',
              style: TextStyle(fontSize: 12, color: scheme.onSurfaceVariant),
            ),
            const SizedBox(height: 16),
            if (_busy) ...[const LinearProgressIndicator(), const SizedBox(height: 16)],
            Row(children: [
              Expanded(
                child: FilledButton.icon(
                  onPressed: _busy ? null : _backup,
                  icon: const Icon(Icons.cloud_upload_outlined),
                  label: const Text('پشتیبان‌گیری'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _busy ? null : _restore,
                  icon: const Icon(Icons.cloud_download_outlined),
                  label: const Text('بازیابی'),
                ),
              ),
            ]),
            if (_email != null) ...[
              const SizedBox(height: 12),
              Row(children: [
                Expanded(
                  child: Text('حساب: $_email', textDirection: TextDirection.ltr, textAlign: TextAlign.right, style: const TextStyle(fontSize: 12)),
                ),
                TextButton(onPressed: _busy ? null : _switchAccount, child: const Text('تغییر حساب')),
              ]),
            ],
          ],
        ),
      ),
    );
  }
}
