import 'package:flutter/material.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget(
      {super.key,
      required this.firstHeadingName,
      required this.subName,
      this.showEditText = false});
  final String firstHeadingName;
  final String subName;
  final bool showEditText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(firstHeadingName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              subName,
              style: context.bodySmall,
            ),
            if (showEditText)
              Text(
                AppStrings.edit,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.primaryColor,
                  color: AppColors.primaryColor,
                ),
              )
          ],
        ),
      ],
    );
  }
}
