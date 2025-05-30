import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/app_bar_custom.dart';
import 'package:propertyfinder/core/common/widgets/district_select_dropdown_widget.dart';
import 'package:propertyfinder/core/common/widgets/horizontal_round_button.dart';
import 'package:propertyfinder/core/common/widgets/taluka_select_dropdown_widget.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/src/auth/prsentation/view/widgets/heading_widget.dart';
import 'package:propertyfinder/src/auth/prsentation/view/widgets/text_field_with_name.dart';

class SetUpProfileScreen extends StatefulWidget {
  const SetUpProfileScreen({
    super.key,
  });

  @override
  State<SetUpProfileScreen> createState() => _SetUpProfileScreenState();
}

class _SetUpProfileScreenState extends State<SetUpProfileScreen> {
  bool checkBoxValue = false;
  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController mobileNumberController;
  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    mobileNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    mobileNumberController.dispose();
    super.dispose();
  }

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
            TextFieldWithName(
              fieldName: "Your Name",
              controller: nameController,
            ),
            TextFieldWithName(
              fieldName: "Email",
              controller: emailController,
            ),
            TextFieldWithName(
              fieldName: "Mobile Number",
              controller: mobileNumberController,
            ),
            DistrictSelectDropdownWidget(
              fieldName: "${AppStrings.your} ${AppStrings.district}",
              hintName: AppStrings.selectDistrict,
            ),
            TalukaSelectDropdownWidget(
              fieldName: "${AppStrings.your} ${AppStrings.taluka}",
              hintName: AppStrings.selectTaluka,
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
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 6,
                  ),
                  child: Transform.scale(
                    scale: 1.2,
                    child: Checkbox(
                      value: checkBoxValue,
                      onChanged: (bool? value) {
                        setState(() {
                          checkBoxValue = value ?? false;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                      side: const BorderSide(
                        width: 1,
                        color: AppColors.borderGreyColor,
                      ),
                      activeColor: AppColors.primaryColor,
                      checkColor: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: RichText(
                    // strutStyle: ,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: AppStrings.agreeToThe,
                          style: TextStyle(
                              height: 1.2,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: AppStrings.termsOfUse,
                          style: TextStyle(
                              height: 1.2,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: AppColors.primaryColor),
                        ),
                        TextSpan(
                          text: AppStrings.and,
                          style: TextStyle(
                              height: 1.2,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: AppStrings.privacyPolicy,
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: AppStrings.ofPropertyFindApplication,
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: HorizontalRoundButton(
                onPressed: () {},
                name: AppStrings.continues,
              ),
            ),
            SizedBox(
              height: 16,
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
