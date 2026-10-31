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

 String get id; String get userId; String get name; String? get bankName; String? get cardBin; int get principal; int? get annualRateBp; int get termMonths; String get firstDueDate; int get dueDay; int get installmentAmount; int get totalInterest; int get totalReturn; int get effectiveRateBp; String get calculationMethod; int get calculationVersion; String get currency; String get status; String? get settledDate; String? get note; String? get facilityNumber; String? get paymentLink; String get loanType; int? get feeAmount; String get createdAt; String get updatedAt; String? get deletedAt;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loan&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bankName, _this.bankName) || other.bankName == _this.bankName)&&(identical(other.cardBin, _this.cardBin) || other.cardBin == _this.cardBin)&&(identical(other.principal, _this.principal) || other.principal == _this.principal)&&(identical(other.annualRateBp, _this.annualRateBp) || other.annualRateBp == _this.annualRateBp)&&(identical(other.termMonths, _this.termMonths) || other.termMonths == _this.termMonths)&&(identical(other.firstDueDate, _this.firstDueDate) || other.firstDueDate == _this.firstDueDate)&&(identical(other.dueDay, _this.dueDay) || other.dueDay == _this.dueDay)&&(identical(other.installmentAmount, _this.installmentAmount) || other.installmentAmount == _this.installmentAmount)&&(identical(other.totalInterest, _this.totalInterest) || other.totalInterest == _this.totalInterest)&&(identical(other.totalReturn, _this.totalReturn) || other.totalReturn == _this.totalReturn)&&(identical(other.effectiveRateBp, _this.effectiveRateBp) || other.effectiveRateBp == _this.effectiveRateBp)&&(identical(other.calculationMethod, _this.calculationMethod) || other.calculationMethod == _this.calculationMethod)&&(identical(other.calculationVersion, _this.calculationVersion) || other.calculationVersion == _this.calculationVersion)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.settledDate, _this.settledDate) || other.settledDate == _this.settledDate)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.facilityNumber, _this.facilityNumber) || other.facilityNumber == _this.facilityNumber)&&(identical(other.paymentLink, _this.paymentLink) || other.paymentLink == _this.paymentLink)&&(identical(other.loanType, _this.loanType) || other.loanType == _this.loanType)&&(identical(other.feeAmount, _this.feeAmount) || other.feeAmount == _this.feeAmount)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.deletedAt, _this.deletedAt) || other.deletedAt == _this.deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Loan;
  return Object.hashAll([runtimeType,_this.id,_this.userId,_this.name,_this.bankName,_this.cardBin,_this.principal,_this.annualRateBp,_this.termMonths,_this.firstDueDate,_this.dueDay,_this.installmentAmount,_this.totalInterest,_this.totalReturn,_this.effectiveRateBp,_this.calculationMethod,_this.calculationVersion,_this.currency,_this.status,_this.settledDate,_this.note,_this.facilityNumber,_this.paymentLink,_this.loanType,_this.feeAmount,_this.createdAt,_this.updatedAt,_this.deletedAt]);
}

@override
String toString() {
  final _this = this as Loan;
  return 'Loan(id: ${_this.id}, userId: ${_this.userId}, name: ${_this.name}, bankName: ${_this.bankName}, cardBin: ${_this.cardBin}, principal: ${_this.principal}, annualRateBp: ${_this.annualRateBp}, termMonths: ${_this.termMonths}, firstDueDate: ${_this.firstDueDate}, dueDay: ${_this.dueDay}, installmentAmount: ${_this.installmentAmount}, totalInterest: ${_this.totalInterest}, totalReturn: ${_this.totalReturn}, effectiveRateBp: ${_this.effectiveRateBp}, calculationMethod: ${_this.calculationMethod}, calculationVersion: ${_this.calculationVersion}, currency: ${_this.currency}, status: ${_this.status}, settledDate: ${_this.settledDate}, note: ${_this.note}, facilityNumber: ${_this.facilityNumber}, paymentLink: ${_this.paymentLink}, loanType: ${_this.loanType}, feeAmount: ${_this.feeAmount}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, deletedAt: ${_this.deletedAt})';
}


}

