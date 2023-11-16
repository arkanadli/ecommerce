import 'package:ecommerce/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class GAppTheme {
  GAppTheme._();

  static ThemeData customLightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: GTextTheme.lightTextTheme,
    elevatedButtonTheme: GElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: GAppBarTheme.lightAppBarTheme,
  );

  static ThemeData customDarkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: GTextTheme.darkTextTheme,
    elevatedButtonTheme: GElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: GAppBarTheme.darkAppBarTheme,
  );
}
