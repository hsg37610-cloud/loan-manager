import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loan_manager/app.dart';
import 'package:loan_manager/core/notifications/notification_service.dart';
import 'package:loan_manager/core/providers/settings_providers.dart';
import 'package:loan_manager/core/security/app_lock_providers.dart';
import 'package:loan_manager/core/security/app_lock_service.dart';
import 'package:loan_manager/features/ledger/data/reminder_sync.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz_data;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Timezone database (Asia/Tehran is used for reminder scheduling).
  tz_data.initializeTimeZones();

  final prefs = await SharedPreferences.getInstance();

  // Load the PIN hash BEFORE runApp so a protected app is locked on its very first frame.
  final lockService = AppLockService();
  await lockService.load();

  final notifications = NotificationService();
  await notifications.init();

  final container = ProviderContainer(overrides: [
    sharedPreferencesProvider.overrideWithValue(prefs),
    appLockServiceProvider.overrideWithValue(lockService),
    notificationServiceProvider.overrideWithValue(notifications),
  ]);

  runApp(UncontrolledProviderScope(container: container, child: const App()));

  // Repair/refresh reminders in the background (reboot, import, restore...).
  unawaited(container.read(reminderSyncProvider).resyncAll());
}
