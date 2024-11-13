import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'custom_theme/appBarTheme.dart';

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
      appBarTheme: CustomAppBarTheme.lightAppBarTheme);

  ///Light Theme
  ///
  ///
  ///
  ///
  static ThemeData darkThemeData = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.whiteColor,
      brightness: Brightness.light,
      primaryColorDark: AppColors.blackColor,
      appBarTheme: CustomAppBarTheme.darkAppBarTheme,
  );
}
