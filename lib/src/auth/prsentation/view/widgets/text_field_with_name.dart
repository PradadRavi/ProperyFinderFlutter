import 'package:flutter/material.dart';
import 'package:propertyfinder/core/res/app_colors.dart';

class TextFieldWithName extends StatelessWidget {
  const TextFieldWithName({
    super.key,
    required this.fieldName,
    required this.controller,
  });
  final String fieldName;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          fieldName,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            focusColor: AppColors.borderGreyColor,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.borderGreyColor,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 10,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.borderGreyColor,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
