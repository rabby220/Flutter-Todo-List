import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'custom_theme/appBarTheme.dart';
import 'custom_theme/buttonTheme.dart';
import 'custom_theme/floating_action_theme.dart';
import 'custom_theme/iconButtonTheme.dart';
import 'custom_theme/listTile_theme.dart';
import 'custom_theme/popupbutton_theme.dart';
import 'custom_theme/textFieldTheme.dart';
import 'custom_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  ///Light Theme
  ///
  ///
  ///
  ///
  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    textTheme: CustomTextTheme.lightTheme,
    scaffoldBackgroundColor: AppColors.whiteColor,
    brightness: Brightness.light,
    primaryColorDark: AppColors.blackColor,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: CustomButtonTheme.lightButtonTheme,
    inputDecorationTheme: CustomTextFieldTheme.lightTextFieldTheme,
    iconButtonTheme: CustomIconButtonTheme.lightIconButtonTheme,
    popupMenuTheme: CustomPopupButtonTheme.lightTheme,
    listTileTheme: CustomListTileTheme.lightTheme,
      floatingActionButtonTheme: CustomFloatingActionTheme.lightTheme
  );

  ///Dark Theme
  ///
  ///
  ///
  ///
  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    textTheme: CustomTextTheme.darkTheme,
    scaffoldBackgroundColor: AppColors.blackColor,
    brightness: Brightness.dark,
    primaryColorDark: AppColors.blackColor,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    iconButtonTheme: CustomIconButtonTheme.darkIconButtonTheme,
    elevatedButtonTheme: CustomButtonTheme.darkButtonTheme,
    inputDecorationTheme: CustomTextFieldTheme.darkTextFieldTheme,
    popupMenuTheme: CustomPopupButtonTheme.darkTheme,
    listTileTheme: CustomListTileTheme.darkTheme,
    floatingActionButtonTheme: CustomFloatingActionTheme.darkTheme
  );
}
