import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/app_bar_custom.dart';
import 'package:propertyfinder/src/auth/prsentation/view/widgets/mobile_number_enter_widget.dart';
import 'package:propertyfinder/src/auth/prsentation/view/widgets/otp_enter_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: OtpEnterWidget(),
      ),
    );
  }
}
