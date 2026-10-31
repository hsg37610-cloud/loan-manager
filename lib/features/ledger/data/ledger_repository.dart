import 'package:drift/drift.dart';
import 'package:loan_manager/core/database/app_database.dart';
import 'package:loan_manager/core/finance/interest_calculator.dart';
import 'package:loan_manager/core/finance/payment_allocator.dart';
import 'package:loan_manager/core/finance/schedule_generator.dart';
import 'package:loan_manager/core/utils/jalali_utils.dart';
import 'package:loan_manager/features/ledger/data/mappers.dart';
import 'package:loan_manager/features/ledger/domain/models.dart';
import 'package:uuid/uuid.dart';

class LedgerException implements Exception {
  const LedgerException(this.message);
  final String message;
  @override
  String toString() => 'LedgerException: $message';
}

class LedgerRepository {
  LedgerRepository(this._db, {String Function()? idGenerator, DateTime Function()? clock})
      : _newId = idGenerator ?? (() => const Uuid().v4()), _clock = clock ?? DateTime.now;

  final AppDatabase _db;
  final String Function() _newId;
  final DateTime Function() _clock;
  static const String _activeStatus = 'active';

  String _nowStamp() => _clock().toUtc().toIso8601String();

  Stream<List<Loan>> watchActiveLoans() {
    final query = _db.select(_db.loans)..where((t) => t.deletedAt.isNull() & t.status.equals(_activeStatus))..orderBy([(t) => OrderingTerm.desc(t.createdAt)]);
    return query.watch().map((rows) => rows.toDomainList());
  }

  Stream<List<Installment>> watchAllInstallments() {
    final query = _db.select(_db.installments)..orderBy([(t) => OrderingTerm.asc(t.dueDate)]);
    return query.watch().map((rows) => rows.toDomainList());
  }

  Stream<List<Installment>> watchInstallmentsForLoan(String loanId) {
    final query = _db.select(_db.installments)..where((t) => t.loanId.equals(loanId))..orderBy([(t) => OrderingTerm.asc(t.sequenceNumber)]);
    return query.watch().map((rows) => rows.toDomainList());
  }

  Stream<Loan?> watchLoan(String loanId) {
    final query = _db.select(_db.loans)..where((t) => t.id.equals(loanId) & t.deletedAt.isNull());
    return query.watchSingleOrNull().map((row) => row?.toDomain());
  }

  Future<String> createLoan({
    required String name, required String bankName, required int principal,
    required int? annualRateBp, required int? feeAmount, required String loanType,
    required int termMonths, required DateTime firstDueDate, required int dueDayOfMonth,
    String? facilityNumber, String? paymentLink,
  }) async {
    final schedule = loanType == 'qarz'
        ? ScheduleGenerator.generateQarzAlHasaneh(principal: principal, feeAmount: feeAmount ?? 0, termMonths: termMonths, firstDueDate: firstDueDate, dueDayOfMonth: dueDayOfMonth)
        : ScheduleGenerator.generate(principal: principal, totalInterest: InterestCalculator.calcB(principal: principal, annualRateBp: annualRateBp ?? 0, term: termMonths).totalInterest, termMonths: termMonths, firstDueDate: firstDueDate, dueDayOfMonth: dueDayOfMonth);

    final totalReturn = schedule.fold<int>(0, (sum, s) => sum + s.amount);
    final loanId = _newId();
    final now = _nowStamp();

    await _db.transaction(() async {
      await _db.into(_db.loans).insert(LoansCompanion(
        id: Value(loanId),
        userId: const Value('local'),
        name: Value(name),
        bankName: Value(bankName),
        principal: Value(principal),
        annualRateBp: Value(annualRateBp),
        termMonths: Value(termMonths),
        firstDueDate: Value(firstDueDate.toIso8601String().substring(0, 10)),
        dueDay: Value(dueDayOfMonth),
        installmentAmount: Value(schedule.first.amount),
        totalInterest: Value(totalReturn - principal),
        totalReturn: Value(totalReturn),
        effectiveRateBp: Value(annualRateBp ?? 0),
        calculationMethod: Value(loanType == 'qarz' ? 'qarz' : 'B'),
        loanType: Value(loanType),
        feeAmount: Value(feeAmount),
        facilityNumber: Value(facilityNumber),
        paymentLink: Value(paymentLink),
        status: const Value('active'),
        createdAt: Value(now),
        updatedAt: Value(now),
      ));

      await _db.batch((batch) {
        batch.insertAll(_db.installments, [
          for (final s in schedule)
            InstallmentsCompanion.insert(
              id: _newId(), loanId: loanId, sequenceNumber: s.installmentNumber,
              dueDate: s.dueDate, jalaliMonth: JalaliUtils.formatJalali(s.dueDate).substring(0, 7).replaceAll('/', '-'),
              amount: s.amount, createdAt: now, updatedAt: now,
            ),
        ]);
      });
    });
    return loanId;
  }

