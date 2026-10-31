import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loan_manager/core/finance/interest_calculator.dart';
import 'package:loan_manager/core/router/app_router.dart';
import 'package:loan_manager/core/utils/input_utils.dart';
import 'package:loan_manager/features/ledger/presentation/ledger_providers.dart';
import 'package:loan_manager/shared/widgets/bank_autocomplete_field.dart';
import 'package:loan_manager/shared/widgets/jalali_date_picker.dart';

class AddLoanScreen extends ConsumerStatefulWidget {
  final String? loanId;
  const AddLoanScreen({super.key, this.loanId});
  bool get isEditMode => loanId != null;

  @override
  ConsumerState<AddLoanScreen> createState() => _AddLoanScreenState();
}

class _AddLoanScreenState extends ConsumerState<AddLoanScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _principal = TextEditingController();
  final _rate = TextEditingController();
  final _term = TextEditingController();
  final _installment = TextEditingController();
  final _fee = TextEditingController();
  final _dueDay = TextEditingController();
  final _facility = TextEditingController();
  final _paymentLink = TextEditingController();

  String? _selectedBank;
  String _loanType = 'normal';
  bool _reverseCalc = false;
  DateTime? _firstDueDate;
  bool _isLoading = false;
  bool _hasPayments = false;
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    if (widget.isEditMode) _loadExistingLoan();
  }

  Future<void> _loadExistingLoan() async {
    setState(() => _isLoading = true);
    try {
      final repo = ref.read(ledgerRepositoryProvider);
      final loan = await repo.watchLoan(widget.loanId!).first;
      final installments = await repo.watchInstallmentsForLoan(widget.loanId!).first;
      if (loan != null && mounted) {
        setState(() {
          _name.text = loan.name;
          _selectedBank = loan.bankName;
          _principal.text = loan.principal.toString();
          _term.text = loan.termMonths.toString();
          _rate.text = ((loan.annualRateBp ?? 0) / 100).toStringAsFixed(2);
          _fee.text = loan.feeAmount?.toString() ?? '';
          _facility.text = loan.facilityNumber ?? '';
          _paymentLink.text = loan.paymentLink ?? '';
          _dueDay.text = loan.dueDay.toString();
          _firstDueDate = DateTime.tryParse(loan.firstDueDate);
          _loanType = loan.loanType;
          _hasPayments = installments.any((i) => i.paidAmount > 0);
        });
      }
    } catch (_) {}
    if (mounted) setState(() { _isLoading = false; _loaded = true; });
  }

  @override
  void dispose() {
    for (final c in [_name, _principal, _rate, _term, _installment, _fee, _dueDay, _facility, _paymentLink]) { c.dispose(); }
    super.dispose();
  }

  CalcBResult? _safePreview() {
    if (_loanType != 'normal') return null;
    final p = parseInt(_principal.text);
    final r = parseInt(_rate.text);
    final t = parseInt(_term.text);
    if (p == null || p <= 0 || r == null || r < 0 || t == null || t <= 0) return null;
    try { return InterestCalculator.calcB(principal: p, annualRateBp: r * 100, term: t); } catch (_) { return null; }
  }

  Map<String, int>? _safeQarzPreview() {
    if (_loanType != 'qarz') return null;
    final p = parseInt(_principal.text);
    final f = parseInt(_fee.text);
    final t = parseInt(_term.text);
    if (p == null || p <= 0 || f == null || f < 0 || t == null || t <= 1) return null;
    return {'monthly': p ~/ (t - 1), 'final': f};
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedBank == null) { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('لطفاً بانک را انتخاب کنید'))); return; }
    if (_firstDueDate == null) { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('لطفاً تاریخ اولین قسط را انتخاب کنید'))); return; }

    setState(() => _isLoading = true);
    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);
    final principal = parseInt(_principal.text)!;
    final term = parseInt(_term.text)!;
    final dueDay = parseInt(_dueDay.text)!;
    final rateBp = _loanType == 'normal' ? (parseInt(_rate.text) ?? 0) * 100 : null;
    final fee = _loanType == 'qarz' ? (parseInt(_fee.text) ?? 0) : null;

    try {
      if (widget.isEditMode) {
        await ref.read(updateLoanProvider.notifier).submit(loanId: widget.loanId!, name: _name.text.trim(), bankName: _selectedBank!, principal: principal, annualRateBp: rateBp, feeAmount: fee, loanType: _loanType, termMonths: term, firstDueDate: _firstDueDate!, dueDayOfMonth: dueDay, facilityNumber: _facility.text.isEmpty ? null : _facility.text, paymentLink: _paymentLink.text.isEmpty ? null : _paymentLink.text);
        messenger.showSnackBar(const SnackBar(content: Text('ویرایش شد')));
        router.pop();
      } else {
        final loanId = await ref.read(createLoanProvider.notifier).submit(name: _name.text.trim(), bankName: _selectedBank!, principal: principal, annualRateBp: rateBp, feeAmount: fee, loanType: _loanType, termMonths: term, firstDueDate: _firstDueDate!, dueDayOfMonth: dueDay, facilityNumber: _facility.text.isEmpty ? null : _facility.text, paymentLink: _paymentLink.text.isEmpty ? null : _paymentLink.text);
        messenger.showSnackBar(const SnackBar(content: Text('ذخیره شد')));
        if (loanId != null) router.pushReplacementNamed(AppRoutes.loanDetail, pathParameters: {'id': loanId});
      }
    } catch (e) {
      messenger.showSnackBar(SnackBar(content: Text('خطا: $e')));
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isEditMode && !_loaded) return const Scaffold(body: Center(child: CircularProgressIndicator()));
    final preview = _safePreview();
    final qarzPreview = _safeQarzPreview();

    return Scaffold(
      appBar: AppBar(title: Text(widget.isEditMode ? 'ویرایش وام' : 'افزودن وام')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (_hasPayments) const Card(color: Colors.redAccent, child: Padding(padding: EdgeInsets.all(12), child: Text('به دلیل وجود پرداختی، اصل و مدت قابل ویرایش نیست.', style: TextStyle(color: Colors.white)))),
            const SizedBox(height: 16),
            SegmentedButton<String>(
              segments: const [ButtonSegment(value: 'normal', label: Text('وام عادی')), ButtonSegment(value: 'qarz', label: Text('قرض‌الحسنه'))],
              selected: {_loanType},
              onSelectionChanged: _hasPayments ? null : (v) => setState(() => _loanType = v.first),
            ),
            const SizedBox(height: 16),
            TextFormField(controller: _name, decoration: const InputDecoration(labelText: 'عنوان وام', border: OutlineInputBorder()), validator: (v) => (v == null || v.isEmpty) ? 'الزامی' : null),
            const SizedBox(height: 16),
            BankAutocompleteField(initialValue: _selectedBank, onSelected: (v) => setState(() => _selectedBank = v), validator: (_) => _selectedBank == null ? 'الزامی' : null),
            BankLogoPreview(bankName: _selectedBank),
            const SizedBox(height: 16),
            TextFormField(controller: _principal, enabled: !_hasPayments, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter(thousands: true)], decoration: const InputDecoration(labelText: 'مبلغ اصل وام (تومان)', border: OutlineInputBorder()), onChanged: (_) => setState(() {}), validator: (v) => parseInt(v ?? '') == null ? 'نامعتبر' : null),
            const SizedBox(height: 16),
            TextFormField(controller: _term, enabled: !_hasPayments, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter()], decoration: const InputDecoration(labelText: 'تعداد اقساط (ماه)', border: OutlineInputBorder()), onChanged: (_) => setState(() {}), validator: (v) => parseInt(v ?? '') == null ? 'نامعتبر' : null),
            const SizedBox(height: 16),
            if (_loanType == 'normal') ...[
              SwitchListTile(title: const Text('محاسبه نرخ از روی مبلغ قسط'), value: _reverseCalc, onChanged: (v) => setState(() => _reverseCalc = v)),
              if (_reverseCalc) ...[
                TextFormField(controller: _installment, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter(thousands: true)], decoration: const InputDecoration(labelText: 'مبلغ قسط (تومان)', border: OutlineInputBorder()), onChanged: (_) {
                  final p = parseInt(_principal.text); final t = parseInt(_term.text); final i = parseInt(_installment.text);
                  if (p != null && t != null && i != null && p > 0 && t > 0 && i > 0) {
                    try { final rateBp = InterestCalculator.findAnnualRateBpForInstallment(principal: p, termMonths: t, targetInstallment: i); if (rateBp != null) _rate.text = (rateBp / 100).toStringAsFixed(2); } catch (_) {}
                  }
                }),
                const SizedBox(height: 16),
              ] else ...[
                TextFormField(controller: _rate, keyboardType: const TextInputType.numberWithOptions(decimal: true), decoration: const InputDecoration(labelText: 'نرخ سود سالانه (%)', border: OutlineInputBorder()), onChanged: (_) => setState(() {}), validator: (v) => double.tryParse(v ?? '') == null ? 'نامعتبر' : null),
                const SizedBox(height: 16),
              ],
            ] else ...[
              TextFormField(controller: _fee, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter(thousands: true)], decoration: const InputDecoration(labelText: 'مبلغ کل کارمزد (تومان)', border: OutlineInputBorder()), onChanged: (_) => setState(() {}), validator: (v) => parseInt(v ?? '') == null ? 'نامعتبر' : null),
              const SizedBox(height: 16),
            ],
            JalaliDatePicker(label: 'تاریخ اولین قسط', initialDate: _firstDueDate, onChanged: (v) => setState(() => _firstDueDate = v), validator: (_) => _firstDueDate == null ? 'الزامی' : null),
            const SizedBox(height: 16),
            TextFormField(controller: _dueDay, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter()], decoration: const InputDecoration(labelText: 'روز سررسید در ماه (1-31)', border: OutlineInputBorder()), validator: (v) => parseInt(v ?? '') == null ? 'نامعتبر' : null),
            const SizedBox(height: 24),
            if (preview != null) Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(children: [Text('قسط ماهانه: ${preview.installment} تومان'), Text('کل بازپرداخت: ${preview.totalReturn} تومان')]))),
            if (qarzPreview != null) Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(children: [Text('قسط ماهانه اصل: ${qarzPreview['monthly']} تومان'), Text('قسط آخر (کارمزد): ${qarzPreview['final']} تومان')]))),
            const SizedBox(height: 24),
            Card(child: ExpansionTile(title: const Text('بیشتر (شماره تسهیلات و لینک پرداخت)'), children: [Padding(padding: const EdgeInsets.all(16), child: Column(children: [TextFormField(controller: _facility, decoration: const InputDecoration(labelText: 'شماره تسهیلات', border: OutlineInputBorder())), const SizedBox(height: 12), TextFormField(controller: _paymentLink, decoration: const InputDecoration(labelText: 'لینک پرداخت', border: OutlineInputBorder()))]))])),
            const SizedBox(height: 32),
            FilledButton(onPressed: _isLoading ? null : _save, child: Padding(padding: const EdgeInsets.symmetric(vertical: 12), child: _isLoading ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)) : Text(widget.isEditMode ? 'ذخیره تغییرات' : 'ثبت وام', style: const TextStyle(fontSize: 16)))),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
