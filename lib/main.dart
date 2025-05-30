import 'package:flutter/material.dart';
import 'package:propertyfinder/core/app_theme/app_theme.dart';
import 'package:propertyfinder/core/common/widgets/choose_your_location.dart';
import 'package:propertyfinder/core/common/widgets/new_project_pop_up.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/src/add_property/presentation/views/add_property_view.dart';
import 'package:propertyfinder/src/auth/prsentation/view/auth_screen.dart';
import 'package:propertyfinder/src/auth/prsentation/view/set_up_profile_screen.dart';
import 'package:propertyfinder/src/notification/presentation/views/notification_view.dart';
import 'package:propertyfinder/src/on_baording/presentation/provider/onboarding_provider.dart';
import 'package:propertyfinder/src/home/presentation/views/home_screen.dart';
import 'package:propertyfinder/src/on_baording/presentation/views/on_boarding_screen.dart';
import 'package:propertyfinder/src/on_baording/presentation/views/onboarding_slide_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: ChangeNotifierProvider(
        create: (context) => OnboardingProvider(),
        child: NewProjectPopUp(),
      ),
    );
  }
}
