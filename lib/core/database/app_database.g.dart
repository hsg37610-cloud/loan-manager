// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $LoansTable extends Loans with TableInfo<$LoansTable, LoanRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LoansTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('local'),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bankNameMeta = const VerificationMeta(
    'bankName',
  );
  @override
  late final GeneratedColumn<String> bankName = GeneratedColumn<String>(
    'bank_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cardBinMeta = const VerificationMeta(
    'cardBin',
  );
  @override
  late final GeneratedColumn<String> cardBin = GeneratedColumn<String>(
    'card_bin',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _principalMeta = const VerificationMeta(
    'principal',
  );
  @override
  late final GeneratedColumn<int> principal = GeneratedColumn<int>(
    'principal',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _annualRateBpMeta = const VerificationMeta(
    'annualRateBp',
  );
  @override
  late final GeneratedColumn<int> annualRateBp = GeneratedColumn<int>(
    'annual_rate_bp',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _termMonthsMeta = const VerificationMeta(
    'termMonths',
  );
  @override
  late final GeneratedColumn<int> termMonths = GeneratedColumn<int>(
    'term_months',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstDueDateMeta = const VerificationMeta(
    'firstDueDate',
  );
  @override
  late final GeneratedColumn<String> firstDueDate = GeneratedColumn<String>(
    'first_due_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dueDayMeta = const VerificationMeta('dueDay');
  @override
  late final GeneratedColumn<int> dueDay = GeneratedColumn<int>(
    'due_day',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _installmentAmountMeta = const VerificationMeta(
    'installmentAmount',
  );
  @override
  late final GeneratedColumn<int> installmentAmount = GeneratedColumn<int>(
    'installment_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalInterestMeta = const VerificationMeta(
    'totalInterest',
  );
  @override
  late final GeneratedColumn<int> totalInterest = GeneratedColumn<int>(
    'total_interest',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalReturnMeta = const VerificationMeta(
    'totalReturn',
  );
  @override
  late final GeneratedColumn<int> totalReturn = GeneratedColumn<int>(
    'total_return',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _effectiveRateBpMeta = const VerificationMeta(
    'effectiveRateBp',
  );
  @override
  late final GeneratedColumn<int> effectiveRateBp = GeneratedColumn<int>(
    'effective_rate_bp',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _calculationMethodMeta = const VerificationMeta(
    'calculationMethod',
  );
  @override
  late final GeneratedColumn<String> calculationMethod =
      GeneratedColumn<String>(
        'calculation_method',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _calculationVersionMeta =
      const VerificationMeta('calculationVersion');
  @override
  late final GeneratedColumn<int> calculationVersion = GeneratedColumn<int>(
    'calculation_version',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('IRT'),
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('active'),
  );
  static const VerificationMeta _settledDateMeta = const VerificationMeta(
    'settledDate',
  );
  @override
  late final GeneratedColumn<String> settledDate = GeneratedColumn<String>(
    'settled_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    name,
    bankName,
    cardBin,
    principal,
    annualRateBp,
    termMonths,
    firstDueDate,
    dueDay,
    installmentAmount,
    totalInterest,
    totalReturn,
    effectiveRateBp,
    calculationMethod,
    calculationVersion,
    currency,
    status,
    settledDate,
    note,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'loans';
  @override
  VerificationContext validateIntegrity(
    Insertable<LoanRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('bank_name')) {
      context.handle(
        _bankNameMeta,
        bankName.isAcceptableOrUnknown(data['bank_name']!, _bankNameMeta),
      );
    }
    if (data.containsKey('card_bin')) {
      context.handle(
        _cardBinMeta,
        cardBin.isAcceptableOrUnknown(data['card_bin']!, _cardBinMeta),
      );
    }
    if (data.containsKey('principal')) {
      context.handle(
        _principalMeta,
        principal.isAcceptableOrUnknown(data['principal']!, _principalMeta),
      );
    } else if (isInserting) {
      context.missing(_principalMeta);
    }
    if (data.containsKey('annual_rate_bp')) {
      context.handle(
        _annualRateBpMeta,
        annualRateBp.isAcceptableOrUnknown(
          data['annual_rate_bp']!,
          _annualRateBpMeta,
        ),
      );
    }
    if (data.containsKey('term_months')) {
      context.handle(
        _termMonthsMeta,
        termMonths.isAcceptableOrUnknown(data['term_months']!, _termMonthsMeta),
      );
    } else if (isInserting) {
      context.missing(_termMonthsMeta);
    }
    if (data.containsKey('first_due_date')) {
      context.handle(
        _firstDueDateMeta,
        firstDueDate.isAcceptableOrUnknown(
          data['first_due_date']!,
          _firstDueDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_firstDueDateMeta);
    }
    if (data.containsKey('due_day')) {
      context.handle(
        _dueDayMeta,
        dueDay.isAcceptableOrUnknown(data['due_day']!, _dueDayMeta),
      );
    } else if (isInserting) {
      context.missing(_dueDayMeta);
    }
    if (data.containsKey('installment_amount')) {
      context.handle(
        _installmentAmountMeta,
        installmentAmount.isAcceptableOrUnknown(
          data['installment_amount']!,
          _installmentAmountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_installmentAmountMeta);
    }
    if (data.containsKey('total_interest')) {
      context.handle(
        _totalInterestMeta,
        totalInterest.isAcceptableOrUnknown(
          data['total_interest']!,
          _totalInterestMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalInterestMeta);
    }
    if (data.containsKey('total_return')) {
      context.handle(
        _totalReturnMeta,
        totalReturn.isAcceptableOrUnknown(
          data['total_return']!,
          _totalReturnMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalReturnMeta);
    }
    if (data.containsKey('effective_rate_bp')) {
      context.handle(
        _effectiveRateBpMeta,
        effectiveRateBp.isAcceptableOrUnknown(
          data['effective_rate_bp']!,
          _effectiveRateBpMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_effectiveRateBpMeta);
    }
    if (data.containsKey('calculation_method')) {
      context.handle(
        _calculationMethodMeta,
        calculationMethod.isAcceptableOrUnknown(
          data['calculation_method']!,
          _calculationMethodMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_calculationMethodMeta);
    }
    if (data.containsKey('calculation_version')) {
      context.handle(
        _calculationVersionMeta,
        calculationVersion.isAcceptableOrUnknown(
          data['calculation_version']!,
          _calculationVersionMeta,
        ),
      );
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('settled_date')) {
      context.handle(
        _settledDateMeta,
        settledDate.isAcceptableOrUnknown(
          data['settled_date']!,
          _settledDateMeta,
        ),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LoanRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LoanRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      bankName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bank_name'],
      ),
      cardBin: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_bin'],
      ),
      principal: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}principal'],
      )!,
      annualRateBp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}annual_rate_bp'],
      ),
      termMonths: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}term_months'],
      )!,
      firstDueDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_due_date'],
      )!,
      dueDay: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}due_day'],
      )!,
      installmentAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}installment_amount'],
      )!,
      totalInterest: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_interest'],
      )!,
      totalReturn: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_return'],
      )!,
      effectiveRateBp: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}effective_rate_bp'],
      )!,
      calculationMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}calculation_method'],
      )!,
      calculationVersion: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}calculation_version'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      settledDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}settled_date'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $LoansTable createAlias(String alias) {
    return $LoansTable(attachedDatabase, alias);
  }
}

class LoanRow extends DataClass implements Insertable<LoanRow> {
  final String id;
  final String userId;
  final String name;
  final String? bankName;
  final String? cardBin;
  final int principal;
  final int? annualRateBp;
  final int termMonths;
  final String firstDueDate;
  final int dueDay;
  final int installmentAmount;
  final int totalInterest;
  final int totalReturn;
  final int effectiveRateBp;
  final String calculationMethod;
  final int calculationVersion;
  final String currency;
  final String status;
  final String? settledDate;
  final String? note;
  final String createdAt;
  final String updatedAt;
  final String? deletedAt;
  const LoanRow({
    required this.id,
    required this.userId,
    required this.name,
    this.bankName,
    this.cardBin,
    required this.principal,
    this.annualRateBp,
    required this.termMonths,
    required this.firstDueDate,
    required this.dueDay,
    required this.installmentAmount,
    required this.totalInterest,
    required this.totalReturn,
    required this.effectiveRateBp,
    required this.calculationMethod,
    required this.calculationVersion,
    required this.currency,
    required this.status,
    this.settledDate,
    this.note,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || bankName != null) {
      map['bank_name'] = Variable<String>(bankName);
    }
    if (!nullToAbsent || cardBin != null) {
      map['card_bin'] = Variable<String>(cardBin);
    }
    map['principal'] = Variable<int>(principal);
    if (!nullToAbsent || annualRateBp != null) {
      map['annual_rate_bp'] = Variable<int>(annualRateBp);
    }
    map['term_months'] = Variable<int>(termMonths);
    map['first_due_date'] = Variable<String>(firstDueDate);
    map['due_day'] = Variable<int>(dueDay);
    map['installment_amount'] = Variable<int>(installmentAmount);
    map['total_interest'] = Variable<int>(totalInterest);
    map['total_return'] = Variable<int>(totalReturn);
    map['effective_rate_bp'] = Variable<int>(effectiveRateBp);
    map['calculation_method'] = Variable<String>(calculationMethod);
    map['calculation_version'] = Variable<int>(calculationVersion);
    map['currency'] = Variable<String>(currency);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || settledDate != null) {
      map['settled_date'] = Variable<String>(settledDate);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    return map;
  }

