import 'package:shamsi_date/shamsi_date.dart';
import 'finance_math.dart';

class ScheduleItem {
  final int installmentNumber;
  final String dueDate; // Gregorian YYYY-MM-DD
  final int amount;
  const ScheduleItem(this.installmentNumber, this.dueDate, this.amount);
}

class ScheduleGenerator {
  ScheduleGenerator._();

  static String _iso(Gregorian g) =>
      '${g.year.toString().padLeft(4, '0')}-'
      '${g.month.toString().padLeft(2, '0')}-'
      '${g.day.toString().padLeft(2, '0')}';

  static List<ScheduleItem> generateQarzAlHasaneh({
    required int principal,
    required int feeAmount,
    required int termMonths,
    required DateTime firstDueDate,
    required int dueDayOfMonth,
  }) {
    final principalMonths = termMonths - 1;
    final baseInstallment = principal ~/ principalMonths;
    final remainder = principal - (baseInstallment * principalMonths);
    final items = <ScheduleItem>[];
    
    final start = Jalali.fromDateTime(firstDueDate);
    for (int i = 1; i <= principalMonths; i++) {
      final idx = start.month - 1 + (i - 1);
      final year = start.year + idx ~/ 12;
      final month = idx % 12 + 1;
      final len = Jalali(year, month, 1).monthLength;
      final day = dueDayOfMonth > len ? len : dueDayOfMonth;
      final due = Jalali(year, month, day).toGregorian();
      
      final amount = (i == principalMonths) ? baseInstallment + remainder : baseInstallment;
      items.add(ScheduleItem(i, _iso(due), amount));
    }

    final idx = start.month - 1 + principalMonths;
    final year = start.year + idx ~/ 12;
    final month = idx % 12 + 1;
    final len = Jalali(year, month, 1).monthLength;
    final day = dueDayOfMonth > len ? len : dueDayOfMonth;
    final due = Jalali(year, month, day).toGregorian();
    
    items.add(ScheduleItem(termMonths, _iso(due), feeAmount));
    return items;
  }

  static List<ScheduleItem> generate({
    required int principal,
    required int totalInterest,
    required int termMonths,
    required DateTime firstDueDate,
    required int dueDayOfMonth,
  }) {
    if (principal <= 0) throw ArgumentError('Principal must be > 0');
    if (totalInterest < 0) throw ArgumentError('Interest must be >= 0');
    if (termMonths <= 0) throw ArgumentError('Term must be > 0');
    if (dueDayOfMonth < 1 || dueDayOfMonth > 31) {
      throw ArgumentError('dueDayOfMonth must be 1..31');
    }

    final totalReturn = principal + totalInterest;
    final regular = roundDiv(totalReturn, termMonths);
    final start = Jalali.fromDateTime(firstDueDate);

    final items = <ScheduleItem>[];
    for (var i = 0; i < termMonths; i++) {
      final idx = start.month - 1 + i;
      final year = start.year + idx ~/ 12;
      final month = idx % 12 + 1;
      final len = Jalali(year, month, 1).monthLength;
      final day = dueDayOfMonth > len ? len : dueDayOfMonth;
      final due = Jalali(year, month, day).toGregorian();
      final amount =
          i == termMonths - 1 ? totalReturn - regular * (termMonths - 1) : regular;
      items.add(ScheduleItem(i + 1, _iso(due), amount));
    }
    return items;
  }
}
