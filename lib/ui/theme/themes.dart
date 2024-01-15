import 'package:flutter/material.dart';
import 'package:mh_launcher/ui/theme/appbar_themes.dart';
import 'package:mh_launcher/ui/theme/elevatedbutton_themes.dart';
import 'package:mh_launcher/ui/theme/text_themes.dart';

class Themes {
  Themes._();

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
          .copyWith(brightness: Brightness.dark),
      scaffoldBackgroundColor: Colors.black38,
      textTheme: TextThemes.darkTextTheme,
      appBarTheme: AppBarThemes.darkAppBarTheme,
      elevatedButtonTheme: ElevatedButtonThemes.darkTheme);

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
          .copyWith(brightness: Brightness.light),
      scaffoldBackgroundColor: Colors.blueGrey,
      textTheme: TextThemes.lightTextTheme,
      appBarTheme: AppBarThemes.lightAppBarTheme,
      elevatedButtonTheme: ElevatedButtonThemes.lightTheme);
}
