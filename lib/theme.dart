import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/custom_theme.dart';

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
        // bodyLarge: TextStyle(fontSize: 20),
        bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        // bodySmall: TextStyle(fontSize: 20),
      ));
}

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppThemeExtension get appColor => theme.extension<AppThemeExtension>()!;
}

// context.theme
// context.appColor
