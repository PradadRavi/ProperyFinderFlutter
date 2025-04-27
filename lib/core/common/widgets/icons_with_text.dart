import 'package:flutter/material.dart';
import 'package:propertyfinder/core/utils/app_icons.dart';
import 'package:propertyfinder/core/utils/strings_constant.dart';

class IconsWithText extends StatelessWidget {
  const IconsWithText(
      {super.key,
      required this.iconCode,
      required this.name,
      required this.backgroundColor});
  final int iconCode;
  final String name;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      child: Column(
        children: [Icon(propertyIcon), Text(propertyMap)],
      ),
    );
  }
}
