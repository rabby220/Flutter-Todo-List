import 'package:flutter/material.dart';
import 'package:testapp/app/utils/app_colors.dart';

class CustomFloatingActionTheme {
  CustomFloatingActionTheme._();

  //light Theme
  static FloatingActionButtonThemeData lightTheme =
      const FloatingActionButtonThemeData(
    backgroundColor: AppColors.blackColor,
    foregroundColor: AppColors.whiteColor,
    elevation: 15.0,
    splashColor: AppColors.whiteColor,
  );

  //dark Theme
  static FloatingActionButtonThemeData darkTheme =
      const FloatingActionButtonThemeData(
    elevation: 15.0,
    splashColor: AppColors.blackColor,
    backgroundColor: AppColors.redColor,
    foregroundColor: AppColors.whiteColor,
  );
}
