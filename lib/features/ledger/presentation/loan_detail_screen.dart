import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:loan_manager/core/utils/input_utils.dart';
import 'package:loan_manager/core/utils/jalali_utils.dart';
import 'package:loan_manager/features/ledger/domain/models.dart';
import 'package:loan_manager/features/ledger/presentation/ledger_providers.dart';

final NumberFormat _money = NumberFormat.decimalPattern('en');

enum _InstallmentStatus { paid, partial, unpaid, overdue }

_InstallmentStatus _statusOf(Installment installment, String today) {
  if (installment.isFullyPaid) return _InstallmentStatus.paid;
  if (installment.dueDate.compareTo(today) < 0) return _InstallmentStatus.overdue;
  if (installment.paidAmount > 0) return _InstallmentStatus.partial;
  return _InstallmentStatus.unpaid;
}

class LoanDetailScreen extends ConsumerWidget {
  const LoanDetailScreen({super.key, required this.loanId});
  final String loanId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loanAsync = ref.watch(loanByIdProvider(loanId));
    final installmentsAsync = ref.watch(loanInstallmentsProvider(loanId));
    final loan = loanAsync.value;

    return Scaffold(
      appBar: AppBar(title: Text(loan?.name ?? 'جزئیات وام')),
      floatingActionButton: loan == null ? null : FloatingActionButton.extended(
        onPressed: () => _openPaymentSheet(context, loanId),
        icon: const Icon(Icons.payments_outlined),
        label: const Text('ثبت پرداخت'),
      ),
      body: loanAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, _) => const Center(child: Text('خطا در بارگذاری وام')),
        data: (data) {
          if (data == null) return const Center(child: Text('وام یافت نشد'));
          return installmentsAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (_, _) => const Center(child: Text('خطا در بارگذاری اقساط')),
            data: (installments) => _InstallmentsList(loan: data, installments: installments),
          );
        },
      ),
    );
  }
}

void _openPaymentSheet(BuildContext context, String loanId) {
  showModalBottomSheet<void>(
    context: context, isScrollControlled: true, isDismissible: false, enableDrag: false,
    builder: (_) => _PaymentSheet(loanId: loanId),
  );
}

class _InstallmentsList extends StatelessWidget {
  const _InstallmentsList({required this.loan, required this.installments});
  final Loan loan;
  final List<Installment> installments;

  @override
  Widget build(BuildContext context) {
    final today = todayIso();
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
      itemCount: installments.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) return Padding(padding: const EdgeInsets.only(bottom: 16), child: _SummaryCard(loan: loan, installments: installments));
        final installment = installments[index - 1];
        return Padding(padding: const EdgeInsets.only(bottom: 8), child: _InstallmentTile(installment: installment, status: _statusOf(installment, today)));
      },
    );
  }
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({required this.loan, required this.installments});
  final Loan loan;
  final List<Installment> installments;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.colorScheme.onSurfaceVariant;
    final total = installments.length;
    final paidCount = installments.where((i) => i.isFullyPaid).length;
    final progress = total == 0 ? 0.0 : paidCount / total;
    final remaining = installments.fold<int>(0, (sum, i) => sum + i.remainingAmount);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(loan.name, style: theme.textTheme.titleLarge),
            if (loan.bankName != null && loan.bankName!.isNotEmpty) Text(loan.bankName!, style: theme.textTheme.bodyMedium?.copyWith(color: muted)),
            const SizedBox(height: 16),
            _SummaryRow(label: 'بازپرداخت کل', value: '${_money.format(loan.totalReturn)} تومان'),
            const SizedBox(height: 8),
            _SummaryRow(label: 'مانده', value: '${_money.format(remaining)} تومان'),
            const SizedBox(height: 16),
            LinearProgressIndicator(value: progress, minHeight: 8, borderRadius: BorderRadius.circular(8)),
            const SizedBox(height: 8),
            Text('$paidCount از $total قسط پرداخت شده', style: theme.textTheme.bodySmall?.copyWith(color: muted)),
          ],
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant)),
        Text(value, style: theme.textTheme.titleSmall),
      ],
    );
  }
}

