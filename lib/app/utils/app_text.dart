import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppText {
  ///Create Page Text
  static const String createTaskText = "Create Task";
  static const String createTaskButtonText = "Create";
  static const String labelTitleCreateTaskText = "Title";
  static const String hintTitleCreateTaskText = "Title Here";
   static const String labelSubTitleCreateTaskText = "Description";
   static const String hintSubTitleCreateTaskText = "Description Here";

  ///Create Task Text Style
  static final TextStyle labelAndHintTextStyle = GoogleFonts.actor(
    fontSize: 18.0,
    color: AppColors.blackColor,fontWeight: FontWeight.bold,
  );

  static final TextStyle titleAndSubtitleInputTextStyle = GoogleFonts.aBeeZee(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );


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
}
