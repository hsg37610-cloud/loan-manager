import 'package:flutter_test/flutter_test.dart';
import 'package:loan_manager/core/finance/interest_calculator.dart';

void main() {
  // مقادیر به تومان هستند (مثلاً 130 یعنی 130,000,000)
  test('Calc A', () {
    final r = InterestCalculator.calcA(
        principal: 130000000, term: 120, installment: 2450000);
    expect(r.totalReturn, 294000000);
    expect(r.effectiveRateBp, 2502); // 25.02%
  });

  test('Calc B', () {
    final r = InterestCalculator.calcB(
        principal: 120000000, annualRateBp: 400, term: 120);
    expect(r.totalInterest, 24200000);
    expect(r.totalReturn, 144200000);
    expect(r.installment, 1201667);
  });

  test('Calc C', () {
    final r = InterestCalculator.calcC(
        term: 120, loan: 120000000, totalReturn: 145000000);
    expect(r.effectiveRateBp, 413); // 4.13%
    expect(r.approxInstallment, 1208333);
  });

  test('Calc B and Calc C are consistent (4% round trip)', () {
    final c = InterestCalculator.calcC(
        term: 120, loan: 120000000, totalReturn: 144200000);
    expect(c.effectiveRateBp, 400);
  });

  test('invalid inputs throw', () {
    expect(() => InterestCalculator.calcA(principal: 0, term: 12, installment: 1),
        throwsArgumentError);
    expect(() => InterestCalculator.calcB(principal: 1, annualRateBp: 1, term: 0),
        throwsArgumentError);
  });
}