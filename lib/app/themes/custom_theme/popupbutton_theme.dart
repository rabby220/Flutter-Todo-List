import 'package:flutter/material.dart';
import 'package:testapp/app/utils/app_colors.dart';

class CustomPopupButtonTheme {
  CustomPopupButtonTheme._();

  ///Light theme
  ///
  static PopupMenuThemeData lightTheme = const PopupMenuThemeData(
    iconColor: AppColors.blackColor,

    color: AppColors.whiteColor,
  );

  //Dark theme
  ///
  static PopupMenuThemeData darkTheme = const PopupMenuThemeData(
    iconColor: AppColors.whiteColor,
    color: AppColors.blackColor,
  );
}
