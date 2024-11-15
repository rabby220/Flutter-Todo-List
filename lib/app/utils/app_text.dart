import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppText {
  ///
  ///
  ///Create Page Text
  ///
  ///
  static const String createTaskText = "Create Task";
  static const String createTaskButtonText = "Create";
  static const String labelTitleCreateTaskText = "Title";
  static const String hintTitleCreateTaskText = "Title Here";
  static const String labelSubTitleCreateTaskText = "Description";
  static const String hintSubTitleCreateTaskText = "Description Here";

  ///Update Task Text
  ///
  ///
  static const String updateTaskText = "Update Task";
  static const String updateTaskButtonText = "Update";
  static const String hintTitleUpdateTaskText = "Update Title Here";
  static const String hintSubTitleUpdateTaskText = "Update Description Here";

  ///Create Task light  Text Style
  ///
  ///
  static final TextStyle lightLabelAndHintTextStyle = GoogleFonts.actor(
    fontSize: 18.0,
    color: AppColors.blackColor,
    fontWeight: FontWeight.bold,
  );

  ///Dark Text Style Label and Hint Input Field
  static final TextStyle darkLabelAndHintTextStyle = GoogleFonts.actor(
    fontSize: 18.0,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
  );

  //Light Theme
  static final TextStyle lightTitleAndSubtitleInputTextStyle =
      GoogleFonts.aBeeZee(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );

  //Dark Theme
  static final TextStyle darkTitleAndSubtitleInputTextStyle =
      GoogleFonts.aBeeZee(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );

  ///
  ///
  ///
  /// AppBar Text Style

  ///Light AppBar Text Style
  static final TextStyle appBarLightTextStyle = GoogleFonts.aBeeZee(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );

  ///Dark AppBar Text Style
  static final TextStyle appBarDarkTextStyle = GoogleFonts.aBeeZee(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );

  /// light Title Title style
  static final TextStyle lightTitleTileTextStyle = GoogleFonts.actor(
    fontSize: 24.0,
    color: AppColors.blackColor,
    fontWeight: FontWeight.bold,
  );

  /// light Sub  Title style
  static final TextStyle lightSubTitleTileTextStyle = GoogleFonts.actor(
    fontSize: 18.0,
    color: AppColors.blackColor,
    fontWeight: FontWeight.normal,
  );

  ///  Dark Title style
  static final TextStyle darkTitleTileTextStyle = GoogleFonts.actor(
    fontSize: 24.0,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
  );

  /// Dark Sub  Title style
  static final TextStyle darkSubTitleTileTextStyle = GoogleFonts.actor(
    fontSize: 18.0,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.normal,
  );
}
