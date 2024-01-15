import 'package:flutter/material.dart';

class TextThemes {
  TextThemes._();

  static TextTheme darkTextTheme = TextTheme(
    titleLarge: const TextStyle().copyWith(color: Colors.white),
    titleMedium: const TextStyle().copyWith(color: Colors.white),
    titleSmall: const TextStyle().copyWith(color: Colors.white),
    headlineLarge: const TextStyle().copyWith(color: Colors.white),
    headlineMedium: const TextStyle().copyWith(color: Colors.white),
    headlineSmall: const TextStyle().copyWith(color: Colors.white),
    bodySmall: const TextStyle().copyWith(color: Colors.white70),
    bodyMedium: const TextStyle().copyWith(color: Colors.white70),
    bodyLarge: const TextStyle().copyWith(color: Colors.white70),
  );

  static TextTheme lightTextTheme = TextTheme(
    titleLarge: const TextStyle().copyWith(color: Colors.black),
    titleMedium: const TextStyle().copyWith(color: Colors.black),
    titleSmall: const TextStyle().copyWith(color: Colors.black),
    headlineLarge: const TextStyle().copyWith(color: Colors.black),
    headlineMedium: const TextStyle().copyWith(color: Colors.black),
    headlineSmall: const TextStyle().copyWith(color: Colors.black),
    bodySmall: const TextStyle().copyWith(color: Colors.black87),
    bodyMedium: const TextStyle().copyWith(color: Colors.black87),
    bodyLarge: const TextStyle().copyWith(color: Colors.black87),
  );
}
