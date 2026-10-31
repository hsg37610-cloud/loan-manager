import 'dart:io';

import 'package:drift/drift.dart';
import 'package:excel/excel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/core/database/app_database.dart';
import 'package:loan_manager/core/database/app_database_provider.dart';
import 'package:loan_manager/core/utils/jalali_utils.dart';
import 'package:shamsi_date/shamsi_date.dart';

import '../../export/data/export_data.dart';

final excelImportServiceProvider = Provider<ExcelImportService>(
  (ref) => ExcelImportService(ref.read(appDatabaseProvider)),
);

class ImportException implements Exception {
  const ImportException(this.message);

  final String message;

  @override
  String toString() => message;
}

class ImportSummary {
  const ImportSummary({
    required this.loans,
    required this.installments,
    required this.payments,
    required this.skipped,
  });

  final int loans;
  final int installments;
  final int payments;
  final int skipped;

  String get report {
    final text = '$loans وام ($installments قسط و $payments پرداخت) وارد شد';
    if (skipped > 0) return '$text؛ $skipped وام به دلیل تکرار شناسه نادیده گرفته شد';
    return text;
  }
}

/// Reads a 3-sheet xlsx file produced by [ExcelExportService] and inserts it
/// into the database. A loan whose `id` already exists is skipped together
/// with its installments/payments, so re-importing a file is safe.
class ExcelImportService {
  ExcelImportService(this._db);

  final AppDatabase _db;

  Future<ImportSummary> importFile(String path) async {
    final List<int> bytes;
    try {
      bytes = File(path).readAsBytesSync();
    } catch (_) {
      throw const ImportException('خواندن فایل ممکن نبود');
    }

    final Excel excel;
    try {
      excel = Excel.decodeBytes(bytes);
    } catch (_) {
      throw const ImportException('فایل یک اکسل معتبر نیست');
    }

    final loansSheet = excel.tables[ExportContract.loansSheet];
    if (loansSheet == null || loansSheet.rows.length < 2) {
      throw const ImportException('برگه «Loans» با ردیف داده در فایل یافت نشد');
    }

    final loans = _readLoans(loansSheet);

    final installmentsSheet = excel.tables[ExportContract.installmentsSheet];
    final installments = installmentsSheet == null ? <_ParsedInstallment>[] : _readInstallments(installmentsSheet);

    final paymentsSheet = excel.tables[ExportContract.paymentsSheet];
    final payments = paymentsSheet == null ? <_ParsedPayment>[] : _readPayments(paymentsSheet);

    // Every installment/payment must reference a loan that is in the file
    // or already exists in the database.
    final referenced = {
      for (final l in loans) l.id,
      for (final i in installments) i.loanId,
      for (final p in payments) p.loanId,
    };
    final existing = await (_db.select(_db.loans)..where((t) => t.id.isIn(referenced))).get();
    final knownLoanIds = {
      for (final l in loans) l.id,
      for (final r in existing) r.id,
    };
    for (final i in installments) {
      if (!knownLoanIds.contains(i.loanId)) {
        throw ImportException('قسط شماره ${i.sequenceNumber} متعلق به وام ناشناخته‌ای است');
      }
    }
    for (final p in payments) {
      if (!knownLoanIds.contains(p.loanId)) {
        throw ImportException('پرداختی برای وام ناشناخته‌ای یافت شد');
      }
    }

    final now = DateTime.now().toUtc().toIso8601String();
    var importedLoans = 0;
    var skipped = 0;
    var importedInstallments = 0;
    var importedPayments = 0;

    await _db.transaction(() async {
      for (final l in loans) {
        final exists = await (_db.select(_db.loans)..where((t) => t.id.equals(l.id))).getSingleOrNull();
        if (exists != null) {
          skipped++;
          continue;
        }
        await (_db.into(_db.loans).insert(LoansCompanion.insert(
              id: l.id,
              name: l.name,
              bankName: Value(l.bankName),
              cardBin: Value(l.cardBin),
              principal: l.principal,
              annualRateBp: Value(l.annualRateBp),
              termMonths: l.termMonths,
              firstDueDate: l.firstDueDate,
              dueDay: l.dueDay,
              installmentAmount: l.installmentAmount,
              totalInterest: l.totalInterest,
              totalReturn: l.totalReturn,
              effectiveRateBp: l.effectiveRateBp,
              calculationMethod: l.calculationMethod,
              calculationVersion: Value(l.calculationVersion ?? 1),
              currency: Value(l.currency ?? 'IRT'),
              status: Value(l.status ?? 'active'),
              settledDate: Value(l.settledDate),
              note: Value(l.note),
              facilityNumber: Value(l.facilityNumber),
              paymentLink: Value(l.paymentLink),
              loanType: Value(l.loanType ?? 'normal'),
              feeAmount: Value(l.feeAmount),
              createdAt: Value(now),
              updatedAt: Value(now),
            )));
        importedLoans++;

        for (final i in installments.where((x) => x.loanId == l.id)) {
          await (_db.into(_db.installments).insert(InstallmentsCompanion.insert(
                id: i.id,
                loanId: i.loanId,
                sequenceNumber: i.sequenceNumber,
                dueDate: i.dueDate,
                jalaliMonth: JalaliUtils.formatJalali(i.dueDate).substring(0, 7).replaceAll('/', '-'),
                amount: i.amount,
                paidAmount: Value(i.paidAmount),
                waivedAmount: Value(i.waivedAmount),
                createdAt: Value(now),
                updatedAt: Value(now),
              )));
          importedInstallments++;
        }

        for (final p in payments.where((x) => x.loanId == l.id)) {
          await (_db.into(_db.payments).insert(PaymentsCompanion.insert(
                id: p.id,
                loanId: p.loanId,
                paymentDate: p.paymentDate,
                amount: p.amount,
                unallocatedAmount: Value(p.unallocatedAmount),
                referenceNumber: Value(p.referenceNumber),
                note: Value(p.note),
                createdAt: Value(now),
                updatedAt: Value(now),
              )));
          importedPayments++;
        }
      }
    });

    return ImportSummary(
      loans: importedLoans,
      installments: importedInstallments,
      payments: importedPayments,
      skipped: skipped,
    );
  }

