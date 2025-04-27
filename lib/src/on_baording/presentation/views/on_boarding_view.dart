import 'package:flutter/material.dart';
import 'package:propertyfinder/core/utils/strings_constant.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(welcomeToFindProperty),
          Text(readyToExplore),
          Text(letsLaunch)
        ],
      ),
    );
  }
}
