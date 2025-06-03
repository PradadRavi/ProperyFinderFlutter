import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/feature_of_property_list.dart';
import 'package:propertyfinder/core/common/widgets/horizontal_round_button.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              AppStrings.welcomeToFindProperty,
              style: context.headlineLarge
                  ?.copyWith(height: 1.1, letterSpacing: 1),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.readyToExplore,
              style: context.bodySmall,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.letsLaunch,
              style: context.bodySmall
                  ?.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 10,
                children: List.generate(
                  3,
                  (index) => FeatureOfPropertyList.list[index],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 10,
                    children: List.generate(
                      3,
                      (index) => FeatureOfPropertyList.list[index + 3],
                    ),
                  ),
                ],
              ),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   spacing: 10,
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: 20,
            //         width: 20,
            //         color: Colors.amber,
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         height: 20,
            //         width: 20,
            //         color: Colors.amber,
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         height: 20,
            //         width: 20,
            //         color: Colors.amber,
            //       ),
            //     )
            //   ],
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: 10),
            //   child: ListView.builder(
            //       itemCount: 3,
            //       scrollDirection: Axis.horizontal,
            //       shrinkWrap: true,
            //       itemBuilder: (context, index) {
            //         return FeatureOfPropertyList.list[3 + index];
            //       }),
            // ),
            // Expanded(
            //   child: GridView.builder(
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 3,
            //           mainAxisSpacing: 10,
            //           crossAxisSpacing: 10),
            //       itemCount: FeatureOfPropertyList.list.length,
            //       itemBuilder: (context, index) {
            //         return FeatureOfPropertyList.list[index];
            //       }),
            // ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: HorizontalRoundButton(
                  onPressed: () {},
                  name: AppStrings.letsStart,
                ),
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
