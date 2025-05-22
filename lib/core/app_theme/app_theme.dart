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
    fontFamily: "",
    textButtonTheme: textButtonTheme,
    primaryTextTheme: primaryTextTheme,
    textSelectionTheme: textSelectionTheme,
    textTheme: textTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
  static const primaryTextTheme = TextTheme();
  static const textButtonTheme = TextButtonThemeData(style: ButtonStyle());
  static const textSelectionTheme = TextSelectionThemeData();
  static const textTheme = TextTheme();
}
