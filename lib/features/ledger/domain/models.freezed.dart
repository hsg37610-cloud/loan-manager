// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Loan {

 String get id; String get userId; String get name; String? get bankName; String? get cardBin; int get principal; int? get annualRateBp; int get termMonths; String get firstDueDate; int get dueDay; int get installmentAmount; int get totalInterest; int get totalReturn; int get effectiveRateBp; String get calculationMethod; int get calculationVersion; String get currency; String get status; String? get settledDate; String? get note; String get createdAt; String get updatedAt; String? get deletedAt;
/// Create a copy of Loan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoanCopyWith<Loan> get copyWith => _$LoanCopyWithImpl<Loan>(this as Loan, _$identity);

  /// Serializes this Loan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Loan;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loan&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bankName, _this.bankName) || other.bankName == _this.bankName)&&(identical(other.cardBin, _this.cardBin) || other.cardBin == _this.cardBin)&&(identical(other.principal, _this.principal) || other.principal == _this.principal)&&(identical(other.annualRateBp, _this.annualRateBp) || other.annualRateBp == _this.annualRateBp)&&(identical(other.termMonths, _this.termMonths) || other.termMonths == _this.termMonths)&&(identical(other.firstDueDate, _this.firstDueDate) || other.firstDueDate == _this.firstDueDate)&&(identical(other.dueDay, _this.dueDay) || other.dueDay == _this.dueDay)&&(identical(other.installmentAmount, _this.installmentAmount) || other.installmentAmount == _this.installmentAmount)&&(identical(other.totalInterest, _this.totalInterest) || other.totalInterest == _this.totalInterest)&&(identical(other.totalReturn, _this.totalReturn) || other.totalReturn == _this.totalReturn)&&(identical(other.effectiveRateBp, _this.effectiveRateBp) || other.effectiveRateBp == _this.effectiveRateBp)&&(identical(other.calculationMethod, _this.calculationMethod) || other.calculationMethod == _this.calculationMethod)&&(identical(other.calculationVersion, _this.calculationVersion) || other.calculationVersion == _this.calculationVersion)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.settledDate, _this.settledDate) || other.settledDate == _this.settledDate)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.deletedAt, _this.deletedAt) || other.deletedAt == _this.deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Loan;
  return Object.hashAll([runtimeType,_this.id,_this.userId,_this.name,_this.bankName,_this.cardBin,_this.principal,_this.annualRateBp,_this.termMonths,_this.firstDueDate,_this.dueDay,_this.installmentAmount,_this.totalInterest,_this.totalReturn,_this.effectiveRateBp,_this.calculationMethod,_this.calculationVersion,_this.currency,_this.status,_this.settledDate,_this.note,_this.createdAt,_this.updatedAt,_this.deletedAt]);
}

@override
String toString() {
  final _this = this as Loan;
  return 'Loan(id: ${_this.id}, userId: ${_this.userId}, name: ${_this.name}, bankName: ${_this.bankName}, cardBin: ${_this.cardBin}, principal: ${_this.principal}, annualRateBp: ${_this.annualRateBp}, termMonths: ${_this.termMonths}, firstDueDate: ${_this.firstDueDate}, dueDay: ${_this.dueDay}, installmentAmount: ${_this.installmentAmount}, totalInterest: ${_this.totalInterest}, totalReturn: ${_this.totalReturn}, effectiveRateBp: ${_this.effectiveRateBp}, calculationMethod: ${_this.calculationMethod}, calculationVersion: ${_this.calculationVersion}, currency: ${_this.currency}, status: ${_this.status}, settledDate: ${_this.settledDate}, note: ${_this.note}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, deletedAt: ${_this.deletedAt})';
}


}

