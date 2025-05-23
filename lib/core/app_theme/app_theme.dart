import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    textButtonTheme: textButtonTheme,
    primaryTextTheme: primaryTextTheme,
    textSelectionTheme: textSelectionTheme,
    textTheme: GoogleFonts.sourceSans3TextTheme(textTheme),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
  static const primaryTextTheme = TextTheme();
  // static baseTextStyle = GoogleFonts.getTextTheme()
  static const textButtonTheme = TextButtonThemeData(style: ButtonStyle());
  static const textSelectionTheme = TextSelectionThemeData();
  static const baseTextStyle = TextStyle();
  static var textTheme = TextTheme(
    headlineSmall:
        baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
    headlineMedium:
        baseTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w800),
    headlineLarge:
        baseTextStyle.copyWith(fontSize: 34, fontWeight: FontWeight.bold),
    //
    titleSmall:
        baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
    titleMedium:
        baseTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w800),
    titleLarge:
        baseTextStyle.copyWith(fontSize: 30, fontWeight: FontWeight.w900),
    //
    bodySmall:
        baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium:
        baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
    bodyLarge:
        baseTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
    //
    displaySmall:
        baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
    displayMedium:
        baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
    displayLarge:
        baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
    //
    labelSmall:
        baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w600),
    labelMedium:
        baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
    labelLarge:
        baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
  );
}
