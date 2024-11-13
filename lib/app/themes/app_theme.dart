import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'custom_theme/appBarTheme.dart';
import 'custom_theme/buttomTheme.dart';
import 'custom_theme/textFieldTheme.dart';

class AppTheme {
  AppTheme._();

  ///Light Theme
  ///
  ///
  ///
  ///
  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.whiteColor,
    brightness: Brightness.light,
    primaryColorDark: AppColors.blackColor,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: CustomButtonTheme.lightButtonTheme,
    inputDecorationTheme: CustomTextFieldTheme.lightTextFieldTheme,
  );

  ///Light Theme
  ///
  ///
  ///
  ///
  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.blackColor,
    brightness: Brightness.light,
    primaryColorDark: AppColors.blackColor,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,

    elevatedButtonTheme: CustomButtonTheme.darkButtonTheme,
      inputDecorationTheme: CustomTextFieldTheme.darkTextFieldTheme
  );
}
