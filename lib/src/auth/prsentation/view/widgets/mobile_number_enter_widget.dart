import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/horizontal_round_button.dart';
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
        TextField(
          decoration: InputDecoration(
            prefix: Icon(Icons.add),
            border: InputBorder.none,
            // hintText: "98839430",
          ),
        ),
        Spacer(),
        Align(
          alignment: Alignment.centerRight,
          child:
              HorizontalRoundButton(onPressed: () {}, name: AppStrings.getOtp),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
