import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/core/database/app_database.dart';
import 'package:loan_manager/core/database/app_database_provider.dart';
import 'package:loan_manager/core/database/tables.dart';
import 'package:loan_manager/core/notifications/notification_service.dart';
import 'package:shamsi_date/shamsi_date.dart';

final reminderSyncProvider = Provider<ReminderSync>(
  (ref) => ReminderSync(ref.read(appDatabaseProvider), ref.read(notificationServiceProvider)),
);

/// Keeps scheduled reminders in line with the database. Every method is
/// idempotent and swallows its own errors: a notification problem must never
/// make saving a loan or a payment fail.
class ReminderSync {
  ReminderSync(this._db, this._notifications);

  final AppDatabase _db;
  final NotificationService _notifications;

  /// Re-evaluates every installment of one loan:
  /// fully paid => cancel, otherwise (re)schedule with the remaining amount.
  /// Called after a loan is created/edited and after a payment is recorded.
  Future<void> syncLoan(String loanId) async {
    try {
      final loan = await (_db.select(_db.loans)..where((t) => t.id.equals(loanId))).getSingleOrNull();
      final rows = await (_db.select(_db.installments)..where((t) => t.loanId.equals(loanId))).get();

      final isActive = loan != null && loan.deletedAt == null && loan.status == 'active';
      if (!isActive) {
        for (final r in rows) {
          await _notifications.cancelInstallmentReminder(r.id);
        }
        return;
      }

      if (!await _notifications.ensurePermission()) return;

      for (final r in rows) {
        final remaining = r.amount - r.waivedAmount - r.paidAmount;
        if (remaining <= 0) {
          await _notifications.cancelInstallmentReminder(r.id);
          continue;
        }
        await _notifications.scheduleInstallmentReminder(
          installmentId: r.id,
          loanName: loan.name,
          amount: remaining,
          dueDateJalali: Jalali.fromDateTime(DateTime.parse(r.dueDate)),
        );
      }
    } catch (e) {
      debugPrint('ReminderSync.syncLoan failed: $e');
    }
  }

  /// Editing a loan without payments regenerates its installments with new ids,
  /// so the old reminders have to be cancelled by their old ids first.
  Future<void> replaceForLoan(String loanId, Iterable<String> oldInstallmentIds) async {
    for (final id in oldInstallmentIds) {
      await _notifications.cancelInstallmentReminder(id);
    }
    await syncLoan(loanId);
  }

  /// Rebuilds all reminders from the database. Run at launch: it repairs
  /// reminders lost to a reboot/OS cleanup, and picks up data that arrived
  /// without going through the providers (Excel import, Drive restore).
  /// Never prompts for permission here.
  Future<void> resyncAll() async {
    try {
      if (!await _notifications.areNotificationsAllowed()) return;
      await _notifications.cancelAll();

      final loans = await (_db.select(_db.loans)
            ..where((t) => t.deletedAt.isNull() & t.status.equals(LoanStatus.active)))
          .get();
      if (loans.isEmpty) return;
      final names = {for (final l in loans) l.id: l.name};

      final today = DateTime.now().toIso8601String().substring(0, 10);
      final rows = await (_db.select(_db.installments)
            ..where((t) =>
                t.loanId.isIn(names.keys) &
                (t.amount - t.waivedAmount - t.paidAmount).isBiggerThanValue(0) &
                t.dueDate.isBiggerOrEqualValue(today)))
          .get();

      for (final r in rows) {
        await _notifications.scheduleInstallmentReminder(
          installmentId: r.id,
          loanName: names[r.loanId]!,
          amount: r.amount - r.waivedAmount - r.paidAmount,
          dueDateJalali: Jalali.fromDateTime(DateTime.parse(r.dueDate)),
        );
      }
    } catch (e) {
      debugPrint('ReminderSync.resyncAll failed: $e');
    }
  }
}
