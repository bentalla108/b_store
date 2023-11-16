import 'package:b_store/utils/constants/colors.dart';
import 'package:b_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:b_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:b_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:b_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:b_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:b_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:b_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:b_store/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class BAppTheme {
  BAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: BColors.grey,
    brightness: Brightness.light,
    primaryColor: BColors.primary,
    textTheme: BTextTheme.lightTextTheme,
    chipTheme: BChipTheme.lightChipTheme,
    scaffoldBackgroundColor: BColors.white,
    appBarTheme: BAppBarTheme.lightAppBarTheme,
    checkboxTheme: BCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: BBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: BColors.grey,
    brightness: Brightness.dark,
    primaryColor: BColors.primary,
    textTheme: BTextTheme.darkTextTheme,
    chipTheme: BChipTheme.darkChipTheme,
    scaffoldBackgroundColor: BColors.black,
    appBarTheme: BAppBarTheme.darkAppBarTheme,
    checkboxTheme: BCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: BBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: BElevatedButtonTheme.darktElevatedButtonTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: BTextFormFieldTheme.darkInputDecorationTheme,
  );
}
