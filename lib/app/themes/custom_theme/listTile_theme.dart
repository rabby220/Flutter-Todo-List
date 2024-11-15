import 'package:flutter/material.dart';
import '../../utils/app_text.dart';

class CustomListTileTheme {
  CustomListTileTheme._();

  ///List Light Theme
  static ListTileThemeData lightTheme = ListTileThemeData(
    titleTextStyle: AppText.lightTitleTileTextStyle,
    subtitleTextStyle: AppText.lightSubTitleTileTextStyle,
  );


  ///List Dark Theme
  static ListTileThemeData darkTheme = ListTileThemeData(
    titleTextStyle: AppText.darkTitleTileTextStyle,
    subtitleTextStyle: AppText.darkSubTitleTileTextStyle,
  );
}