class _InstallmentTile extends StatelessWidget {
  const _InstallmentTile({required this.installment, required this.status});
  final Installment installment;
  final _InstallmentStatus status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.colorScheme.onSurfaceVariant;
    final hasPartialPayment = installment.paidAmount > 0 && !installment.isFullyPaid;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('قسط ${toPersianDigits(installment.sequenceNumber)}', style: theme.textTheme.titleSmall),
                  const SizedBox(height: 4),
                  Text(JalaliUtils.formatJalali(installment.dueDate), style: theme.textTheme.bodySmall?.copyWith(color: muted)),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('${_money.format(installment.amount)} تومان', style: theme.textTheme.titleSmall),
                if (hasPartialPayment) ...[
                  const SizedBox(height: 2),
                  Text('مانده: ${_money.format(installment.remainingAmount)}', style: theme.textTheme.bodySmall?.copyWith(color: muted)),
                ],
                const SizedBox(height: 6),
                _StatusBadge(status: status),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});
  final _InstallmentStatus status;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final (label, background, foreground) = switch (status) {
      _InstallmentStatus.paid => ('پرداخت شده', scheme.primaryContainer, scheme.onPrimaryContainer),
      _InstallmentStatus.partial => ('پرداخت ناقص', scheme.tertiaryContainer, scheme.onTertiaryContainer),
      _InstallmentStatus.unpaid => ('پرداخت نشده', scheme.surfaceContainerHighest, scheme.onSurfaceVariant),
      _InstallmentStatus.overdue => ('سررسید گذشته', scheme.errorContainer, scheme.onErrorContainer),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: background, borderRadius: BorderRadius.circular(8)),
      child: Text(label, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: foreground)),
    );
  }
}

class _PaymentSheet extends ConsumerStatefulWidget {
  const _PaymentSheet({required this.loanId});
  final String loanId;

  @override
  ConsumerState<_PaymentSheet> createState() => _PaymentSheetState();
}

class _PaymentSheetState extends ConsumerState<_PaymentSheet> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final _dateController = TextEditingController(text: JalaliUtils.formatJalali(todayIso()));
  final _noteController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  @override
  void dispose() { _amountController.dispose(); _dateController.dispose(); _noteController.dispose(); super.dispose(); }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final note = _noteController.text.trim();

    final success = await ref.read(recordPaymentProvider.notifier).submit(
      loanId: widget.loanId, amount: parseInt(_amountController.text)!,
      date: _selectedDate.toIso8601String().substring(0, 10), note: note.isEmpty ? null : note,
    );

    if (!mounted || !success) return;
    navigator.pop();
    messenger.showSnackBar(const SnackBar(content: Text('پرداخت ثبت شد')));
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(recordPaymentProvider);
    final isLoading = state.isLoading;
    final theme = Theme.of(context);

    return PopScope(
      canPop: !isLoading,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16 + MediaQuery.viewInsetsOf(context).bottom),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(children: [Expanded(child: Text('ثبت پرداخت', style: theme.textTheme.titleLarge)), IconButton(onPressed: isLoading ? null : () => Navigator.of(context).pop(), icon: const Icon(Icons.close))]),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _amountController, enabled: !isLoading, autofocus: true, keyboardType: TextInputType.number,
                  textAlign: TextAlign.end,
                  inputFormatters: const [NumericInputFormatter(thousands: true)],
                  decoration: const InputDecoration(labelText: 'مبلغ پرداخت', suffixText: 'تومان'),
                  validator: (value) { final amount = parseInt(value ?? ''); return (amount == null || amount <= 0) ? 'مبلغ معتبر وارد کنید' : null; },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _dateController, enabled: !isLoading, readOnly: true,
                  decoration: const InputDecoration(labelText: 'تاریخ پرداخت', suffixIcon: Icon(Icons.calendar_today)),
                  onTap: () async {
                    final picked = await showDatePicker(context: context, initialDate: _selectedDate, firstDate: DateTime(2000), lastDate: DateTime(2100));
                    if (picked != null) { setState(() { _selectedDate = picked; _dateController.text = JalaliUtils.formatFromDateTime(picked); }); }
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(controller: _noteController, enabled: !isLoading, maxLines: 2, decoration: const InputDecoration(labelText: 'توضیحات (اختیاری)')),
                if (state.hasError) ...[
                  const SizedBox(height: 12),
                  Text('ثبت پرداخت ناموفق بود. دوباره تلاش کنید.', style: TextStyle(color: theme.colorScheme.error)),
                ],
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: isLoading ? null : _submit,
                  child: isLoading ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)) : const Text('ثبت'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
