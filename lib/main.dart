import 'package:flutter/material.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/src/auth/prsentation/view/auth_screen.dart';
import 'package:propertyfinder/src/auth/prsentation/view/set_up_profile_screen.dart';
import 'package:propertyfinder/src/on_baording/presentation/views/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: AppBarTheme(color: AppColors.backgroundColor),
        primaryColor: AppColors.primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        buttonTheme: ButtonThemeData(buttonColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: AuthScreen(),
    );
  }
}