  // ---- parsing -------------------------------------------------------------

  List<_ParsedLoan> _readLoans(Sheet sheet) {
    final h = _headerIndex(sheet);
    for (final required in ['شناسه', 'نام وام', 'مبلغ کل', 'تعداد قسط', 'تاریخ اولین قسط', 'روز سررسید',
      'مبلغ هر قسط', 'سود کل', 'مبلغ بازپرداخت', 'نرخ مؤثر (bp)', 'روش محاسبه']) {
      if (!h.containsKey(required)) {
        throw ImportException('ستون «$required» در برگه Loans یافت نشد');
      }
    }

    final result = <_ParsedLoan>[];
    for (var r = 1; r < sheet.rows.length; r++) {
      final row = _RowReader(sheet.rows[r]);
      if (row.isEmpty) continue;

      final id = row.text(h['شناسه']!);
      if (id == null) throw ImportException('ردیف $r در برگه Loans بدون شناسه است');

      final firstDue = _requiredDate(row, h, 'تاریخ اولین قسط', r, id);
      result.add(_ParsedLoan(
        id: id,
        name: _requiredText(row, h, 'نام وام', r, id)!,
        bankName: row.text(h['بانک'] ?? -1),
        cardBin: row.text(h['کارت بانکی'] ?? -1),
        principal: _requiredInt(row, h, 'مبلغ کل', r, id)!,
        annualRateBp: row.intAt(h['نرخ سالانه (bp)'] ?? -1),
        termMonths: _requiredInt(row, h, 'تعداد قسط', r, id)!,
        firstDueDate: firstDue,
        dueDay: _requiredInt(row, h, 'روز سررسید', r, id)!,
        installmentAmount: _requiredInt(row, h, 'مبلغ هر قسط', r, id)!,
        totalInterest: _requiredInt(row, h, 'سود کل', r, id)!,
        totalReturn: _requiredInt(row, h, 'مبلغ بازپرداخت', r, id)!,
        effectiveRateBp: _requiredInt(row, h, 'نرخ مؤثر (bp)', r, id)!,
        calculationMethod: _requiredText(row, h, 'روش محاسبه', r, id)!,
        calculationVersion: row.intAt(h['نسخه روش'] ?? -1),
        currency: row.text(h['ارز'] ?? -1),
        status: row.text(h['وضعیت'] ?? -1),
        settledDate: _optionalDate(row, h, 'تاریخ تسویه'),
        note: row.text(h['یادداشت'] ?? -1),
        facilityNumber: row.text(h['شماره تسهیلات'] ?? -1),
        paymentLink: row.text(h['پیوند پرداخت'] ?? -1),
        loanType: row.text(h['نوع وام'] ?? -1),
        feeAmount: row.intAt(h['کارمزد'] ?? -1),
      ));
    }
    if (result.isEmpty) {
      throw const ImportException('برگه Loans بدون داده است');
    }
    return result;
  }

