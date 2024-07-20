import 'package:flutter/material.dart';

/// Main App theme, intended to apply any customizations for light/dark theme.
class MoviesAppTheme {
  static ThemeData get light {
    return _getThemeData(Brightness.light);
  }

  static ThemeData get dark {
    return _getThemeData(Brightness.dark);
  }

  static ThemeData _getThemeData(Brightness brightness) {
    return ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.indigo,
        brightness: brightness,
      ),
      useMaterial3: true,
      textTheme: const TextTheme(
        titleSmall: TextStyle(fontWeight: FontWeight.w600),
        labelMedium: TextStyle(fontWeight: FontWeight.w400),
      ),
    );
  }
}
