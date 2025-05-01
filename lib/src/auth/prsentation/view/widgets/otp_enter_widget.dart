import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/otp_input.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/src/auth/prsentation/view/widgets/heading_widget.dart';

class OtpEnterWidget extends StatelessWidget {
  const OtpEnterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadingWidget(
          firstHeadingName: AppStrings.otpIsOnTheWay,
          subName: AppStrings.enterTheOtpSent,
          showEditText: true,
        ),
        OtpInput(
          box: 6,
          getOtp: (otp) {
            print(otp);
          },
        )
        // Text(
        //   AppStrings.otpIsOnTheWay,
        //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // Row(
        //   children: [
        //     Text(
        //       AppStrings.enterTheOtpSent,
        //     ),
        //     Text(
        //       AppStrings.edit,
        //       style: TextStyle(
        //           decoration: TextDecoration.underline,
        //           decorationColor: Colors.indigo,
        //           color: Colors.indigo),
        //     )
        //   ],
        // )
      ],
    );
  }
}
