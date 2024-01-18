import 'package:flutter/material.dart';
import 'package:mh_launcher/ui/theme/text_themes.dart';

class ElevatedButtonThemes {
  ElevatedButtonThemes._();

  static ElevatedButtonThemeData darkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.lightGreen,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.grey,
      textStyle: TextThemes.darkTextTheme.bodyMedium,
    ),
  );

  static ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.lightGreen,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.grey,
      textStyle: TextThemes.lightTextTheme.bodyMedium,
    ),
  );
}
