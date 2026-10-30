import 'package:loan_manager/core/database/app_database_provider.dart';
import 'package:loan_manager/features/ledger/data/ledger_repository.dart';
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

@riverpod
class RecordPayment extends _$RecordPayment {
  @override
  FutureOr<void> build() {}
  Future<bool> submit({required String loanId, required int amount, required String date, String? note}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(ledgerRepositoryProvider).recordPayment(loanId: loanId, amount: amount, date: date, note: note));
    return !state.hasError;
  }
}

@riverpod
class CreateLoan extends _$CreateLoan {
  @override
  FutureOr<String?> build() => null;
  Future<String?> submit({required String name, required String bankName, required int principal, required int annualRateBp, required int termMonths, required DateTime firstDueDate, required int dueDayOfMonth}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard<String?>(() => ref.read(ledgerRepositoryProvider).createLoan(
      name: name, bankName: bankName, principal: principal, annualRateBp: annualRateBp, termMonths: termMonths, firstDueDate: firstDueDate, dueDayOfMonth: dueDayOfMonth,
    ));
    return state.value;
  }
}
