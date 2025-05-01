import 'package:flutter/material.dart';
import 'package:propertyfinder/core/res/app_icons.dart';

class RoundRectangleIconText extends StatelessWidget {
  const RoundRectangleIconText({
    super.key,
    required this.name,
    required this.backgroundColor,
    required this.icon,
  });
  final IconData icon;
  final String name;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 30,
        width: 30,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              14,
            ),
            color: backgroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              AppIcons.agricultureLandIcon,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