/// @nodoc
abstract mixin class $LoanCopyWith<$Res>  {
  factory $LoanCopyWith(Loan value, $Res Function(Loan) _then) = _$LoanCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String name, String? bankName, String? cardBin, int principal, int? annualRateBp, int termMonths, String firstDueDate, int dueDay, int installmentAmount, int totalInterest, int totalReturn, int effectiveRateBp, String calculationMethod, int calculationVersion, String currency, String status, String? settledDate, String? note, String createdAt, String updatedAt, String? deletedAt
});




}
/// @nodoc
class _$LoanCopyWithImpl<$Res>
    implements $LoanCopyWith<$Res> {
  _$LoanCopyWithImpl(this._self, this._then);

  final Loan _self;
  final $Res Function(Loan) _then;

/// Create a copy of Loan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? bankName = freezed,Object? cardBin = freezed,Object? principal = null,Object? annualRateBp = freezed,Object? termMonths = null,Object? firstDueDate = null,Object? dueDay = null,Object? installmentAmount = null,Object? totalInterest = null,Object? totalReturn = null,Object? effectiveRateBp = null,Object? calculationMethod = null,Object? calculationVersion = null,Object? currency = null,Object? status = null,Object? settledDate = freezed,Object? note = freezed,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
  return _then(Loan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,cardBin: freezed == cardBin ? _self.cardBin : cardBin // ignore: cast_nullable_to_non_nullable
as String?,principal: null == principal ? _self.principal : principal // ignore: cast_nullable_to_non_nullable
as int,annualRateBp: freezed == annualRateBp ? _self.annualRateBp : annualRateBp // ignore: cast_nullable_to_non_nullable
as int?,termMonths: null == termMonths ? _self.termMonths : termMonths // ignore: cast_nullable_to_non_nullable
as int,firstDueDate: null == firstDueDate ? _self.firstDueDate : firstDueDate // ignore: cast_nullable_to_non_nullable
as String,dueDay: null == dueDay ? _self.dueDay : dueDay // ignore: cast_nullable_to_non_nullable
as int,installmentAmount: null == installmentAmount ? _self.installmentAmount : installmentAmount // ignore: cast_nullable_to_non_nullable
as int,totalInterest: null == totalInterest ? _self.totalInterest : totalInterest // ignore: cast_nullable_to_non_nullable
as int,totalReturn: null == totalReturn ? _self.totalReturn : totalReturn // ignore: cast_nullable_to_non_nullable
as int,effectiveRateBp: null == effectiveRateBp ? _self.effectiveRateBp : effectiveRateBp // ignore: cast_nullable_to_non_nullable
as int,calculationMethod: null == calculationMethod ? _self.calculationMethod : calculationMethod // ignore: cast_nullable_to_non_nullable
as String,calculationVersion: null == calculationVersion ? _self.calculationVersion : calculationVersion // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,settledDate: freezed == settledDate ? _self.settledDate : settledDate // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Loan].
extension LoanPatterns on Loan {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Loan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loan() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Loan value)  $default,){
final _that = this;
switch (_that) {
case _Loan():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Loan value)?  $default,){
final _that = this;
switch (_that) {
case _Loan() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String name,  String? bankName,  String? cardBin,  int principal,  int? annualRateBp,  int termMonths,  String firstDueDate,  int dueDay,  int installmentAmount,  int totalInterest,  int totalReturn,  int effectiveRateBp,  String calculationMethod,  int calculationVersion,  String currency,  String status,  String? settledDate,  String? note,  String createdAt,  String updatedAt,  String? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loan() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.bankName,_that.cardBin,_that.principal,_that.annualRateBp,_that.termMonths,_that.firstDueDate,_that.dueDay,_that.installmentAmount,_that.totalInterest,_that.totalReturn,_that.effectiveRateBp,_that.calculationMethod,_that.calculationVersion,_that.currency,_that.status,_that.settledDate,_that.note,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String name,  String? bankName,  String? cardBin,  int principal,  int? annualRateBp,  int termMonths,  String firstDueDate,  int dueDay,  int installmentAmount,  int totalInterest,  int totalReturn,  int effectiveRateBp,  String calculationMethod,  int calculationVersion,  String currency,  String status,  String? settledDate,  String? note,  String createdAt,  String updatedAt,  String? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _Loan():
return $default(_that.id,_that.userId,_that.name,_that.bankName,_that.cardBin,_that.principal,_that.annualRateBp,_that.termMonths,_that.firstDueDate,_that.dueDay,_that.installmentAmount,_that.totalInterest,_that.totalReturn,_that.effectiveRateBp,_that.calculationMethod,_that.calculationVersion,_that.currency,_that.status,_that.settledDate,_that.note,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String name,  String? bankName,  String? cardBin,  int principal,  int? annualRateBp,  int termMonths,  String firstDueDate,  int dueDay,  int installmentAmount,  int totalInterest,  int totalReturn,  int effectiveRateBp,  String calculationMethod,  int calculationVersion,  String currency,  String status,  String? settledDate,  String? note,  String createdAt,  String updatedAt,  String? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _Loan() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.bankName,_that.cardBin,_that.principal,_that.annualRateBp,_that.termMonths,_that.firstDueDate,_that.dueDay,_that.installmentAmount,_that.totalInterest,_that.totalReturn,_that.effectiveRateBp,_that.calculationMethod,_that.calculationVersion,_that.currency,_that.status,_that.settledDate,_that.note,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Loan extends Loan {
  const _Loan({required this.id, this.userId = 'local', required this.name, this.bankName, this.cardBin, required this.principal, this.annualRateBp, required this.termMonths, required this.firstDueDate, required this.dueDay, required this.installmentAmount, required this.totalInterest, required this.totalReturn, required this.effectiveRateBp, required this.calculationMethod, this.calculationVersion = 1, this.currency = 'IRT', this.status = 'active', this.settledDate, this.note, required this.createdAt, required this.updatedAt, this.deletedAt}): super._();
  factory _Loan.fromJson(Map<String, dynamic> json) => _$LoanFromJson(json);

@override final  String id;
@override@JsonKey() final  String userId;
@override final  String name;
@override final  String? bankName;
@override final  String? cardBin;
@override final  int principal;
@override final  int? annualRateBp;
@override final  int termMonths;
@override final  String firstDueDate;
@override final  int dueDay;
@override final  int installmentAmount;
@override final  int totalInterest;
@override final  int totalReturn;
@override final  int effectiveRateBp;
@override final  String calculationMethod;
@override@JsonKey() final  int calculationVersion;
@override@JsonKey() final  String currency;
@override@JsonKey() final  String status;
@override final  String? settledDate;
@override final  String? note;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String? deletedAt;

/// Create a copy of Loan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoanCopyWith<_Loan> get copyWith => __$LoanCopyWithImpl<_Loan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoanToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loan&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.cardBin, cardBin) || other.cardBin == cardBin)&&(identical(other.principal, principal) || other.principal == principal)&&(identical(other.annualRateBp, annualRateBp) || other.annualRateBp == annualRateBp)&&(identical(other.termMonths, termMonths) || other.termMonths == termMonths)&&(identical(other.firstDueDate, firstDueDate) || other.firstDueDate == firstDueDate)&&(identical(other.dueDay, dueDay) || other.dueDay == dueDay)&&(identical(other.installmentAmount, installmentAmount) || other.installmentAmount == installmentAmount)&&(identical(other.totalInterest, totalInterest) || other.totalInterest == totalInterest)&&(identical(other.totalReturn, totalReturn) || other.totalReturn == totalReturn)&&(identical(other.effectiveRateBp, effectiveRateBp) || other.effectiveRateBp == effectiveRateBp)&&(identical(other.calculationMethod, calculationMethod) || other.calculationMethod == calculationMethod)&&(identical(other.calculationVersion, calculationVersion) || other.calculationVersion == calculationVersion)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.settledDate, settledDate) || other.settledDate == settledDate)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,userId,name,bankName,cardBin,principal,annualRateBp,termMonths,firstDueDate,dueDay,installmentAmount,totalInterest,totalReturn,effectiveRateBp,calculationMethod,calculationVersion,currency,status,settledDate,note,createdAt,updatedAt,deletedAt]);
}

@override
String toString() {
    return 'Loan(id: $id, userId: $userId, name: $name, bankName: $bankName, cardBin: $cardBin, principal: $principal, annualRateBp: $annualRateBp, termMonths: $termMonths, firstDueDate: $firstDueDate, dueDay: $dueDay, installmentAmount: $installmentAmount, totalInterest: $totalInterest, totalReturn: $totalReturn, effectiveRateBp: $effectiveRateBp, calculationMethod: $calculationMethod, calculationVersion: $calculationVersion, currency: $currency, status: $status, settledDate: $settledDate, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$LoanCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$LoanCopyWith(_Loan value, $Res Function(_Loan) _then) = __$LoanCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String name, String? bankName, String? cardBin, int principal, int? annualRateBp, int termMonths, String firstDueDate, int dueDay, int installmentAmount, int totalInterest, int totalReturn, int effectiveRateBp, String calculationMethod, int calculationVersion, String currency, String status, String? settledDate, String? note, String createdAt, String updatedAt, String? deletedAt
});




}
/// @nodoc
class __$LoanCopyWithImpl<$Res>
    implements _$LoanCopyWith<$Res> {
  __$LoanCopyWithImpl(this._self, this._then);

  final _Loan _self;
  final $Res Function(_Loan) _then;

/// Create a copy of Loan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? bankName = freezed,Object? cardBin = freezed,Object? principal = null,Object? annualRateBp = freezed,Object? termMonths = null,Object? firstDueDate = null,Object? dueDay = null,Object? installmentAmount = null,Object? totalInterest = null,Object? totalReturn = null,Object? effectiveRateBp = null,Object? calculationMethod = null,Object? calculationVersion = null,Object? currency = null,Object? status = null,Object? settledDate = freezed,Object? note = freezed,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
  return _then(_Loan(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,cardBin: freezed == cardBin ? _self.cardBin : cardBin // ignore: cast_nullable_to_non_nullable
as String?,principal: null == principal ? _self.principal : principal // ignore: cast_nullable_to_non_nullable
as int,annualRateBp: freezed == annualRateBp ? _self.annualRateBp : annualRateBp // ignore: cast_nullable_to_non_nullable
as int?,termMonths: null == termMonths ? _self.termMonths : termMonths // ignore: cast_nullable_to_non_nullable
as int,firstDueDate: null == firstDueDate ? _self.firstDueDate : firstDueDate // ignore: cast_nullable_to_non_nullable
as String,dueDay: null == dueDay ? _self.dueDay : dueDay // ignore: cast_nullable_to_non_nullable
as int,installmentAmount: null == installmentAmount ? _self.installmentAmount : installmentAmount // ignore: cast_nullable_to_non_nullable
as int,totalInterest: null == totalInterest ? _self.totalInterest : totalInterest // ignore: cast_nullable_to_non_nullable
as int,totalReturn: null == totalReturn ? _self.totalReturn : totalReturn // ignore: cast_nullable_to_non_nullable
as int,effectiveRateBp: null == effectiveRateBp ? _self.effectiveRateBp : effectiveRateBp // ignore: cast_nullable_to_non_nullable
as int,calculationMethod: null == calculationMethod ? _self.calculationMethod : calculationMethod // ignore: cast_nullable_to_non_nullable
as String,calculationVersion: null == calculationVersion ? _self.calculationVersion : calculationVersion // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,settledDate: freezed == settledDate ? _self.settledDate : settledDate // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Installment {

 String get id; String get loanId; int get sequenceNumber; String get dueDate; String get jalaliMonth; int get amount; int get paidAmount; int get waivedAmount; String get createdAt; String get updatedAt;
/// Create a copy of Installment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstallmentCopyWith<Installment> get copyWith => _$InstallmentCopyWithImpl<Installment>(this as Installment, _$identity);

  /// Serializes this Installment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Installment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Installment&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.loanId, _this.loanId) || other.loanId == _this.loanId)&&(identical(other.sequenceNumber, _this.sequenceNumber) || other.sequenceNumber == _this.sequenceNumber)&&(identical(other.dueDate, _this.dueDate) || other.dueDate == _this.dueDate)&&(identical(other.jalaliMonth, _this.jalaliMonth) || other.jalaliMonth == _this.jalaliMonth)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.paidAmount, _this.paidAmount) || other.paidAmount == _this.paidAmount)&&(identical(other.waivedAmount, _this.waivedAmount) || other.waivedAmount == _this.waivedAmount)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Installment;
  return Object.hash(runtimeType,_this.id,_this.loanId,_this.sequenceNumber,_this.dueDate,_this.jalaliMonth,_this.amount,_this.paidAmount,_this.waivedAmount,_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as Installment;
  return 'Installment(id: ${_this.id}, loanId: ${_this.loanId}, sequenceNumber: ${_this.sequenceNumber}, dueDate: ${_this.dueDate}, jalaliMonth: ${_this.jalaliMonth}, amount: ${_this.amount}, paidAmount: ${_this.paidAmount}, waivedAmount: ${_this.waivedAmount}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $InstallmentCopyWith<$Res>  {
  factory $InstallmentCopyWith(Installment value, $Res Function(Installment) _then) = _$InstallmentCopyWithImpl;
@useResult
$Res call({
 String id, String loanId, int sequenceNumber, String dueDate, String jalaliMonth, int amount, int paidAmount, int waivedAmount, String createdAt, String updatedAt
});




}
/// @nodoc
class _$InstallmentCopyWithImpl<$Res>
    implements $InstallmentCopyWith<$Res> {
  _$InstallmentCopyWithImpl(this._self, this._then);

  final Installment _self;
  final $Res Function(Installment) _then;

/// Create a copy of Installment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? loanId = null,Object? sequenceNumber = null,Object? dueDate = null,Object? jalaliMonth = null,Object? amount = null,Object? paidAmount = null,Object? waivedAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(Installment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loanId: null == loanId ? _self.loanId : loanId // ignore: cast_nullable_to_non_nullable
as String,sequenceNumber: null == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as int,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,jalaliMonth: null == jalaliMonth ? _self.jalaliMonth : jalaliMonth // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,waivedAmount: null == waivedAmount ? _self.waivedAmount : waivedAmount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Installment].
extension InstallmentPatterns on Installment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Installment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Installment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Installment value)  $default,){
final _that = this;
switch (_that) {
case _Installment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Installment value)?  $default,){
final _that = this;
switch (_that) {
case _Installment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String loanId,  int sequenceNumber,  String dueDate,  String jalaliMonth,  int amount,  int paidAmount,  int waivedAmount,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Installment() when $default != null:
return $default(_that.id,_that.loanId,_that.sequenceNumber,_that.dueDate,_that.jalaliMonth,_that.amount,_that.paidAmount,_that.waivedAmount,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String loanId,  int sequenceNumber,  String dueDate,  String jalaliMonth,  int amount,  int paidAmount,  int waivedAmount,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Installment():
return $default(_that.id,_that.loanId,_that.sequenceNumber,_that.dueDate,_that.jalaliMonth,_that.amount,_that.paidAmount,_that.waivedAmount,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String loanId,  int sequenceNumber,  String dueDate,  String jalaliMonth,  int amount,  int paidAmount,  int waivedAmount,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Installment() when $default != null:
return $default(_that.id,_that.loanId,_that.sequenceNumber,_that.dueDate,_that.jalaliMonth,_that.amount,_that.paidAmount,_that.waivedAmount,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Installment extends Installment {
  const _Installment({required this.id, required this.loanId, required this.sequenceNumber, required this.dueDate, required this.jalaliMonth, required this.amount, this.paidAmount = 0, this.waivedAmount = 0, required this.createdAt, required this.updatedAt}): super._();
  factory _Installment.fromJson(Map<String, dynamic> json) => _$InstallmentFromJson(json);

@override final  String id;
@override final  String loanId;
@override final  int sequenceNumber;
@override final  String dueDate;
@override final  String jalaliMonth;
@override final  int amount;
@override@JsonKey() final  int paidAmount;
@override@JsonKey() final  int waivedAmount;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of Installment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstallmentCopyWith<_Installment> get copyWith => __$InstallmentCopyWithImpl<_Installment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstallmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Installment&&(identical(other.id, id) || other.id == id)&&(identical(other.loanId, loanId) || other.loanId == loanId)&&(identical(other.sequenceNumber, sequenceNumber) || other.sequenceNumber == sequenceNumber)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.jalaliMonth, jalaliMonth) || other.jalaliMonth == jalaliMonth)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.waivedAmount, waivedAmount) || other.waivedAmount == waivedAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,loanId,sequenceNumber,dueDate,jalaliMonth,amount,paidAmount,waivedAmount,createdAt,updatedAt);
}

@override
String toString() {
    return 'Installment(id: $id, loanId: $loanId, sequenceNumber: $sequenceNumber, dueDate: $dueDate, jalaliMonth: $jalaliMonth, amount: $amount, paidAmount: $paidAmount, waivedAmount: $waivedAmount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InstallmentCopyWith<$Res> implements $InstallmentCopyWith<$Res> {
  factory _$InstallmentCopyWith(_Installment value, $Res Function(_Installment) _then) = __$InstallmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String loanId, int sequenceNumber, String dueDate, String jalaliMonth, int amount, int paidAmount, int waivedAmount, String createdAt, String updatedAt
});




}
/// @nodoc
class __$InstallmentCopyWithImpl<$Res>
    implements _$InstallmentCopyWith<$Res> {
  __$InstallmentCopyWithImpl(this._self, this._then);

  final _Installment _self;
  final $Res Function(_Installment) _then;

/// Create a copy of Installment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? loanId = null,Object? sequenceNumber = null,Object? dueDate = null,Object? jalaliMonth = null,Object? amount = null,Object? paidAmount = null,Object? waivedAmount = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Installment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loanId: null == loanId ? _self.loanId : loanId // ignore: cast_nullable_to_non_nullable
as String,sequenceNumber: null == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as int,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,jalaliMonth: null == jalaliMonth ? _self.jalaliMonth : jalaliMonth // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as int,waivedAmount: null == waivedAmount ? _self.waivedAmount : waivedAmount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Payment {

 String get id; String get loanId; String get paymentDate; int get amount; int get unallocatedAmount; String? get referenceNumber; String? get note; String get createdAt; String get updatedAt; String? get deletedAt;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Payment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.loanId, _this.loanId) || other.loanId == _this.loanId)&&(identical(other.paymentDate, _this.paymentDate) || other.paymentDate == _this.paymentDate)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.unallocatedAmount, _this.unallocatedAmount) || other.unallocatedAmount == _this.unallocatedAmount)&&(identical(other.referenceNumber, _this.referenceNumber) || other.referenceNumber == _this.referenceNumber)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.deletedAt, _this.deletedAt) || other.deletedAt == _this.deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Payment;
  return Object.hash(runtimeType,_this.id,_this.loanId,_this.paymentDate,_this.amount,_this.unallocatedAmount,_this.referenceNumber,_this.note,_this.createdAt,_this.updatedAt,_this.deletedAt);
}

