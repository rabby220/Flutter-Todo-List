import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  ///Light AppBar Theme
  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: AppColors.blueColor,
    centerTitle: true,
    toolbarHeight: 100.0,
    titleTextStyle: AppText.appBarLightTextStyle,
  );

  ///Dark AppBar Theme
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: AppColors.blackColor,
    centerTitle: true,
    toolbarHeight: 100.0,
    titleTextStyle: AppText.appBarDarkTextStyle,
  );
}