  List<_ParsedInstallment> _readInstallments(Sheet sheet) {
    final h = _headerIndex(sheet);
    for (final required in ['شناسه', 'وام', 'شماره قسط', 'سررسید', 'مبلغ']) {
      if (!h.containsKey(required)) {
        throw ImportException('ستون «$required» در برگه Installments یافت نشد');
      }
    }

    final result = <_ParsedInstallment>[];
    for (var r = 1; r < sheet.rows.length; r++) {
      final row = _RowReader(sheet.rows[r]);
      if (row.isEmpty) continue;

      final id = row.text(h['شناسه']!);
      if (id == null) throw ImportException('ردیف $r در برگه Installments بدون شناسه است');
      final due = _requiredDate(row, h, 'سررسید', r, id);

      result.add(_ParsedInstallment(
        id: id,
        loanId: _requiredText(row, h, 'وام', r, id)!,
        sequenceNumber: _requiredInt(row, h, 'شماره قسط', r, id)!,
        dueDate: due,
        amount: _requiredInt(row, h, 'مبلغ', r, id)!,
        paidAmount: row.intAt(h['پرداخت‌شده'] ?? -1) ?? 0,
        waivedAmount: row.intAt(h['بخشوده‌شده'] ?? -1) ?? 0,
      ));
    }
    return result;
  }

  List<_ParsedPayment> _readPayments(Sheet sheet) {
    final h = _headerIndex(sheet);
    for (final required in ['شناسه', 'وام', 'تاریخ پرداخت', 'مبلغ']) {
      if (!h.containsKey(required)) {
        throw ImportException('ستون «$required» در برگه Payments یافت نشد');
      }
    }

    final result = <_ParsedPayment>[];
    for (var r = 1; r < sheet.rows.length; r++) {
      final row = _RowReader(sheet.rows[r]);
      if (row.isEmpty) continue;

      final id = row.text(h['شناسه']!);
      if (id == null) throw ImportException('ردیف $r در برگه Payments بدون شناسه است');
      final paidAt = _requiredDate(row, h, 'تاریخ پرداخت', r, id);

      result.add(_ParsedPayment(
        id: id,
        loanId: _requiredText(row, h, 'وام', r, id)!,
        paymentDate: paidAt,
        amount: _requiredInt(row, h, 'مبلغ', r, id)!,
        unallocatedAmount: row.intAt(h['تخصیص‌نیافته'] ?? -1) ?? 0,
        referenceNumber: row.text(h['شماره مرجع'] ?? -1),
        note: row.text(h['یادداشت'] ?? -1),
      ));
    }
    return result;
  }

  Map<String, int> _headerIndex(Sheet sheet) {
    final map = <String, int>{};
    for (final cell in sheet.rows.first) {
      final c = cell;
      if (c == null) continue;
      final v = c.value;
      if (v is TextCellValue) {
        final s = v.value.toString().trim();
        if (s.isNotEmpty) map[s] = c.columnIndex;
      }
    }
    return map;
  }

  // ---- validation helpers ----------------------------------------------------

  String? _requiredText(_RowReader row, Map<String, int> h, String header, int rowNo, String id) {
    final v = row.text(h[header]!);
    if (v == null) throw ImportException('ستون «$header» در ردیف $rowNo (شناسه $id) خالی است');
    return v;
  }