@override
String toString() {
  final _this = this as Payment;
  return 'Payment(id: ${_this.id}, loanId: ${_this.loanId}, paymentDate: ${_this.paymentDate}, amount: ${_this.amount}, unallocatedAmount: ${_this.unallocatedAmount}, referenceNumber: ${_this.referenceNumber}, note: ${_this.note}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, deletedAt: ${_this.deletedAt})';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
 String id, String loanId, String paymentDate, int amount, int unallocatedAmount, String? referenceNumber, String? note, String createdAt, String updatedAt, String? deletedAt
});




}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? loanId = null,Object? paymentDate = null,Object? amount = null,Object? unallocatedAmount = null,Object? referenceNumber = freezed,Object? note = freezed,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
  return _then(Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loanId: null == loanId ? _self.loanId : loanId // ignore: cast_nullable_to_non_nullable
as String,paymentDate: null == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,unallocatedAmount: null == unallocatedAmount ? _self.unallocatedAmount : unallocatedAmount // ignore: cast_nullable_to_non_nullable
as int,referenceNumber: freezed == referenceNumber ? _self.referenceNumber : referenceNumber // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payment value)  $default,){
final _that = this;
switch (_that) {
case _Payment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payment value)?  $default,){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String loanId,  String paymentDate,  int amount,  int unallocatedAmount,  String? referenceNumber,  String? note,  String createdAt,  String updatedAt,  String? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.loanId,_that.paymentDate,_that.amount,_that.unallocatedAmount,_that.referenceNumber,_that.note,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String loanId,  String paymentDate,  int amount,  int unallocatedAmount,  String? referenceNumber,  String? note,  String createdAt,  String updatedAt,  String? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _Payment():
return $default(_that.id,_that.loanId,_that.paymentDate,_that.amount,_that.unallocatedAmount,_that.referenceNumber,_that.note,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String loanId,  String paymentDate,  int amount,  int unallocatedAmount,  String? referenceNumber,  String? note,  String createdAt,  String updatedAt,  String? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.loanId,_that.paymentDate,_that.amount,_that.unallocatedAmount,_that.referenceNumber,_that.note,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Payment extends Payment {
  const _Payment({required this.id, required this.loanId, required this.paymentDate, required this.amount, this.unallocatedAmount = 0, this.referenceNumber, this.note, required this.createdAt, required this.updatedAt, this.deletedAt}): super._();
  factory _Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

@override final  String id;
@override final  String loanId;
@override final  String paymentDate;
@override final  int amount;
@override@JsonKey() final  int unallocatedAmount;
@override final  String? referenceNumber;
@override final  String? note;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String? deletedAt;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCopyWith<_Payment> get copyWith => __$PaymentCopyWithImpl<_Payment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.loanId, loanId) || other.loanId == loanId)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.unallocatedAmount, unallocatedAmount) || other.unallocatedAmount == unallocatedAmount)&&(identical(other.referenceNumber, referenceNumber) || other.referenceNumber == referenceNumber)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,loanId,paymentDate,amount,unallocatedAmount,referenceNumber,note,createdAt,updatedAt,deletedAt);
}

