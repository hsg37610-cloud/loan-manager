import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/core/backup/drive_backup_service.dart';

class BackupSettingsCard extends ConsumerStatefulWidget {
  const BackupSettingsCard({super.key});
  @override
  ConsumerState<BackupSettingsCard> createState() => _BackupSettingsCardState();
}

class _BackupSettingsCardState extends ConsumerState<BackupSettingsCard> {
  bool _busy = false;

  Future<void> _backup() async {
    setState(() => _busy = true);
    try {
      await ref.read(driveBackupServiceProvider).backup();
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('پشتیبان‌گیری با موفقیت انجام شد')));
    } catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('خطا: $e')));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _restore() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('هشدار'),
        content: const Text('اطلاعات فعلی جایگزین می‌شوند. ادامه می‌دهید؟'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('انصراف')),
          FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('بازیابی')),
        ],
      ),
    );
    if (confirmed != true) return;
    setState(() => _busy = true);
    try {
      await ref.read(driveBackupServiceProvider).restore();
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('بازیابی انجام شد. برنامه را ببندید و باز کنید.')));
    } catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('خطا: $e')));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('پشتیبان‌گیری ابری', style: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold)),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: theme.colorScheme.outlineVariant)),
          child: Column(children: [
            ListTile(
              leading: const Icon(Icons.cloud_upload_outlined),
              title: const Text('پشتیبان‌گیری در Google Drive'),
              subtitle: const Text('ارسال فایل دیتابیس به گوگل درایو'),
              onTap: _busy ? null : _backup,
              trailing: _busy ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)) : null,
            ),
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.cloud_download_outlined),
              title: const Text('بازیابی از Google Drive'),
              subtitle: const Text('جایگزینی دیتابیس فعلی'),
              onTap: _busy ? null : _restore,
            ),
          ]),
        ),
      ],
    );
  }
}