/// @nodoc
abstract mixin class $LoanCopyWith<$Res>  {
  factory $LoanCopyWith(Loan value, $Res Function(Loan) _then) = _$LoanCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String name, String? bankName, String? cardBin, int principal, int? annualRateBp, int termMonths, String firstDueDate, int dueDay, int installmentAmount, int totalInterest, int totalReturn, int effectiveRateBp, String calculationMethod, int calculationVersion, String currency, String status, String? settledDate, String? note, String? facilityNumber, String? paymentLink, String loanType, int? feeAmount, String createdAt, String updatedAt, String? deletedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? bankName = freezed,Object? cardBin = freezed,Object? principal = null,Object? annualRateBp = freezed,Object? termMonths = null,Object? firstDueDate = null,Object? dueDay = null,Object? installmentAmount = null,Object? totalInterest = null,Object? totalReturn = null,Object? effectiveRateBp = null,Object? calculationMethod = null,Object? calculationVersion = null,Object? currency = null,Object? status = null,Object? settledDate = freezed,Object? note = freezed,Object? facilityNumber = freezed,Object? paymentLink = freezed,Object? loanType = null,Object? feeAmount = freezed,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
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
as String?,facilityNumber: freezed == facilityNumber ? _self.facilityNumber : facilityNumber // ignore: cast_nullable_to_non_nullable
as String?,paymentLink: freezed == paymentLink ? _self.paymentLink : paymentLink // ignore: cast_nullable_to_non_nullable
as String?,loanType: null == loanType ? _self.loanType : loanType // ignore: cast_nullable_to_non_nullable
as String,feeAmount: freezed == feeAmount ? _self.feeAmount : feeAmount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String name,  String? bankName,  String? cardBin,  int principal,  int? annualRateBp,  int termMonths,  String firstDueDate,  int dueDay,  int installmentAmount,  int totalInterest,  int totalReturn,  int effectiveRateBp,  String calculationMethod,  int calculationVersion,  String currency,  String status,  String? settledDate,  String? note,  String? facilityNumber,  String? paymentLink,  String loanType,  int? feeAmount,  String createdAt,  String updatedAt,  String? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loan() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.bankName,_that.cardBin,_that.principal,_that.annualRateBp,_that.termMonths,_that.firstDueDate,_that.dueDay,_that.installmentAmount,_that.totalInterest,_that.totalReturn,_that.effectiveRateBp,_that.calculationMethod,_that.calculationVersion,_that.currency,_that.status,_that.settledDate,_that.note,_that.facilityNumber,_that.paymentLink,_that.loanType,_that.feeAmount,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String name,  String? bankName,  String? cardBin,  int principal,  int? annualRateBp,  int termMonths,  String firstDueDate,  int dueDay,  int installmentAmount,  int totalInterest,  int totalReturn,  int effectiveRateBp,  String calculationMethod,  int calculationVersion,  String currency,  String status,  String? settledDate,  String? note,  String? facilityNumber,  String? paymentLink,  String loanType,  int? feeAmount,  String createdAt,  String updatedAt,  String? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _Loan():
return $default(_that.id,_that.userId,_that.name,_that.bankName,_that.cardBin,_that.principal,_that.annualRateBp,_that.termMonths,_that.firstDueDate,_that.dueDay,_that.installmentAmount,_that.totalInterest,_that.totalReturn,_that.effectiveRateBp,_that.calculationMethod,_that.calculationVersion,_that.currency,_that.status,_that.settledDate,_that.note,_that.facilityNumber,_that.paymentLink,_that.loanType,_that.feeAmount,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String name,  String? bankName,  String? cardBin,  int principal,  int? annualRateBp,  int termMonths,  String firstDueDate,  int dueDay,  int installmentAmount,  int totalInterest,  int totalReturn,  int effectiveRateBp,  String calculationMethod,  int calculationVersion,  String currency,  String status,  String? settledDate,  String? note,  String? facilityNumber,  String? paymentLink,  String loanType,  int? feeAmount,  String createdAt,  String updatedAt,  String? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _Loan() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.bankName,_that.cardBin,_that.principal,_that.annualRateBp,_that.termMonths,_that.firstDueDate,_that.dueDay,_that.installmentAmount,_that.totalInterest,_that.totalReturn,_that.effectiveRateBp,_that.calculationMethod,_that.calculationVersion,_that.currency,_that.status,_that.settledDate,_that.note,_that.facilityNumber,_that.paymentLink,_that.loanType,_that.feeAmount,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Loan extends Loan {
  const _Loan({required this.id, this.userId = 'local', required this.name, this.bankName, this.cardBin, required this.principal, this.annualRateBp, required this.termMonths, required this.firstDueDate, required this.dueDay, required this.installmentAmount, required this.totalInterest, required this.totalReturn, required this.effectiveRateBp, required this.calculationMethod, this.calculationVersion = 1, this.currency = 'IRT', this.status = 'active', this.settledDate, this.note, this.facilityNumber, this.paymentLink, this.loanType = 'normal', this.feeAmount, required this.createdAt, required this.updatedAt, this.deletedAt}): super._();
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
@override final  String? facilityNumber;
@override final  String? paymentLink;
@override@JsonKey() final  String loanType;
@override final  int? feeAmount;
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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loan&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.cardBin, cardBin) || other.cardBin == cardBin)&&(identical(other.principal, principal) || other.principal == principal)&&(identical(other.annualRateBp, annualRateBp) || other.annualRateBp == annualRateBp)&&(identical(other.termMonths, termMonths) || other.termMonths == termMonths)&&(identical(other.firstDueDate, firstDueDate) || other.firstDueDate == firstDueDate)&&(identical(other.dueDay, dueDay) || other.dueDay == dueDay)&&(identical(other.installmentAmount, installmentAmount) || other.installmentAmount == installmentAmount)&&(identical(other.totalInterest, totalInterest) || other.totalInterest == totalInterest)&&(identical(other.totalReturn, totalReturn) || other.totalReturn == totalReturn)&&(identical(other.effectiveRateBp, effectiveRateBp) || other.effectiveRateBp == effectiveRateBp)&&(identical(other.calculationMethod, calculationMethod) || other.calculationMethod == calculationMethod)&&(identical(other.calculationVersion, calculationVersion) || other.calculationVersion == calculationVersion)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.settledDate, settledDate) || other.settledDate == settledDate)&&(identical(other.note, note) || other.note == note)&&(identical(other.facilityNumber, facilityNumber) || other.facilityNumber == facilityNumber)&&(identical(other.paymentLink, paymentLink) || other.paymentLink == paymentLink)&&(identical(other.loanType, loanType) || other.loanType == loanType)&&(identical(other.feeAmount, feeAmount) || other.feeAmount == feeAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,userId,name,bankName,cardBin,principal,annualRateBp,termMonths,firstDueDate,dueDay,installmentAmount,totalInterest,totalReturn,effectiveRateBp,calculationMethod,calculationVersion,currency,status,settledDate,note,facilityNumber,paymentLink,loanType,feeAmount,createdAt,updatedAt,deletedAt]);
}

