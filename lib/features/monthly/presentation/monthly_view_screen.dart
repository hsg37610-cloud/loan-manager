import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/core/utils/jalali_utils.dart';
import 'package:loan_manager/features/ledger/domain/models.dart';
import 'package:loan_manager/features/ledger/presentation/ledger_providers.dart';

class MonthlyViewScreen extends ConsumerWidget {
  const MonthlyViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final installmentsAsync = ref.watch(allInstallmentsProvider);
    return installmentsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('خطا: $e')),
      data: (installments) {
        if (installments.isEmpty) return const Center(child: Text('هنوز هیچ قسطی ثبت نشده'));
        final grouped = <String, List<Installment>>{};
        for (final i in installments) {
          grouped.putIfAbsent(i.jalaliMonth, () => []).add(i);
        }
        final months = grouped.keys.toList()..sort();
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: months.length,
          itemBuilder: (context, idx) {
            final month = months[idx];
            final items = grouped[month]!;
            final total = items.fold<int>(0, (s, i) => s + i.amount);
            final paid = items.fold<int>(0, (s, i) => s + i.paidAmount);
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ExpansionTile(
                title: Text(_formatMonth(month), style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('${items.length} قسط • جمع: $total تومان • پرداخت: $paid تومان'),
                children: items.map((i) => ListTile(
                  dense: true,
                  leading: CircleAvatar(child: Text('${i.sequenceNumber}')),
                  title: Text('سررسید: ${JalaliUtils.formatJalali(i.dueDate)}'),
                  subtitle: Text('مبلغ: ${i.amount} تومان'),
                  trailing: i.isFullyPaid
                    ? const Icon(Icons.check_circle, color: Colors.green)
                    : const Icon(Icons.pending, color: Colors.orange),
                )).toList(),
              ),
            );
          },
        );
      },
    );
  }

  String _formatMonth(String yyyymm) {
    try {
      final parts = yyyymm.split('-');
      if (parts.length != 2) return yyyymm;
      final month = int.parse(parts[1]);
      const names = ['', 'فروردین', 'اردیبهشت', 'خرداد', 'تیر', 'مرداد', 'شهریور', 'مهر', 'آبان', 'آذر', 'دی', 'بهمن', 'اسفند'];
      return '${names[month]} ${parts[0]}';
    } catch (_) { return yyyymm; }
  }
}