@override
String toString() {
    return 'Payment(id: $id, loanId: $loanId, paymentDate: $paymentDate, amount: $amount, unallocatedAmount: $unallocatedAmount, referenceNumber: $referenceNumber, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) = __$PaymentCopyWithImpl;
@override @useResult
$Res call({
 String id, String loanId, String paymentDate, int amount, int unallocatedAmount, String? referenceNumber, String? note, String createdAt, String updatedAt, String? deletedAt
});




}
/// @nodoc
class __$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? loanId = null,Object? paymentDate = null,Object? amount = null,Object? unallocatedAmount = null,Object? referenceNumber = freezed,Object? note = freezed,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
  return _then(_Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loanId: null == loanId ? _self.loanId : loanId // ignore: cast_nullable_to_non_nullable
as String,paymentDate: null == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,unallocatedAmount: null == unallocatedAmount ? _self.unallocatedAmount : unallocatedAmount // ignore: cast_nullable_to_non_nullable
as int,referenceNumber: freezed == referenceNumber ? _self.referenceNumber : referenceNumber // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaymentAllocation {

 String get id; String get paymentId; String? get installmentId; int get amount; String get createdAt;
/// Create a copy of PaymentAllocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentAllocationCopyWith<PaymentAllocation> get copyWith => _$PaymentAllocationCopyWithImpl<PaymentAllocation>(this as PaymentAllocation, _$identity);

  /// Serializes this PaymentAllocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentAllocation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentAllocation&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.paymentId, _this.paymentId) || other.paymentId == _this.paymentId)&&(identical(other.installmentId, _this.installmentId) || other.installmentId == _this.installmentId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentAllocation;
  return Object.hash(runtimeType,_this.id,_this.paymentId,_this.installmentId,_this.amount,_this.createdAt);
}

