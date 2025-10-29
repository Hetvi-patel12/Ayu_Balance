import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF5D9C59);
  static const Color secondaryColor = Color(0xFFFFD369);
  static const Color backgroundColor = Color(0xFFF9F9F9);
  static const Color textColor = Color(0xFF333333);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      bodyMedium: TextStyle(
        color: textColor,
        fontSize: 16,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ),
  );
}
