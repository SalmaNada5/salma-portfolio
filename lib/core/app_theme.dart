import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF1A0B2E),
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF1A0B2E),
      brightness: Brightness.dark,
      surface: const Color(0xFF1A0B2E),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
      titleLarge: TextStyle(color: Colors.white),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1A0B2E),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    fontFamily: "Preahvihear",
  );
}
