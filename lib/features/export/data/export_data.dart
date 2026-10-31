import 'package:drift/drift.dart';
import 'package:loan_manager/core/database/app_database.dart';

/// Optional Jalali date range (already converted to Gregorian by the UI),
/// applied to installment due dates and payment dates. Inclusive.
class DateRangeFilter {
  const DateRangeFilter({this.from, this.to});

  /// First day (Gregorian, midnight), or null for no lower bound.
  final DateTime? from;

  /// Last day (Gregorian, midnight), or null for no upper bound.
  final DateTime? to;

  bool get isEmpty => from == null && to == null;

  String? get fromDay => from?.toIso8601String().substring(0, 10);
  String? get toDay => to?.toIso8601String().substring(0, 10);
}

class ExportException implements Exception {
  const ExportException(this.message);

  final String message;

  @override
  String toString() => message;
}

/// The rows that make up an export: all selected loans, plus the
/// installments/payments of those loans inside the optional date range.
class ExportData {
  const ExportData({
    required this.loans,
    required this.installments,
    required this.payments,
  });

  final List<LoanRow> loans;
  final List<InstallmentRow> installments;
  final List<PaymentRow> payments;

  bool get isEmpty => loans.isEmpty;
}

class ExportDataLoader {
  ExportDataLoader(this._db);

  final AppDatabase _db;

  Future<ExportData> load({required List<String> loanIds, DateRangeFilter? range}) async {
    final loans = await (_db.select(_db.loans)
          ..where((t) => t.id.isIn(loanIds))
          ..orderBy([(t) => OrderingTerm.asc(t.name)]))
        .get();
    if (loans.isEmpty) {
      return const ExportData(loans: [], installments: [], payments: []);
    }

    final from = range?.fromDay;
    final to = range?.toDay;

    final installments = await (_db.select(_db.installments)
          ..where((t) => _dateCondition(t.loanId.isIn(loanIds), t.dueDate, from, to))
          ..orderBy([
            (t) => OrderingTerm.asc(t.loanId),
            (t) => OrderingTerm.asc(t.sequenceNumber),
          ]))
        .get();

    final payments = await (_db.select(_db.payments)
          ..where((t) => _dateCondition(t.loanId.isIn(loanIds), t.paymentDate, from, to))
          ..orderBy([(t) => OrderingTerm.asc(t.paymentDate)]))
        .get();

    return ExportData(loans: loans, installments: installments, payments: payments);
  }

  /// All dates in the database are stored as ISO `yyyy-MM-dd` strings, so
  /// lexicographic comparison of the text column is equivalent to date order.
  Expression<bool> _dateCondition(Expression<bool> e, TextColumn column, String? from, String? to) {
    if (from != null && to != null) return e & column.isBetween(from, to);
    if (from != null) return e & column.biggerValueEqual(from);
    if (to != null) return e & column.smallerValueEqual(to);
    return e;
  }
}

/// The exact contract shared between Excel export and Excel import:
/// sheet names and the Persian header of every column, in order.
class ExportContract {
  ExportContract._();

  static const String loansSheet = 'Loans';
  static const String installmentsSheet = 'Installments';
  static const String paymentsSheet = 'Payments';

  static const List<String> loansHeaders = [
    'شناسه',
    'نام وام',
    'بانک',
    'کارت بانکی',
    'مبلغ کل',
    'نرخ سالانه (bp)',
    'تعداد قسط',
    'تاریخ اولین قسط',
    'روز سررسید',
    'مبلغ هر قسط',
    'سود کل',
    'مبلغ بازپرداخت',
    'نرخ مؤثر (bp)',
    'روش محاسبه',
    'نسخه روش',
    'ارز',
    'وضعیت',
    'تاریخ تسویه',
    'یادداشت',
    'شماره تسهیلات',
    'پیوند پرداخت',
    'نوع وام',
    'کارمزد',
    'تاریخ ایجاد',
    'تاریخ به‌روزرسانی',
  ];

  static const List<String> installmentHeaders = [
    'شناسه',
    'وام',
    'شماره قسط',
    'سررسید',
    'مبلغ',
    'پرداخت‌شده',
    'بخشوده‌شده',
    'تاریخ ایجاد',
    'تاریخ به‌روزرسانی',
  ];

  static const List<String> paymentHeaders = [
    'شناسه',
    'وام',
    'تاریخ پرداخت',
    'مبلغ',
    'تخصیص‌نیافته',
    'شماره مرجع',
    'یادداشت',
    'تاریخ ایجاد',
    'تاریخ به‌روزرسانی',
  ];
}
