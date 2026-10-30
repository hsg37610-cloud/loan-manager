import 'package:shamsi_date/shamsi_date.dart';

class JalaliUtils {
  JalaliUtils._();

  static String formatJalali(String isoDate) {
    try {
      final gregorianDate = DateTime.parse(isoDate);
      final jalali = Jalali.fromDateTime(gregorianDate);
      return _format(jalali);
    } catch (_) {
      return isoDate;
    }
  }

  static DateTime toGregorian(int year, int month, int day) {
    final jalali = Jalali(year, month, day);
    return jalali.toGregorian().toDateTime();
  }

  static String formatFromDateTime(DateTime date) {
    final jalali = Jalali.fromDateTime(date);
    return _format(jalali);
  }

  static String _format(Jalali j) =>
      '${j.year}/${_twoDigits(j.month)}/${_twoDigits(j.day)}';

  static String _twoDigits(int n) => n.toString().padLeft(2, '0');
}