  LoansCompanion toCompanion(bool nullToAbsent) {
    return LoansCompanion(
      id: Value(id),
      userId: Value(userId),
      name: Value(name),
      bankName: bankName == null && nullToAbsent
          ? const Value.absent()
          : Value(bankName),
      cardBin: cardBin == null && nullToAbsent
          ? const Value.absent()
          : Value(cardBin),
      principal: Value(principal),
      annualRateBp: annualRateBp == null && nullToAbsent
          ? const Value.absent()
          : Value(annualRateBp),
      termMonths: Value(termMonths),
      firstDueDate: Value(firstDueDate),
      dueDay: Value(dueDay),
      installmentAmount: Value(installmentAmount),
      totalInterest: Value(totalInterest),
      totalReturn: Value(totalReturn),
      effectiveRateBp: Value(effectiveRateBp),
      calculationMethod: Value(calculationMethod),
      calculationVersion: Value(calculationVersion),
      currency: Value(currency),
      status: Value(status),
      settledDate: settledDate == null && nullToAbsent
          ? const Value.absent()
          : Value(settledDate),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory LoanRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LoanRow(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      name: serializer.fromJson<String>(json['name']),
      bankName: serializer.fromJson<String?>(json['bankName']),
      cardBin: serializer.fromJson<String?>(json['cardBin']),
      principal: serializer.fromJson<int>(json['principal']),
      annualRateBp: serializer.fromJson<int?>(json['annualRateBp']),
      termMonths: serializer.fromJson<int>(json['termMonths']),
      firstDueDate: serializer.fromJson<String>(json['firstDueDate']),
      dueDay: serializer.fromJson<int>(json['dueDay']),
      installmentAmount: serializer.fromJson<int>(json['installmentAmount']),
      totalInterest: serializer.fromJson<int>(json['totalInterest']),
      totalReturn: serializer.fromJson<int>(json['totalReturn']),
      effectiveRateBp: serializer.fromJson<int>(json['effectiveRateBp']),
      calculationMethod: serializer.fromJson<String>(json['calculationMethod']),
      calculationVersion: serializer.fromJson<int>(json['calculationVersion']),
      currency: serializer.fromJson<String>(json['currency']),
      status: serializer.fromJson<String>(json['status']),
      settledDate: serializer.fromJson<String?>(json['settledDate']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'name': serializer.toJson<String>(name),
      'bankName': serializer.toJson<String?>(bankName),
      'cardBin': serializer.toJson<String?>(cardBin),
      'principal': serializer.toJson<int>(principal),
      'annualRateBp': serializer.toJson<int?>(annualRateBp),
      'termMonths': serializer.toJson<int>(termMonths),
      'firstDueDate': serializer.toJson<String>(firstDueDate),
      'dueDay': serializer.toJson<int>(dueDay),
      'installmentAmount': serializer.toJson<int>(installmentAmount),
      'totalInterest': serializer.toJson<int>(totalInterest),
      'totalReturn': serializer.toJson<int>(totalReturn),
      'effectiveRateBp': serializer.toJson<int>(effectiveRateBp),
      'calculationMethod': serializer.toJson<String>(calculationMethod),
      'calculationVersion': serializer.toJson<int>(calculationVersion),
      'currency': serializer.toJson<String>(currency),
      'status': serializer.toJson<String>(status),
      'settledDate': serializer.toJson<String?>(settledDate),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
    };
  }

  LoanRow copyWith({
    String? id,
    String? userId,
    String? name,
    Value<String?> bankName = const Value.absent(),
    Value<String?> cardBin = const Value.absent(),
    int? principal,
    Value<int?> annualRateBp = const Value.absent(),
    int? termMonths,
    String? firstDueDate,
    int? dueDay,
    int? installmentAmount,
    int? totalInterest,
    int? totalReturn,
    int? effectiveRateBp,
    String? calculationMethod,
    int? calculationVersion,
    String? currency,
    String? status,
    Value<String?> settledDate = const Value.absent(),
    Value<String?> note = const Value.absent(),
    String? createdAt,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
  }) => LoanRow(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    name: name ?? this.name,
    bankName: bankName.present ? bankName.value : this.bankName,
    cardBin: cardBin.present ? cardBin.value : this.cardBin,
    principal: principal ?? this.principal,
    annualRateBp: annualRateBp.present ? annualRateBp.value : this.annualRateBp,
    termMonths: termMonths ?? this.termMonths,
    firstDueDate: firstDueDate ?? this.firstDueDate,
    dueDay: dueDay ?? this.dueDay,
    installmentAmount: installmentAmount ?? this.installmentAmount,
    totalInterest: totalInterest ?? this.totalInterest,
    totalReturn: totalReturn ?? this.totalReturn,
    effectiveRateBp: effectiveRateBp ?? this.effectiveRateBp,
    calculationMethod: calculationMethod ?? this.calculationMethod,
    calculationVersion: calculationVersion ?? this.calculationVersion,
    currency: currency ?? this.currency,
    status: status ?? this.status,
    settledDate: settledDate.present ? settledDate.value : this.settledDate,
    note: note.present ? note.value : this.note,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  LoanRow copyWithCompanion(LoansCompanion data) {
    return LoanRow(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      name: data.name.present ? data.name.value : this.name,
      bankName: data.bankName.present ? data.bankName.value : this.bankName,
      cardBin: data.cardBin.present ? data.cardBin.value : this.cardBin,
      principal: data.principal.present ? data.principal.value : this.principal,
      annualRateBp: data.annualRateBp.present
          ? data.annualRateBp.value
          : this.annualRateBp,
      termMonths: data.termMonths.present
          ? data.termMonths.value
          : this.termMonths,
      firstDueDate: data.firstDueDate.present
          ? data.firstDueDate.value
          : this.firstDueDate,
      dueDay: data.dueDay.present ? data.dueDay.value : this.dueDay,
      installmentAmount: data.installmentAmount.present
          ? data.installmentAmount.value
          : this.installmentAmount,
      totalInterest: data.totalInterest.present
          ? data.totalInterest.value
          : this.totalInterest,
      totalReturn: data.totalReturn.present
          ? data.totalReturn.value
          : this.totalReturn,
      effectiveRateBp: data.effectiveRateBp.present
          ? data.effectiveRateBp.value
          : this.effectiveRateBp,
      calculationMethod: data.calculationMethod.present
          ? data.calculationMethod.value
          : this.calculationMethod,
      calculationVersion: data.calculationVersion.present
          ? data.calculationVersion.value
          : this.calculationVersion,
      currency: data.currency.present ? data.currency.value : this.currency,
      status: data.status.present ? data.status.value : this.status,
      settledDate: data.settledDate.present
          ? data.settledDate.value
          : this.settledDate,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LoanRow(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('bankName: $bankName, ')
          ..write('cardBin: $cardBin, ')
          ..write('principal: $principal, ')
          ..write('annualRateBp: $annualRateBp, ')
          ..write('termMonths: $termMonths, ')
          ..write('firstDueDate: $firstDueDate, ')
          ..write('dueDay: $dueDay, ')
          ..write('installmentAmount: $installmentAmount, ')
          ..write('totalInterest: $totalInterest, ')
          ..write('totalReturn: $totalReturn, ')
          ..write('effectiveRateBp: $effectiveRateBp, ')
          ..write('calculationMethod: $calculationMethod, ')
          ..write('calculationVersion: $calculationVersion, ')
          ..write('currency: $currency, ')
          ..write('status: $status, ')
          ..write('settledDate: $settledDate, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    userId,
    name,
    bankName,
    cardBin,
    principal,
    annualRateBp,
    termMonths,
    firstDueDate,
    dueDay,
    installmentAmount,
    totalInterest,
    totalReturn,
    effectiveRateBp,
    calculationMethod,
    calculationVersion,
    currency,
    status,
    settledDate,
    note,
    createdAt,
    updatedAt,
    deletedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoanRow &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.bankName == this.bankName &&
          other.cardBin == this.cardBin &&
          other.principal == this.principal &&
          other.annualRateBp == this.annualRateBp &&
          other.termMonths == this.termMonths &&
          other.firstDueDate == this.firstDueDate &&
          other.dueDay == this.dueDay &&
          other.installmentAmount == this.installmentAmount &&
          other.totalInterest == this.totalInterest &&
          other.totalReturn == this.totalReturn &&
          other.effectiveRateBp == this.effectiveRateBp &&
          other.calculationMethod == this.calculationMethod &&
          other.calculationVersion == this.calculationVersion &&
          other.currency == this.currency &&
          other.status == this.status &&
          other.settledDate == this.settledDate &&
          other.note == this.note &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class LoansCompanion extends UpdateCompanion<LoanRow> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> name;
  final Value<String?> bankName;
  final Value<String?> cardBin;
  final Value<int> principal;
  final Value<int?> annualRateBp;
  final Value<int> termMonths;
  final Value<String> firstDueDate;
  final Value<int> dueDay;
  final Value<int> installmentAmount;
  final Value<int> totalInterest;
  final Value<int> totalReturn;
  final Value<int> effectiveRateBp;
  final Value<String> calculationMethod;
  final Value<int> calculationVersion;
  final Value<String> currency;
  final Value<String> status;
  final Value<String?> settledDate;
  final Value<String?> note;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> rowid;
  const LoansCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.bankName = const Value.absent(),
    this.cardBin = const Value.absent(),
    this.principal = const Value.absent(),
    this.annualRateBp = const Value.absent(),
    this.termMonths = const Value.absent(),
    this.firstDueDate = const Value.absent(),
    this.dueDay = const Value.absent(),
    this.installmentAmount = const Value.absent(),
    this.totalInterest = const Value.absent(),
    this.totalReturn = const Value.absent(),
    this.effectiveRateBp = const Value.absent(),
    this.calculationMethod = const Value.absent(),
    this.calculationVersion = const Value.absent(),
    this.currency = const Value.absent(),
    this.status = const Value.absent(),
    this.settledDate = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LoansCompanion.insert({
    required String id,
    this.userId = const Value.absent(),
    required String name,
    this.bankName = const Value.absent(),
    this.cardBin = const Value.absent(),
    required int principal,
    this.annualRateBp = const Value.absent(),
    required int termMonths,
    required String firstDueDate,
    required int dueDay,
    required int installmentAmount,
    required int totalInterest,
    required int totalReturn,
    required int effectiveRateBp,
    required String calculationMethod,
    this.calculationVersion = const Value.absent(),
    this.currency = const Value.absent(),
    this.status = const Value.absent(),
    this.settledDate = const Value.absent(),
    this.note = const Value.absent(),
    required String createdAt,
    required String updatedAt,
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       principal = Value(principal),
       termMonths = Value(termMonths),
       firstDueDate = Value(firstDueDate),
       dueDay = Value(dueDay),
       installmentAmount = Value(installmentAmount),
       totalInterest = Value(totalInterest),
       totalReturn = Value(totalReturn),
       effectiveRateBp = Value(effectiveRateBp),
       calculationMethod = Value(calculationMethod),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<LoanRow> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? name,
    Expression<String>? bankName,
    Expression<String>? cardBin,
    Expression<int>? principal,
    Expression<int>? annualRateBp,
    Expression<int>? termMonths,
    Expression<String>? firstDueDate,
    Expression<int>? dueDay,
    Expression<int>? installmentAmount,
    Expression<int>? totalInterest,
    Expression<int>? totalReturn,
    Expression<int>? effectiveRateBp,
    Expression<String>? calculationMethod,
    Expression<int>? calculationVersion,
    Expression<String>? currency,
    Expression<String>? status,
    Expression<String>? settledDate,
    Expression<String>? note,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (name != null) 'name': name,
      if (bankName != null) 'bank_name': bankName,
      if (cardBin != null) 'card_bin': cardBin,
      if (principal != null) 'principal': principal,
      if (annualRateBp != null) 'annual_rate_bp': annualRateBp,
      if (termMonths != null) 'term_months': termMonths,
      if (firstDueDate != null) 'first_due_date': firstDueDate,
      if (dueDay != null) 'due_day': dueDay,
      if (installmentAmount != null) 'installment_amount': installmentAmount,
      if (totalInterest != null) 'total_interest': totalInterest,
      if (totalReturn != null) 'total_return': totalReturn,
      if (effectiveRateBp != null) 'effective_rate_bp': effectiveRateBp,
      if (calculationMethod != null) 'calculation_method': calculationMethod,
      if (calculationVersion != null) 'calculation_version': calculationVersion,
      if (currency != null) 'currency': currency,
      if (status != null) 'status': status,
      if (settledDate != null) 'settled_date': settledDate,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LoansCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? name,
    Value<String?>? bankName,
    Value<String?>? cardBin,
    Value<int>? principal,
    Value<int?>? annualRateBp,
    Value<int>? termMonths,
    Value<String>? firstDueDate,
    Value<int>? dueDay,
    Value<int>? installmentAmount,
    Value<int>? totalInterest,
    Value<int>? totalReturn,
    Value<int>? effectiveRateBp,
    Value<String>? calculationMethod,
    Value<int>? calculationVersion,
    Value<String>? currency,
    Value<String>? status,
    Value<String?>? settledDate,
    Value<String?>? note,
    Value<String>? createdAt,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? rowid,
  }) {
    return LoansCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      bankName: bankName ?? this.bankName,
      cardBin: cardBin ?? this.cardBin,
      principal: principal ?? this.principal,
      annualRateBp: annualRateBp ?? this.annualRateBp,
      termMonths: termMonths ?? this.termMonths,
      firstDueDate: firstDueDate ?? this.firstDueDate,
      dueDay: dueDay ?? this.dueDay,
      installmentAmount: installmentAmount ?? this.installmentAmount,
      totalInterest: totalInterest ?? this.totalInterest,
      totalReturn: totalReturn ?? this.totalReturn,
      effectiveRateBp: effectiveRateBp ?? this.effectiveRateBp,
      calculationMethod: calculationMethod ?? this.calculationMethod,
      calculationVersion: calculationVersion ?? this.calculationVersion,
      currency: currency ?? this.currency,
      status: status ?? this.status,
      settledDate: settledDate ?? this.settledDate,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (bankName.present) {
      map['bank_name'] = Variable<String>(bankName.value);
    }
    if (cardBin.present) {
      map['card_bin'] = Variable<String>(cardBin.value);
    }
    if (principal.present) {
      map['principal'] = Variable<int>(principal.value);
    }
    if (annualRateBp.present) {
      map['annual_rate_bp'] = Variable<int>(annualRateBp.value);
    }
    if (termMonths.present) {
      map['term_months'] = Variable<int>(termMonths.value);
    }
    if (firstDueDate.present) {
      map['first_due_date'] = Variable<String>(firstDueDate.value);
    }
    if (dueDay.present) {
      map['due_day'] = Variable<int>(dueDay.value);
    }
    if (installmentAmount.present) {
      map['installment_amount'] = Variable<int>(installmentAmount.value);
    }
    if (totalInterest.present) {
      map['total_interest'] = Variable<int>(totalInterest.value);
    }
    if (totalReturn.present) {
      map['total_return'] = Variable<int>(totalReturn.value);
    }
    if (effectiveRateBp.present) {
      map['effective_rate_bp'] = Variable<int>(effectiveRateBp.value);
    }
    if (calculationMethod.present) {
      map['calculation_method'] = Variable<String>(calculationMethod.value);
    }
    if (calculationVersion.present) {
      map['calculation_version'] = Variable<int>(calculationVersion.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (settledDate.present) {
      map['settled_date'] = Variable<String>(settledDate.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoansCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('bankName: $bankName, ')
          ..write('cardBin: $cardBin, ')
          ..write('principal: $principal, ')
          ..write('annualRateBp: $annualRateBp, ')
          ..write('termMonths: $termMonths, ')
          ..write('firstDueDate: $firstDueDate, ')
          ..write('dueDay: $dueDay, ')
          ..write('installmentAmount: $installmentAmount, ')
          ..write('totalInterest: $totalInterest, ')
          ..write('totalReturn: $totalReturn, ')
          ..write('effectiveRateBp: $effectiveRateBp, ')
          ..write('calculationMethod: $calculationMethod, ')
          ..write('calculationVersion: $calculationVersion, ')
          ..write('currency: $currency, ')
          ..write('status: $status, ')
          ..write('settledDate: $settledDate, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $InstallmentsTable extends Installments
    with TableInfo<$InstallmentsTable, InstallmentRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InstallmentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanIdMeta = const VerificationMeta('loanId');
  @override
  late final GeneratedColumn<String> loanId = GeneratedColumn<String>(
    'loan_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES loans (id)',
    ),
  );
  static const VerificationMeta _sequenceNumberMeta = const VerificationMeta(
    'sequenceNumber',
  );
  @override
  late final GeneratedColumn<int> sequenceNumber = GeneratedColumn<int>(
    'sequence_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dueDateMeta = const VerificationMeta(
    'dueDate',
  );
  @override
  late final GeneratedColumn<String> dueDate = GeneratedColumn<String>(
    'due_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jalaliMonthMeta = const VerificationMeta(
    'jalaliMonth',
  );
  @override
  late final GeneratedColumn<String> jalaliMonth = GeneratedColumn<String>(
    'jalali_month',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paidAmountMeta = const VerificationMeta(
    'paidAmount',
  );
  @override
  late final GeneratedColumn<int> paidAmount = GeneratedColumn<int>(
    'paid_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _waivedAmountMeta = const VerificationMeta(
    'waivedAmount',
  );
  @override
  late final GeneratedColumn<int> waivedAmount = GeneratedColumn<int>(
    'waived_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    loanId,
    sequenceNumber,
    dueDate,
    jalaliMonth,
    amount,
    paidAmount,
    waivedAmount,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'installments';
  @override
  VerificationContext validateIntegrity(
    Insertable<InstallmentRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('loan_id')) {
      context.handle(
        _loanIdMeta,
        loanId.isAcceptableOrUnknown(data['loan_id']!, _loanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_loanIdMeta);
    }
    if (data.containsKey('sequence_number')) {
      context.handle(
        _sequenceNumberMeta,
        sequenceNumber.isAcceptableOrUnknown(
          data['sequence_number']!,
          _sequenceNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_sequenceNumberMeta);
    }
    if (data.containsKey('due_date')) {
      context.handle(
        _dueDateMeta,
        dueDate.isAcceptableOrUnknown(data['due_date']!, _dueDateMeta),
      );
    } else if (isInserting) {
      context.missing(_dueDateMeta);
    }
    if (data.containsKey('jalali_month')) {
      context.handle(
        _jalaliMonthMeta,
        jalaliMonth.isAcceptableOrUnknown(
          data['jalali_month']!,
          _jalaliMonthMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_jalaliMonthMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('paid_amount')) {
      context.handle(
        _paidAmountMeta,
        paidAmount.isAcceptableOrUnknown(data['paid_amount']!, _paidAmountMeta),
      );
    }
    if (data.containsKey('waived_amount')) {
      context.handle(
        _waivedAmountMeta,
        waivedAmount.isAcceptableOrUnknown(
          data['waived_amount']!,
          _waivedAmountMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {loanId, sequenceNumber},
  ];
  @override
  InstallmentRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InstallmentRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      loanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_id'],
      )!,
      sequenceNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sequence_number'],
      )!,
      dueDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}due_date'],
      )!,
      jalaliMonth: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}jalali_month'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount'],
      )!,
      paidAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}paid_amount'],
      )!,
      waivedAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}waived_amount'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $InstallmentsTable createAlias(String alias) {
    return $InstallmentsTable(attachedDatabase, alias);
  }
}

class InstallmentRow extends DataClass implements Insertable<InstallmentRow> {
  final String id;
  final String loanId;
  final int sequenceNumber;
  final String dueDate;
  final String jalaliMonth;
  final int amount;
  final int paidAmount;
  final int waivedAmount;
  final String createdAt;
  final String updatedAt;
  const InstallmentRow({
    required this.id,
    required this.loanId,
    required this.sequenceNumber,
    required this.dueDate,
    required this.jalaliMonth,
    required this.amount,
    required this.paidAmount,
    required this.waivedAmount,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['loan_id'] = Variable<String>(loanId);
    map['sequence_number'] = Variable<int>(sequenceNumber);
    map['due_date'] = Variable<String>(dueDate);
    map['jalali_month'] = Variable<String>(jalaliMonth);
    map['amount'] = Variable<int>(amount);
    map['paid_amount'] = Variable<int>(paidAmount);
    map['waived_amount'] = Variable<int>(waivedAmount);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  InstallmentsCompanion toCompanion(bool nullToAbsent) {
    return InstallmentsCompanion(
      id: Value(id),
      loanId: Value(loanId),
      sequenceNumber: Value(sequenceNumber),
      dueDate: Value(dueDate),
      jalaliMonth: Value(jalaliMonth),
      amount: Value(amount),
      paidAmount: Value(paidAmount),
      waivedAmount: Value(waivedAmount),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory InstallmentRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return InstallmentRow(
      id: serializer.fromJson<String>(json['id']),
      loanId: serializer.fromJson<String>(json['loanId']),
      sequenceNumber: serializer.fromJson<int>(json['sequenceNumber']),
      dueDate: serializer.fromJson<String>(json['dueDate']),
      jalaliMonth: serializer.fromJson<String>(json['jalaliMonth']),
      amount: serializer.fromJson<int>(json['amount']),
      paidAmount: serializer.fromJson<int>(json['paidAmount']),
      waivedAmount: serializer.fromJson<int>(json['waivedAmount']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'loanId': serializer.toJson<String>(loanId),
      'sequenceNumber': serializer.toJson<int>(sequenceNumber),
      'dueDate': serializer.toJson<String>(dueDate),
      'jalaliMonth': serializer.toJson<String>(jalaliMonth),
      'amount': serializer.toJson<int>(amount),
      'paidAmount': serializer.toJson<int>(paidAmount),
      'waivedAmount': serializer.toJson<int>(waivedAmount),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
    };
  }

  InstallmentRow copyWith({
    String? id,
    String? loanId,
    int? sequenceNumber,
    String? dueDate,
    String? jalaliMonth,
    int? amount,
    int? paidAmount,
    int? waivedAmount,
    String? createdAt,
    String? updatedAt,
  }) => InstallmentRow(
    id: id ?? this.id,
    loanId: loanId ?? this.loanId,
    sequenceNumber: sequenceNumber ?? this.sequenceNumber,
    dueDate: dueDate ?? this.dueDate,
    jalaliMonth: jalaliMonth ?? this.jalaliMonth,
    amount: amount ?? this.amount,
    paidAmount: paidAmount ?? this.paidAmount,
    waivedAmount: waivedAmount ?? this.waivedAmount,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  InstallmentRow copyWithCompanion(InstallmentsCompanion data) {
    return InstallmentRow(
      id: data.id.present ? data.id.value : this.id,
      loanId: data.loanId.present ? data.loanId.value : this.loanId,
      sequenceNumber: data.sequenceNumber.present
          ? data.sequenceNumber.value
          : this.sequenceNumber,
      dueDate: data.dueDate.present ? data.dueDate.value : this.dueDate,
      jalaliMonth: data.jalaliMonth.present
          ? data.jalaliMonth.value
          : this.jalaliMonth,
      amount: data.amount.present ? data.amount.value : this.amount,
      paidAmount: data.paidAmount.present
          ? data.paidAmount.value
          : this.paidAmount,
      waivedAmount: data.waivedAmount.present
          ? data.waivedAmount.value
          : this.waivedAmount,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('InstallmentRow(')
          ..write('id: $id, ')
          ..write('loanId: $loanId, ')
          ..write('sequenceNumber: $sequenceNumber, ')
          ..write('dueDate: $dueDate, ')
          ..write('jalaliMonth: $jalaliMonth, ')
          ..write('amount: $amount, ')
          ..write('paidAmount: $paidAmount, ')
          ..write('waivedAmount: $waivedAmount, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    loanId,
    sequenceNumber,
    dueDate,
    jalaliMonth,
    amount,
    paidAmount,
    waivedAmount,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InstallmentRow &&
          other.id == this.id &&
          other.loanId == this.loanId &&
          other.sequenceNumber == this.sequenceNumber &&
          other.dueDate == this.dueDate &&
          other.jalaliMonth == this.jalaliMonth &&
          other.amount == this.amount &&
          other.paidAmount == this.paidAmount &&
          other.waivedAmount == this.waivedAmount &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class InstallmentsCompanion extends UpdateCompanion<InstallmentRow> {
  final Value<String> id;
  final Value<String> loanId;
  final Value<int> sequenceNumber;
  final Value<String> dueDate;
  final Value<String> jalaliMonth;
  final Value<int> amount;
  final Value<int> paidAmount;
  final Value<int> waivedAmount;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const InstallmentsCompanion({
    this.id = const Value.absent(),
    this.loanId = const Value.absent(),
    this.sequenceNumber = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.jalaliMonth = const Value.absent(),
    this.amount = const Value.absent(),
    this.paidAmount = const Value.absent(),
    this.waivedAmount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  InstallmentsCompanion.insert({
    required String id,
    required String loanId,
    required int sequenceNumber,
    required String dueDate,
    required String jalaliMonth,
    required int amount,
    this.paidAmount = const Value.absent(),
    this.waivedAmount = const Value.absent(),
    required String createdAt,
    required String updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       loanId = Value(loanId),
       sequenceNumber = Value(sequenceNumber),
       dueDate = Value(dueDate),
       jalaliMonth = Value(jalaliMonth),
       amount = Value(amount),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<InstallmentRow> custom({
    Expression<String>? id,
    Expression<String>? loanId,
    Expression<int>? sequenceNumber,
    Expression<String>? dueDate,
    Expression<String>? jalaliMonth,
    Expression<int>? amount,
    Expression<int>? paidAmount,
    Expression<int>? waivedAmount,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (loanId != null) 'loan_id': loanId,
      if (sequenceNumber != null) 'sequence_number': sequenceNumber,
      if (dueDate != null) 'due_date': dueDate,
      if (jalaliMonth != null) 'jalali_month': jalaliMonth,
      if (amount != null) 'amount': amount,
      if (paidAmount != null) 'paid_amount': paidAmount,
      if (waivedAmount != null) 'waived_amount': waivedAmount,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  InstallmentsCompanion copyWith({
    Value<String>? id,
    Value<String>? loanId,
    Value<int>? sequenceNumber,
    Value<String>? dueDate,
    Value<String>? jalaliMonth,
    Value<int>? amount,
    Value<int>? paidAmount,
    Value<int>? waivedAmount,
    Value<String>? createdAt,
    Value<String>? updatedAt,
    Value<int>? rowid,
  }) {
    return InstallmentsCompanion(
      id: id ?? this.id,
      loanId: loanId ?? this.loanId,
      sequenceNumber: sequenceNumber ?? this.sequenceNumber,
      dueDate: dueDate ?? this.dueDate,
      jalaliMonth: jalaliMonth ?? this.jalaliMonth,
      amount: amount ?? this.amount,
      paidAmount: paidAmount ?? this.paidAmount,
      waivedAmount: waivedAmount ?? this.waivedAmount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (loanId.present) {
      map['loan_id'] = Variable<String>(loanId.value);
    }
    if (sequenceNumber.present) {
      map['sequence_number'] = Variable<int>(sequenceNumber.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<String>(dueDate.value);
    }
    if (jalaliMonth.present) {
      map['jalali_month'] = Variable<String>(jalaliMonth.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (paidAmount.present) {
      map['paid_amount'] = Variable<int>(paidAmount.value);
    }
    if (waivedAmount.present) {
      map['waived_amount'] = Variable<int>(waivedAmount.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InstallmentsCompanion(')
          ..write('id: $id, ')
          ..write('loanId: $loanId, ')
          ..write('sequenceNumber: $sequenceNumber, ')
          ..write('dueDate: $dueDate, ')
          ..write('jalaliMonth: $jalaliMonth, ')
          ..write('amount: $amount, ')
          ..write('paidAmount: $paidAmount, ')
          ..write('waivedAmount: $waivedAmount, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PaymentsTable extends Payments
    with TableInfo<$PaymentsTable, PaymentRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanIdMeta = const VerificationMeta('loanId');
  @override
  late final GeneratedColumn<String> loanId = GeneratedColumn<String>(
    'loan_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES loans (id)',
    ),
  );
  static const VerificationMeta _paymentDateMeta = const VerificationMeta(
    'paymentDate',
  );
  @override
  late final GeneratedColumn<String> paymentDate = GeneratedColumn<String>(
    'payment_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unallocatedAmountMeta = const VerificationMeta(
    'unallocatedAmount',
  );
  @override
  late final GeneratedColumn<int> unallocatedAmount = GeneratedColumn<int>(
    'unallocated_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _referenceNumberMeta = const VerificationMeta(
    'referenceNumber',
  );
  @override
  late final GeneratedColumn<String> referenceNumber = GeneratedColumn<String>(
    'reference_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deletedAtMeta = const VerificationMeta(
    'deletedAt',
  );
  @override
  late final GeneratedColumn<String> deletedAt = GeneratedColumn<String>(
    'deleted_at',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    loanId,
    paymentDate,
    amount,
    unallocatedAmount,
    referenceNumber,
    note,
    createdAt,
    updatedAt,
    deletedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payments';
  @override
  VerificationContext validateIntegrity(
    Insertable<PaymentRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('loan_id')) {
      context.handle(
        _loanIdMeta,
        loanId.isAcceptableOrUnknown(data['loan_id']!, _loanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_loanIdMeta);
    }
    if (data.containsKey('payment_date')) {
      context.handle(
        _paymentDateMeta,
        paymentDate.isAcceptableOrUnknown(
          data['payment_date']!,
          _paymentDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_paymentDateMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('unallocated_amount')) {
      context.handle(
        _unallocatedAmountMeta,
        unallocatedAmount.isAcceptableOrUnknown(
          data['unallocated_amount']!,
          _unallocatedAmountMeta,
        ),
      );
    }
    if (data.containsKey('reference_number')) {
      context.handle(
        _referenceNumberMeta,
        referenceNumber.isAcceptableOrUnknown(
          data['reference_number']!,
          _referenceNumberMeta,
        ),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('deleted_at')) {
      context.handle(
        _deletedAtMeta,
        deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PaymentRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      loanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_id'],
      )!,
      paymentDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_date'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount'],
      )!,
      unallocatedAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}unallocated_amount'],
      )!,
      referenceNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reference_number'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
      deletedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}deleted_at'],
      ),
    );
  }

  @override
  $PaymentsTable createAlias(String alias) {
    return $PaymentsTable(attachedDatabase, alias);
  }
}

class PaymentRow extends DataClass implements Insertable<PaymentRow> {
  final String id;
  final String loanId;
  final String paymentDate;
  final int amount;
  final int unallocatedAmount;
  final String? referenceNumber;
  final String? note;
  final String createdAt;
  final String updatedAt;
  final String? deletedAt;
  const PaymentRow({
    required this.id,
    required this.loanId,
    required this.paymentDate,
    required this.amount,
    required this.unallocatedAmount,
    this.referenceNumber,
    this.note,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['loan_id'] = Variable<String>(loanId);
    map['payment_date'] = Variable<String>(paymentDate);
    map['amount'] = Variable<int>(amount);
    map['unallocated_amount'] = Variable<int>(unallocatedAmount);
    if (!nullToAbsent || referenceNumber != null) {
      map['reference_number'] = Variable<String>(referenceNumber);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<String>(deletedAt);
    }
    return map;
  }

  PaymentsCompanion toCompanion(bool nullToAbsent) {
    return PaymentsCompanion(
      id: Value(id),
      loanId: Value(loanId),
      paymentDate: Value(paymentDate),
      amount: Value(amount),
      unallocatedAmount: Value(unallocatedAmount),
      referenceNumber: referenceNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceNumber),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory PaymentRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PaymentRow(
      id: serializer.fromJson<String>(json['id']),
      loanId: serializer.fromJson<String>(json['loanId']),
      paymentDate: serializer.fromJson<String>(json['paymentDate']),
      amount: serializer.fromJson<int>(json['amount']),
      unallocatedAmount: serializer.fromJson<int>(json['unallocatedAmount']),
      referenceNumber: serializer.fromJson<String?>(json['referenceNumber']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
      deletedAt: serializer.fromJson<String?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'loanId': serializer.toJson<String>(loanId),
      'paymentDate': serializer.toJson<String>(paymentDate),
      'amount': serializer.toJson<int>(amount),
      'unallocatedAmount': serializer.toJson<int>(unallocatedAmount),
      'referenceNumber': serializer.toJson<String?>(referenceNumber),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
      'deletedAt': serializer.toJson<String?>(deletedAt),
    };
  }

  PaymentRow copyWith({
    String? id,
    String? loanId,
    String? paymentDate,
    int? amount,
    int? unallocatedAmount,
    Value<String?> referenceNumber = const Value.absent(),
    Value<String?> note = const Value.absent(),
    String? createdAt,
    String? updatedAt,
    Value<String?> deletedAt = const Value.absent(),
  }) => PaymentRow(
    id: id ?? this.id,
    loanId: loanId ?? this.loanId,
    paymentDate: paymentDate ?? this.paymentDate,
    amount: amount ?? this.amount,
    unallocatedAmount: unallocatedAmount ?? this.unallocatedAmount,
    referenceNumber: referenceNumber.present
        ? referenceNumber.value
        : this.referenceNumber,
    note: note.present ? note.value : this.note,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
  );
  PaymentRow copyWithCompanion(PaymentsCompanion data) {
    return PaymentRow(
      id: data.id.present ? data.id.value : this.id,
      loanId: data.loanId.present ? data.loanId.value : this.loanId,
      paymentDate: data.paymentDate.present
          ? data.paymentDate.value
          : this.paymentDate,
      amount: data.amount.present ? data.amount.value : this.amount,
      unallocatedAmount: data.unallocatedAmount.present
          ? data.unallocatedAmount.value
          : this.unallocatedAmount,
      referenceNumber: data.referenceNumber.present
          ? data.referenceNumber.value
          : this.referenceNumber,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PaymentRow(')
          ..write('id: $id, ')
          ..write('loanId: $loanId, ')
          ..write('paymentDate: $paymentDate, ')
          ..write('amount: $amount, ')
          ..write('unallocatedAmount: $unallocatedAmount, ')
          ..write('referenceNumber: $referenceNumber, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    loanId,
    paymentDate,
    amount,
    unallocatedAmount,
    referenceNumber,
    note,
    createdAt,
    updatedAt,
    deletedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaymentRow &&
          other.id == this.id &&
          other.loanId == this.loanId &&
          other.paymentDate == this.paymentDate &&
          other.amount == this.amount &&
          other.unallocatedAmount == this.unallocatedAmount &&
          other.referenceNumber == this.referenceNumber &&
          other.note == this.note &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class PaymentsCompanion extends UpdateCompanion<PaymentRow> {
  final Value<String> id;
  final Value<String> loanId;
  final Value<String> paymentDate;
  final Value<int> amount;
  final Value<int> unallocatedAmount;
  final Value<String?> referenceNumber;
  final Value<String?> note;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<String?> deletedAt;
  final Value<int> rowid;
  const PaymentsCompanion({
    this.id = const Value.absent(),
    this.loanId = const Value.absent(),
    this.paymentDate = const Value.absent(),
    this.amount = const Value.absent(),
    this.unallocatedAmount = const Value.absent(),
    this.referenceNumber = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PaymentsCompanion.insert({
    required String id,
    required String loanId,
    required String paymentDate,
    required int amount,
    this.unallocatedAmount = const Value.absent(),
    this.referenceNumber = const Value.absent(),
    this.note = const Value.absent(),
    required String createdAt,
    required String updatedAt,
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       loanId = Value(loanId),
       paymentDate = Value(paymentDate),
       amount = Value(amount),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<PaymentRow> custom({
    Expression<String>? id,
    Expression<String>? loanId,
    Expression<String>? paymentDate,
    Expression<int>? amount,
    Expression<int>? unallocatedAmount,
    Expression<String>? referenceNumber,
    Expression<String>? note,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<String>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (loanId != null) 'loan_id': loanId,
      if (paymentDate != null) 'payment_date': paymentDate,
      if (amount != null) 'amount': amount,
      if (unallocatedAmount != null) 'unallocated_amount': unallocatedAmount,
      if (referenceNumber != null) 'reference_number': referenceNumber,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PaymentsCompanion copyWith({
    Value<String>? id,
    Value<String>? loanId,
    Value<String>? paymentDate,
    Value<int>? amount,
    Value<int>? unallocatedAmount,
    Value<String?>? referenceNumber,
    Value<String?>? note,
    Value<String>? createdAt,
    Value<String>? updatedAt,
    Value<String?>? deletedAt,
    Value<int>? rowid,
  }) {
    return PaymentsCompanion(
      id: id ?? this.id,
      loanId: loanId ?? this.loanId,
      paymentDate: paymentDate ?? this.paymentDate,
      amount: amount ?? this.amount,
      unallocatedAmount: unallocatedAmount ?? this.unallocatedAmount,
      referenceNumber: referenceNumber ?? this.referenceNumber,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (loanId.present) {
      map['loan_id'] = Variable<String>(loanId.value);
    }
    if (paymentDate.present) {
      map['payment_date'] = Variable<String>(paymentDate.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (unallocatedAmount.present) {
      map['unallocated_amount'] = Variable<int>(unallocatedAmount.value);
    }
    if (referenceNumber.present) {
      map['reference_number'] = Variable<String>(referenceNumber.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<String>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentsCompanion(')
          ..write('id: $id, ')
          ..write('loanId: $loanId, ')
          ..write('paymentDate: $paymentDate, ')
          ..write('amount: $amount, ')
          ..write('unallocatedAmount: $unallocatedAmount, ')
          ..write('referenceNumber: $referenceNumber, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PaymentAllocationsTable extends PaymentAllocations
    with TableInfo<$PaymentAllocationsTable, PaymentAllocationRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentAllocationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paymentIdMeta = const VerificationMeta(
    'paymentId',
  );
  @override
  late final GeneratedColumn<String> paymentId = GeneratedColumn<String>(
    'payment_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES payments (id)',
    ),
  );
  static const VerificationMeta _installmentIdMeta = const VerificationMeta(
    'installmentId',
  );
  @override
  late final GeneratedColumn<String> installmentId = GeneratedColumn<String>(
    'installment_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES installments (id)',
    ),
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    paymentId,
    installmentId,
    amount,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payment_allocations';
  @override
  VerificationContext validateIntegrity(
    Insertable<PaymentAllocationRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('payment_id')) {
      context.handle(
        _paymentIdMeta,
        paymentId.isAcceptableOrUnknown(data['payment_id']!, _paymentIdMeta),
      );
    } else if (isInserting) {
      context.missing(_paymentIdMeta);
    }
    if (data.containsKey('installment_id')) {
      context.handle(
        _installmentIdMeta,
        installmentId.isAcceptableOrUnknown(
          data['installment_id']!,
          _installmentIdMeta,
        ),
      );
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PaymentAllocationRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentAllocationRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      paymentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_id'],
      )!,
      installmentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}installment_id'],
      ),
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $PaymentAllocationsTable createAlias(String alias) {
    return $PaymentAllocationsTable(attachedDatabase, alias);
  }
}

class PaymentAllocationRow extends DataClass
    implements Insertable<PaymentAllocationRow> {
  final String id;
  final String paymentId;
  final String? installmentId;
  final int amount;
  final String createdAt;
  const PaymentAllocationRow({
    required this.id,
    required this.paymentId,
    this.installmentId,
    required this.amount,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['payment_id'] = Variable<String>(paymentId);
    if (!nullToAbsent || installmentId != null) {
      map['installment_id'] = Variable<String>(installmentId);
    }
    map['amount'] = Variable<int>(amount);
    map['created_at'] = Variable<String>(createdAt);
    return map;
  }

  PaymentAllocationsCompanion toCompanion(bool nullToAbsent) {
    return PaymentAllocationsCompanion(
      id: Value(id),
      paymentId: Value(paymentId),
      installmentId: installmentId == null && nullToAbsent
          ? const Value.absent()
          : Value(installmentId),
      amount: Value(amount),
      createdAt: Value(createdAt),
    );
  }

  factory PaymentAllocationRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PaymentAllocationRow(
      id: serializer.fromJson<String>(json['id']),
      paymentId: serializer.fromJson<String>(json['paymentId']),
      installmentId: serializer.fromJson<String?>(json['installmentId']),
      amount: serializer.fromJson<int>(json['amount']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'paymentId': serializer.toJson<String>(paymentId),
      'installmentId': serializer.toJson<String?>(installmentId),
      'amount': serializer.toJson<int>(amount),
      'createdAt': serializer.toJson<String>(createdAt),
    };
  }

  PaymentAllocationRow copyWith({
    String? id,
    String? paymentId,
    Value<String?> installmentId = const Value.absent(),
    int? amount,
    String? createdAt,
  }) => PaymentAllocationRow(
    id: id ?? this.id,
    paymentId: paymentId ?? this.paymentId,
    installmentId: installmentId.present
        ? installmentId.value
        : this.installmentId,
    amount: amount ?? this.amount,
    createdAt: createdAt ?? this.createdAt,
  );
  PaymentAllocationRow copyWithCompanion(PaymentAllocationsCompanion data) {
    return PaymentAllocationRow(
      id: data.id.present ? data.id.value : this.id,
      paymentId: data.paymentId.present ? data.paymentId.value : this.paymentId,
      installmentId: data.installmentId.present
          ? data.installmentId.value
          : this.installmentId,
      amount: data.amount.present ? data.amount.value : this.amount,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PaymentAllocationRow(')
          ..write('id: $id, ')
          ..write('paymentId: $paymentId, ')
          ..write('installmentId: $installmentId, ')
          ..write('amount: $amount, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, paymentId, installmentId, amount, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaymentAllocationRow &&
          other.id == this.id &&
          other.paymentId == this.paymentId &&
          other.installmentId == this.installmentId &&
          other.amount == this.amount &&
          other.createdAt == this.createdAt);
}

class PaymentAllocationsCompanion
    extends UpdateCompanion<PaymentAllocationRow> {
  final Value<String> id;
  final Value<String> paymentId;
  final Value<String?> installmentId;
  final Value<int> amount;
  final Value<String> createdAt;
  final Value<int> rowid;
  const PaymentAllocationsCompanion({
    this.id = const Value.absent(),
    this.paymentId = const Value.absent(),
    this.installmentId = const Value.absent(),
    this.amount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PaymentAllocationsCompanion.insert({
    required String id,
    required String paymentId,
    this.installmentId = const Value.absent(),
    required int amount,
    required String createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       paymentId = Value(paymentId),
       amount = Value(amount),
       createdAt = Value(createdAt);
  static Insertable<PaymentAllocationRow> custom({
    Expression<String>? id,
    Expression<String>? paymentId,
    Expression<String>? installmentId,
    Expression<int>? amount,
    Expression<String>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (paymentId != null) 'payment_id': paymentId,
      if (installmentId != null) 'installment_id': installmentId,
      if (amount != null) 'amount': amount,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PaymentAllocationsCompanion copyWith({
    Value<String>? id,
    Value<String>? paymentId,
    Value<String?>? installmentId,
    Value<int>? amount,
    Value<String>? createdAt,
    Value<int>? rowid,
  }) {
    return PaymentAllocationsCompanion(
      id: id ?? this.id,
      paymentId: paymentId ?? this.paymentId,
      installmentId: installmentId ?? this.installmentId,
      amount: amount ?? this.amount,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (paymentId.present) {
      map['payment_id'] = Variable<String>(paymentId.value);
    }
    if (installmentId.present) {
      map['installment_id'] = Variable<String>(installmentId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentAllocationsCompanion(')
          ..write('id: $id, ')
          ..write('paymentId: $paymentId, ')
          ..write('installmentId: $installmentId, ')
          ..write('amount: $amount, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LoanSettlementsTable extends LoanSettlements
    with TableInfo<$LoanSettlementsTable, LoanSettlementRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LoanSettlementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loanIdMeta = const VerificationMeta('loanId');
  @override
  late final GeneratedColumn<String> loanId = GeneratedColumn<String>(
    'loan_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES loans (id)',
    ),
  );
  static const VerificationMeta _settlementDateMeta = const VerificationMeta(
    'settlementDate',
  );
  @override
  late final GeneratedColumn<String> settlementDate = GeneratedColumn<String>(
    'settlement_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountPaidMeta = const VerificationMeta(
    'amountPaid',
  );
  @override
  late final GeneratedColumn<int> amountPaid = GeneratedColumn<int>(
    'amount_paid',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _remainingBeforeMeta = const VerificationMeta(
    'remainingBefore',
  );
  @override
  late final GeneratedColumn<int> remainingBefore = GeneratedColumn<int>(
    'remaining_before',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _discountAmountMeta = const VerificationMeta(
    'discountAmount',
  );
  @override
  late final GeneratedColumn<int> discountAmount = GeneratedColumn<int>(
    'discount_amount',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    loanId,
    settlementDate,
    amountPaid,
    remainingBefore,
    discountAmount,
    note,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'loan_settlements';
  @override
  VerificationContext validateIntegrity(
    Insertable<LoanSettlementRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('loan_id')) {
      context.handle(
        _loanIdMeta,
        loanId.isAcceptableOrUnknown(data['loan_id']!, _loanIdMeta),
      );
    } else if (isInserting) {
      context.missing(_loanIdMeta);
    }
    if (data.containsKey('settlement_date')) {
      context.handle(
        _settlementDateMeta,
        settlementDate.isAcceptableOrUnknown(
          data['settlement_date']!,
          _settlementDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_settlementDateMeta);
    }
    if (data.containsKey('amount_paid')) {
      context.handle(
        _amountPaidMeta,
        amountPaid.isAcceptableOrUnknown(data['amount_paid']!, _amountPaidMeta),
      );
    } else if (isInserting) {
      context.missing(_amountPaidMeta);
    }
    if (data.containsKey('remaining_before')) {
      context.handle(
        _remainingBeforeMeta,
        remainingBefore.isAcceptableOrUnknown(
          data['remaining_before']!,
          _remainingBeforeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_remainingBeforeMeta);
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
        _discountAmountMeta,
        discountAmount.isAcceptableOrUnknown(
          data['discount_amount']!,
          _discountAmountMeta,
        ),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LoanSettlementRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LoanSettlementRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      loanId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loan_id'],
      )!,
      settlementDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}settlement_date'],
      )!,
      amountPaid: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount_paid'],
      )!,
      remainingBefore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}remaining_before'],
      )!,
      discountAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}discount_amount'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $LoanSettlementsTable createAlias(String alias) {
    return $LoanSettlementsTable(attachedDatabase, alias);
  }
}

class LoanSettlementRow extends DataClass
    implements Insertable<LoanSettlementRow> {
  final String id;
  final String loanId;
  final String settlementDate;
  final int amountPaid;
  final int remainingBefore;
  final int discountAmount;
  final String? note;
  final String createdAt;
  const LoanSettlementRow({
    required this.id,
    required this.loanId,
    required this.settlementDate,
    required this.amountPaid,
    required this.remainingBefore,
    required this.discountAmount,
    this.note,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['loan_id'] = Variable<String>(loanId);
    map['settlement_date'] = Variable<String>(settlementDate);
    map['amount_paid'] = Variable<int>(amountPaid);
    map['remaining_before'] = Variable<int>(remainingBefore);
    map['discount_amount'] = Variable<int>(discountAmount);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['created_at'] = Variable<String>(createdAt);
    return map;
  }

  LoanSettlementsCompanion toCompanion(bool nullToAbsent) {
    return LoanSettlementsCompanion(
      id: Value(id),
      loanId: Value(loanId),
      settlementDate: Value(settlementDate),
      amountPaid: Value(amountPaid),
      remainingBefore: Value(remainingBefore),
      discountAmount: Value(discountAmount),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdAt: Value(createdAt),
    );
  }

  factory LoanSettlementRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LoanSettlementRow(
      id: serializer.fromJson<String>(json['id']),
      loanId: serializer.fromJson<String>(json['loanId']),
      settlementDate: serializer.fromJson<String>(json['settlementDate']),
      amountPaid: serializer.fromJson<int>(json['amountPaid']),
      remainingBefore: serializer.fromJson<int>(json['remainingBefore']),
      discountAmount: serializer.fromJson<int>(json['discountAmount']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'loanId': serializer.toJson<String>(loanId),
      'settlementDate': serializer.toJson<String>(settlementDate),
      'amountPaid': serializer.toJson<int>(amountPaid),
      'remainingBefore': serializer.toJson<int>(remainingBefore),
      'discountAmount': serializer.toJson<int>(discountAmount),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<String>(createdAt),
    };
  }

  LoanSettlementRow copyWith({
    String? id,
    String? loanId,
    String? settlementDate,
    int? amountPaid,
    int? remainingBefore,
    int? discountAmount,
    Value<String?> note = const Value.absent(),
    String? createdAt,
  }) => LoanSettlementRow(
    id: id ?? this.id,
    loanId: loanId ?? this.loanId,
    settlementDate: settlementDate ?? this.settlementDate,
    amountPaid: amountPaid ?? this.amountPaid,
    remainingBefore: remainingBefore ?? this.remainingBefore,
    discountAmount: discountAmount ?? this.discountAmount,
    note: note.present ? note.value : this.note,
    createdAt: createdAt ?? this.createdAt,
  );
  LoanSettlementRow copyWithCompanion(LoanSettlementsCompanion data) {
    return LoanSettlementRow(
      id: data.id.present ? data.id.value : this.id,
      loanId: data.loanId.present ? data.loanId.value : this.loanId,
      settlementDate: data.settlementDate.present
          ? data.settlementDate.value
          : this.settlementDate,
      amountPaid: data.amountPaid.present
          ? data.amountPaid.value
          : this.amountPaid,
      remainingBefore: data.remainingBefore.present
          ? data.remainingBefore.value
          : this.remainingBefore,
      discountAmount: data.discountAmount.present
          ? data.discountAmount.value
          : this.discountAmount,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LoanSettlementRow(')
          ..write('id: $id, ')
          ..write('loanId: $loanId, ')
          ..write('settlementDate: $settlementDate, ')
          ..write('amountPaid: $amountPaid, ')
          ..write('remainingBefore: $remainingBefore, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    loanId,
    settlementDate,
    amountPaid,
    remainingBefore,
    discountAmount,
    note,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoanSettlementRow &&
          other.id == this.id &&
          other.loanId == this.loanId &&
          other.settlementDate == this.settlementDate &&
          other.amountPaid == this.amountPaid &&
          other.remainingBefore == this.remainingBefore &&
          other.discountAmount == this.discountAmount &&
          other.note == this.note &&
          other.createdAt == this.createdAt);
}

class LoanSettlementsCompanion extends UpdateCompanion<LoanSettlementRow> {
  final Value<String> id;
  final Value<String> loanId;
  final Value<String> settlementDate;
  final Value<int> amountPaid;
  final Value<int> remainingBefore;
  final Value<int> discountAmount;
  final Value<String?> note;
  final Value<String> createdAt;
  final Value<int> rowid;
  const LoanSettlementsCompanion({
    this.id = const Value.absent(),
    this.loanId = const Value.absent(),
    this.settlementDate = const Value.absent(),
    this.amountPaid = const Value.absent(),
    this.remainingBefore = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LoanSettlementsCompanion.insert({
    required String id,
    required String loanId,
    required String settlementDate,
    required int amountPaid,
    required int remainingBefore,
    this.discountAmount = const Value.absent(),
    this.note = const Value.absent(),
    required String createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       loanId = Value(loanId),
       settlementDate = Value(settlementDate),
       amountPaid = Value(amountPaid),
       remainingBefore = Value(remainingBefore),
       createdAt = Value(createdAt);
  static Insertable<LoanSettlementRow> custom({
    Expression<String>? id,
    Expression<String>? loanId,
    Expression<String>? settlementDate,
    Expression<int>? amountPaid,
    Expression<int>? remainingBefore,
    Expression<int>? discountAmount,
    Expression<String>? note,
    Expression<String>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (loanId != null) 'loan_id': loanId,
      if (settlementDate != null) 'settlement_date': settlementDate,
      if (amountPaid != null) 'amount_paid': amountPaid,
      if (remainingBefore != null) 'remaining_before': remainingBefore,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LoanSettlementsCompanion copyWith({
    Value<String>? id,
    Value<String>? loanId,
    Value<String>? settlementDate,
    Value<int>? amountPaid,
    Value<int>? remainingBefore,
    Value<int>? discountAmount,
    Value<String?>? note,
    Value<String>? createdAt,
    Value<int>? rowid,
  }) {
    return LoanSettlementsCompanion(
      id: id ?? this.id,
      loanId: loanId ?? this.loanId,
      settlementDate: settlementDate ?? this.settlementDate,
      amountPaid: amountPaid ?? this.amountPaid,
      remainingBefore: remainingBefore ?? this.remainingBefore,
      discountAmount: discountAmount ?? this.discountAmount,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (loanId.present) {
      map['loan_id'] = Variable<String>(loanId.value);
    }
    if (settlementDate.present) {
      map['settlement_date'] = Variable<String>(settlementDate.value);
    }
    if (amountPaid.present) {
      map['amount_paid'] = Variable<int>(amountPaid.value);
    }
    if (remainingBefore.present) {
      map['remaining_before'] = Variable<int>(remainingBefore.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<int>(discountAmount.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LoanSettlementsCompanion(')
          ..write('id: $id, ')
          ..write('loanId: $loanId, ')
          ..write('settlementDate: $settlementDate, ')
          ..write('amountPaid: $amountPaid, ')
          ..write('remainingBefore: $remainingBefore, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $InstallmentEventsTable extends InstallmentEvents
    with TableInfo<$InstallmentEventsTable, InstallmentEventRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InstallmentEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _installmentIdMeta = const VerificationMeta(
    'installmentId',
  );
  @override
  late final GeneratedColumn<String> installmentId = GeneratedColumn<String>(
    'installment_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES installments (id)',
    ),
  );
  static const VerificationMeta _eventTypeMeta = const VerificationMeta(
    'eventType',
  );
  @override
  late final GeneratedColumn<String> eventType = GeneratedColumn<String>(
    'event_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _oldDueDateMeta = const VerificationMeta(
    'oldDueDate',
  );
  @override
  late final GeneratedColumn<String> oldDueDate = GeneratedColumn<String>(
    'old_due_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _newDueDateMeta = const VerificationMeta(
    'newDueDate',
  );
  @override
  late final GeneratedColumn<String> newDueDate = GeneratedColumn<String>(
    'new_due_date',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _adjustmentAmountMeta = const VerificationMeta(
    'adjustmentAmount',
  );
  @override
  late final GeneratedColumn<int> adjustmentAmount = GeneratedColumn<int>(
    'adjustment_amount',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String> reason = GeneratedColumn<String>(
    'reason',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    installmentId,
    eventType,
    oldDueDate,
    newDueDate,
    adjustmentAmount,
    reason,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'installment_events';
  @override
  VerificationContext validateIntegrity(
    Insertable<InstallmentEventRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('installment_id')) {
      context.handle(
        _installmentIdMeta,
        installmentId.isAcceptableOrUnknown(
          data['installment_id']!,
          _installmentIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_installmentIdMeta);
    }
    if (data.containsKey('event_type')) {
      context.handle(
        _eventTypeMeta,
        eventType.isAcceptableOrUnknown(data['event_type']!, _eventTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_eventTypeMeta);
    }
    if (data.containsKey('old_due_date')) {
      context.handle(
        _oldDueDateMeta,
        oldDueDate.isAcceptableOrUnknown(
          data['old_due_date']!,
          _oldDueDateMeta,
        ),
      );
    }
    if (data.containsKey('new_due_date')) {
      context.handle(
        _newDueDateMeta,
        newDueDate.isAcceptableOrUnknown(
          data['new_due_date']!,
          _newDueDateMeta,
        ),
      );
    }
    if (data.containsKey('adjustment_amount')) {
      context.handle(
        _adjustmentAmountMeta,
        adjustmentAmount.isAcceptableOrUnknown(
          data['adjustment_amount']!,
          _adjustmentAmountMeta,
        ),
      );
    }
    if (data.containsKey('reason')) {
      context.handle(
        _reasonMeta,
        reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  InstallmentEventRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InstallmentEventRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      installmentId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}installment_id'],
      )!,
      eventType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}event_type'],
      )!,
      oldDueDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}old_due_date'],
      ),
      newDueDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}new_due_date'],
      ),
      adjustmentAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}adjustment_amount'],
      ),
      reason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reason'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $InstallmentEventsTable createAlias(String alias) {
    return $InstallmentEventsTable(attachedDatabase, alias);
  }
}

class InstallmentEventRow extends DataClass
    implements Insertable<InstallmentEventRow> {
  final String id;
  final String installmentId;
  final String eventType;
  final String? oldDueDate;
  final String? newDueDate;
  final int? adjustmentAmount;
  final String? reason;
  final String createdAt;
  const InstallmentEventRow({
    required this.id,
    required this.installmentId,
    required this.eventType,
    this.oldDueDate,
    this.newDueDate,
    this.adjustmentAmount,
    this.reason,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['installment_id'] = Variable<String>(installmentId);
    map['event_type'] = Variable<String>(eventType);
    if (!nullToAbsent || oldDueDate != null) {
      map['old_due_date'] = Variable<String>(oldDueDate);
    }
    if (!nullToAbsent || newDueDate != null) {
      map['new_due_date'] = Variable<String>(newDueDate);
    }
    if (!nullToAbsent || adjustmentAmount != null) {
      map['adjustment_amount'] = Variable<int>(adjustmentAmount);
    }
    if (!nullToAbsent || reason != null) {
      map['reason'] = Variable<String>(reason);
    }
    map['created_at'] = Variable<String>(createdAt);
    return map;
  }

  InstallmentEventsCompanion toCompanion(bool nullToAbsent) {
    return InstallmentEventsCompanion(
      id: Value(id),
      installmentId: Value(installmentId),
      eventType: Value(eventType),
      oldDueDate: oldDueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(oldDueDate),
      newDueDate: newDueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(newDueDate),
      adjustmentAmount: adjustmentAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(adjustmentAmount),
      reason: reason == null && nullToAbsent
          ? const Value.absent()
          : Value(reason),
      createdAt: Value(createdAt),
    );
  }

  factory InstallmentEventRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return InstallmentEventRow(
      id: serializer.fromJson<String>(json['id']),
      installmentId: serializer.fromJson<String>(json['installmentId']),
      eventType: serializer.fromJson<String>(json['eventType']),
      oldDueDate: serializer.fromJson<String?>(json['oldDueDate']),
      newDueDate: serializer.fromJson<String?>(json['newDueDate']),
      adjustmentAmount: serializer.fromJson<int?>(json['adjustmentAmount']),
      reason: serializer.fromJson<String?>(json['reason']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'installmentId': serializer.toJson<String>(installmentId),
      'eventType': serializer.toJson<String>(eventType),
      'oldDueDate': serializer.toJson<String?>(oldDueDate),
      'newDueDate': serializer.toJson<String?>(newDueDate),
      'adjustmentAmount': serializer.toJson<int?>(adjustmentAmount),
      'reason': serializer.toJson<String?>(reason),
      'createdAt': serializer.toJson<String>(createdAt),
    };
  }

  InstallmentEventRow copyWith({
    String? id,
    String? installmentId,
    String? eventType,
    Value<String?> oldDueDate = const Value.absent(),
    Value<String?> newDueDate = const Value.absent(),
    Value<int?> adjustmentAmount = const Value.absent(),
    Value<String?> reason = const Value.absent(),
    String? createdAt,
  }) => InstallmentEventRow(
    id: id ?? this.id,
    installmentId: installmentId ?? this.installmentId,
    eventType: eventType ?? this.eventType,
    oldDueDate: oldDueDate.present ? oldDueDate.value : this.oldDueDate,
    newDueDate: newDueDate.present ? newDueDate.value : this.newDueDate,
    adjustmentAmount: adjustmentAmount.present
        ? adjustmentAmount.value
        : this.adjustmentAmount,
    reason: reason.present ? reason.value : this.reason,
    createdAt: createdAt ?? this.createdAt,
  );
  InstallmentEventRow copyWithCompanion(InstallmentEventsCompanion data) {
    return InstallmentEventRow(
      id: data.id.present ? data.id.value : this.id,
      installmentId: data.installmentId.present
          ? data.installmentId.value
          : this.installmentId,
      eventType: data.eventType.present ? data.eventType.value : this.eventType,
      oldDueDate: data.oldDueDate.present
          ? data.oldDueDate.value
          : this.oldDueDate,
      newDueDate: data.newDueDate.present
          ? data.newDueDate.value
          : this.newDueDate,
      adjustmentAmount: data.adjustmentAmount.present
          ? data.adjustmentAmount.value
          : this.adjustmentAmount,
      reason: data.reason.present ? data.reason.value : this.reason,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('InstallmentEventRow(')
          ..write('id: $id, ')
          ..write('installmentId: $installmentId, ')
          ..write('eventType: $eventType, ')
          ..write('oldDueDate: $oldDueDate, ')
          ..write('newDueDate: $newDueDate, ')
          ..write('adjustmentAmount: $adjustmentAmount, ')
          ..write('reason: $reason, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    installmentId,
    eventType,
    oldDueDate,
    newDueDate,
    adjustmentAmount,
    reason,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InstallmentEventRow &&
          other.id == this.id &&
          other.installmentId == this.installmentId &&
          other.eventType == this.eventType &&
          other.oldDueDate == this.oldDueDate &&
          other.newDueDate == this.newDueDate &&
          other.adjustmentAmount == this.adjustmentAmount &&
          other.reason == this.reason &&
          other.createdAt == this.createdAt);
}

class InstallmentEventsCompanion extends UpdateCompanion<InstallmentEventRow> {
  final Value<String> id;
  final Value<String> installmentId;
  final Value<String> eventType;
  final Value<String?> oldDueDate;
  final Value<String?> newDueDate;
  final Value<int?> adjustmentAmount;
  final Value<String?> reason;
  final Value<String> createdAt;
  final Value<int> rowid;
  const InstallmentEventsCompanion({
    this.id = const Value.absent(),
    this.installmentId = const Value.absent(),
    this.eventType = const Value.absent(),
    this.oldDueDate = const Value.absent(),
    this.newDueDate = const Value.absent(),
    this.adjustmentAmount = const Value.absent(),
    this.reason = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  InstallmentEventsCompanion.insert({
    required String id,
    required String installmentId,
    required String eventType,
    this.oldDueDate = const Value.absent(),
    this.newDueDate = const Value.absent(),
    this.adjustmentAmount = const Value.absent(),
    this.reason = const Value.absent(),
    required String createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       installmentId = Value(installmentId),
       eventType = Value(eventType),
       createdAt = Value(createdAt);
  static Insertable<InstallmentEventRow> custom({
    Expression<String>? id,
    Expression<String>? installmentId,
    Expression<String>? eventType,
    Expression<String>? oldDueDate,
    Expression<String>? newDueDate,
    Expression<int>? adjustmentAmount,
    Expression<String>? reason,
    Expression<String>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (installmentId != null) 'installment_id': installmentId,
      if (eventType != null) 'event_type': eventType,
      if (oldDueDate != null) 'old_due_date': oldDueDate,
      if (newDueDate != null) 'new_due_date': newDueDate,
      if (adjustmentAmount != null) 'adjustment_amount': adjustmentAmount,
      if (reason != null) 'reason': reason,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  InstallmentEventsCompanion copyWith({
    Value<String>? id,
    Value<String>? installmentId,
    Value<String>? eventType,
    Value<String?>? oldDueDate,
    Value<String?>? newDueDate,
    Value<int?>? adjustmentAmount,
    Value<String?>? reason,
    Value<String>? createdAt,
    Value<int>? rowid,
  }) {
    return InstallmentEventsCompanion(
      id: id ?? this.id,
      installmentId: installmentId ?? this.installmentId,
      eventType: eventType ?? this.eventType,
      oldDueDate: oldDueDate ?? this.oldDueDate,
      newDueDate: newDueDate ?? this.newDueDate,
      adjustmentAmount: adjustmentAmount ?? this.adjustmentAmount,
      reason: reason ?? this.reason,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (installmentId.present) {
      map['installment_id'] = Variable<String>(installmentId.value);
    }
    if (eventType.present) {
      map['event_type'] = Variable<String>(eventType.value);
    }
    if (oldDueDate.present) {
      map['old_due_date'] = Variable<String>(oldDueDate.value);
    }
    if (newDueDate.present) {
      map['new_due_date'] = Variable<String>(newDueDate.value);
    }
    if (adjustmentAmount.present) {
      map['adjustment_amount'] = Variable<int>(adjustmentAmount.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String>(reason.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InstallmentEventsCompanion(')
          ..write('id: $id, ')
          ..write('installmentId: $installmentId, ')
          ..write('eventType: $eventType, ')
          ..write('oldDueDate: $oldDueDate, ')
          ..write('newDueDate: $newDueDate, ')
          ..write('adjustmentAmount: $adjustmentAmount, ')
          ..write('reason: $reason, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $LoansTable loans = $LoansTable(this);
  late final $InstallmentsTable installments = $InstallmentsTable(this);
  late final $PaymentsTable payments = $PaymentsTable(this);
  late final $PaymentAllocationsTable paymentAllocations =
      $PaymentAllocationsTable(this);
  late final $LoanSettlementsTable loanSettlements = $LoanSettlementsTable(
    this,
  );
  late final $InstallmentEventsTable installmentEvents =
      $InstallmentEventsTable(this);
  late final Index idxLoansStatus = Index(
    'idx_loans_status',
    'CREATE INDEX idx_loans_status ON loans (status)',
  );
  late final Index idxInstallmentsDueDate = Index(
    'idx_installments_due_date',
    'CREATE INDEX idx_installments_due_date ON installments (due_date)',
  );
  late final Index idxInstallmentsJalaliMonth = Index(
    'idx_installments_jalali_month',
    'CREATE INDEX idx_installments_jalali_month ON installments (jalali_month)',
  );
  late final Index idxPaymentsLoan = Index(
    'idx_payments_loan',
    'CREATE INDEX idx_payments_loan ON payments (loan_id)',
  );
  late final Index idxAllocationsPayment = Index(
    'idx_allocations_payment',
    'CREATE INDEX idx_allocations_payment ON payment_allocations (payment_id)',
  );
  late final Index idxAllocationsInstallment = Index(
    'idx_allocations_installment',
    'CREATE INDEX idx_allocations_installment ON payment_allocations (installment_id)',
  );
  late final Index idxSettlementsLoan = Index(
    'idx_settlements_loan',
    'CREATE INDEX idx_settlements_loan ON loan_settlements (loan_id)',
  );
  late final Index idxEventsInstallment = Index(
    'idx_events_installment',
    'CREATE INDEX idx_events_installment ON installment_events (installment_id)',
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    loans,
    installments,
    payments,
    paymentAllocations,
    loanSettlements,
    installmentEvents,
    idxLoansStatus,
    idxInstallmentsDueDate,
    idxInstallmentsJalaliMonth,
    idxPaymentsLoan,
    idxAllocationsPayment,
    idxAllocationsInstallment,
    idxSettlementsLoan,
    idxEventsInstallment,
  ];
}

typedef $$LoansTableCreateCompanionBuilder = LoansCompanion Function({
  required String id,
  Value<String> userId,
  required String name,
  Value<String?> bankName,
  Value<String?> cardBin,
  required int principal,
  Value<int?> annualRateBp,
  required int termMonths,
  required String firstDueDate,
  required int dueDay,
  required int installmentAmount,
  required int totalInterest,
  required int totalReturn,
  required int effectiveRateBp,
  required String calculationMethod,
  Value<int> calculationVersion,
  Value<String> currency,
  Value<String> status,
  Value<String?> settledDate,
  Value<String?> note,
  required String createdAt,
  required String updatedAt,
  Value<String?> deletedAt,
  Value<int> rowid,
});
typedef $$LoansTableUpdateCompanionBuilder = LoansCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<String> name,
  Value<String?> bankName,
  Value<String?> cardBin,
  Value<int> principal,
  Value<int?> annualRateBp,
  Value<int> termMonths,
  Value<String> firstDueDate,
  Value<int> dueDay,
  Value<int> installmentAmount,
  Value<int> totalInterest,
  Value<int> totalReturn,
  Value<int> effectiveRateBp,
  Value<String> calculationMethod,
  Value<int> calculationVersion,
  Value<String> currency,
  Value<String> status,
  Value<String?> settledDate,
  Value<String?> note,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> rowid,
});

final class $$LoansTableReferences
    extends BaseReferences<_$AppDatabase, $LoansTable, LoanRow> {
  $$LoansTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$InstallmentsTable, List<InstallmentRow>>
  _installmentsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.installments,
    aliasName: 'loans__id__installments__loan_id',
  );

  $$InstallmentsTableProcessedTableManager get installmentsRefs {
    final manager = $$InstallmentsTableTableManager(
      $_db,
      $_db.installments,
    ).filter((f) => f.loanId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_installmentsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PaymentsTable, List<PaymentRow>>
  _paymentsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.payments,
    aliasName: 'loans__id__payments__loan_id',
  );

  $$PaymentsTableProcessedTableManager get paymentsRefs {
    final manager = $$PaymentsTableTableManager(
      $_db,
      $_db.payments,
    ).filter((f) => f.loanId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_paymentsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LoanSettlementsTable, List<LoanSettlementRow>>
  _loanSettlementsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.loanSettlements,
    aliasName: 'loans__id__loan_settlements__loan_id',
  );

  $$LoanSettlementsTableProcessedTableManager get loanSettlementsRefs {
    final manager = $$LoanSettlementsTableTableManager(
      $_db,
      $_db.loanSettlements,
    ).filter((f) => f.loanId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _loanSettlementsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$LoansTableFilterComposer extends Composer<_$AppDatabase, $LoansTable> {
  $$LoansTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bankName => $composableBuilder(
    column: $table.bankName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cardBin => $composableBuilder(
    column: $table.cardBin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get principal => $composableBuilder(
    column: $table.principal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get annualRateBp => $composableBuilder(
    column: $table.annualRateBp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get termMonths => $composableBuilder(
    column: $table.termMonths,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstDueDate => $composableBuilder(
    column: $table.firstDueDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dueDay => $composableBuilder(
    column: $table.dueDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get installmentAmount => $composableBuilder(
    column: $table.installmentAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalInterest => $composableBuilder(
    column: $table.totalInterest,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalReturn => $composableBuilder(
    column: $table.totalReturn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get effectiveRateBp => $composableBuilder(
    column: $table.effectiveRateBp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get calculationMethod => $composableBuilder(
    column: $table.calculationMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get calculationVersion => $composableBuilder(
    column: $table.calculationVersion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get settledDate => $composableBuilder(
    column: $table.settledDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> installmentsRefs(
    Expression<bool> Function($$InstallmentsTableFilterComposer f) f,
  ) {
    final $$InstallmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.installments,
      getReferencedColumn: (t) => t.loanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstallmentsTableFilterComposer(
            $db: $db,
            $table: $db.installments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> paymentsRefs(
    Expression<bool> Function($$PaymentsTableFilterComposer f) f,
  ) {
    final $$PaymentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.payments,
      getReferencedColumn: (t) => t.loanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PaymentsTableFilterComposer(
            $db: $db,
            $table: $db.payments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> loanSettlementsRefs(
    Expression<bool> Function($$LoanSettlementsTableFilterComposer f) f,
  ) {
    final $$LoanSettlementsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.loanSettlements,
      getReferencedColumn: (t) => t.loanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoanSettlementsTableFilterComposer(
            $db: $db,
            $table: $db.loanSettlements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LoansTableOrderingComposer
    extends Composer<_$AppDatabase, $LoansTable> {
  $$LoansTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bankName => $composableBuilder(
    column: $table.bankName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cardBin => $composableBuilder(
    column: $table.cardBin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get principal => $composableBuilder(
    column: $table.principal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get annualRateBp => $composableBuilder(
    column: $table.annualRateBp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get termMonths => $composableBuilder(
    column: $table.termMonths,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstDueDate => $composableBuilder(
    column: $table.firstDueDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dueDay => $composableBuilder(
    column: $table.dueDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get installmentAmount => $composableBuilder(
    column: $table.installmentAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalInterest => $composableBuilder(
    column: $table.totalInterest,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalReturn => $composableBuilder(
    column: $table.totalReturn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get effectiveRateBp => $composableBuilder(
    column: $table.effectiveRateBp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get calculationMethod => $composableBuilder(
    column: $table.calculationMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get calculationVersion => $composableBuilder(
    column: $table.calculationVersion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get settledDate => $composableBuilder(
    column: $table.settledDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LoansTableAnnotationComposer
    extends Composer<_$AppDatabase, $LoansTable> {
  $$LoansTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get bankName =>
      $composableBuilder(column: $table.bankName, builder: (column) => column);

  GeneratedColumn<String> get cardBin =>
      $composableBuilder(column: $table.cardBin, builder: (column) => column);

  GeneratedColumn<int> get principal =>
      $composableBuilder(column: $table.principal, builder: (column) => column);

  GeneratedColumn<int> get annualRateBp => $composableBuilder(
    column: $table.annualRateBp,
    builder: (column) => column,
  );

  GeneratedColumn<int> get termMonths => $composableBuilder(
    column: $table.termMonths,
    builder: (column) => column,
  );

  GeneratedColumn<String> get firstDueDate => $composableBuilder(
    column: $table.firstDueDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get dueDay =>
      $composableBuilder(column: $table.dueDay, builder: (column) => column);

  GeneratedColumn<int> get installmentAmount => $composableBuilder(
    column: $table.installmentAmount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalInterest => $composableBuilder(
    column: $table.totalInterest,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalReturn => $composableBuilder(
    column: $table.totalReturn,
    builder: (column) => column,
  );

  GeneratedColumn<int> get effectiveRateBp => $composableBuilder(
    column: $table.effectiveRateBp,
    builder: (column) => column,
  );

  GeneratedColumn<String> get calculationMethod => $composableBuilder(
    column: $table.calculationMethod,
    builder: (column) => column,
  );

  GeneratedColumn<int> get calculationVersion => $composableBuilder(
    column: $table.calculationVersion,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get settledDate => $composableBuilder(
    column: $table.settledDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  Expression<T> installmentsRefs<T extends Object>(
    Expression<T> Function($$InstallmentsTableAnnotationComposer a) f,
  ) {
    final $$InstallmentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.installments,
      getReferencedColumn: (t) => t.loanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstallmentsTableAnnotationComposer(
            $db: $db,
            $table: $db.installments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> paymentsRefs<T extends Object>(
    Expression<T> Function($$PaymentsTableAnnotationComposer a) f,
  ) {
    final $$PaymentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.payments,
      getReferencedColumn: (t) => t.loanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PaymentsTableAnnotationComposer(
            $db: $db,
            $table: $db.payments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> loanSettlementsRefs<T extends Object>(
    Expression<T> Function($$LoanSettlementsTableAnnotationComposer a) f,
  ) {
    final $$LoanSettlementsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.loanSettlements,
      getReferencedColumn: (t) => t.loanId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoanSettlementsTableAnnotationComposer(
            $db: $db,
            $table: $db.loanSettlements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LoansTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LoansTable,
          LoanRow,
          $$LoansTableFilterComposer,
          $$LoansTableOrderingComposer,
          $$LoansTableAnnotationComposer,
          $$LoansTableCreateCompanionBuilder,
          $$LoansTableUpdateCompanionBuilder,
          (LoanRow, $$LoansTableReferences),
          LoanRow,
          PrefetchHooks Function({
            bool installmentsRefs,
            bool paymentsRefs,
            bool loanSettlementsRefs,
          })
        > {
  $$LoansTableTableManager(_$AppDatabase db, $LoansTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LoansTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LoansTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LoansTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> bankName = const Value.absent(),
                Value<String?> cardBin = const Value.absent(),
                Value<int> principal = const Value.absent(),
                Value<int?> annualRateBp = const Value.absent(),
                Value<int> termMonths = const Value.absent(),
                Value<String> firstDueDate = const Value.absent(),
                Value<int> dueDay = const Value.absent(),
                Value<int> installmentAmount = const Value.absent(),
                Value<int> totalInterest = const Value.absent(),
                Value<int> totalReturn = const Value.absent(),
                Value<int> effectiveRateBp = const Value.absent(),
                Value<String> calculationMethod = const Value.absent(),
                Value<int> calculationVersion = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> settledDate = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoansCompanion(
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
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String> userId = const Value.absent(),
                required String name,
                Value<String?> bankName = const Value.absent(),
                Value<String?> cardBin = const Value.absent(),
                required int principal,
                Value<int?> annualRateBp = const Value.absent(),
                required int termMonths,
                required String firstDueDate,
                required int dueDay,
                required int installmentAmount,
                required int totalInterest,
                required int totalReturn,
                required int effectiveRateBp,
                required String calculationMethod,
                Value<int> calculationVersion = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> settledDate = const Value.absent(),
                Value<String?> note = const Value.absent(),
                required String createdAt,
                required String updatedAt,
                Value<String?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoansCompanion.insert(
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
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$LoansTable, LoanRow>(table),
                  $$LoansTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                installmentsRefs = false,
                paymentsRefs = false,
                loanSettlementsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (installmentsRefs) db.installments,
                    if (paymentsRefs) db.payments,
                    if (loanSettlementsRefs) db.loanSettlements,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (installmentsRefs)
                        await $_getPrefetchedDataByColumns<
                          LoanRow,
                          $LoansTable,
                          InstallmentRow,
                          $InstallmentsTable
                        >(
                          currentTable: table,
                          referencedTable: $$LoansTableReferences
                              ._installmentsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$LoansTableReferences(
                                db,
                                table,
                                p0,
                              ).installmentsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'loan_id',
                          typedResults: items,
                        ),
                      if (paymentsRefs)
                        await $_getPrefetchedDataByColumns<
                          LoanRow,
                          $LoansTable,
                          PaymentRow,
                          $PaymentsTable
                        >(
                          currentTable: table,
                          referencedTable: $$LoansTableReferences
                              ._paymentsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$LoansTableReferences(
                                db,
                                table,
                                p0,
                              ).paymentsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'loan_id',
                          typedResults: items,
                        ),
                      if (loanSettlementsRefs)
                        await $_getPrefetchedDataByColumns<
                          LoanRow,
                          $LoansTable,
                          LoanSettlementRow,
                          $LoanSettlementsTable
                        >(
                          currentTable: table,
                          referencedTable: $$LoansTableReferences
                              ._loanSettlementsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$LoansTableReferences(
                                db,
                                table,
                                p0,
                              ).loanSettlementsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'loan_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$LoansTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LoansTable,
      LoanRow,
      $$LoansTableFilterComposer,
      $$LoansTableOrderingComposer,
      $$LoansTableAnnotationComposer,
      $$LoansTableCreateCompanionBuilder,
      $$LoansTableUpdateCompanionBuilder,
      (LoanRow, $$LoansTableReferences),
      LoanRow,
      PrefetchHooks Function({
        bool installmentsRefs,
        bool paymentsRefs,
        bool loanSettlementsRefs,
      })
    >;
typedef $$InstallmentsTableCreateCompanionBuilder =
    InstallmentsCompanion Function({
      required String id,
      required String loanId,
      required int sequenceNumber,
      required String dueDate,
      required String jalaliMonth,
      required int amount,
      Value<int> paidAmount,
      Value<int> waivedAmount,
      required String createdAt,
      required String updatedAt,
      Value<int> rowid,
    });
typedef $$InstallmentsTableUpdateCompanionBuilder =
    InstallmentsCompanion Function({
      Value<String> id,
      Value<String> loanId,
      Value<int> sequenceNumber,
      Value<String> dueDate,
      Value<String> jalaliMonth,
      Value<int> amount,
      Value<int> paidAmount,
      Value<int> waivedAmount,
      Value<String> createdAt,
      Value<String> updatedAt,
      Value<int> rowid,
    });

final class $$InstallmentsTableReferences
    extends BaseReferences<_$AppDatabase, $InstallmentsTable, InstallmentRow> {
  $$InstallmentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $LoansTable _loanIdTable(_$AppDatabase db) =>
      db.loans.createAlias('installments__loan_id__loans__id');

  $$LoansTableProcessedTableManager get loanId {
    final $_column = $_itemColumn<String>('loan_id')!;

    final manager = $$LoansTableTableManager(
      $_db,
      $_db.loans,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_loanIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $PaymentAllocationsTable,
    List<PaymentAllocationRow>
  >
  _paymentAllocationsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.paymentAllocations,
        aliasName: 'installments__id__payment_allocations__installment_id',
      );

  $$PaymentAllocationsTableProcessedTableManager get paymentAllocationsRefs {
    final manager = $$PaymentAllocationsTableTableManager(
      $_db,
      $_db.paymentAllocations,
    ).filter((f) => f.installmentId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _paymentAllocationsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$InstallmentEventsTable, List<InstallmentEventRow>>
  _installmentEventsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.installmentEvents,
        aliasName: 'installments__id__installment_events__installment_id',
      );

  $$InstallmentEventsTableProcessedTableManager get installmentEventsRefs {
    final manager = $$InstallmentEventsTableTableManager(
      $_db,
      $_db.installmentEvents,
    ).filter((f) => f.installmentId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _installmentEventsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$InstallmentsTableFilterComposer
    extends Composer<_$AppDatabase, $InstallmentsTable> {
  $$InstallmentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sequenceNumber => $composableBuilder(
    column: $table.sequenceNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get dueDate => $composableBuilder(
    column: $table.dueDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get jalaliMonth => $composableBuilder(
    column: $table.jalaliMonth,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get paidAmount => $composableBuilder(
    column: $table.paidAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get waivedAmount => $composableBuilder(
    column: $table.waivedAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$LoansTableFilterComposer get loanId {
    final $$LoansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.loanId,
      referencedTable: $db.loans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoansTableFilterComposer(
            $db: $db,
            $table: $db.loans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> paymentAllocationsRefs(
    Expression<bool> Function($$PaymentAllocationsTableFilterComposer f) f,
  ) {
    final $$PaymentAllocationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.paymentAllocations,
      getReferencedColumn: (t) => t.installmentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PaymentAllocationsTableFilterComposer(
            $db: $db,
            $table: $db.paymentAllocations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> installmentEventsRefs(
    Expression<bool> Function($$InstallmentEventsTableFilterComposer f) f,
  ) {
    final $$InstallmentEventsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.installmentEvents,
      getReferencedColumn: (t) => t.installmentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstallmentEventsTableFilterComposer(
            $db: $db,
            $table: $db.installmentEvents,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$InstallmentsTableOrderingComposer
    extends Composer<_$AppDatabase, $InstallmentsTable> {
  $$InstallmentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sequenceNumber => $composableBuilder(
    column: $table.sequenceNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dueDate => $composableBuilder(
    column: $table.dueDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get jalaliMonth => $composableBuilder(
    column: $table.jalaliMonth,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get paidAmount => $composableBuilder(
    column: $table.paidAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get waivedAmount => $composableBuilder(
    column: $table.waivedAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$LoansTableOrderingComposer get loanId {
    final $$LoansTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.loanId,
      referencedTable: $db.loans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoansTableOrderingComposer(
            $db: $db,
            $table: $db.loans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InstallmentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $InstallmentsTable> {
  $$InstallmentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get sequenceNumber => $composableBuilder(
    column: $table.sequenceNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get dueDate =>
      $composableBuilder(column: $table.dueDate, builder: (column) => column);

  GeneratedColumn<String> get jalaliMonth => $composableBuilder(
    column: $table.jalaliMonth,
    builder: (column) => column,
  );

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<int> get paidAmount => $composableBuilder(
    column: $table.paidAmount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get waivedAmount => $composableBuilder(
    column: $table.waivedAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$LoansTableAnnotationComposer get loanId {
    final $$LoansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.loanId,
      referencedTable: $db.loans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoansTableAnnotationComposer(
            $db: $db,
            $table: $db.loans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> paymentAllocationsRefs<T extends Object>(
    Expression<T> Function($$PaymentAllocationsTableAnnotationComposer a) f,
  ) {
    final $$PaymentAllocationsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.paymentAllocations,
          getReferencedColumn: (t) => t.installmentId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PaymentAllocationsTableAnnotationComposer(
                $db: $db,
                $table: $db.paymentAllocations,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> installmentEventsRefs<T extends Object>(
    Expression<T> Function($$InstallmentEventsTableAnnotationComposer a) f,
  ) {
    final $$InstallmentEventsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.installmentEvents,
          getReferencedColumn: (t) => t.installmentId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$InstallmentEventsTableAnnotationComposer(
                $db: $db,
                $table: $db.installmentEvents,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$InstallmentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $InstallmentsTable,
          InstallmentRow,
          $$InstallmentsTableFilterComposer,
          $$InstallmentsTableOrderingComposer,
          $$InstallmentsTableAnnotationComposer,
          $$InstallmentsTableCreateCompanionBuilder,
          $$InstallmentsTableUpdateCompanionBuilder,
          (InstallmentRow, $$InstallmentsTableReferences),
          InstallmentRow,
          PrefetchHooks Function({
            bool loanId,
            bool paymentAllocationsRefs,
            bool installmentEventsRefs,
          })
        > {
  $$InstallmentsTableTableManager(_$AppDatabase db, $InstallmentsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$InstallmentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$InstallmentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$InstallmentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> loanId = const Value.absent(),
                Value<int> sequenceNumber = const Value.absent(),
                Value<String> dueDate = const Value.absent(),
                Value<String> jalaliMonth = const Value.absent(),
                Value<int> amount = const Value.absent(),
                Value<int> paidAmount = const Value.absent(),
                Value<int> waivedAmount = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => InstallmentsCompanion(
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
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String loanId,
                required int sequenceNumber,
                required String dueDate,
                required String jalaliMonth,
                required int amount,
                Value<int> paidAmount = const Value.absent(),
                Value<int> waivedAmount = const Value.absent(),
                required String createdAt,
                required String updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => InstallmentsCompanion.insert(
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
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$InstallmentsTable, InstallmentRow>(table),
                  $$InstallmentsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                loanId = false,
                paymentAllocationsRefs = false,
                installmentEventsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (paymentAllocationsRefs) db.paymentAllocations,
                    if (installmentEventsRefs) db.installmentEvents,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (loanId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.loanId,
                            referencedTable: $$InstallmentsTableReferences
                                ._loanIdTable(db),
                            referencedColumn: $$InstallmentsTableReferences
                                ._loanIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (paymentAllocationsRefs)
                        await $_getPrefetchedDataByColumns<
                          InstallmentRow,
                          $InstallmentsTable,
                          PaymentAllocationRow,
                          $PaymentAllocationsTable
                        >(
                          currentTable: table,
                          referencedTable: $$InstallmentsTableReferences
                              ._paymentAllocationsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$InstallmentsTableReferences(
                                db,
                                table,
                                p0,
                              ).paymentAllocationsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'installment_id',
                          typedResults: items,
                        ),
                      if (installmentEventsRefs)
                        await $_getPrefetchedDataByColumns<
                          InstallmentRow,
                          $InstallmentsTable,
                          InstallmentEventRow,
                          $InstallmentEventsTable
                        >(
                          currentTable: table,
                          referencedTable: $$InstallmentsTableReferences
                              ._installmentEventsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$InstallmentsTableReferences(
                                db,
                                table,
                                p0,
                              ).installmentEventsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'installment_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$InstallmentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $InstallmentsTable,
      InstallmentRow,
      $$InstallmentsTableFilterComposer,
      $$InstallmentsTableOrderingComposer,
      $$InstallmentsTableAnnotationComposer,
      $$InstallmentsTableCreateCompanionBuilder,
      $$InstallmentsTableUpdateCompanionBuilder,
      (InstallmentRow, $$InstallmentsTableReferences),
      InstallmentRow,
      PrefetchHooks Function({
        bool loanId,
        bool paymentAllocationsRefs,
        bool installmentEventsRefs,
      })
    >;
typedef $$PaymentsTableCreateCompanionBuilder = PaymentsCompanion Function({
  required String id,
  required String loanId,
  required String paymentDate,
  required int amount,
  Value<int> unallocatedAmount,
  Value<String?> referenceNumber,
  Value<String?> note,
  required String createdAt,
  required String updatedAt,
  Value<String?> deletedAt,
  Value<int> rowid,
});
typedef $$PaymentsTableUpdateCompanionBuilder = PaymentsCompanion Function({
  Value<String> id,
  Value<String> loanId,
  Value<String> paymentDate,
  Value<int> amount,
  Value<int> unallocatedAmount,
  Value<String?> referenceNumber,
  Value<String?> note,
  Value<String> createdAt,
  Value<String> updatedAt,
  Value<String?> deletedAt,
  Value<int> rowid,
});

final class $$PaymentsTableReferences
    extends BaseReferences<_$AppDatabase, $PaymentsTable, PaymentRow> {
  $$PaymentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $LoansTable _loanIdTable(_$AppDatabase db) =>
      db.loans.createAlias('payments__loan_id__loans__id');

  $$LoansTableProcessedTableManager get loanId {
    final $_column = $_itemColumn<String>('loan_id')!;

    final manager = $$LoansTableTableManager(
      $_db,
      $_db.loans,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_loanIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $PaymentAllocationsTable,
    List<PaymentAllocationRow>
  >
  _paymentAllocationsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.paymentAllocations,
        aliasName: 'payments__id__payment_allocations__payment_id',
      );

  $$PaymentAllocationsTableProcessedTableManager get paymentAllocationsRefs {
    final manager = $$PaymentAllocationsTableTableManager(
      $_db,
      $_db.paymentAllocations,
    ).filter((f) => f.paymentId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _paymentAllocationsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PaymentsTableFilterComposer
    extends Composer<_$AppDatabase, $PaymentsTable> {
  $$PaymentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paymentDate => $composableBuilder(
    column: $table.paymentDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get unallocatedAmount => $composableBuilder(
    column: $table.unallocatedAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get referenceNumber => $composableBuilder(
    column: $table.referenceNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$LoansTableFilterComposer get loanId {
    final $$LoansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.loanId,
      referencedTable: $db.loans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoansTableFilterComposer(
            $db: $db,
            $table: $db.loans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> paymentAllocationsRefs(
    Expression<bool> Function($$PaymentAllocationsTableFilterComposer f) f,
  ) {
    final $$PaymentAllocationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.paymentAllocations,
      getReferencedColumn: (t) => t.paymentId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PaymentAllocationsTableFilterComposer(
            $db: $db,
            $table: $db.paymentAllocations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PaymentsTableOrderingComposer
    extends Composer<_$AppDatabase, $PaymentsTable> {
  $$PaymentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paymentDate => $composableBuilder(
    column: $table.paymentDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get unallocatedAmount => $composableBuilder(
    column: $table.unallocatedAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get referenceNumber => $composableBuilder(
    column: $table.referenceNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get deletedAt => $composableBuilder(
    column: $table.deletedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$LoansTableOrderingComposer get loanId {
    final $$LoansTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.loanId,
      referencedTable: $db.loans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoansTableOrderingComposer(
            $db: $db,
            $table: $db.loans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PaymentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PaymentsTable> {
  $$PaymentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get paymentDate => $composableBuilder(
    column: $table.paymentDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<int> get unallocatedAmount => $composableBuilder(
    column: $table.unallocatedAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get referenceNumber => $composableBuilder(
    column: $table.referenceNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$LoansTableAnnotationComposer get loanId {
    final $$LoansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.loanId,
      referencedTable: $db.loans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoansTableAnnotationComposer(
            $db: $db,
            $table: $db.loans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> paymentAllocationsRefs<T extends Object>(
    Expression<T> Function($$PaymentAllocationsTableAnnotationComposer a) f,
  ) {
    final $$PaymentAllocationsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.paymentAllocations,
          getReferencedColumn: (t) => t.paymentId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PaymentAllocationsTableAnnotationComposer(
                $db: $db,
                $table: $db.paymentAllocations,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$PaymentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PaymentsTable,
          PaymentRow,
          $$PaymentsTableFilterComposer,
          $$PaymentsTableOrderingComposer,
          $$PaymentsTableAnnotationComposer,
          $$PaymentsTableCreateCompanionBuilder,
          $$PaymentsTableUpdateCompanionBuilder,
          (PaymentRow, $$PaymentsTableReferences),
          PaymentRow,
          PrefetchHooks Function({bool loanId, bool paymentAllocationsRefs})
        > {
  $$PaymentsTableTableManager(_$AppDatabase db, $PaymentsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PaymentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PaymentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PaymentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> loanId = const Value.absent(),
                Value<String> paymentDate = const Value.absent(),
                Value<int> amount = const Value.absent(),
                Value<int> unallocatedAmount = const Value.absent(),
                Value<String?> referenceNumber = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<String?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PaymentsCompanion(
                id: id,
                loanId: loanId,
                paymentDate: paymentDate,
                amount: amount,
                unallocatedAmount: unallocatedAmount,
                referenceNumber: referenceNumber,
                note: note,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String loanId,
                required String paymentDate,
                required int amount,
                Value<int> unallocatedAmount = const Value.absent(),
                Value<String?> referenceNumber = const Value.absent(),
                Value<String?> note = const Value.absent(),
                required String createdAt,
                required String updatedAt,
                Value<String?> deletedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PaymentsCompanion.insert(
                id: id,
                loanId: loanId,
                paymentDate: paymentDate,
                amount: amount,
                unallocatedAmount: unallocatedAmount,
                referenceNumber: referenceNumber,
                note: note,
                createdAt: createdAt,
                updatedAt: updatedAt,
                deletedAt: deletedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PaymentsTable, PaymentRow>(table),
                  $$PaymentsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({loanId = false, paymentAllocationsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (paymentAllocationsRefs) db.paymentAllocations,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (loanId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.loanId,
                            referencedTable: $$PaymentsTableReferences
                                ._loanIdTable(db),
                            referencedColumn: $$PaymentsTableReferences
                                ._loanIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (paymentAllocationsRefs)
                        await $_getPrefetchedDataByColumns<
                          PaymentRow,
                          $PaymentsTable,
                          PaymentAllocationRow,
                          $PaymentAllocationsTable
                        >(
                          currentTable: table,
                          referencedTable: $$PaymentsTableReferences
                              ._paymentAllocationsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PaymentsTableReferences(
                                db,
                                table,
                                p0,
                              ).paymentAllocationsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'payment_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PaymentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PaymentsTable,
      PaymentRow,
      $$PaymentsTableFilterComposer,
      $$PaymentsTableOrderingComposer,
      $$PaymentsTableAnnotationComposer,
      $$PaymentsTableCreateCompanionBuilder,
      $$PaymentsTableUpdateCompanionBuilder,
      (PaymentRow, $$PaymentsTableReferences),
      PaymentRow,
      PrefetchHooks Function({bool loanId, bool paymentAllocationsRefs})
    >;
typedef $$PaymentAllocationsTableCreateCompanionBuilder =
    PaymentAllocationsCompanion Function({
      required String id,
      required String paymentId,
      Value<String?> installmentId,
      required int amount,
      required String createdAt,
      Value<int> rowid,
    });
typedef $$PaymentAllocationsTableUpdateCompanionBuilder =
    PaymentAllocationsCompanion Function({
      Value<String> id,
      Value<String> paymentId,
      Value<String?> installmentId,
      Value<int> amount,
      Value<String> createdAt,
      Value<int> rowid,
    });

final class $$PaymentAllocationsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PaymentAllocationsTable,
          PaymentAllocationRow
        > {
  $$PaymentAllocationsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PaymentsTable _paymentIdTable(_$AppDatabase db) =>
      db.payments.createAlias('payment_allocations__payment_id__payments__id');

  $$PaymentsTableProcessedTableManager get paymentId {
    final $_column = $_itemColumn<String>('payment_id')!;

    final manager = $$PaymentsTableTableManager(
      $_db,
      $_db.payments,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_paymentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $InstallmentsTable _installmentIdTable(_$AppDatabase db) => db
      .installments
      .createAlias('payment_allocations__installment_id__installments__id');

  $$InstallmentsTableProcessedTableManager? get installmentId {
    final $_column = $_itemColumn<String>('installment_id');
    if ($_column == null) return null;
    final manager = $$InstallmentsTableTableManager(
      $_db,
      $_db.installments,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_installmentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PaymentAllocationsTableFilterComposer
    extends Composer<_$AppDatabase, $PaymentAllocationsTable> {
  $$PaymentAllocationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$PaymentsTableFilterComposer get paymentId {
    final $$PaymentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.paymentId,
      referencedTable: $db.payments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PaymentsTableFilterComposer(
            $db: $db,
            $table: $db.payments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$InstallmentsTableFilterComposer get installmentId {
    final $$InstallmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.installmentId,
      referencedTable: $db.installments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstallmentsTableFilterComposer(
            $db: $db,
            $table: $db.installments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PaymentAllocationsTableOrderingComposer
    extends Composer<_$AppDatabase, $PaymentAllocationsTable> {
  $$PaymentAllocationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$PaymentsTableOrderingComposer get paymentId {
    final $$PaymentsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.paymentId,
      referencedTable: $db.payments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PaymentsTableOrderingComposer(
            $db: $db,
            $table: $db.payments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$InstallmentsTableOrderingComposer get installmentId {
    final $$InstallmentsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.installmentId,
      referencedTable: $db.installments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstallmentsTableOrderingComposer(
            $db: $db,
            $table: $db.installments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PaymentAllocationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PaymentAllocationsTable> {
  $$PaymentAllocationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$PaymentsTableAnnotationComposer get paymentId {
    final $$PaymentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.paymentId,
      referencedTable: $db.payments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PaymentsTableAnnotationComposer(
            $db: $db,
            $table: $db.payments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$InstallmentsTableAnnotationComposer get installmentId {
    final $$InstallmentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.installmentId,
      referencedTable: $db.installments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstallmentsTableAnnotationComposer(
            $db: $db,
            $table: $db.installments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PaymentAllocationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PaymentAllocationsTable,
          PaymentAllocationRow,
          $$PaymentAllocationsTableFilterComposer,
          $$PaymentAllocationsTableOrderingComposer,
          $$PaymentAllocationsTableAnnotationComposer,
          $$PaymentAllocationsTableCreateCompanionBuilder,
          $$PaymentAllocationsTableUpdateCompanionBuilder,
          (PaymentAllocationRow, $$PaymentAllocationsTableReferences),
          PaymentAllocationRow,
          PrefetchHooks Function({bool paymentId, bool installmentId})
        > {
  $$PaymentAllocationsTableTableManager(
    _$AppDatabase db,
    $PaymentAllocationsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PaymentAllocationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PaymentAllocationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PaymentAllocationsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> paymentId = const Value.absent(),
                Value<String?> installmentId = const Value.absent(),
                Value<int> amount = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PaymentAllocationsCompanion(
                id: id,
                paymentId: paymentId,
                installmentId: installmentId,
                amount: amount,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String paymentId,
                Value<String?> installmentId = const Value.absent(),
                required int amount,
                required String createdAt,
                Value<int> rowid = const Value.absent(),
              }) => PaymentAllocationsCompanion.insert(
                id: id,
                paymentId: paymentId,
                installmentId: installmentId,
                amount: amount,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PaymentAllocationsTable, PaymentAllocationRow>(
                    table,
                  ),
                  $$PaymentAllocationsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({paymentId = false, installmentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (paymentId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.paymentId,
                        referencedTable: $$PaymentAllocationsTableReferences
                            ._paymentIdTable(db),
                        referencedColumn: $$PaymentAllocationsTableReferences
                            ._paymentIdTable(db)
                            .id,
                      ) as T;
                    }
                    if (installmentId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.installmentId,
                        referencedTable: $$PaymentAllocationsTableReferences
                            ._installmentIdTable(db),
                        referencedColumn: $$PaymentAllocationsTableReferences
                            ._installmentIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PaymentAllocationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PaymentAllocationsTable,
      PaymentAllocationRow,
      $$PaymentAllocationsTableFilterComposer,
      $$PaymentAllocationsTableOrderingComposer,
      $$PaymentAllocationsTableAnnotationComposer,
      $$PaymentAllocationsTableCreateCompanionBuilder,
      $$PaymentAllocationsTableUpdateCompanionBuilder,
      (PaymentAllocationRow, $$PaymentAllocationsTableReferences),
      PaymentAllocationRow,
      PrefetchHooks Function({bool paymentId, bool installmentId})
    >;
typedef $$LoanSettlementsTableCreateCompanionBuilder =
    LoanSettlementsCompanion Function({
      required String id,
      required String loanId,
      required String settlementDate,
      required int amountPaid,
      required int remainingBefore,
      Value<int> discountAmount,
      Value<String?> note,
      required String createdAt,
      Value<int> rowid,
    });
typedef $$LoanSettlementsTableUpdateCompanionBuilder =
    LoanSettlementsCompanion Function({
      Value<String> id,
      Value<String> loanId,
      Value<String> settlementDate,
      Value<int> amountPaid,
      Value<int> remainingBefore,
      Value<int> discountAmount,
      Value<String?> note,
      Value<String> createdAt,
      Value<int> rowid,
    });

final class $$LoanSettlementsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $LoanSettlementsTable,
          LoanSettlementRow
        > {
  $$LoanSettlementsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $LoansTable _loanIdTable(_$AppDatabase db) =>
      db.loans.createAlias('loan_settlements__loan_id__loans__id');

  $$LoansTableProcessedTableManager get loanId {
    final $_column = $_itemColumn<String>('loan_id')!;

    final manager = $$LoansTableTableManager(
      $_db,
      $_db.loans,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_loanIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$LoanSettlementsTableFilterComposer
    extends Composer<_$AppDatabase, $LoanSettlementsTable> {
  $$LoanSettlementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get settlementDate => $composableBuilder(
    column: $table.settlementDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amountPaid => $composableBuilder(
    column: $table.amountPaid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get remainingBefore => $composableBuilder(
    column: $table.remainingBefore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get discountAmount => $composableBuilder(
    column: $table.discountAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$LoansTableFilterComposer get loanId {
    final $$LoansTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.loanId,
      referencedTable: $db.loans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoansTableFilterComposer(
            $db: $db,
            $table: $db.loans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LoanSettlementsTableOrderingComposer
    extends Composer<_$AppDatabase, $LoanSettlementsTable> {
  $$LoanSettlementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get settlementDate => $composableBuilder(
    column: $table.settlementDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amountPaid => $composableBuilder(
    column: $table.amountPaid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get remainingBefore => $composableBuilder(
    column: $table.remainingBefore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get discountAmount => $composableBuilder(
    column: $table.discountAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$LoansTableOrderingComposer get loanId {
    final $$LoansTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.loanId,
      referencedTable: $db.loans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoansTableOrderingComposer(
            $db: $db,
            $table: $db.loans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LoanSettlementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LoanSettlementsTable> {
  $$LoanSettlementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get settlementDate => $composableBuilder(
    column: $table.settlementDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get amountPaid => $composableBuilder(
    column: $table.amountPaid,
    builder: (column) => column,
  );

  GeneratedColumn<int> get remainingBefore => $composableBuilder(
    column: $table.remainingBefore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get discountAmount => $composableBuilder(
    column: $table.discountAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$LoansTableAnnotationComposer get loanId {
    final $$LoansTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.loanId,
      referencedTable: $db.loans,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LoansTableAnnotationComposer(
            $db: $db,
            $table: $db.loans,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LoanSettlementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LoanSettlementsTable,
          LoanSettlementRow,
          $$LoanSettlementsTableFilterComposer,
          $$LoanSettlementsTableOrderingComposer,
          $$LoanSettlementsTableAnnotationComposer,
          $$LoanSettlementsTableCreateCompanionBuilder,
          $$LoanSettlementsTableUpdateCompanionBuilder,
          (LoanSettlementRow, $$LoanSettlementsTableReferences),
          LoanSettlementRow,
          PrefetchHooks Function({bool loanId})
        > {
  $$LoanSettlementsTableTableManager(
    _$AppDatabase db,
    $LoanSettlementsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LoanSettlementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LoanSettlementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LoanSettlementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> loanId = const Value.absent(),
                Value<String> settlementDate = const Value.absent(),
                Value<int> amountPaid = const Value.absent(),
                Value<int> remainingBefore = const Value.absent(),
                Value<int> discountAmount = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LoanSettlementsCompanion(
                id: id,
                loanId: loanId,
                settlementDate: settlementDate,
                amountPaid: amountPaid,
                remainingBefore: remainingBefore,
                discountAmount: discountAmount,
                note: note,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String loanId,
                required String settlementDate,
                required int amountPaid,
                required int remainingBefore,
                Value<int> discountAmount = const Value.absent(),
                Value<String?> note = const Value.absent(),
                required String createdAt,
                Value<int> rowid = const Value.absent(),
              }) => LoanSettlementsCompanion.insert(
                id: id,
                loanId: loanId,
                settlementDate: settlementDate,
                amountPaid: amountPaid,
                remainingBefore: remainingBefore,
                discountAmount: discountAmount,
                note: note,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$LoanSettlementsTable, LoanSettlementRow>(table),
                  $$LoanSettlementsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({loanId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (loanId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.loanId,
                        referencedTable: $$LoanSettlementsTableReferences
                            ._loanIdTable(db),
                        referencedColumn: $$LoanSettlementsTableReferences
                            ._loanIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$LoanSettlementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LoanSettlementsTable,
      LoanSettlementRow,
      $$LoanSettlementsTableFilterComposer,
      $$LoanSettlementsTableOrderingComposer,
      $$LoanSettlementsTableAnnotationComposer,
      $$LoanSettlementsTableCreateCompanionBuilder,
      $$LoanSettlementsTableUpdateCompanionBuilder,
      (LoanSettlementRow, $$LoanSettlementsTableReferences),
      LoanSettlementRow,
      PrefetchHooks Function({bool loanId})
    >;
typedef $$InstallmentEventsTableCreateCompanionBuilder =
    InstallmentEventsCompanion Function({
      required String id,
      required String installmentId,
      required String eventType,
      Value<String?> oldDueDate,
      Value<String?> newDueDate,
      Value<int?> adjustmentAmount,
      Value<String?> reason,
      required String createdAt,
      Value<int> rowid,
    });
typedef $$InstallmentEventsTableUpdateCompanionBuilder =
    InstallmentEventsCompanion Function({
      Value<String> id,
      Value<String> installmentId,
      Value<String> eventType,
      Value<String?> oldDueDate,
      Value<String?> newDueDate,
      Value<int?> adjustmentAmount,
      Value<String?> reason,
      Value<String> createdAt,
      Value<int> rowid,
    });

final class $$InstallmentEventsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $InstallmentEventsTable,
          InstallmentEventRow
        > {
  $$InstallmentEventsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $InstallmentsTable _installmentIdTable(_$AppDatabase db) => db
      .installments
      .createAlias('installment_events__installment_id__installments__id');

  $$InstallmentsTableProcessedTableManager get installmentId {
    final $_column = $_itemColumn<String>('installment_id')!;

    final manager = $$InstallmentsTableTableManager(
      $_db,
      $_db.installments,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_installmentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$InstallmentEventsTableFilterComposer
    extends Composer<_$AppDatabase, $InstallmentEventsTable> {
  $$InstallmentEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get eventType => $composableBuilder(
    column: $table.eventType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get oldDueDate => $composableBuilder(
    column: $table.oldDueDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get newDueDate => $composableBuilder(
    column: $table.newDueDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get adjustmentAmount => $composableBuilder(
    column: $table.adjustmentAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reason => $composableBuilder(
    column: $table.reason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$InstallmentsTableFilterComposer get installmentId {
    final $$InstallmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.installmentId,
      referencedTable: $db.installments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstallmentsTableFilterComposer(
            $db: $db,
            $table: $db.installments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InstallmentEventsTableOrderingComposer
    extends Composer<_$AppDatabase, $InstallmentEventsTable> {
  $$InstallmentEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get eventType => $composableBuilder(
    column: $table.eventType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get oldDueDate => $composableBuilder(
    column: $table.oldDueDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get newDueDate => $composableBuilder(
    column: $table.newDueDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get adjustmentAmount => $composableBuilder(
    column: $table.adjustmentAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reason => $composableBuilder(
    column: $table.reason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$InstallmentsTableOrderingComposer get installmentId {
    final $$InstallmentsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.installmentId,
      referencedTable: $db.installments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstallmentsTableOrderingComposer(
            $db: $db,
            $table: $db.installments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InstallmentEventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $InstallmentEventsTable> {
  $$InstallmentEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get eventType =>
      $composableBuilder(column: $table.eventType, builder: (column) => column);

  GeneratedColumn<String> get oldDueDate => $composableBuilder(
    column: $table.oldDueDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get newDueDate => $composableBuilder(
    column: $table.newDueDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get adjustmentAmount => $composableBuilder(
    column: $table.adjustmentAmount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get reason =>
      $composableBuilder(column: $table.reason, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$InstallmentsTableAnnotationComposer get installmentId {
    final $$InstallmentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.installmentId,
      referencedTable: $db.installments,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$InstallmentsTableAnnotationComposer(
            $db: $db,
            $table: $db.installments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$InstallmentEventsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $InstallmentEventsTable,
          InstallmentEventRow,
          $$InstallmentEventsTableFilterComposer,
          $$InstallmentEventsTableOrderingComposer,
          $$InstallmentEventsTableAnnotationComposer,
          $$InstallmentEventsTableCreateCompanionBuilder,
          $$InstallmentEventsTableUpdateCompanionBuilder,
          (InstallmentEventRow, $$InstallmentEventsTableReferences),
          InstallmentEventRow,
          PrefetchHooks Function({bool installmentId})
        > {
  $$InstallmentEventsTableTableManager(
    _$AppDatabase db,
    $InstallmentEventsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$InstallmentEventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$InstallmentEventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$InstallmentEventsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> installmentId = const Value.absent(),
                Value<String> eventType = const Value.absent(),
                Value<String?> oldDueDate = const Value.absent(),
                Value<String?> newDueDate = const Value.absent(),
                Value<int?> adjustmentAmount = const Value.absent(),
                Value<String?> reason = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => InstallmentEventsCompanion(
                id: id,
                installmentId: installmentId,
                eventType: eventType,
                oldDueDate: oldDueDate,
                newDueDate: newDueDate,
                adjustmentAmount: adjustmentAmount,
                reason: reason,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String installmentId,
                required String eventType,
                Value<String?> oldDueDate = const Value.absent(),
                Value<String?> newDueDate = const Value.absent(),
                Value<int?> adjustmentAmount = const Value.absent(),
                Value<String?> reason = const Value.absent(),
                required String createdAt,
                Value<int> rowid = const Value.absent(),
              }) => InstallmentEventsCompanion.insert(
                id: id,
                installmentId: installmentId,
                eventType: eventType,
                oldDueDate: oldDueDate,
                newDueDate: newDueDate,
                adjustmentAmount: adjustmentAmount,
                reason: reason,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$InstallmentEventsTable, InstallmentEventRow>(
                    table,
                  ),
                  $$InstallmentEventsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({installmentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (installmentId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.installmentId,
                        referencedTable: $$InstallmentEventsTableReferences
                            ._installmentIdTable(db),
                        referencedColumn: $$InstallmentEventsTableReferences
                            ._installmentIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$InstallmentEventsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $InstallmentEventsTable,
      InstallmentEventRow,
      $$InstallmentEventsTableFilterComposer,
      $$InstallmentEventsTableOrderingComposer,
      $$InstallmentEventsTableAnnotationComposer,
      $$InstallmentEventsTableCreateCompanionBuilder,
      $$InstallmentEventsTableUpdateCompanionBuilder,
      (InstallmentEventRow, $$InstallmentEventsTableReferences),
      InstallmentEventRow,
      PrefetchHooks Function({bool installmentId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$LoansTableTableManager get loans =>
      $$LoansTableTableManager(_db, _db.loans);
  $$InstallmentsTableTableManager get installments =>
      $$InstallmentsTableTableManager(_db, _db.installments);
  $$PaymentsTableTableManager get payments =>
      $$PaymentsTableTableManager(_db, _db.payments);
  $$PaymentAllocationsTableTableManager get paymentAllocations =>
      $$PaymentAllocationsTableTableManager(_db, _db.paymentAllocations);
  $$LoanSettlementsTableTableManager get loanSettlements =>
      $$LoanSettlementsTableTableManager(_db, _db.loanSettlements);
  $$InstallmentEventsTableTableManager get installmentEvents =>
      $$InstallmentEventsTableTableManager(_db, _db.installmentEvents);
}
