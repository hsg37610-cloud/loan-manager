import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Must be overridden.');
});

const _kThemeKey = 'app.theme_mode';
const _kFontScaleKey = 'app.font_scale';

// ---------- Theme Mode ----------
final themeModeNotifierProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(() {
  return ThemeModeNotifier();
});

class ThemeModeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    final saved = prefs.getString(_kThemeKey);
    return ThemeMode.values.firstWhere((m) => m.name == saved, orElse: () => ThemeMode.system);
  }

  Future<void> setMode(ThemeMode mode) async {
    state = mode;
    await ref.read(sharedPreferencesProvider).setString(_kThemeKey, mode.name);
  }
}

// ---------- Font Scale ----------
final fontScaleNotifierProvider = NotifierProvider<FontScaleNotifier, double>(() {
  return FontScaleNotifier();
});

class FontScaleNotifier extends Notifier<double> {
  @override
  double build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    return prefs.getDouble(_kFontScaleKey) ?? 1.0;
  }

  Future<void> setScale(double scale) async {
    state = scale;
    await ref.read(sharedPreferencesProvider).setDouble(_kFontScaleKey, scale);
  }
}
