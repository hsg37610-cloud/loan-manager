import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loan_manager/features/ledger/presentation/ledger_providers.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final loansAsync = ref.watch(activeLoansProvider);
    final loans = loansAsync.valueOrNull ?? [];
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Column(children: [
            Icon(Icons.savings_rounded, size: 64, color: theme.colorScheme.primary),
            const SizedBox(height: 12),
            Text('خوش آمدید 👋', style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
            Text('مدیریت هوشمند وام‌های شما', style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.outline)),
          ])),
          const SizedBox(height: 32),
          Row(children: [
            Expanded(child: _SummaryCard(title: 'تعداد وام‌ها', value: '${loans.length}', icon: Icons.list_alt, color: Colors.blue)),
            const SizedBox(width: 12),
            Expanded(child: _SummaryCard(title: 'وضعیت', value: 'فعال', icon: Icons.check_circle, color: Colors.green)),
          ]),
          const SizedBox(height: 32),
          Text('دسترسی سریع', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          _FeatureCard(title: 'محاسبه‌گر', subtitle: 'محاسبه اقساط وام جدید', icon: Icons.calculate_rounded, color: Colors.teal, onTap: () => context.go('/calculator')),
          const SizedBox(height: 12),
          _FeatureCard(title: 'نمای ماهانه', subtitle: 'اقساط ماه جاری و تقویم پرداخت', icon: Icons.calendar_month_rounded, color: Colors.indigo, onTap: () => context.go('/installments')),
          const SizedBox(height: 12),
          _FeatureCard(title: 'وام‌های من', subtitle: 'لیست کامل وام‌ها و جزئیات', icon: Icons.account_balance_wallet_rounded, color: Colors.orange, onTap: () => context.go('/loans')),
        ],
      ),
    );
  }
}
class _SummaryCard extends StatelessWidget {
  final String title; final String value; final IconData icon; final Color color;
  const _SummaryCard({required this.title, required this.value, required this.icon, required this.color});
  @override
  Widget build(BuildContext context) {
    return Card(elevation: 0, color: color.withOpacity(0.1), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: color.withOpacity(0.3))),
      child: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icon, color: color), const SizedBox(height: 12), Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: color)), Text(title, style: TextStyle(fontSize: 12, color: color)),
      ])),
    );
  }
}
class _FeatureCard extends StatelessWidget {
  final String title; final String subtitle; final IconData icon; final Color color; final VoidCallback onTap;
  const _FeatureCard({required this.title, required this.subtitle, required this.icon, required this.color, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Card(elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: Colors.grey.withOpacity(0.2))),
      child: InkWell(onTap: onTap, borderRadius: BorderRadius.circular(16), child: Padding(padding: const EdgeInsets.all(16), child: Row(children: [
        Container(padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(12)), child: Icon(icon, color: color)),
        const SizedBox(width: 16), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
        ])), const Icon(Icons.arrow_back_ios_new, size: 16, color: Colors.grey),
      ]))),
    );
  }
}
