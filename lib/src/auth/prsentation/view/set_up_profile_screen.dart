import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/app_bar_custom.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/src/auth/prsentation/view/widgets/heading_widget.dart';
import 'package:propertyfinder/src/auth/prsentation/view/widgets/text_field_with_name.dart';

class SetUpProfileScreen extends StatelessWidget {
  SetUpProfileScreen({super.key});
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: Padding(
        padding: EdgeInsets.only(left: 12, right: 12, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeadingWidget(
              firstHeadingName: AppStrings.setUpProfile,
              subName: AppStrings.enterTheRequiredDetailsBelow,
            ),
            TextFieldWithName(),
            TextFieldWithName(),
            TextFieldWithName(),
            TextFieldWithName(),
            // Container(
            //   color: Colors.green,
            //   child: Row(
            //     children: [
            //       Container(
            //         color: Colors.yellow,
            //         margin: EdgeInsets.only(bottom: 14),
            //         child: Column(
            //           children: [
            //             Align(
            //               alignment: Alignment.topCenter,
            //               child: SizedBox(
            //                 height: 20,
            //                 width: 20,
            //                 child: Checkbox(
            //                   value: checkBoxValue,
            //                   onChanged: (value) {
            //                     checkBoxValue = value ?? false;
            //                   },
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         child: Text(
            //           " ${AppStrings.agreeToThe} ${AppStrings.termsOfUse} ${AppStrings.privacyPolicy} ${AppStrings.ofPropertyFindApplication}",
            //         ),
            //       ),
            //       ],
            //   ),
            // )
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Checkbox(
                    value: checkBoxValue,
                    onChanged: (value) {
                      checkBoxValue = value ?? false;
                    },
                  ),
                ),
                Expanded(
                  child: RichText(
                    // strutStyle: ,
                    text: TextSpan(
                      children: [
                        TextSpan(text: AppStrings.agreeToThe),
                        TextSpan(text: AppStrings.termsOfUse),
                        TextSpan(text: AppStrings.and),
                        TextSpan(text: AppStrings.privacyPolicy),
                        TextSpan(text: AppStrings.ofPropertyFindApplication)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
