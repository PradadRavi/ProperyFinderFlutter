import 'package:flutter/material.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget(
      {super.key,
      required this.firstHeadingName,
      required this.subName,
      this.showEditText = false});
  final String firstHeadingName;
  final String subName;
  final bool showEditText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          firstHeadingName,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(subName),
            if (showEditText)
              Text(
                AppStrings.edit,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.indigo,
                    color: Colors.indigo),
              )
          ],
        ),
      ],
    );
  }
}
