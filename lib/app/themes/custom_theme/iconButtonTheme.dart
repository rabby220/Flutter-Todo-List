import 'package:flutter/material.dart';
import 'package:testapp/app/utils/app_colors.dart';

class CustomIconButtonTheme {
  CustomIconButtonTheme._();

  //Light Icon Theme Data
  static IconButtonThemeData lightIconButtonTheme =  IconButtonThemeData(
    style: IconButton.styleFrom(
        foregroundColor: AppColors.blackColor
    ),
  );

//Dark Icon Theme Data
  static IconButtonThemeData darkIconButtonTheme =  IconButtonThemeData(
    style: IconButton.styleFrom(
        foregroundColor: AppColors.whiteColor
    ),
  );
}
