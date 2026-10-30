// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Loan _$LoanFromJson(Map<String, dynamic> json) => _Loan(
  id: json['id'] as String,
  userId: json['user_id'] as String? ?? 'local',
  name: json['name'] as String,
  bankName: json['bank_name'] as String?,
  cardBin: json['card_bin'] as String?,
  principal: (json['principal'] as num).toInt(),
  annualRateBp: (json['annual_rate_bp'] as num?)?.toInt(),
  termMonths: (json['term_months'] as num).toInt(),
  firstDueDate: json['first_due_date'] as String,
  dueDay: (json['due_day'] as num).toInt(),
  installmentAmount: (json['installment_amount'] as num).toInt(),
  totalInterest: (json['total_interest'] as num).toInt(),
  totalReturn: (json['total_return'] as num).toInt(),
  effectiveRateBp: (json['effective_rate_bp'] as num).toInt(),
  calculationMethod: json['calculation_method'] as String,
  calculationVersion: (json['calculation_version'] as num?)?.toInt() ?? 1,
  currency: json['currency'] as String? ?? 'IRT',
  status: json['status'] as String? ?? 'active',
  settledDate: json['settled_date'] as String?,
  note: json['note'] as String?,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  deletedAt: json['deleted_at'] as String?,
);

Map<String, dynamic> _$LoanToJson(_Loan instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'name': instance.name,
  'bank_name': instance.bankName,
  'card_bin': instance.cardBin,
  'principal': instance.principal,
  'annual_rate_bp': instance.annualRateBp,
  'term_months': instance.termMonths,
  'first_due_date': instance.firstDueDate,
  'due_day': instance.dueDay,
  'installment_amount': instance.installmentAmount,
  'total_interest': instance.totalInterest,
  'total_return': instance.totalReturn,
  'effective_rate_bp': instance.effectiveRateBp,
  'calculation_method': instance.calculationMethod,
  'calculation_version': instance.calculationVersion,
  'currency': instance.currency,
  'status': instance.status,
  'settled_date': instance.settledDate,
  'note': instance.note,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'deleted_at': instance.deletedAt,
};

_Installment _$InstallmentFromJson(Map<String, dynamic> json) => _Installment(
  id: json['id'] as String,
  loanId: json['loan_id'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
  dueDate: json['due_date'] as String,
  jalaliMonth: json['jalali_month'] as String,
  amount: (json['amount'] as num).toInt(),
  paidAmount: (json['paid_amount'] as num?)?.toInt() ?? 0,
  waivedAmount: (json['waived_amount'] as num?)?.toInt() ?? 0,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$InstallmentToJson(_Installment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loan_id': instance.loanId,
      'sequence_number': instance.sequenceNumber,
      'due_date': instance.dueDate,
      'jalali_month': instance.jalaliMonth,
      'amount': instance.amount,
      'paid_amount': instance.paidAmount,
      'waived_amount': instance.waivedAmount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_Payment _$PaymentFromJson(Map<String, dynamic> json) => _Payment(
  id: json['id'] as String,
  loanId: json['loan_id'] as String,
  paymentDate: json['payment_date'] as String,
  amount: (json['amount'] as num).toInt(),
  unallocatedAmount: (json['unallocated_amount'] as num?)?.toInt() ?? 0,
  referenceNumber: json['reference_number'] as String?,
  note: json['note'] as String?,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  deletedAt: json['deleted_at'] as String?,
);

Map<String, dynamic> _$PaymentToJson(_Payment instance) => <String, dynamic>{
  'id': instance.id,
  'loan_id': instance.loanId,
  'payment_date': instance.paymentDate,
  'amount': instance.amount,
  'unallocated_amount': instance.unallocatedAmount,
  'reference_number': instance.referenceNumber,
  'note': instance.note,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'deleted_at': instance.deletedAt,
};

_PaymentAllocation _$PaymentAllocationFromJson(Map<String, dynamic> json) =>
    _PaymentAllocation(
      id: json['id'] as String,
      paymentId: json['payment_id'] as String,
      installmentId: json['installment_id'] as String?,
      amount: (json['amount'] as num).toInt(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$PaymentAllocationToJson(_PaymentAllocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_id': instance.paymentId,
      'installment_id': instance.installmentId,
      'amount': instance.amount,
      'created_at': instance.createdAt,
    };

_LoanSettlement _$LoanSettlementFromJson(Map<String, dynamic> json) =>
    _LoanSettlement(
      id: json['id'] as String,
      loanId: json['loan_id'] as String,
      settlementDate: json['settlement_date'] as String,
      amountPaid: (json['amount_paid'] as num).toInt(),
      remainingBefore: (json['remaining_before'] as num).toInt(),
      discountAmount: (json['discount_amount'] as num?)?.toInt() ?? 0,
      note: json['note'] as String?,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$LoanSettlementToJson(_LoanSettlement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'loan_id': instance.loanId,
      'settlement_date': instance.settlementDate,
      'amount_paid': instance.amountPaid,
      'remaining_before': instance.remainingBefore,
      'discount_amount': instance.discountAmount,
      'note': instance.note,
      'created_at': instance.createdAt,
    };

_InstallmentEvent _$InstallmentEventFromJson(Map<String, dynamic> json) =>
    _InstallmentEvent(
      id: json['id'] as String,
      installmentId: json['installment_id'] as String,
      eventType: json['event_type'] as String,
      oldDueDate: json['old_due_date'] as String?,
      newDueDate: json['new_due_date'] as String?,
      adjustmentAmount: (json['adjustment_amount'] as num?)?.toInt(),
      reason: json['reason'] as String?,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$InstallmentEventToJson(_InstallmentEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'installment_id': instance.installmentId,
      'event_type': instance.eventType,
      'old_due_date': instance.oldDueDate,
      'new_due_date': instance.newDueDate,
      'adjustment_amount': instance.adjustmentAmount,
      'reason': instance.reason,
      'created_at': instance.createdAt,
    };
