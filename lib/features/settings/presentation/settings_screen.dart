import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/core/providers/settings_providers.dart';
import 'package:loan_manager/features/settings/presentation/backup_settings_card.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeNotifierProvider);
    final fontScale = ref.watch(fontScaleNotifierProvider);
    final theme = Theme.of(context);
    return ListView(padding: const EdgeInsets.all(16), children: [
      Text('ظاهر برنامه', style: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold)),
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: theme.colorScheme.outlineVariant)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: RadioGroup<ThemeMode>(
            groupValue: themeMode,
            onChanged: (v) { if (v != null) ref.read(themeModeNotifierProvider.notifier).setMode(v); },
            child: const Column(children: [
              RadioListTile<ThemeMode>(title: Text('روشن'), value: ThemeMode.light),
              RadioListTile<ThemeMode>(title: Text('تیره'), value: ThemeMode.dark),
              RadioListTile<ThemeMode>(title: Text('سیستم'), value: ThemeMode.system),
            ]),
          ),
        ),
      ),
      const SizedBox(height: 24),
      Text('اندازه متن', style: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold)),
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: theme.colorScheme.outlineVariant)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text('مقیاس فونت'),
              Text('${(fontScale * 100).round()}٪', style: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold)),
            ]),
            Slider(value: fontScale, min: 0.8, max: 1.4, divisions: 6, label: '${(fontScale * 100).round()}٪', onChanged: (v) => ref.read(fontScaleNotifierProvider.notifier).setScale(v)),
          ]),
        ),
      ),
      const SizedBox(height: 24),
      const BackupSettingsCard(),
      const SizedBox(height: 24),
      Text('درباره', style: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold)),
      Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: theme.colorScheme.outlineVariant)),
        child: ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text('درباره برنامه'),
          trailing: const Icon(Icons.chevron_left),
          onTap: () => showAboutDialog(context: context, applicationName: 'مدیریت وام', applicationVersion: '2.0.0', applicationIcon: const Icon(Icons.account_balance_wallet, size: 48)),
        ),
      ),
    ]);
  }
}
