import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serti0x/frontend/shared/app_strings.dart';
import 'package:serti0x/frontend/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(appTheme.darkTheme) {
    _loadTheme();
  }

  static final String _appThemeKey = appStrings.appThemeKey;

  Future<void> toggleTheme() async {
    if (state.brightness == Brightness.dark) {
      state = appTheme.lightTheme;

      await _saveThemeToPreferences(
        isDarkMode: false,
      );
    } else {
      state = appTheme.darkTheme;

      await _saveThemeToPreferences(
        isDarkMode: true,
      );
    }
  }

  Future<void> _saveThemeToPreferences({
    required bool isDarkMode,
  }) async {
    final themePreferences = await SharedPreferences.getInstance();
    await themePreferences.setBool(_appThemeKey, isDarkMode);
  }

  Future<void> _loadTheme() async {
    final themePreferences = await SharedPreferences.getInstance();
    final isDarkMode = themePreferences.getBool(_appThemeKey) ?? true;
    state = isDarkMode ? appTheme.darkTheme : appTheme.lightTheme;
  }
}
