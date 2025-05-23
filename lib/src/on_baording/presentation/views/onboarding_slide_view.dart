import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:propertyfinder/core/common/widgets/horizontal_round_button.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/core/utils/assets_path.dart';
import 'package:propertyfinder/src/on_baording/presentation/views/refactor/text_and_button_section.dart';
import 'package:propertyfinder/src/on_baording/presentation/views/widgets/title_and_body.dart';

class OnboardingSlideView extends StatefulWidget {
  const OnboardingSlideView({super.key});

  @override
  State<OnboardingSlideView> createState() => _OnboardingSlideViewState();
}

class _OnboardingSlideViewState extends State<OnboardingSlideView> {
  int slideCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                AppStrings.skip,
                style:
                    context.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            SvgPicture.asset(
              AssetsPath.slideOnboardingSvg,
            ),
            const SizedBox(
              height: 70,
            ),
            Spacer(),
            TextAndButtonSection()
          ],
        ),
      ),
    );
  }
}
