import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

const String _faDigits = '۰۱۲۳۴۵۶۷۸۹';
const String _arDigits = '٠١٢٣٤٥٦٧٨٩';

String normalizeDigits(String input) {
  final buffer = StringBuffer();
  for (final rune in input.runes) {
    final ch = String.fromCharCode(rune);
    final fa = _faDigits.indexOf(ch);
    if (fa >= 0) { buffer.write(fa); continue; }
    final ar = _arDigits.indexOf(ch);
    buffer.write(ar >= 0 ? ar : ch);
  }
  return buffer.toString();
}

int? parseInt(String text) => int.tryParse(normalizeDigits(text).replaceAll(',', '').trim());

bool isValidIsoDate(String value) {
  if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value)) return false;
  final parsed = DateTime.tryParse(value);
  return parsed != null && parsed.toIso8601String().substring(0, 10) == value;
}

String todayIso() => DateTime.now().toIso8601String().substring(0, 10);

String toPersianDigits(int number) {
  final latin = number.toString();
  final buffer = StringBuffer();
  for (final rune in latin.runes) {
    final digit = rune - 0x30;
    buffer.write(digit >= 0 && digit <= 9 ? _faDigits[digit] : String.fromCharCode(rune));
  }
  return buffer.toString();
}

class NumericInputFormatter extends TextInputFormatter {
  const NumericInputFormatter({this.thousands = false, this.allowDash = false});
  final bool thousands;
  final bool allowDash;

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var text = normalizeDigits(newValue.text).replaceAll(allowDash ? RegExp(r'[^0-9-]') : RegExp(r'[^0-9]'), '');
    if (thousands && text.isNotEmpty) {
      final number = int.tryParse(text);
      if (number == null) return oldValue;
      text = NumberFormat.decimalPattern('en').format(number);
    }
    return TextEditingValue(text: text, selection: TextSelection.collapsed(offset: text.length));
  }
}
