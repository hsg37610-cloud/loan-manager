import 'dart:io';

import 'package:excel/excel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/core/database/app_database.dart';
import 'package:loan_manager/core/database/app_database_provider.dart';
import 'package:loan_manager/core/utils/jalali_utils.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'export_data.dart';

final excelExportServiceProvider = Provider<ExcelExportService>(
  (ref) => ExcelExportService(ref.read(appDatabaseProvider)),
);

/// Builds a 3-sheet xlsx workbook (Loans / Installments / Payments) for the
/// selected loans and returns the path of the written temp file.
class ExcelExportService {
  ExcelExportService(this._db);

  final AppDatabase _db;

  Future<String> export({required List<String> loanIds, DateRangeFilter? range}) async {
    final data = await ExportDataLoader(_db).load(loanIds: loanIds, range: range);
    if (data.isEmpty) {
      throw const ExportException('هیچ وامی برای خروجی‌گیری انتخاب نشده است');
    }

    final excel = Excel.createExcel();
    excel.rename('Sheet1', ExportContract.loansSheet);
    _writeLoans(excel[ExportContract.loansSheet], data);
    _writeInstallments(excel[ExportContract.installmentsSheet], data);
    _writePayments(excel[ExportContract.paymentsSheet], data);

    final bytes = excel.save();
    if (bytes == null) {
      throw const ExportException('ساخت فایل اکسل ناموفق بود');
    }

    final dir = await getTemporaryDirectory();
    final stamp = DateTime.now().toIso8601String().replaceAll(':', '-').substring(0, 13);
    final file = File(p.join(dir.path, 'loan_export_$stamp.xlsx'));
    await file.writeAsBytes(bytes);
    return file.path;
  }

  void _writeLoans(Sheet sheet, ExportData data) {
    sheet.appendRow([for (final h in ExportContract.loansHeaders) TextCellValue(h)]);
    for (final l in data.loans) {
      sheet.appendRow([
        TextCellValue(l.id),
        TextCellValue(l.name),
        TextCellValue(l.bankName ?? ''),
        TextCellValue(l.cardBin ?? ''),
        IntCellValue(l.principal),
        _int(l.annualRateBp),
        IntCellValue(l.termMonths),
        _date(l.firstDueDate),
        IntCellValue(l.dueDay),
        IntCellValue(l.installmentAmount),
        IntCellValue(l.totalInterest),
        IntCellValue(l.totalReturn),
        IntCellValue(l.effectiveRateBp),
        TextCellValue(l.calculationMethod),
        IntCellValue(l.calculationVersion),
        TextCellValue(l.currency),
        TextCellValue(l.status),
        _date(l.settledDate),
        TextCellValue(l.note ?? ''),
        TextCellValue(l.facilityNumber ?? ''),
        TextCellValue(l.paymentLink ?? ''),
        TextCellValue(l.loanType),
        _int(l.feeAmount),
        _date(l.createdAt),
        _date(l.updatedAt),
      ]);
    }
  }

  void _writeInstallments(Sheet sheet, ExportData data) {
    final names = {for (final l in data.loans) l.id: l.name};
    sheet.appendRow([for (final h in ExportContract.installmentHeaders) TextCellValue(h)]);
    for (final i in data.installments) {
      sheet.appendRow([
        TextCellValue(i.id),
        TextCellValue(names[i.loanId] ?? i.loanId),
        IntCellValue(i.sequenceNumber),
        _date(i.dueDate),
        IntCellValue(i.amount),
        IntCellValue(i.paidAmount),
        IntCellValue(i.waivedAmount),
        _date(i.createdAt),
        _date(i.updatedAt),
      ]);
    }
  }

  void _writePayments(Sheet sheet, ExportData data) {
    final names = {for (final l in data.loans) l.id: l.name};
    sheet.appendRow([for (final h in ExportContract.paymentHeaders) TextCellValue(h)]);
    for (final pay in data.payments) {
      sheet.appendRow([
        TextCellValue(pay.id),
        TextCellValue(names[pay.loanId] ?? pay.loanId),
        _date(pay.paymentDate),
        IntCellValue(pay.amount),
        IntCellValue(pay.unallocatedAmount),
        TextCellValue(pay.referenceNumber ?? ''),
        TextCellValue(pay.note ?? ''),
        _date(pay.createdAt),
        _date(pay.updatedAt),
      ]);
    }
  }

  /// Human-readable dates are written as Jalali `yyyy/MM/dd`.
  CellValue _date(String? iso) => TextCellValue(iso == null ? '' : JalaliUtils.formatJalali(iso));

  CellValue _int(int? v) => v == null ? TextCellValue('') : IntCellValue(v);
}
