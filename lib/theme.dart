import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/custom_theme.dart';

// final lightTheme = _theme(Brightness.light, LightTheme());
final darkTheme = _theme(Brightness.dark, DarkTheme());

ThemeData _theme(Brightness brightness, AppThemeExtension ext) {
  return ThemeData(
      brightness: brightness,
      useMaterial3: true,
      scaffoldBackgroundColor: ext.background,
      colorScheme:
          ColorScheme.fromSeed(brightness: brightness, seedColor: ext.main),
      extensions: [ext],
      textTheme: TextTheme(
        labelLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        labelMedium: TextStyle(fontSize: 16),
        labelSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        //
        bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        bodySmall: TextStyle(fontSize: 14),
      ));
}

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppThemeExtension get appColor => theme.extension<AppThemeExtension>()!;
}

// context.theme
// context.appColor