  int? _requiredInt(_RowReader row, Map<String, int> h, String header, int rowNo, String id) {
    final v = row.intAt(h[header]!);
    if (v == null) throw ImportException('ستون «$header» در ردیف $rowNo (شناسه $id) عدد معتبر نیست');
    return v;
  }

  String _requiredDate(_RowReader row, Map<String, int> h, String header, int rowNo, String id) {
    final v = row.text(h[header]!);
    final iso = v == null ? null : _jalaliToIso(v);
    if (iso == null) throw ImportException('تاریخ «$header» در ردیف $rowNo (شناسه $id) معتبر نیست');
    return iso;
  }

  String? _optionalDate(_RowReader row, Map<String, int> h, String header) {
    final v = row.text(h[header] ?? -1);
    return v == null ? null : _jalaliToIso(v);
  }

  /// Accepts Jalali `yyyy/MM/dd` (as written by the export) and returns
  /// Gregorian `yyyy-MM-dd`. Returns null for anything invalid.
  String? _jalaliToIso(String s) {
    final parts = s.trim().replaceAll('/', '-').split('-');
    if (parts.length != 3) return null;
    final y = int.tryParse(parts[0]);
    final m = int.tryParse(parts[1]);
    final d = int.tryParse(parts[2]);
    if (y == null || m == null || d == null) return null;
    try {
      return Jalali(y, m, d).toGregorian().toDateTime().toIso8601String().substring(0, 10);
    } catch (_) {
      return null;
    }
  }
}

// ---- parsed row holders ------------------------------------------------------

class _ParsedLoan {
  _ParsedLoan({
    required this.id,
    required this.name,
    required this.principal,
    required this.termMonths,
    required this.firstDueDate,
    required this.dueDay,
    required this.installmentAmount,
    required this.totalInterest,
    required this.totalReturn,
    required this.effectiveRateBp,
    required this.calculationMethod,
    this.bankName,
    this.cardBin,
    this.annualRateBp,
    this.calculationVersion,
    this.currency,
    this.status,
    this.settledDate,
    this.note,
    this.facilityNumber,
    this.paymentLink,
    this.loanType,
    this.feeAmount,
  });

  final String id;
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
  final int? calculationVersion;
  final String? currency;
  final String? status;
  final String? settledDate;
  final String? note;
  final String? facilityNumber;
  final String? paymentLink;
  final String? loanType;
  final int? feeAmount;
}

class _ParsedInstallment {
  _ParsedInstallment({
    required this.id,
    required this.loanId,
    required this.sequenceNumber,
    required this.dueDate,
    required this.amount,
    required this.paidAmount,
    required this.waivedAmount,
  });

  final String id;
  final String loanId;
  final int sequenceNumber;
  final String dueDate;
  final int amount;
  final int paidAmount;
  final int waivedAmount;
}

class _ParsedPayment {
  _ParsedPayment({
    required this.id,
    required this.loanId,
    required this.paymentDate,
    required this.amount,
    required this.unallocatedAmount,
    this.referenceNumber,
    this.note,
  });

  final String id;
  final String loanId;
  final String paymentDate;
  final int amount;
  final int unallocatedAmount;
  final String? referenceNumber;
  final String? note;
}

/// Reads cells of one sheet row by column index.
class _RowReader {
  _RowReader(this._row);

  final List<Data?> _row;

  bool get isEmpty {
    for (final c in _row) {
      final v = c?.value;
      if (v is TextCellValue && v.value.toString().trim().isNotEmpty) return false;
      if (v is IntCellValue || v is DoubleCellValue) return false;
    }
    return true;
  }

  String? text(int col) {
    if (col < 0 || col >= _row.length) return null;
    final v = _row[col]?.value;
    if (v is TextCellValue) {
      final s = v.value.toString().trim();
      return s.isEmpty ? null : s;
    }
    if (v is IntCellValue) return v.value.toString();
    if (v is DoubleCellValue) {
      final d = v.value;
      return d == d.roundToDouble() ? d.toInt().toString() : d.toString();
    }
    return null;
  }

  int? intAt(int col) {
    final s = text(col);
    if (s == null) return null;
    final i = int.tryParse(s);
    if (i != null) return i;
    final d = double.tryParse(s);
    return d?.round();
  }
}
