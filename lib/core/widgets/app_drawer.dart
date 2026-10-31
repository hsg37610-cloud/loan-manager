import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: theme.colorScheme.primaryContainer),
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.account_balance_wallet_rounded, size: 48, color: theme.colorScheme.onPrimaryContainer),
                const SizedBox(height: 8),
                Text('مدیریت وام', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: theme.colorScheme.onPrimaryContainer)),
              ]),
            ),
            ListTile(leading: const Icon(Icons.home_rounded), title: const Text('خانه'), onTap: () { Navigator.pop(context); context.go('/'); }),
            ListTile(leading: const Icon(Icons.calculate_rounded), title: const Text('محاسبه‌گر وام'), onTap: () { Navigator.pop(context); context.go('/calculator'); }),
            ListTile(leading: const Icon(Icons.calendar_month_rounded), title: const Text('اقساط'), onTap: () { Navigator.pop(context); context.go('/installments'); }),
            ListTile(leading: const Icon(Icons.list_alt_rounded), title: const Text('وام‌های من'), onTap: () { Navigator.pop(context); context.go('/loans'); }),
            const Divider(),
            ListTile(leading: const Icon(Icons.settings_rounded), title: const Text('تنظیمات'), onTap: () { Navigator.pop(context); context.go('/settings'); }),
            ListTile(leading: const Icon(Icons.info_outline_rounded), title: const Text('درباره برنامه'), onTap: () { Navigator.pop(context); context.go('/about'); }),
          ],
        ),
      ),
    );
  }
}
