import 'package:flutter/material.dart';
import 'package:propertyfinder/core/res/app_colors.dart';

class AppBarCustom extends StatelessWidget implements PreferredSize {
  const AppBarCustom({super.key});

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size(double.infinity, 40);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backButtonForLeading(),
    );
  }

  Container backButtonForLeading() {
    return Container(
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.backgroundColor,
          border: Border.all(
            color: AppColors.borderGreyColor,
          ),
        ),
        child: Icon(Icons.keyboard_arrow_left));
  }
}
