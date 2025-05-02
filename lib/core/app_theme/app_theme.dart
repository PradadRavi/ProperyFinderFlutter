import 'package:flutter/material.dart';
import 'package:propertyfinder/core/res/app_colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(color: AppColors.backgroundColor),
    primaryColor: AppColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    buttonTheme: ButtonThemeData(buttonColor: AppColors.primaryColor),
    iconTheme: IconThemeData(
      color: AppColors.primaryColor,
      applyTextScaling: true,
    ),
    textButtonTheme: ,
    primaryTextTheme: ,
    textSelectionTheme: ,
    textTheme: ,
    

  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}
