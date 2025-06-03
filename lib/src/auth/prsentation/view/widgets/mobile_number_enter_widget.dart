import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/horizontal_round_button.dart';
import 'package:propertyfinder/core/common/widgets/new_project_pop_up.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/src/auth/prsentation/view/widgets/heading_widget.dart';

class MobileNumberEnterWidget extends StatelessWidget {
  const MobileNumberEnterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingWidget(
          firstHeadingName: AppStrings.yourMobNumber,
          subName: AppStrings.enter10DigNumber,
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Text(
              "+91 ",
              style: context.bodyLarge?.copyWith(fontSize: 26),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "9883943060",
                  hintStyle: context.bodyLarge?.copyWith(
                    fontSize: 26,
                    color: AppColors.mediumGreyColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Align(
          alignment: Alignment.centerRight,
          child: HorizontalRoundButton(
              onPressed: () {
                showFullScreenDialog(context);
                // showDialog(
                //     context: context,
                //     builder: (BuildContext context) {
                //       return NewProjectPopUp();
                //     });
              },
              name: AppStrings.getOtp),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
