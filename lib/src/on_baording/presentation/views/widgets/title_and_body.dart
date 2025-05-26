import 'package:flutter/material.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
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
          style: context.headlineSmall
              ?.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            AppStrings.onBoardingText[slideCount]["body"] ?? "",
            style: context.bodySmall,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
