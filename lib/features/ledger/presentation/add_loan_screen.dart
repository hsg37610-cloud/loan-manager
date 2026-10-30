import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:loan_manager/core/finance/interest_calculator.dart';
import 'package:loan_manager/core/router/app_router.dart';
import 'package:loan_manager/core/utils/input_utils.dart';
import 'package:loan_manager/features/ledger/presentation/ledger_providers.dart';
import 'package:loan_manager/shared/widgets/jalali_date_picker.dart';

final NumberFormat _money = NumberFormat.decimalPattern('en');
final NumberFormat _percent = NumberFormat('#.##', 'en');

class AddLoanScreen extends ConsumerStatefulWidget {
  const AddLoanScreen({super.key});

  @override
  ConsumerState<AddLoanScreen> createState() => _AddLoanScreenState();
}

class _AddLoanScreenState extends ConsumerState<AddLoanScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _bank = TextEditingController();
  final _principal = TextEditingController();
  final _rate = TextEditingController();
  final _term = TextEditingController();
  final _dueDay = TextEditingController();
  DateTime? _firstDueDate;

  @override
  void dispose() {
    for (final c in [_name, _bank, _principal, _rate, _term, _dueDay]) { c.dispose(); }
    super.dispose();
  }

  ({int installmentAmount, int totalReturn})? _preview() {
    final principal = parseInt(_principal.text);
    final rate = parseInt(_rate.text);
    final term = parseInt(_term.text);
    if (principal == null || principal <= 0) return null;
    if (rate == null || rate < 0) return null;
    if (term == null || term <= 0) return null;

    try {
      final result = InterestCalculator.calcB(principal: principal, annualRateBp: rate, term: term);
      return (installmentAmount: result.installment, totalReturn: result.totalReturn);
    } catch (_) { return null; }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    if (_firstDueDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('لطفاً تاریخ اولین قسط را انتخاب کنید')));
      return;
    }
    FocusScope.of(context).unfocus();

    final messenger = ScaffoldMessenger.of(context);
    final loanId = await ref.read(createLoanProvider.notifier).submit(
      name: _name.text.trim(),
      bankName: _bank.text.trim(),
      principal: parseInt(_principal.text)!,
      annualRateBp: parseInt(_rate.text)!,
      termMonths: parseInt(_term.text)!,
      firstDueDate: _firstDueDate!,
      dueDayOfMonth: parseInt(_dueDay.text)!,
    );

    if (!mounted) return;
    if (loanId == null) {
      messenger.showSnackBar(const SnackBar(content: Text('ذخیره وام ناموفق بود. دوباره تلاش کنید.')));
      return;
    }
    messenger.showSnackBar(const SnackBar(content: Text('وام ذخیره شد')));
    context.pushReplacementNamed(AppRoutes.loanDetail, pathParameters: {'id': loanId});
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(createLoanProvider).isLoading;
    final preview = _preview();
    final rateBp = parseInt(_rate.text);

    return PopScope(
      canPop: !isLoading,
      child: Scaffold(
        appBar: AppBar(title: const Text('افزودن وام')),
        body: Form(
          key: _formKey,
          child: AbsorbPointer(
            absorbing: isLoading,
            child: ListView(
              padding: const EdgeInsets.all(16),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                TextFormField(controller: _name, textInputAction: TextInputAction.next, decoration: const InputDecoration(labelText: 'نام وام'), validator: (v) => (v == null || v.trim().isEmpty) ? 'نام وام را وارد کنید' : null),
                const SizedBox(height: 16),
                TextFormField(controller: _bank, textInputAction: TextInputAction.next, decoration: const InputDecoration(labelText: 'نام بانک'), validator: (v) => (v == null || v.trim().isEmpty) ? 'نام بانک را وارد کنید' : null),
                const SizedBox(height: 16),
                _numberField(controller: _principal, label: 'مبلغ وام', suffix: 'تومان', thousands: true, onChanged: (_) => setState(() {}), validator: (v) { final n = parseInt(v ?? ''); return (n == null || n <= 0) ? 'مبلغ معتبر وارد کنید' : null; }),
                const SizedBox(height: 16),
                _numberField(controller: _rate, label: 'نرخ سود سالانه (بیسیس پوینت)', helper: rateBp == null ? 'مثلاً 1800 برابر با 18٪' : '${_percent.format(rateBp / 100)}٪ سالانه', onChanged: (_) => setState(() {}), validator: (v) { final n = parseInt(v ?? ''); return (n == null || n < 0 || n > 10000) ? 'عددی بین 0 تا 10000 وارد کنید' : null; }),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _numberField(controller: _term, label: 'تعداد اقساط (ماه)', onChanged: (_) => setState(() {}), validator: (v) { final n = parseInt(v ?? ''); return (n == null || n < 1 || n > 360) ? 'بین 1 تا 360' : null; })),
                    const SizedBox(width: 12),
                    Expanded(child: _numberField(controller: _dueDay, label: 'روز سررسید', validator: (v) { final n = parseInt(v ?? ''); return (n == null || n < 1 || n > 31) ? 'بین 1 تا 31' : null; })),
                  ],
                ),
                const SizedBox(height: 16),
                JalaliDatePicker(
                  label: 'تاریخ اولین قسط',
                  onChanged: (gregorianDate) => setState(() => _firstDueDate = gregorianDate),
                  validator: (_) => _firstDueDate == null ? 'الزامی است' : null,
                ),
                const SizedBox(height: 24),
                _ReadOnlyField(label: 'مبلغ هر قسط', value: preview == null ? '—' : '${_money.format(preview.installmentAmount)} تومان'),
                const SizedBox(height: 16),
                _ReadOnlyField(label: 'مجموع بازپرداخت', value: preview == null ? '—' : '${_money.format(preview.totalReturn)} تومان'),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: isLoading ? null : _save,
                  child: isLoading ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)) : const Text('ذخیره وام'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _numberField({required TextEditingController controller, required String label, required FormFieldValidator<String> validator, String? helper, String? suffix, bool thousands = false, TextInputType keyboardType = TextInputType.number, ValueChanged<String>? onChanged}) {
    return TextFormField(
      controller: controller, keyboardType: keyboardType, textInputAction: TextInputAction.next,
      textAlign: TextAlign.end,
      inputFormatters: [NumericInputFormatter(thousands: thousands)],
      onChanged: onChanged, validator: validator,
      decoration: InputDecoration(labelText: label, helperText: helper, suffixText: suffix),
    );
  }
}

class _ReadOnlyField extends StatelessWidget {
  const _ReadOnlyField({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(labelText: label, filled: true, fillColor: Theme.of(context).colorScheme.surfaceContainerLow),
      child: Text(value, style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}
