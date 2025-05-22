import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  //app size
  Size get size => MediaQuery.of(this).size;
  double get height => size.height;
  double get width => size.width;
  // Default TextTheme
  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;

  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;

  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall;
  TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;
  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;

  TextStyle? get displaySmall => Theme.of(this).textTheme.displaySmall;
  TextStyle? get displayMedium => Theme.of(this).textTheme.displayMedium;
  TextStyle? get displayLarge => Theme.of(this).textTheme.displayLarge;

  //Primary TextTheme
  TextStyle? get pHeadlineSmall =>
      Theme.of(this).primaryTextTheme.headlineSmall;
  TextStyle? get pHeadlineMedium =>
      Theme.of(this).primaryTextTheme.headlineMedium;
  TextStyle? get pHeadlineLarge =>
      Theme.of(this).primaryTextTheme.headlineLarge;

  TextStyle? get pTitleSmall => Theme.of(this).primaryTextTheme.titleSmall;
  TextStyle? get pTitleMedium => Theme.of(this).primaryTextTheme.titleMedium;
  TextStyle? get pTitleLarge => Theme.of(this).primaryTextTheme.titleLarge;

  TextStyle? get pBodySmall => Theme.of(this).primaryTextTheme.bodySmall;
  TextStyle? get pBodyMedium => Theme.of(this).primaryTextTheme.bodyMedium;
  TextStyle? get pBodyLarge => Theme.of(this).primaryTextTheme.bodyLarge;

  TextStyle? get pLabelSmall => Theme.of(this).primaryTextTheme.labelSmall;
  TextStyle? get pLabelMedium => Theme.of(this).primaryTextTheme.labelMedium;
  TextStyle? get pLabelLarge => Theme.of(this).primaryTextTheme.labelLarge;

  TextStyle? get pDisplaySmall => Theme.of(this).primaryTextTheme.displaySmall;
  TextStyle? get pDisplayMedium =>
      Theme.of(this).primaryTextTheme.displayMedium;
  TextStyle? get pDisplayLarge => Theme.of(this).primaryTextTheme.displayLarge;

  // Accent TextTheme
  // TextStyle get aH1 => Theme.of(this).textSelectionTheme.cursorColor;
}
