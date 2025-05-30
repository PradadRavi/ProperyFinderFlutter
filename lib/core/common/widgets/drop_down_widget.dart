import 'package:flutter/material.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/res/app_colors.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget(
      {super.key, required this.fieldName, required this.hintName});
  final String fieldName;
  final String hintName;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 4,
        ),
        Text(
          fieldName,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
        Container(
          height: 48,
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
              Text(
                hintName,
                style: context.bodySmall?.copyWith(fontSize: 14),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
              )
            ],
          ),
        ),
      ],
    );
  }
}
