import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/feature_of_property_list.dart';
import 'package:propertyfinder/core/common/widgets/horizontal_round_button.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              AppStrings.welcomeToFindProperty,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(AppStrings.readyToExplore),
            const SizedBox(
              height: 20,
            ),
            const Text(AppStrings.letsLaunch),
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemCount: FeatureOfPropertyList.list.length,
                  itemBuilder: (context, index) {
                    return FeatureOfPropertyList.list[index];
                  }),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: HorizontalRoundButton(
                onPressed: () {},
                name: AppStrings.letsStart,
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