@override
String toString() {
    return 'Loan(id: $id, userId: $userId, name: $name, bankName: $bankName, cardBin: $cardBin, principal: $principal, annualRateBp: $annualRateBp, termMonths: $termMonths, firstDueDate: $firstDueDate, dueDay: $dueDay, installmentAmount: $installmentAmount, totalInterest: $totalInterest, totalReturn: $totalReturn, effectiveRateBp: $effectiveRateBp, calculationMethod: $calculationMethod, calculationVersion: $calculationVersion, currency: $currency, status: $status, settledDate: $settledDate, note: $note, facilityNumber: $facilityNumber, paymentLink: $paymentLink, loanType: $loanType, feeAmount: $feeAmount, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$LoanCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$LoanCopyWith(_Loan value, $Res Function(_Loan) _then) = __$LoanCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String name, String? bankName, String? cardBin, int principal, int? annualRateBp, int termMonths, String firstDueDate, int dueDay, int installmentAmount, int totalInterest, int totalReturn, int effectiveRateBp, String calculationMethod, int calculationVersion, String currency, String status, String? settledDate, String? note, String? facilityNumber, String? paymentLink, String loanType, int? feeAmount, String createdAt, String updatedAt, String? deletedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? bankName = freezed,Object? cardBin = freezed,Object? principal = null,Object? annualRateBp = freezed,Object? termMonths = null,Object? firstDueDate = null,Object? dueDay = null,Object? installmentAmount = null,Object? totalInterest = null,Object? totalReturn = null,Object? effectiveRateBp = null,Object? calculationMethod = null,Object? calculationVersion = null,Object? currency = null,Object? status = null,Object? settledDate = freezed,Object? note = freezed,Object? facilityNumber = freezed,Object? paymentLink = freezed,Object? loanType = null,Object? feeAmount = freezed,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,}) {
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
as String?,facilityNumber: freezed == facilityNumber ? _self.facilityNumber : facilityNumber // ignore: cast_nullable_to_non_nullable
as String?,paymentLink: freezed == paymentLink ? _self.paymentLink : paymentLink // ignore: cast_nullable_to_non_nullable
as String?,loanType: null == loanType ? _self.loanType : loanType // ignore: cast_nullable_to_non_nullable
as String,feeAmount: freezed == feeAmount ? _self.feeAmount : feeAmount // ignore: cast_nullable_to_non_nullable
as int?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
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

// dart format on