@override
String toString() {
  final _this = this as PaymentAllocation;
  return 'PaymentAllocation(id: ${_this.id}, paymentId: ${_this.paymentId}, installmentId: ${_this.installmentId}, amount: ${_this.amount}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $PaymentAllocationCopyWith<$Res>  {
  factory $PaymentAllocationCopyWith(PaymentAllocation value, $Res Function(PaymentAllocation) _then) = _$PaymentAllocationCopyWithImpl;
@useResult
$Res call({
 String id, String paymentId, String? installmentId, int amount, String createdAt
});




}
/// @nodoc
class _$PaymentAllocationCopyWithImpl<$Res>
    implements $PaymentAllocationCopyWith<$Res> {
  _$PaymentAllocationCopyWithImpl(this._self, this._then);

  final PaymentAllocation _self;
  final $Res Function(PaymentAllocation) _then;

/// Create a copy of PaymentAllocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? paymentId = null,Object? installmentId = freezed,Object? amount = null,Object? createdAt = null,}) {
  return _then(PaymentAllocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,installmentId: freezed == installmentId ? _self.installmentId : installmentId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentAllocation].
extension PaymentAllocationPatterns on PaymentAllocation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentAllocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentAllocation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentAllocation value)  $default,){
final _that = this;
switch (_that) {
case _PaymentAllocation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentAllocation value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentAllocation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String paymentId,  String? installmentId,  int amount,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentAllocation() when $default != null:
return $default(_that.id,_that.paymentId,_that.installmentId,_that.amount,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String paymentId,  String? installmentId,  int amount,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentAllocation():
return $default(_that.id,_that.paymentId,_that.installmentId,_that.amount,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String paymentId,  String? installmentId,  int amount,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentAllocation() when $default != null:
return $default(_that.id,_that.paymentId,_that.installmentId,_that.amount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PaymentAllocation implements PaymentAllocation {
  const _PaymentAllocation({required this.id, required this.paymentId, this.installmentId, required this.amount, required this.createdAt});
  factory _PaymentAllocation.fromJson(Map<String, dynamic> json) => _$PaymentAllocationFromJson(json);

@override final  String id;
@override final  String paymentId;
@override final  String? installmentId;
@override final  int amount;
@override final  String createdAt;

/// Create a copy of PaymentAllocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentAllocationCopyWith<_PaymentAllocation> get copyWith => __$PaymentAllocationCopyWithImpl<_PaymentAllocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentAllocationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentAllocation&&(identical(other.id, id) || other.id == id)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.installmentId, installmentId) || other.installmentId == installmentId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,paymentId,installmentId,amount,createdAt);
}

@override
String toString() {
    return 'PaymentAllocation(id: $id, paymentId: $paymentId, installmentId: $installmentId, amount: $amount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentAllocationCopyWith<$Res> implements $PaymentAllocationCopyWith<$Res> {
  factory _$PaymentAllocationCopyWith(_PaymentAllocation value, $Res Function(_PaymentAllocation) _then) = __$PaymentAllocationCopyWithImpl;
@override @useResult
$Res call({
 String id, String paymentId, String? installmentId, int amount, String createdAt
});




}
/// @nodoc
class __$PaymentAllocationCopyWithImpl<$Res>
    implements _$PaymentAllocationCopyWith<$Res> {
  __$PaymentAllocationCopyWithImpl(this._self, this._then);

  final _PaymentAllocation _self;
  final $Res Function(_PaymentAllocation) _then;

/// Create a copy of PaymentAllocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? paymentId = null,Object? installmentId = freezed,Object? amount = null,Object? createdAt = null,}) {
  return _then(_PaymentAllocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,installmentId: freezed == installmentId ? _self.installmentId : installmentId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LoanSettlement {

 String get id; String get loanId; String get settlementDate; int get amountPaid; int get remainingBefore; int get discountAmount; String? get note; String get createdAt;
/// Create a copy of LoanSettlement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoanSettlementCopyWith<LoanSettlement> get copyWith => _$LoanSettlementCopyWithImpl<LoanSettlement>(this as LoanSettlement, _$identity);

  /// Serializes this LoanSettlement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LoanSettlement;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoanSettlement&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.loanId, _this.loanId) || other.loanId == _this.loanId)&&(identical(other.settlementDate, _this.settlementDate) || other.settlementDate == _this.settlementDate)&&(identical(other.amountPaid, _this.amountPaid) || other.amountPaid == _this.amountPaid)&&(identical(other.remainingBefore, _this.remainingBefore) || other.remainingBefore == _this.remainingBefore)&&(identical(other.discountAmount, _this.discountAmount) || other.discountAmount == _this.discountAmount)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LoanSettlement;
  return Object.hash(runtimeType,_this.id,_this.loanId,_this.settlementDate,_this.amountPaid,_this.remainingBefore,_this.discountAmount,_this.note,_this.createdAt);
}

@override
String toString() {
  final _this = this as LoanSettlement;
  return 'LoanSettlement(id: ${_this.id}, loanId: ${_this.loanId}, settlementDate: ${_this.settlementDate}, amountPaid: ${_this.amountPaid}, remainingBefore: ${_this.remainingBefore}, discountAmount: ${_this.discountAmount}, note: ${_this.note}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $LoanSettlementCopyWith<$Res>  {
  factory $LoanSettlementCopyWith(LoanSettlement value, $Res Function(LoanSettlement) _then) = _$LoanSettlementCopyWithImpl;
@useResult
$Res call({
 String id, String loanId, String settlementDate, int amountPaid, int remainingBefore, int discountAmount, String? note, String createdAt
});




}
/// @nodoc
class _$LoanSettlementCopyWithImpl<$Res>
    implements $LoanSettlementCopyWith<$Res> {
  _$LoanSettlementCopyWithImpl(this._self, this._then);

  final LoanSettlement _self;
  final $Res Function(LoanSettlement) _then;

/// Create a copy of LoanSettlement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? loanId = null,Object? settlementDate = null,Object? amountPaid = null,Object? remainingBefore = null,Object? discountAmount = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(LoanSettlement(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loanId: null == loanId ? _self.loanId : loanId // ignore: cast_nullable_to_non_nullable
as String,settlementDate: null == settlementDate ? _self.settlementDate : settlementDate // ignore: cast_nullable_to_non_nullable
as String,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as int,remainingBefore: null == remainingBefore ? _self.remainingBefore : remainingBefore // ignore: cast_nullable_to_non_nullable
as int,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoanSettlement].
extension LoanSettlementPatterns on LoanSettlement {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoanSettlement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoanSettlement() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoanSettlement value)  $default,){
final _that = this;
switch (_that) {
case _LoanSettlement():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoanSettlement value)?  $default,){
final _that = this;
switch (_that) {
case _LoanSettlement() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String loanId,  String settlementDate,  int amountPaid,  int remainingBefore,  int discountAmount,  String? note,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoanSettlement() when $default != null:
return $default(_that.id,_that.loanId,_that.settlementDate,_that.amountPaid,_that.remainingBefore,_that.discountAmount,_that.note,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String loanId,  String settlementDate,  int amountPaid,  int remainingBefore,  int discountAmount,  String? note,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _LoanSettlement():
return $default(_that.id,_that.loanId,_that.settlementDate,_that.amountPaid,_that.remainingBefore,_that.discountAmount,_that.note,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String loanId,  String settlementDate,  int amountPaid,  int remainingBefore,  int discountAmount,  String? note,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _LoanSettlement() when $default != null:
return $default(_that.id,_that.loanId,_that.settlementDate,_that.amountPaid,_that.remainingBefore,_that.discountAmount,_that.note,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LoanSettlement implements LoanSettlement {
  const _LoanSettlement({required this.id, required this.loanId, required this.settlementDate, required this.amountPaid, required this.remainingBefore, this.discountAmount = 0, this.note, required this.createdAt});
  factory _LoanSettlement.fromJson(Map<String, dynamic> json) => _$LoanSettlementFromJson(json);

@override final  String id;
@override final  String loanId;
@override final  String settlementDate;
@override final  int amountPaid;
@override final  int remainingBefore;
@override@JsonKey() final  int discountAmount;
@override final  String? note;
@override final  String createdAt;

/// Create a copy of LoanSettlement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoanSettlementCopyWith<_LoanSettlement> get copyWith => __$LoanSettlementCopyWithImpl<_LoanSettlement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoanSettlementToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoanSettlement&&(identical(other.id, id) || other.id == id)&&(identical(other.loanId, loanId) || other.loanId == loanId)&&(identical(other.settlementDate, settlementDate) || other.settlementDate == settlementDate)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.remainingBefore, remainingBefore) || other.remainingBefore == remainingBefore)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,loanId,settlementDate,amountPaid,remainingBefore,discountAmount,note,createdAt);
}

@override
String toString() {
    return 'LoanSettlement(id: $id, loanId: $loanId, settlementDate: $settlementDate, amountPaid: $amountPaid, remainingBefore: $remainingBefore, discountAmount: $discountAmount, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$LoanSettlementCopyWith<$Res> implements $LoanSettlementCopyWith<$Res> {
  factory _$LoanSettlementCopyWith(_LoanSettlement value, $Res Function(_LoanSettlement) _then) = __$LoanSettlementCopyWithImpl;
@override @useResult
$Res call({
 String id, String loanId, String settlementDate, int amountPaid, int remainingBefore, int discountAmount, String? note, String createdAt
});




}
/// @nodoc
class __$LoanSettlementCopyWithImpl<$Res>
    implements _$LoanSettlementCopyWith<$Res> {
  __$LoanSettlementCopyWithImpl(this._self, this._then);

  final _LoanSettlement _self;
  final $Res Function(_LoanSettlement) _then;

/// Create a copy of LoanSettlement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? loanId = null,Object? settlementDate = null,Object? amountPaid = null,Object? remainingBefore = null,Object? discountAmount = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(_LoanSettlement(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loanId: null == loanId ? _self.loanId : loanId // ignore: cast_nullable_to_non_nullable
as String,settlementDate: null == settlementDate ? _self.settlementDate : settlementDate // ignore: cast_nullable_to_non_nullable
as String,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as int,remainingBefore: null == remainingBefore ? _self.remainingBefore : remainingBefore // ignore: cast_nullable_to_non_nullable
as int,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$InstallmentEvent {

 String get id; String get installmentId; String get eventType; String? get oldDueDate; String? get newDueDate; int? get adjustmentAmount; String? get reason; String get createdAt;
/// Create a copy of InstallmentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstallmentEventCopyWith<InstallmentEvent> get copyWith => _$InstallmentEventCopyWithImpl<InstallmentEvent>(this as InstallmentEvent, _$identity);

  /// Serializes this InstallmentEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InstallmentEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstallmentEvent&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.installmentId, _this.installmentId) || other.installmentId == _this.installmentId)&&(identical(other.eventType, _this.eventType) || other.eventType == _this.eventType)&&(identical(other.oldDueDate, _this.oldDueDate) || other.oldDueDate == _this.oldDueDate)&&(identical(other.newDueDate, _this.newDueDate) || other.newDueDate == _this.newDueDate)&&(identical(other.adjustmentAmount, _this.adjustmentAmount) || other.adjustmentAmount == _this.adjustmentAmount)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InstallmentEvent;
  return Object.hash(runtimeType,_this.id,_this.installmentId,_this.eventType,_this.oldDueDate,_this.newDueDate,_this.adjustmentAmount,_this.reason,_this.createdAt);
}

@override
String toString() {
  final _this = this as InstallmentEvent;
  return 'InstallmentEvent(id: ${_this.id}, installmentId: ${_this.installmentId}, eventType: ${_this.eventType}, oldDueDate: ${_this.oldDueDate}, newDueDate: ${_this.newDueDate}, adjustmentAmount: ${_this.adjustmentAmount}, reason: ${_this.reason}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $InstallmentEventCopyWith<$Res>  {
  factory $InstallmentEventCopyWith(InstallmentEvent value, $Res Function(InstallmentEvent) _then) = _$InstallmentEventCopyWithImpl;
@useResult
$Res call({
 String id, String installmentId, String eventType, String? oldDueDate, String? newDueDate, int? adjustmentAmount, String? reason, String createdAt
});




}
/// @nodoc
class _$InstallmentEventCopyWithImpl<$Res>
    implements $InstallmentEventCopyWith<$Res> {
  _$InstallmentEventCopyWithImpl(this._self, this._then);

  final InstallmentEvent _self;
  final $Res Function(InstallmentEvent) _then;

/// Create a copy of InstallmentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? installmentId = null,Object? eventType = null,Object? oldDueDate = freezed,Object? newDueDate = freezed,Object? adjustmentAmount = freezed,Object? reason = freezed,Object? createdAt = null,}) {
  return _then(InstallmentEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,installmentId: null == installmentId ? _self.installmentId : installmentId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,oldDueDate: freezed == oldDueDate ? _self.oldDueDate : oldDueDate // ignore: cast_nullable_to_non_nullable
as String?,newDueDate: freezed == newDueDate ? _self.newDueDate : newDueDate // ignore: cast_nullable_to_non_nullable
as String?,adjustmentAmount: freezed == adjustmentAmount ? _self.adjustmentAmount : adjustmentAmount // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InstallmentEvent].
extension InstallmentEventPatterns on InstallmentEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InstallmentEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InstallmentEvent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InstallmentEvent value)  $default,){
final _that = this;
switch (_that) {
case _InstallmentEvent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InstallmentEvent value)?  $default,){
final _that = this;
switch (_that) {
case _InstallmentEvent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String installmentId,  String eventType,  String? oldDueDate,  String? newDueDate,  int? adjustmentAmount,  String? reason,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InstallmentEvent() when $default != null:
return $default(_that.id,_that.installmentId,_that.eventType,_that.oldDueDate,_that.newDueDate,_that.adjustmentAmount,_that.reason,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String installmentId,  String eventType,  String? oldDueDate,  String? newDueDate,  int? adjustmentAmount,  String? reason,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _InstallmentEvent():
return $default(_that.id,_that.installmentId,_that.eventType,_that.oldDueDate,_that.newDueDate,_that.adjustmentAmount,_that.reason,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String installmentId,  String eventType,  String? oldDueDate,  String? newDueDate,  int? adjustmentAmount,  String? reason,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _InstallmentEvent() when $default != null:
return $default(_that.id,_that.installmentId,_that.eventType,_that.oldDueDate,_that.newDueDate,_that.adjustmentAmount,_that.reason,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _InstallmentEvent implements InstallmentEvent {
  const _InstallmentEvent({required this.id, required this.installmentId, required this.eventType, this.oldDueDate, this.newDueDate, this.adjustmentAmount, this.reason, required this.createdAt});
  factory _InstallmentEvent.fromJson(Map<String, dynamic> json) => _$InstallmentEventFromJson(json);

@override final  String id;
@override final  String installmentId;
@override final  String eventType;
@override final  String? oldDueDate;
@override final  String? newDueDate;
@override final  int? adjustmentAmount;
@override final  String? reason;
@override final  String createdAt;

/// Create a copy of InstallmentEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstallmentEventCopyWith<_InstallmentEvent> get copyWith => __$InstallmentEventCopyWithImpl<_InstallmentEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstallmentEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InstallmentEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.installmentId, installmentId) || other.installmentId == installmentId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.oldDueDate, oldDueDate) || other.oldDueDate == oldDueDate)&&(identical(other.newDueDate, newDueDate) || other.newDueDate == newDueDate)&&(identical(other.adjustmentAmount, adjustmentAmount) || other.adjustmentAmount == adjustmentAmount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,installmentId,eventType,oldDueDate,newDueDate,adjustmentAmount,reason,createdAt);
}

@override
String toString() {
    return 'InstallmentEvent(id: $id, installmentId: $installmentId, eventType: $eventType, oldDueDate: $oldDueDate, newDueDate: $newDueDate, adjustmentAmount: $adjustmentAmount, reason: $reason, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$InstallmentEventCopyWith<$Res> implements $InstallmentEventCopyWith<$Res> {
  factory _$InstallmentEventCopyWith(_InstallmentEvent value, $Res Function(_InstallmentEvent) _then) = __$InstallmentEventCopyWithImpl;
@override @useResult
$Res call({
 String id, String installmentId, String eventType, String? oldDueDate, String? newDueDate, int? adjustmentAmount, String? reason, String createdAt
});




}
/// @nodoc
class __$InstallmentEventCopyWithImpl<$Res>
    implements _$InstallmentEventCopyWith<$Res> {
  __$InstallmentEventCopyWithImpl(this._self, this._then);

  final _InstallmentEvent _self;
  final $Res Function(_InstallmentEvent) _then;

/// Create a copy of InstallmentEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? installmentId = null,Object? eventType = null,Object? oldDueDate = freezed,Object? newDueDate = freezed,Object? adjustmentAmount = freezed,Object? reason = freezed,Object? createdAt = null,}) {
  return _then(_InstallmentEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,installmentId: null == installmentId ? _self.installmentId : installmentId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,oldDueDate: freezed == oldDueDate ? _self.oldDueDate : oldDueDate // ignore: cast_nullable_to_non_nullable
as String?,newDueDate: freezed == newDueDate ? _self.newDueDate : newDueDate // ignore: cast_nullable_to_non_nullable
as String?,adjustmentAmount: freezed == adjustmentAmount ? _self.adjustmentAmount : adjustmentAmount // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
