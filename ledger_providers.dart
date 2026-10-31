import 'package:loan_manager/core/database/app_database_provider.dart';
import 'package:loan_manager/features/ledger/data/ledger_repository.dart';
import 'package:loan_manager/features/ledger/data/reminder_sync.dart';
import 'package:loan_manager/features/ledger/domain/models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ledger_providers.g.dart';

@Riverpod(keepAlive: true)
LedgerRepository ledgerRepository(Ref ref) => LedgerRepository(ref.watch(appDatabaseProvider));

@riverpod
Stream<List<Loan>> activeLoans(Ref ref) => ref.watch(ledgerRepositoryProvider).watchActiveLoans();

@riverpod
Stream<Loan?> loanById(Ref ref, String loanId) => ref.watch(ledgerRepositoryProvider).watchLoan(loanId);

@riverpod
Stream<List<Installment>> loanInstallments(Ref ref, String loanId) => ref.watch(ledgerRepositoryProvider).watchInstallmentsForLoan(loanId);

// NOTE (Phase 4): in the notifiers below, `ref.read(...)` is done BEFORE the first
// `await` and the objects are captured in locals. These providers are auto-dispose,
// and `ref` must not be used after an await in case the notifier was disposed meanwhile.

@riverpod
class RecordPayment extends _$RecordPayment {
  @override
  FutureOr<void> build() {}
  Future<bool> submit({required String loanId, required int amount, required String date, String? note}) async {
    final repo = ref.read(ledgerRepositoryProvider);
    final reminders = ref.read(reminderSyncProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await repo.recordPayment(loanId: loanId, amount: amount, date: date, note: note);
      // Fully paid installments lose their reminder; partially paid ones get the new remaining amount.
      await reminders.syncLoan(loanId);
    });
    return !state.hasError;
  }
}

@riverpod
class CreateLoan extends _$CreateLoan {
  @override
  FutureOr<String?> build() => null;
  Future<String?> submit({required String name, required String bankName, required int principal, required int? annualRateBp, required int? feeAmount, required String loanType, required int termMonths, required DateTime firstDueDate, required int dueDayOfMonth, String? facilityNumber, String? paymentLink}) async {
    final repo = ref.read(ledgerRepositoryProvider);
    final reminders = ref.read(reminderSyncProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard<String?>(() async {
      final loanId = await repo.createLoan(
        name: name, bankName: bankName, principal: principal, annualRateBp: annualRateBp, feeAmount: feeAmount, loanType: loanType, termMonths: termMonths, firstDueDate: firstDueDate, dueDayOfMonth: dueDayOfMonth, facilityNumber: facilityNumber, paymentLink: paymentLink,
      );
      await reminders.syncLoan(loanId);
      return loanId;
    });
    return state.valueOrNull;
  }
}

@riverpod
class UpdateLoan extends _$UpdateLoan {
  @override
  FutureOr<void> build() {}
  Future<bool> submit({required String loanId, required String name, required String bankName, required int principal, required int? annualRateBp, required int? feeAmount, required String loanType, required int termMonths, required DateTime firstDueDate, required int dueDayOfMonth, String? facilityNumber, String? paymentLink}) async {
    final repo = ref.read(ledgerRepositoryProvider);
    final reminders = ref.read(reminderSyncProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      // updateLoan() replaces the installment rows (new ids) when there are no payments,
      // so remember the old ids to cancel their reminders.
      final oldIds = (await repo.watchInstallmentsForLoan(loanId).first).map((i) => i.id).toList();
      await repo.updateLoan(
        loanId: loanId, name: name, bankName: bankName, principal: principal, annualRateBp: annualRateBp, feeAmount: feeAmount, loanType: loanType, termMonths: termMonths, firstDueDate: firstDueDate, dueDayOfMonth: dueDayOfMonth, facilityNumber: facilityNumber, paymentLink: paymentLink,
      );
      await reminders.replaceForLoan(loanId, oldIds);
    });
    return !state.hasError;
  }
}