  Future<void> updateLoan({
    required String loanId, required String name, required String bankName,
    required int principal, required int? annualRateBp, required int? feeAmount,
    required String loanType, required int termMonths, required DateTime firstDueDate,
    required int dueDayOfMonth, String? facilityNumber, String? paymentLink,
  }) async {
    final hasPayments = (await (_db.select(_db.installments)..where((t) => t.loanId.equals(loanId) & t.paidAmount.isBiggerThanValue(0))).get()).isNotEmpty;

    await _db.transaction(() async {
      await (_db.update(_db.loans)..where((t) => t.id.equals(loanId))).write(
        LoansCompanion(
          name: Value(name), bankName: Value(bankName),
          principal: hasPayments ? const Value.absent() : Value(principal),
          termMonths: hasPayments ? const Value.absent() : Value(termMonths),
          annualRateBp: Value(annualRateBp), feeAmount: Value(feeAmount), loanType: Value(loanType),
          facilityNumber: Value(facilityNumber), paymentLink: Value(paymentLink), updatedAt: Value(_nowStamp()),
        ),
      );

      if (!hasPayments) {
        await (_db.delete(_db.installments)..where((t) => t.loanId.equals(loanId))).go();
        final schedule = loanType == 'qarz'
            ? ScheduleGenerator.generateQarzAlHasaneh(principal: principal, feeAmount: feeAmount ?? 0, termMonths: termMonths, firstDueDate: firstDueDate, dueDayOfMonth: dueDayOfMonth)
            : ScheduleGenerator.generate(principal: principal, totalInterest: InterestCalculator.calcB(principal: principal, annualRateBp: annualRateBp ?? 0, term: termMonths).totalInterest, termMonths: termMonths, firstDueDate: firstDueDate, dueDayOfMonth: dueDayOfMonth);

        await _db.batch((batch) {
          batch.insertAll(_db.installments, [
            for (final s in schedule)
              InstallmentsCompanion.insert(
                id: _newId(), loanId: loanId, sequenceNumber: s.installmentNumber,
                dueDate: s.dueDate, jalaliMonth: JalaliUtils.formatJalali(s.dueDate).substring(0, 7).replaceAll('/', '-'),
                amount: s.amount, createdAt: _nowStamp(), updatedAt: _nowStamp(),
              ),
          ]);
        });
      }
    });
  }

  Future<void> recordPayment({required String loanId, required int amount, required String date, String? note}) async {
    if (amount <= 0) throw const LedgerException('Payment amount must be greater than zero.');
    await _db.transaction(() async {
      final unpaidRows = await (_db.select(_db.installments)..where((t) => t.loanId.equals(loanId) & (t.amount - t.waivedAmount - t.paidAmount).isBiggerThanValue(0))..orderBy([(t) => OrderingTerm.asc(t.dueDate), (t) => OrderingTerm.asc(t.sequenceNumber)])).get();
      final allocatable = [for (final row in unpaidRows) AllocatableInstallment(id: row.id, dueDate: row.dueDate, amount: row.amount - row.waivedAmount, paidAmount: row.paidAmount)];
      final result = PaymentAllocator.allocate(paymentAmount: amount, installments: allocatable);

      final paymentId = _newId();
      await _db.into(_db.payments).insert(PaymentsCompanion.insert(id: paymentId, loanId: loanId, paymentDate: date, amount: amount, unallocatedAmount: Value(result.unallocatedAmount), note: Value(note), createdAt: _nowStamp(), updatedAt: _nowStamp()));

      if (result.allocations.isNotEmpty) {
        await _db.batch((batch) {
          batch.insertAll(_db.paymentAllocations, [for (final a in result.allocations) PaymentAllocationsCompanion.insert(id: _newId(), paymentId: paymentId, installmentId: Value(a.installmentId), amount: a.amountToApply, createdAt: _nowStamp())]);
        });
      }
      for (final a in result.allocations) {
        await (_db.update(_db.installments)..where((t) => t.id.equals(a.installmentId))).write(InstallmentsCompanion.custom(paidAmount: _db.installments.paidAmount + Variable<int>(a.amountToApply)));
      }
    });
  }
}

