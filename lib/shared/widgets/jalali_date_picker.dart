import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';
import '../../core/utils/jalali_utils.dart';

class JalaliDatePicker extends StatefulWidget {
  final String label;
  final DateTime? initialDate;
  final ValueChanged<DateTime> onChanged;
  final String? Function(String?)? validator;

  const JalaliDatePicker({super.key, required this.label, required this.onChanged, this.initialDate, this.validator});

  @override
  State<JalaliDatePicker> createState() => _JalaliDatePickerState();
}

class _JalaliDatePickerState extends State<JalaliDatePicker> {
  late TextEditingController _controller;
  DateTime? _selectedGregorianDate;

  @override
  void initState() {
    super.initState();
    _selectedGregorianDate = widget.initialDate;
    _controller = TextEditingController(text: _selectedGregorianDate != null ? JalaliUtils.formatFromDateTime(_selectedGregorianDate!) : '');
  }

  Future<void> _openPicker() async {
    final initialJalali = _selectedGregorianDate != null ? Jalali.fromDateTime(_selectedGregorianDate!) : Jalali.now();
    final result = await showDialog<Jalali>(context: context, builder: (context) => _JalaliPickerDialog(initialDate: initialJalali));
    if (result != null) {
      final gregorian = result.toGregorian().toDateTime();
      setState(() { _selectedGregorianDate = gregorian; _controller.text = JalaliUtils.formatFromDateTime(gregorian); });
      widget.onChanged(gregorian);
    }
  }

  @override
  void dispose() { _controller.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      readOnly: true,
      validator: widget.validator,
      decoration: InputDecoration(labelText: widget.label, suffixIcon: const Icon(Icons.calendar_today), border: const OutlineInputBorder()),
      onTap: _openPicker,
    );
  }
}

class _JalaliPickerDialog extends StatefulWidget {
  final Jalali initialDate;
  const _JalaliPickerDialog({required this.initialDate});
  @override State<_JalaliPickerDialog> createState() => _JalaliPickerDialogState();
}

class _JalaliPickerDialogState extends State<_JalaliPickerDialog> {
  late int _year, _month, _day;
  @override
  void initState() { super.initState(); _year = widget.initialDate.year; _month = widget.initialDate.month; _day = widget.initialDate.day; }
  int get _daysInMonth => Jalali(_year, _month, 1).monthLength;

  @override
  Widget build(BuildContext context) {
    final years = List.generate(50, (i) => 1400 + i);
    final months = List.generate(12, (i) => i + 1);
    if (_day > _daysInMonth) _day = _daysInMonth;
    final days = List.generate(_daysInMonth, (i) => i + 1);

    return AlertDialog(
      title: const Text('انتخاب تاریخ'),
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: DropdownButton<int>(isExpanded: true, value: _year, items: years.map((y) => DropdownMenuItem(value: y, child: Text('$y'))).toList(), onChanged: (v) => setState(() => _year = v!))),
          const SizedBox(width: 8),
          Expanded(child: DropdownButton<int>(isExpanded: true, value: _month, items: months.map((m) => DropdownMenuItem(value: m, child: Text('$m'))).toList(), onChanged: (v) => setState(() => _month = v!))),
          const SizedBox(width: 8),
          Expanded(child: DropdownButton<int>(isExpanded: true, value: _day, items: days.map((d) => DropdownMenuItem(value: d, child: Text('$d'))).toList(), onChanged: (v) => setState(() => _day = v!))),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('انصراف')),
        ElevatedButton(onPressed: () => Navigator.of(context).pop(Jalali(_year, _month, _day)), child: const Text('تایید')),
      ],
    );
  }
}
