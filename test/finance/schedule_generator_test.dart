import 'package:flutter_test/flutter_test.dart';
import 'package:loan_manager/core/finance/schedule_generator.dart';
import 'package:shamsi_date/shamsi_date.dart';

void main() {
  List<int> daysOf(List<ScheduleItem> s) =>
      s.map((e) => Jalali.fromDateTime(DateTime.parse(e.dueDate)).day).toList();

  test('12 months from Farvardin 31, 1403 clamps correctly', () {
    final s = ScheduleGenerator.generate(
      principal: 120000000,
      totalInterest: 24200000,
      termMonths: 12,
      firstDueDate: Jalali(1403, 1, 31).toDateTime(),
      dueDayOfMonth: 31,
    );
    expect(s.length, 12);
    expect(s[0].dueDate, '2024-04-19');
    expect(s[1].dueDate, '2024-05-20');
    // ماه ۱ تا ۶: ۳۱ روز، ماه ۷ تا ۱۲: ۳۰ روز
    expect(daysOf(s), [31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30]);
  });

  test('crossing a non-leap Esfand (29 days) into 1405', () {
    final s = ScheduleGenerator.generate(
      principal: 120000000,
      totalInterest: 24200000,
      termMonths: 12,
      firstDueDate: Jalali(1404, 7, 30).toDateTime(),
      dueDayOfMonth: 31,
    );
    expect(daysOf(s), [30, 30, 30, 30, 30, 29, 31, 31, 31, 31, 31, 31]);
  });

  test('sum equals total return; last absorbs rounding', () {
    final s = ScheduleGenerator.generate(
      principal: 120000000,
      totalInterest: 24200000,
      termMonths: 12,
      firstDueDate: Jalali(1403, 1, 31).toDateTime(),
      dueDayOfMonth: 31,
    );
    expect(s.fold<int>(0, (a, e) => a + e.amount), 144200000);
    expect(s.first.amount, 12016667);
    expect(s.last.amount, 12016663);
    expect(s.map((e) => e.installmentNumber), List.generate(12, (i) => i + 1));
  });
}