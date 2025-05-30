import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/app_bar_custom.dart';
import 'package:propertyfinder/core/common/widgets/district_select_dropdown_widget.dart';
import 'package:propertyfinder/core/common/widgets/taluka_select_dropdown_widget.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';

class ChooseYourLocation extends StatelessWidget {
  const ChooseYourLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.chooseYourLocation,
              style: context.headlineLarge?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              AppStrings.selectALocationToStartExploring,
              style: context.bodySmall,
            ),
            SizedBox(
              height: 20,
            ),
            DistrictSelectDropdownWidget(
              fieldName: AppStrings.district,
              hintName: AppStrings.selectDistrict,
            ),
            SizedBox(
              height: 10,
            ),
            TalukaSelectDropdownWidget(
              fieldName: AppStrings.taluka,
              hintName: AppStrings.selectTaluka,
            )
          ],
        ),
      ),
    );
  }
}
