import 'package:flutter/material.dart';
import 'package:reco/utils/constants/colors.dart';
import 'package:reco/utils/theme/widget_theme/appbar_theme.dart';
import 'package:reco/utils/theme/widget_theme/chip_theme.dart';
import 'package:reco/utils/theme/widget_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: Colors.grey,
    brightness: Brightness.light,
    primaryColor: RColors.primary,
    textTheme: LTextTheme.lightTextTheme,
    chipTheme: LChipTheme.lightChipTheme,
    scaffoldBackgroundColor: RColors.white,
    appBarTheme: LAppBarTheme.lightAppBarTheme,
    // checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    // bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    // outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    // inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: Colors.grey,
    brightness: Brightness.dark,
    primaryColor: Colors.red.shade800,
    textTheme: LTextTheme.darkTextTheme,
    chipTheme: LChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: LAppBarTheme.darkAppBarTheme,
    // checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    // bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    // outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    // inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
