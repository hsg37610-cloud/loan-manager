import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
abstract class Loan with _$Loan {
  const Loan._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Loan({
    required String id,
    @Default('local') String userId,
    required String name,
    String? bankName,
    String? cardBin,
    required int principal,
    int? annualRateBp,
    required int termMonths,
    required String firstDueDate,
    required int dueDay,
    required int installmentAmount,
    required int totalInterest,
    required int totalReturn,
    required int effectiveRateBp,
    required String calculationMethod,
    @Default(1) int calculationVersion,
    @Default('IRT') String currency,
    @Default('active') String status,
    String? settledDate,
    String? note,
    required String createdAt,
    required String updatedAt,
    String? deletedAt,
  }) = _Loan;
  factory Loan.fromJson(Map<String, dynamic> json) => _$LoanFromJson(json);
  bool get isDeleted => deletedAt != null;
  bool get isSettled => status == 'settled';
}

@freezed
abstract class Installment with _$Installment {
  const Installment._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Installment({
    required String id,
    required String loanId,
    required int sequenceNumber,
    required String dueDate,
    required String jalaliMonth,
    required int amount,
    @Default(0) int paidAmount,
    @Default(0) int waivedAmount,
    required String createdAt,
    required String updatedAt,
  }) = _Installment;
  factory Installment.fromJson(Map<String, dynamic> json) => _$InstallmentFromJson(json);
  int get remainingAmount {
    final r = amount - paidAmount - waivedAmount;
    return r < 0 ? 0 : r;
  }
  bool get isFullyPaid => remainingAmount == 0;
}

@freezed
abstract class Payment with _$Payment {
  const Payment._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Payment({
    required String id,
    required String loanId,
    required String paymentDate,
    required int amount,
    @Default(0) int unallocatedAmount,
    String? referenceNumber,
    String? note,
    required String createdAt,
    required String updatedAt,
    String? deletedAt,
  }) = _Payment;
  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
  bool get isDeleted => deletedAt != null;
}

@freezed
abstract class PaymentAllocation with _$PaymentAllocation {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PaymentAllocation({
    required String id,
    required String paymentId,
    String? installmentId,
    required int amount,
    required String createdAt,
  }) = _PaymentAllocation;
  factory PaymentAllocation.fromJson(Map<String, dynamic> json) => _$PaymentAllocationFromJson(json);
}

@freezed
abstract class LoanSettlement with _$LoanSettlement {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoanSettlement({
    required String id,
    required String loanId,
    required String settlementDate,
    required int amountPaid,
    required int remainingBefore,
    @Default(0) int discountAmount,
    String? note,
    required String createdAt,
  }) = _LoanSettlement;
  factory LoanSettlement.fromJson(Map<String, dynamic> json) => _$LoanSettlementFromJson(json);
}

@freezed
abstract class InstallmentEvent with _$InstallmentEvent {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory InstallmentEvent({
    required String id,
    required String installmentId,
    required String eventType,
    String? oldDueDate,
    String? newDueDate,
    int? adjustmentAmount,
    String? reason,
    required String createdAt,
  }) = _InstallmentEvent;
  factory InstallmentEvent.fromJson(Map<String, dynamic> json) => _$InstallmentEventFromJson(json);
}
