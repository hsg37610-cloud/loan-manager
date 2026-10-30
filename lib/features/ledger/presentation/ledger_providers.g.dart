// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ledgerRepository)
final ledgerRepositoryProvider = LedgerRepositoryProvider._();

final class LedgerRepositoryProvider
    extends
        $FunctionalProvider<
          LedgerRepository,
          LedgerRepository,
          LedgerRepository
        >
    with $Provider<LedgerRepository> {
  LedgerRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ledgerRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ledgerRepositoryHash();

  @$internal
  @override
  $ProviderElement<LedgerRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LedgerRepository create(Ref ref) {
    return ledgerRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LedgerRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LedgerRepository>(value),
    );
  }
}

String _$ledgerRepositoryHash() => r'5dfae3aebd78402feaafd96fce6e8b9f86a3dcfc';

@ProviderFor(activeLoans)
final activeLoansProvider = ActiveLoansProvider._();

final class ActiveLoansProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Loan>>,
          List<Loan>,
          Stream<List<Loan>>
        >
    with $FutureModifier<List<Loan>>, $StreamProvider<List<Loan>> {
  ActiveLoansProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeLoansProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeLoansHash();

  @$internal
  @override
  $StreamProviderElement<List<Loan>> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<Loan>> create(Ref ref) {
    return activeLoans(ref);
  }
}

String _$activeLoansHash() => r'1bc29a5684ce3c97ba996fcab6c8f7198724491f';

@ProviderFor(loanById)
final loanByIdProvider = LoanByIdFamily._();

final class LoanByIdProvider
    extends $FunctionalProvider<AsyncValue<Loan?>, Loan?, Stream<Loan?>>
    with $FutureModifier<Loan?>, $StreamProvider<Loan?> {
  LoanByIdProvider._({
    required LoanByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'loanByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$loanByIdHash();

  @override
  String toString() {
    return r'loanByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Loan?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Loan?> create(Ref ref) {
    final argument = this.argument as String;
    return loanById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LoanByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$loanByIdHash() => r'f087ccb3c7bd42a810d00548c9eb6af403eb8fe3';

final class LoanByIdFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Loan?>, String> {
  LoanByIdFamily._()
    : super(
        retry: null,
        name: r'loanByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LoanByIdProvider call(String loanId) =>
      LoanByIdProvider._(argument: loanId, from: this);

  @override
  String toString() => r'loanByIdProvider';
}

@ProviderFor(loanInstallments)
final loanInstallmentsProvider = LoanInstallmentsFamily._();

final class LoanInstallmentsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Installment>>,
          List<Installment>,
          Stream<List<Installment>>
        >
    with
        $FutureModifier<List<Installment>>,
        $StreamProvider<List<Installment>> {
  LoanInstallmentsProvider._({
    required LoanInstallmentsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'loanInstallmentsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$loanInstallmentsHash();

  @override
  String toString() {
    return r'loanInstallmentsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<Installment>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<Installment>> create(Ref ref) {
    final argument = this.argument as String;
    return loanInstallments(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LoanInstallmentsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$loanInstallmentsHash() => r'969e41fad4f4026546d8d29e1a4ce9f9afd5b93f';

final class LoanInstallmentsFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<Installment>>, String> {
  LoanInstallmentsFamily._()
    : super(
        retry: null,
        name: r'loanInstallmentsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LoanInstallmentsProvider call(String loanId) =>
      LoanInstallmentsProvider._(argument: loanId, from: this);

  @override
  String toString() => r'loanInstallmentsProvider';
}

@ProviderFor(RecordPayment)
final recordPaymentProvider = RecordPaymentProvider._();

final class RecordPaymentProvider
    extends $AsyncNotifierProvider<RecordPayment, void> {
  RecordPaymentProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recordPaymentProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recordPaymentHash();

  @$internal
  @override
  RecordPayment create() => RecordPayment();
}

String _$recordPaymentHash() => r'09f9c8bd008e0abffaec5857459b090bea815f58';

abstract class _$RecordPayment extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(CreateLoan)
final createLoanProvider = CreateLoanProvider._();

final class CreateLoanProvider
    extends $AsyncNotifierProvider<CreateLoan, String?> {
  CreateLoanProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createLoanProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createLoanHash();

  @$internal
  @override
  CreateLoan create() => CreateLoan();
}

String _$createLoanHash() => r'fe0f38f6a577efa59fc9763bf738424c47ee93be';

abstract class _$CreateLoan extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
