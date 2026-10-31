import 'package:flutter/material.dart';
import 'package:loan_manager/core/utils/jalali_utils.dart';
import 'package:shamsi_date/shamsi_date.dart';

/// A chosen Jalali range, already converted to Gregorian midnights
/// (inclusive on both ends). Null bounds mean "no limit".
class JalaliDateRange {
  const JalaliDateRange({this.from, this.to});

  final DateTime? from;
  final DateTime? to;

  bool get isEmpty => from == null && to == null;
}

/// Shows the «از تاریخ / تا تاریخ» dialog. Returns null when cancelled.
Future<JalaliDateRange?> showJalaliDateRangeDialog(BuildContext context) {
  return showDialog<JalaliDateRange>(context: context, builder: (_) => const _RangeDialog());
}

class _RangeDialog extends StatefulWidget {
  const _RangeDialog();

  @override
  State<_RangeDialog> createState() => _RangeDialogState();
}

class _RangeDialogState extends State<_RangeDialog> {
  Jalali? _from;
  Jalali? _to;

  static int _cmp(Jalali a, Jalali b) {
    if (a.year != b.year) return a.year - b.year;
    if (a.month != b.month) return a.month - b.month;
    return a.day - b.day;
  }

  Future<void> _pick(Jalali initial, ValueChanged<Jalali> assign) async {
    final picked = await showDialog<Jalali>(
      context: context,
      builder: (_) => _JalaliDropdownPicker(initial: initial),
    );
    if (picked != null && mounted) {
      setState(() => assign(picked));
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final invalid = _from != null && _to != null && _cmp(_from!, _to!) > 0;

    return AlertDialog(
      title: const Text('بازه زمانی خروجی'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'اقساط بر اساس «سررسید» فیلتر می‌شوند. اگر خالی بگذارید، همه اقساط شامل می‌شوند.',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 16),
          _rangeField(
            label: 'از تاریخ',
            value: _from,
            onPick: () => _pick(_from ?? Jalali.now(), (j) => _from = j),
            onClear: () => setState(() => _from = null),
          ),
          const SizedBox(height: 12),
          _rangeField(
            label: 'تا تاریخ',
            value: _to,
            onPick: () => _pick(_to ?? Jalali.now(), (j) => _to = j),
            onClear: () => setState(() => _to = null),
          ),
          if (invalid) ...[
            const SizedBox(height: 12),
            Text('«از تاریخ» نمی‌تواند بعد از «تا تاریخ» باشد',
                style: TextStyle(color: theme.colorScheme.error, fontSize: 12)),
          ],
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('انصراف')),
        FilledButton(
          onPressed: invalid
              ? null
              : () => Navigator.of(context).pop(JalaliDateRange(
                    from: _from == null ? null : JalaliUtils.toGregorian(_from!.year, _from!.month, _from!.day),
                    to: _to == null ? null : JalaliUtils.toGregorian(_to!.year, _to!.month, _to!.day),
                  )),
          child: const Text('تایید'),
        ),
      ],
    );
  }

  Widget _rangeField({
    required String label,
    required Jalali? value,
    required VoidCallback onPick,
    required VoidCallback onClear,
  }) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onPick,
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: label,
                border: const OutlineInputBorder(),
                suffixIcon: const Icon(Icons.calendar_today),
              ),
              child: Text(value == null ? 'بدون محدودیت' : _format(value!)),
            ),
          ),
        ),
        if (value != null) IconButton(icon: const Icon(Icons.clear), onPressed: onClear),
      ],
    );
  }

  static String _format(Jalali j) =>
      '${j.year}/${j.month.toString().padLeft(2, '0')}/${j.day.toString().padLeft(2, '0')}';
}

/// Simple year/month/day dropdown picker, in the same style as the app's
/// existing [JalaliDatePicker].
class _JalaliDropdownPicker extends StatefulWidget {
  const _JalaliDropdownPicker({required this.initial});

  final Jalali initial;

  @override
  State<_JalaliDropdownPicker> createState() => _JalaliDropdownPickerState();
}

class _JalaliDropdownPickerState extends State<_JalaliDropdownPicker> {
  late int _year, _month, _day;

  @override
  void initState() {
    super.initState();
    _year = widget.initial.year;
    _month = widget.initial.month;
    _day = widget.initial.day;
  }

  int get _daysInMonth => Jalali(_year, _month, 1).monthLength;

  @override
  Widget build(BuildContext context) {
    if (_day > _daysInMonth) _day = _daysInMonth;
    final years = List.generate(50, (i) => 1400 + i);
    final months = List.generate(12, (i) => i + 1);
    final days = List.generate(_daysInMonth, (i) => i + 1);

    return AlertDialog(
      title: const Text('انتخاب تاریخ'),
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: DropdownButton<int>(
              isExpanded: true,
              value: _year,
              items: years.map((y) => DropdownMenuItem(value: y, child: Text('$y'))).toList(),
              onChanged: (v) => setState(() => _year = v!),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: DropdownButton<int>(
              isExpanded: true,
              value: _month,
              items: months.map((m) => DropdownMenuItem(value: m, child: Text('$m'))).toList(),
              onChanged: (v) => setState(() => _month = v!),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: DropdownButton<int>(
              isExpanded: true,
              value: _day,
              items: days.map((d) => DropdownMenuItem(value: d, child: Text('$d'))).toList(),
              onChanged: (v) => setState(() => _day = v!),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('انصراف')),
        ElevatedButton(onPressed: () => Navigator.of(context).pop(Jalali(_year, _month, _day)), child: const Text('تایید')),
      ],
    );
  }
}
