import 'package:drift/drift.dart';

@DataClassName('LoanRow')
class Loans extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text().withDefault(const Constant('local'))();
  TextColumn get name => text()();
  TextColumn get bankName => text().nullable()();
  TextColumn get cardBin => text().nullable()();
  IntColumn get principal => integer()();
  IntColumn get annualRateBp => integer().nullable()();
  IntColumn get termMonths => integer()();
  TextColumn get firstDueDate => text()();
  IntColumn get dueDay => integer()();
  IntColumn get installmentAmount => integer()();
  IntColumn get totalInterest => integer()();
  IntColumn get totalReturn => integer()();
  IntColumn get effectiveRateBp => integer()();
  TextColumn get calculationMethod => text()();
  IntColumn get calculationVersion => integer().withDefault(const Constant(1))();
  TextColumn get currency => text().withDefault(const Constant('IRT'))();
  TextColumn get status => text().withDefault(const Constant('active'))();
  TextColumn get settledDate => text().nullable()();
  TextColumn get note => text().nullable()();
  TextColumn get facilityNumber => text().nullable()();
  TextColumn get paymentLink => text().nullable()();
  TextColumn get loanType => text().withDefault(const Constant('normal'))();
  IntColumn get feeAmount => integer().nullable()();
  TextColumn get createdAt => text()();
  TextColumn get updatedAt => text()();
  TextColumn get deletedAt => text().nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('InstallmentRow')
class Installments extends Table {
  TextColumn get id => text()();
  TextColumn get loanId => text().references(Loans, #id)();
  IntColumn get sequenceNumber => integer()();
  TextColumn get dueDate => text()();
  TextColumn get jalaliMonth => text()();
  IntColumn get amount => integer()();
  IntColumn get paidAmount => integer().withDefault(const Constant(0))();
  IntColumn get waivedAmount => integer().withDefault(const Constant(0))();
  TextColumn get createdAt => text()();
  TextColumn get updatedAt => text()();
  @override
  Set<Column> get primaryKey => {id};
  @override
  List<Set<Column>> get uniqueKeys => [{loanId, sequenceNumber}];
}

@DataClassName('PaymentRow')
class Payments extends Table {
  TextColumn get id => text()();
  TextColumn get loanId => text().references(Loans, #id)();
  TextColumn get paymentDate => text()();
  IntColumn get amount => integer()();
  IntColumn get unallocatedAmount => integer().withDefault(const Constant(0))();
  TextColumn get referenceNumber => text().nullable()();
  TextColumn get note => text().nullable()();
  TextColumn get createdAt => text()();
  TextColumn get updatedAt => text()();
  TextColumn get deletedAt => text().nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('PaymentAllocationRow')
class PaymentAllocations extends Table {
  TextColumn get id => text()();
  TextColumn get paymentId => text().references(Payments, #id)();
  TextColumn get installmentId => text().nullable().references(Installments, #id)();
  IntColumn get amount => integer()();
  TextColumn get createdAt => text()();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('LoanSettlementRow')
class LoanSettlements extends Table {
  TextColumn get id => text()();
  TextColumn get loanId => text().references(Loans, #id)();
  TextColumn get settlementDate => text()();
  IntColumn get amountPaid => integer()();
  IntColumn get remainingBefore => integer()();
  IntColumn get discountAmount => integer().withDefault(const Constant(0))();
  TextColumn get note => text().nullable()();
  TextColumn get createdAt => text()();
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('InstallmentEventRow')
class InstallmentEvents extends Table {
  TextColumn get id => text()();
  TextColumn get installmentId => text().references(Installments, #id)();
  TextColumn get eventType => text()();
  TextColumn get oldDueDate => text().nullable()();
  TextColumn get newDueDate => text().nullable()();
  IntColumn get adjustmentAmount => integer().nullable()();
  TextColumn get reason => text().nullable()();
  TextColumn get createdAt => text()();
  @override
  Set<Column> get primaryKey => {id};
}
