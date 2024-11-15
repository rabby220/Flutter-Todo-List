import 'package:flutter/material.dart';
import 'package:testapp/app/utils/app_colors.dart';
import '../../utils/app_text.dart';

class CustomButtonTheme {
  CustomButtonTheme._();

  //Light Button Theme
  static ElevatedButtonThemeData lightButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shadowColor: AppColors.redColor,
      elevation: 10.0,
      shape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      minimumSize: const Size(
        double.infinity,
        60.0,
      ),
      side: const BorderSide(
        color: AppColors.blueColor,
        width: 2.0,
      ),
      backgroundColor: AppColors.whiteColor,
      foregroundColor: AppColors.blackColor,
      textStyle: AppText.appBarLightTextStyle,
    ),
  );

  //dark button theme
  static ElevatedButtonThemeData darkButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shadowColor: AppColors.orangeColor,
      elevation: 10.0,
      shape: const RoundedRectangleBorder(
        side: BorderSide.none,
      ),
      minimumSize: const Size(
        double.infinity,
        60.0,
      ),
      side: const BorderSide(color: AppColors.blueColor),
      backgroundColor: AppColors.blackColor,
      foregroundColor: AppColors.whiteColor,
      textStyle: AppText.appBarDarkTextStyle,
    ),
  );
}
