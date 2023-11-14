import 'package:b_store/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class BAppTheme {
  BAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: BTextTheme.lightTextTheme,
  );
  static ThemeData darkdaTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: BTextTheme.darkTextTheme,
  );
}
