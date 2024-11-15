import 'package:flutter/material.dart';
import '../../utils/app_text.dart';

class CustomTextTheme {
  CustomTextTheme._();

  ///Light Theme
  static TextTheme lightTheme = TextTheme(
    bodyLarge: AppText.lightTitleAndSubtitleInputTextStyle,
  );

  ///Dark Theme
  static TextTheme darkTheme = TextTheme(
    bodyLarge: AppText.darkTitleAndSubtitleInputTextStyle,
  );
}
