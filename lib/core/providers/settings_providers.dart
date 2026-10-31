import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_providers.g.dart';

@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(Ref ref) => throw UnimplementedError('Must be overridden.');

const _kThemeKey = 'app.theme_mode';
const _kFontScaleKey = 'app.font_scale';

@Riverpod(keepAlive: true)
class ThemeModeNotifier extends _$ThemeModeNotifier {
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

@Riverpod(keepAlive: true)
class FontScaleNotifier extends _$FontScaleNotifier {
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
