import 'package:flutter/material.dart';
import '../../utils/app_text.dart';

class CustomTextFieldTheme {
  CustomTextFieldTheme._();

  ///
  ///Light Text Field Theme
  static InputDecorationTheme lightTextFieldTheme = InputDecorationTheme(
    labelStyle: AppText.lightLabelAndHintTextStyle,
    hintFadeDuration: const Duration(milliseconds: 500),
    hintStyle: AppText.lightLabelAndHintTextStyle,
    contentPadding: const EdgeInsets.all(20.0),
  );

  ///
  /// Dark TextField Theme
  static InputDecorationTheme darkTextFieldTheme = InputDecorationTheme(
    hintFadeDuration: const Duration(milliseconds: 500),
    labelStyle: AppText.darkLabelAndHintTextStyle,
    contentPadding: const EdgeInsets.all(20.0),
    hintStyle: AppText.darkLabelAndHintTextStyle,
  );
}
