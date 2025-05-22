import 'package:flutter/material.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';

// ignore: must_be_immutable
class TitleAndBody extends StatelessWidget {
  int slideCount = 0;
  TitleAndBody({
    super.key,
    required this.slideCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.onBoardingText[slideCount]["title"] ?? "",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          AppStrings.onBoardingText[slideCount]["body"] ?? "",
        ),
      ],
    );
  }
}
