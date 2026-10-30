import 'package:loan_manager/core/database/app_database.dart';
import 'package:loan_manager/features/ledger/domain/models.dart';

extension LoanRowMapper on LoanRow {
  Loan toDomain() => Loan(
        id: id,
        userId: userId,
        name: name,
        bankName: bankName,
        cardBin: cardBin,
        principal: principal,
        annualRateBp: annualRateBp,
        termMonths: termMonths,
        firstDueDate: firstDueDate,
        dueDay: dueDay,
        installmentAmount: installmentAmount,
        totalInterest: totalInterest,
        totalReturn: totalReturn,
        effectiveRateBp: effectiveRateBp,
        calculationMethod: calculationMethod,
        calculationVersion: calculationVersion,
        currency: currency,
        status: status,
        settledDate: settledDate,
        note: note,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}

extension InstallmentRowMapper on InstallmentRow {
  Installment toDomain() => Installment(
        id: id,
        loanId: loanId,
        sequenceNumber: sequenceNumber,
        dueDate: dueDate,
        jalaliMonth: jalaliMonth,
        amount: amount,
        paidAmount: paidAmount,
        waivedAmount: waivedAmount,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

extension LoanRowListMapper on Iterable<LoanRow> {
  List<Loan> toDomainList() => map((r) => r.toDomain()).toList(growable: false);
}

extension InstallmentRowListMapper on Iterable<InstallmentRow> {
  List<Installment> toDomainList() => map((r) => r.toDomain()).toList(growable: false);
}
