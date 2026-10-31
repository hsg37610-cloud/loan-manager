import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:timezone/timezone.dart' as tz;

/// Overridden in main() with the initialised instance.
final notificationServiceProvider = Provider<NotificationService>(
  (ref) => throw UnimplementedError('notificationServiceProvider must be overridden in main().'),
);

/// Installment reminders: 09:00 Tehran time, one day before the due date.
///
/// Requires `tz.initializeTimeZones()` to have run (done in main()).
/// Written against flutter_local_notifications >= 20 (named parameters).
class NotificationService {
  NotificationService([FlutterLocalNotificationsPlugin? plugin])
      : _plugin = plugin ?? FlutterLocalNotificationsPlugin();

  static const _channelId = 'installment_reminders';
  static const _channelName = 'یادآوری اقساط';
  static const _channelDescription = 'یادآوری یک روز قبل از سررسید اقساط';

  final FlutterLocalNotificationsPlugin _plugin;
  bool _ready = false;

  tz.Location get _tehran => tz.getLocation('Asia/Tehran');

  Future<void> init() async {
    try {
      await _plugin.initialize(
        settings: const InitializationSettings(
          android: AndroidInitializationSettings('@mipmap/ic_launcher'),
          // Permission is requested lazily (see ensurePermission), not at launch.
          iOS: DarwinInitializationSettings(
            requestAlertPermission: false,
            requestBadgePermission: false,
            requestSoundPermission: false,
          ),
        ),
      );
      _ready = true;
    } catch (e) {
      debugPrint('NotificationService.init failed: $e');
    }
  }

  /// Non-prompting check, used by the launch-time resync.
  Future<bool> areNotificationsAllowed() async {
    if (!_ready) return false;
    final android = _plugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    if (android != null) return await android.areNotificationsEnabled() ?? false;
    final ios = _plugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();
    if (ios != null) return (await ios.checkPermissions())?.isEnabled ?? false;
    return true;
  }

  /// Asks for the POST_NOTIFICATIONS runtime permission on Android 13+ (and the
  /// iOS prompt). Safe to call repeatedly: it returns immediately once granted.
  Future<bool> ensurePermission() async {
    if (!_ready) return false;
    try {
      final android = _plugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
      if (android != null) {
        if (await android.areNotificationsEnabled() ?? false) return true;
        return await android.requestNotificationsPermission() ?? false;
      }
      final ios = _plugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();
      if (ios != null) {
        return await ios.requestPermissions(alert: true, badge: true, sound: true) ?? false;
      }
      return true;
    } catch (e) {
      debugPrint('ensurePermission failed: $e');
      return false;
    }
  }

  /// Schedules (or replaces) the reminder for one installment.
  ///
  /// [installmentId] is used to derive a stable notification id so the reminder
  /// can be replaced or cancelled later. Returns false when nothing was
  /// scheduled (e.g. the reminder time is already in the past).
  Future<bool> scheduleInstallmentReminder({
    required String installmentId,
    required String loanName,
    required int amount,
    required Jalali dueDateJalali,
  }) async {
    if (!_ready) return false;
    try {
      final due = dueDateJalali.toGregorian();
      // `day - 1` rolls over month/year boundaries correctly (day 0 = last day of previous month).
      final when = tz.TZDateTime(_tehran, due.year, due.month, due.day - 1, 9);
      if (!when.isAfter(tz.TZDateTime.now(_tehran))) return false;

      final money = NumberFormat('#,##0').format(amount);
      final dueText = '${dueDateJalali.year}/${_two(dueDateJalali.month)}/${_two(dueDateJalali.day)}';

      await _plugin.zonedSchedule(
        id: _notificationId(installmentId),
        title: 'یادآوری قسط',
        body: 'قسط وام «$loanName» به مبلغ $money تومان فردا ($dueText) سررسید می‌شود.',
        scheduledDate: when,
        notificationDetails: const NotificationDetails(
          android: AndroidNotificationDetails(
            _channelId,
            _channelName,
            channelDescription: _channelDescription,
            importance: Importance.high,
            priority: Priority.high,
          ),
          iOS: DarwinNotificationDetails(),
        ),
        // Inexact => no SCHEDULE_EXACT_ALARM permission needed (denied by default on
        // Android 14+). The reminder may land a few minutes after 09:00 under Doze.
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      );
      return true;
    } catch (e) {
      debugPrint('scheduleInstallmentReminder failed: $e');
      return false;
    }
  }

  Future<void> cancelInstallmentReminder(String installmentId) async {
    if (!_ready) return;
    try {
      await _plugin.cancel(id: _notificationId(installmentId));
    } catch (e) {
      debugPrint('cancelInstallmentReminder failed: $e');
    }
  }

  Future<void> cancelAll() async {
    if (!_ready) return;
    try {
      await _plugin.cancelAll();
    } catch (e) {
      debugPrint('cancelAll failed: $e');
    }
  }

  static String _two(int n) => n.toString().padLeft(2, '0');

  /// FNV-1a over the UUID. Deliberately not String.hashCode, which isn't
  /// guaranteed to be stable between runs/SDK versions. 31-bit positive int.
  static int _notificationId(String installmentId) {
    var hash = 0x811c9dc5;
    for (final unit in installmentId.codeUnits) {
      hash ^= unit;
      hash = (hash * 0x01000193) & 0xFFFFFFFF;
    }
    return hash & 0x7FFFFFFF;
  }
}
