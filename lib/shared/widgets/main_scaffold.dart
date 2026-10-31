import 'package:flutter/material.dart';
import 'package:loan_manager/core/widgets/app_drawer.dart';

class MainScaffold extends StatelessWidget {
  final Widget child;
  final String location;
  const MainScaffold({super.key, required this.child, required this.location});
  String _titleFor(String location) {
    switch (location) {
      case '/': return 'داشبورد';
      case '/calculator': return 'محاسبه‌گر وام';
      case '/installments': return 'اقساط';
      case '/loans': return 'وام‌های من';
      case '/settings': return 'تنظیمات';
      case '/about': return 'درباره برنامه';
      default: return 'مدیریت وام';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(_titleFor(location))), drawer: const AppDrawer(), body: child);
  }
}
