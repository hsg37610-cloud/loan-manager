import 'package:flutter/material.dart';
import 'package:loan_manager/core/finance/interest_calculator.dart';
import 'package:loan_manager/core/utils/input_utils.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> with SingleTickerProviderStateMixin {
  late TabController _tab;

  @override
  void initState() { super.initState(); _tab = TabController(length: 3, vsync: this); }
  @override
  void dispose() { _tab.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(controller: _tab, tabs: const [
          Tab(text: 'سود از قسط'),
          Tab(text: 'قسط از سود'),
          Tab(text: 'نرخ از برگشتی'),
        ]),
        Expanded(child: TabBarView(controller: _tab, children: const [
          _CalcATab(), _CalcBTab(), _CalcCTab(),
        ])),
      ],
    );
  }
}

class _CalcATab extends StatefulWidget {
  const _CalcATab();
  @override
  State<_CalcATab> createState() => _CalcATabState();
}
class _CalcATabState extends State<_CalcATab> {
  final _p = TextEditingController(); final _t = TextEditingController(); final _i = TextEditingController();
  CalcAResult? _result;
  void _calc() {
    final p = parseInt(_p.text); final t = parseInt(_t.text); final i = parseInt(_i.text);
    if (p == null || t == null || i == null || p <= 0 || t <= 0 || i <= 0) return;
    try { setState(() => _result = InterestCalculator.calcA(principal: p, term: t, installment: i)); } catch (_) {}
  }
  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(16), children: [
      TextFormField(controller: _p, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter(thousands: true)], decoration: const InputDecoration(labelText: 'مبلغ اصل وام (تومان)', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      TextFormField(controller: _t, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'تعداد اقساط (ماه)', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      TextFormField(controller: _i, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter(thousands: true)], decoration: const InputDecoration(labelText: 'مبلغ هر قسط (تومان)', border: OutlineInputBorder())),
      const SizedBox(height: 16),
      FilledButton(onPressed: _calc, child: const Text('محاسبه')),
      if (_result != null) ...[
        const SizedBox(height: 16),
        Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(children: [
          Text('کل بازپرداخت: ${_result!.totalReturn} تومان'),
          Text('نرخ واقعی: ${(_result!.effectiveRateBp / 100).toStringAsFixed(2)}٪'),
        ]))),
      ],
    ]);
  }
}

class _CalcBTab extends StatefulWidget {
  const _CalcBTab();
  @override
  State<_CalcBTab> createState() => _CalcBTabState();
}
class _CalcBTabState extends State<_CalcBTab> {
  final _p = TextEditingController(); final _r = TextEditingController(); final _t = TextEditingController();
  CalcBResult? _result;
  void _calc() {
    final p = parseInt(_p.text); final r = parseInt(_r.text); final t = parseInt(_t.text);
    if (p == null || r == null || t == null || p <= 0 || r < 0 || t <= 0) return;
    try { setState(() => _result = InterestCalculator.calcB(principal: p, annualRateBp: r * 100, term: t)); } catch (_) {}
  }
  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(16), children: [
      TextFormField(controller: _p, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter(thousands: true)], decoration: const InputDecoration(labelText: 'مبلغ اصل وام (تومان)', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      TextFormField(controller: _r, keyboardType: const TextInputType.numberWithOptions(decimal: true), decoration: const InputDecoration(labelText: 'نرخ سود سالانه (%)', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      TextFormField(controller: _t, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'تعداد اقساط (ماه)', border: OutlineInputBorder())),
      const SizedBox(height: 16),
      FilledButton(onPressed: _calc, child: const Text('محاسبه')),
      if (_result != null) ...[
        const SizedBox(height: 16),
        Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(children: [
          Text('قسط ماهانه: ${_result!.installment} تومان'),
          Text('مجموع سود: ${_result!.totalInterest} تومان'),
          Text('کل بازپرداخت: ${_result!.totalReturn} تومان'),
        ]))),
      ],
    ]);
  }
}

class _CalcCTab extends StatefulWidget {
  const _CalcCTab();
  @override
  State<_CalcCTab> createState() => _CalcCTabState();
}
class _CalcCTabState extends State<_CalcCTab> {
  final _t = TextEditingController(); final _l = TextEditingController(); final _r = TextEditingController();
  CalcCResult? _result;
  void _calc() {
    final t = parseInt(_t.text); final l = parseInt(_l.text); final r = parseInt(_r.text);
    if (t == null || l == null || r == null || t <= 0 || l <= 0 || r <= 0) return;
    try { setState(() => _result = InterestCalculator.calcC(term: t, loan: l, totalReturn: r)); } catch (_) {}
  }
  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(16), children: [
      TextFormField(controller: _t, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'تعداد اقساط (ماه)', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      TextFormField(controller: _l, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter(thousands: true)], decoration: const InputDecoration(labelText: 'مبلغ وام (تومان)', border: OutlineInputBorder())),
      const SizedBox(height: 12),
      TextFormField(controller: _r, keyboardType: TextInputType.number, inputFormatters: [const NumericInputFormatter(thousands: true)], decoration: const InputDecoration(labelText: 'کل مبلغ بازپرداخت (تومان)', border: OutlineInputBorder())),
      const SizedBox(height: 16),
      FilledButton(onPressed: _calc, child: const Text('محاسبه')),
      if (_result != null) ...[
        const SizedBox(height: 16),
        Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(children: [
          Text('نرخ واقعی: ${(_result!.effectiveRateBp / 100).toStringAsFixed(2)}٪'),
          Text('قسط تقریبی: ${_result!.approxInstallment} تومان'),
        ]))),
      ],
    ]);
  }
}
