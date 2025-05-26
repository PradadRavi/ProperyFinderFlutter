import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/app_bar_custom.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
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
          spacing: 8,
          children: [
            HeadingWidget(
              firstHeadingName: AppStrings.setUpProfile,
              subName: AppStrings.enterTheRequiredDetailsBelow,
            ),
            TextFieldWithName(),
            TextFieldWithName(),
            TextFieldWithName(),
            TextFieldWithName(),
            Text(
              "Your District",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                border: Border.all(
                  color: AppColors.borderGreyColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select district"),
                  Icon(
                    Icons.keyboard_arrow_right,
                  )
                ],
              ),
            ),

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

  Widget _buildDropdownField(
      String label, String? selectedValue, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 8),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: 'Select ${label.split(' ').last.toLowerCase()}',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
            value: selectedValue,
            onChanged: onChanged,
            items: ['Option 1', 'Option 2', 'Option 3']
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
          ),
        ],
      ),
    );
  }
}

/*

*/
