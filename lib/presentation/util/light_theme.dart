import 'package:flutter/material.dart';

class CustomTheme {
  static TextTheme get textTheme => const TextTheme(
        displayLarge: TextStyle(
          color: Colors.black,
          fontSize: 72.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
        displayMedium: TextStyle(
          color: Colors.black,
          fontSize: 72.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        displaySmall: TextStyle(
          color: Colors.black,
          fontSize: 72.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        headlineLarge: TextStyle(
          color: Colors.black,
          fontSize: 28.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontSize: 28.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        headlineSmall: TextStyle(
          color: Colors.black,
          fontSize: 28.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
        titleMedium: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        labelLarge: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
        labelMedium: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        labelSmall: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 12.0,
          fontFamily: 'Korolev',
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
      );

  static ThemeData light() {
    return ThemeData.from(
      colorScheme: const ColorScheme.light(),
      textTheme: textTheme,
      useMaterial3: true,
    );
  }
}
