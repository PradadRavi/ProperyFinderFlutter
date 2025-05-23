import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';

class RoundRectangleIconText extends StatelessWidget {
  const RoundRectangleIconText({
    super.key,
    required this.name,
    required this.backgroundColor,
    required this.svgPath,
  });
  final String svgPath;
  final String name;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 104,
        width: 104,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              18,
            ),
            color: backgroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgPath,
              height: 30,
              width: 30,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              name,
              style: context.labelSmall?.copyWith(height: 1.1, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
