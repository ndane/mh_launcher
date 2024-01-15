import 'package:flutter/material.dart';

class AppBarThemes {
  AppBarThemes._();

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: const TextStyle().copyWith(
      color: Colors.white70,
      fontSize: 24,
    ),
  );

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: const TextStyle().copyWith(
      color: Colors.black87,
      fontSize: 24,
    ),
  );
}
