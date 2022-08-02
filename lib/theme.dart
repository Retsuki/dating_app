import 'package:flutter/material.dart';

ThemeData lightTheme() {
  const primary = Color(0xFFFF4D67);
  const secondary = Color(0xFFffb800);
  const surface = Colors.white;
  return ThemeData.from(
    colorScheme: const ColorScheme.light(
      primary: primary,
      secondary: secondary,
      error: Color(0xFFda1414),
    ),
  ).copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        onPrimary: Colors.white,
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ).copyWith(
        elevation: MaterialStateProperty.all(0),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: primary,
        minimumSize: const Size(double.infinity, 55),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        side: const BorderSide(color: primary),
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      // heading1
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
      // heading2
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
      // heading3
      displaySmall: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
      // heading4
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ), // heading5
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      // heading6
      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
      ),
      bodySmall: TextStyle(
        fontSize: 16,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
      ),
    ),
  );
}
