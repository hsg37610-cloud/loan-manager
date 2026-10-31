import 'finance_math.dart';

class CalcAResult {
  final int totalReturn;
  final int effectiveRateBp;
  const CalcAResult(this.totalReturn, this.effectiveRateBp);
}

class CalcBResult {
  final int totalInterest;
  final int totalReturn;
  final int installment;
  const CalcBResult(this.totalInterest, this.totalReturn, this.installment);
}

class CalcCResult {
  final int effectiveRateBp;
  final int approxInstallment;
  const CalcCResult(this.effectiveRateBp, this.approxInstallment);
}

class InterestCalculator {
  InterestCalculator._();

  static void _check(int principal, int term) {
    if (principal <= 0) throw ArgumentError('Principal must be > 0');
    if (term <= 0) throw ArgumentError('Term must be > 0');
  }

  static CalcAResult calcA({
    required int principal,
    required int term,
    required int installment,
  }) {
    _check(principal, term);
    if (installment < 0) throw ArgumentError('Installment must be >= 0');
    final d = term * installment;
    final e = roundDiv(240000 * (d - principal), principal * (term + 1));
    return CalcAResult(d, e);
  }

  static CalcBResult calcB({
    required int principal,
    required int annualRateBp,
    required int term,
  }) {
    _check(principal, term);
    if (annualRateBp < 0) throw ArgumentError('Rate must be >= 0');
    final j = roundDiv(principal * annualRateBp * (term + 1), 240000);
    final total = j + principal;
    return CalcBResult(j, total, roundDiv(total, term));
  }

  static QarzAlHasanehResult calcQarzAlHasaneh({
    required int principal,
    required int termMonths,
    required int feeAmount,
  }) {
    final principalMonths = termMonths - 1;
    final monthlyPrincipal = principal ~/ principalMonths;
    return QarzAlHasanehResult(
      totalFee: feeAmount,
      totalReturn: principal + feeAmount,
      monthlyPrincipalInstallment: monthlyPrincipal,
      finalInstallment: feeAmount,
    );
  }

  static CalcCResult calcC({
    required int term,
    required int loan,
    required int totalReturn,
  }) {
    _check(loan, term);
    final r = roundDiv(240000 * (totalReturn - loan), loan * (term + 1));
    return CalcCResult(r, roundDiv(totalReturn, term));
  }
}
class QarzAlHasanehResult {
  final int totalFee;
  final int totalReturn;
  final int monthlyPrincipalInstallment;
  final int finalInstallment;

  const QarzAlHasanehResult({
    required this.totalFee,
    required this.totalReturn,
    required this.monthlyPrincipalInstallment,
    required this.finalInstallment,
  });
}
