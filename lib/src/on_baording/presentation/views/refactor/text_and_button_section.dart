import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/horizontal_round_button.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/src/on_baording/presentation/provider/onboarding_provider.dart';
import 'package:propertyfinder/src/on_baording/presentation/views/widgets/title_and_body.dart';
import 'package:provider/provider.dart';

class TextAndButtonSection extends StatelessWidget {
  const TextAndButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingProvider>(builder: (context, value, child) {
      int count = context.watch<OnboardingProvider>().slideCount;
      bool isCompleteSlide = AppStrings.onBoardingText.length - 1 == count;
      return Column(
        children: [
          TitleAndBody(
            slideCount: count,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: List.generate(
                  AppStrings.onBoardingText.length,
                  (index) => Container(
                    height: 3,
                    width: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                      color: count == index
                          ? AppColors.primaryColor
                          : AppColors.darkBorderGreyColor,
                    ),
                  ),
                ),
              ),
              HorizontalRoundButton(
                name: !isCompleteSlide ? AppStrings.next : AppStrings.continues,
                onPressed: () {
                  if (!isCompleteSlide) {
                    context.read<OnboardingProvider>().slideNext();
                  }
                },
              ),
            ],
          )
        ],
      );
    });
  }
}
