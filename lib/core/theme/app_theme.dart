import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const String fontFamily = 'IRANSansX';
  static const Color _seed = Color(0xFF0B5C6B);

  static final ThemeData light = _build(Brightness.light);
  static final ThemeData dark = _build(Brightness.dark);

  static ThemeData _build(Brightness brightness) {
    final scheme = ColorScheme.fromSeed(seedColor: _seed, brightness: brightness);
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: scheme.surface,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        scrolledUnderElevation: 0,
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        titleTextStyle: TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.w700, fontSize: 20, color: scheme.onSurface),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(fontWeight: FontWeight.w700, fontFamily: fontFamily),
        titleMedium: TextStyle(fontWeight: FontWeight.w700, fontFamily: fontFamily),
        titleSmall: TextStyle(fontWeight: FontWeight.w500, fontFamily: fontFamily),
        bodyLarge: TextStyle(fontWeight: FontWeight.w400, fontFamily: fontFamily),
        bodyMedium: TextStyle(fontWeight: FontWeight.w400, fontFamily: fontFamily),
        bodySmall: TextStyle(fontWeight: FontWeight.w300, fontFamily: fontFamily),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: scheme.surfaceContainerLow,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: BorderSide(color: scheme.outlineVariant)),
      ),
      inputDecorationTheme: const InputDecorationTheme(border: OutlineInputBorder()),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: scheme.primary, linearTrackColor: scheme.surfaceContainerHighest),
    );
  }
}
