import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        const SizedBox(height: 24),
        Icon(Icons.account_balance_wallet_rounded, size: 80, color: theme.colorScheme.primary),
        const SizedBox(height: 16),
        Text('مدیریت وام', textAlign: TextAlign.center, style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Text('نسخه ۲.۰.۰', textAlign: TextAlign.center, style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.outline)),
        const SizedBox(height: 32),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              _row(context, Icons.person_outline, 'توسعه‌دهنده', 'hossein.seifollahzade'),
              const Divider(),
              _row(context, Icons.copyright_rounded, 'کپی‌رایت', '© 1404 Hossein Seifollahzade'),
              const Divider(),
              _row(context, Icons.code_rounded, 'ساخته شده با', 'Flutter + Drift + Riverpod'),
              const Divider(),
              _row(context, Icons.calendar_month_outlined, 'تقویم', 'جلالی (شمسی)'),
            ]),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'این برنامه یک ابزار جامع برای مدیریت وام‌ها، اقساط و پرداخت‌های شخصی است. '
          'تمام اطلاعات به صورت محلی روی گوشی شما ذخیره می‌شود و با پشتیبان‌گیری ابری می‌توانید از اطلاعات خود محافظت کنید.',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
        ),
        const SizedBox(height: 32),
        Text('All Rights Reserved © 1404', textAlign: TextAlign.center, style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.outline)),
      ],
    );
  }

  Widget _row(BuildContext context, IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(children: [
        Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 12),
        Expanded(child: Text(label, style: const TextStyle(fontWeight: FontWeight.w500))),
        Text(value, style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant), textDirection: TextDirection.ltr),
      ]),
    );
  }
}
