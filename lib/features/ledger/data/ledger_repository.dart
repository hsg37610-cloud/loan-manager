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
      : _newId = idGenerator ?? (() => const Uuid().v4()),
        _clock = clock ?? DateTime.now;

  final AppDatabase _db;
  final String Function() _newId;
  final DateTime Function() _clock;

  static const String _activeStatus = 'active';
  String _nowStamp() => _clock().toUtc().toIso8601String();

  Stream<List<Loan>> watchActiveLoans() {
    final query = _db.select(_db.loans)
      ..where((t) => t.deletedAt.isNull() & t.status.equals(_activeStatus))
      ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]);
    return query.watch().map((rows) => rows.toDomainList());
  }

  Stream<List<Installment>> watchInstallmentsForLoan(String loanId) {
    final query = _db.select(_db.installments)
      ..where((t) => t.loanId.equals(loanId))
      ..orderBy([(t) => OrderingTerm.asc(t.sequenceNumber)]);
    return query.watch().map((rows) => rows.toDomainList());
  }

  Stream<Loan?> watchLoan(String loanId) {
    final query = _db.select(_db.loans)
      ..where((t) => t.id.equals(loanId) & t.deletedAt.isNull());
    return query.watchSingleOrNull().map((row) => row?.toDomain());
  }

  Future<String> createLoan({
    required String name, required String bankName, required int principal,
    required int annualRateBp, required int termMonths,
    required DateTime firstDueDate, required int dueDayOfMonth,
  }) async {
    final calc = InterestCalculator.calcB(principal: principal, annualRateBp: annualRateBp, term: termMonths);
    final schedule = ScheduleGenerator.generate(
      principal: principal, totalInterest: calc.totalInterest,
      termMonths: termMonths, firstDueDate: firstDueDate, dueDayOfMonth: dueDayOfMonth,
    );

    final loanId = _newId();
    final now = _nowStamp();
    final firstDueIso = firstDueDate.toIso8601String().substring(0, 10);

    await _db.transaction(() async {
      await _db.into(_db.loans).insert(
            LoansCompanion.insert(
              id: loanId, userId: const Value('local'), name: name, bankName: Value(bankName),
              principal: principal, annualRateBp: Value(annualRateBp), termMonths: termMonths,
              firstDueDate: firstDueIso, dueDay: dueDayOfMonth, installmentAmount: calc.installment,
              totalInterest: calc.totalInterest, totalReturn: calc.totalReturn,
              effectiveRateBp: annualRateBp, calculationMethod: 'B', status: Value(_activeStatus),
              createdAt: now, updatedAt: now,
            ),
          );

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

  Future<void> recordPayment({required String loanId, required int amount, required String date, String? note}) async {
    if (amount <= 0) throw const LedgerException('Payment amount must be greater than zero.');

    await _db.transaction(() async {
      final unpaidRows = await (_db.select(_db.installments)
            ..where((t) => t.loanId.equals(loanId) & (t.amount - t.waivedAmount - t.paidAmount).isBiggerThanValue(0))
            ..orderBy([(t) => OrderingTerm.asc(t.dueDate), (t) => OrderingTerm.asc(t.sequenceNumber)]))
          .get();

      final allocatable = [
        for (final row in unpaidRows)
          AllocatableInstallment(id: row.id, dueDate: row.dueDate, amount: row.amount - row.waivedAmount, paidAmount: row.paidAmount),
      ];

      final result = PaymentAllocator.allocate(paymentAmount: amount, installments: allocatable);
      final paymentId = _newId();

      await _db.into(_db.payments).insert(
            PaymentsCompanion.insert(
              id: paymentId, loanId: loanId, paymentDate: date, amount: amount,
              unallocatedAmount: Value(result.unallocatedAmount), note: Value(note),
              createdAt: _nowStamp(), updatedAt: _nowStamp(),
            ),
          );

      if (result.allocations.isNotEmpty) {
        await _db.batch((batch) {
          batch.insertAll(_db.paymentAllocations, [
            for (final a in result.allocations)
              PaymentAllocationsCompanion.insert(
                id: _newId(), paymentId: paymentId, installmentId: Value(a.installmentId),
                amount: a.amountToApply, createdAt: _nowStamp(),
              ),
          ]);
        });
      }

      for (final a in result.allocations) {
        await (_db.update(_db.installments)..where((t) => t.id.equals(a.installmentId)))
            .write(InstallmentsCompanion.custom(paidAmount: _db.installments.paidAmount + Variable<int>(a.amountToApply)));
      }
    });
  }
}
