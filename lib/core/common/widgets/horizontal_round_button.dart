import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/core/utils/assets_path.dart';

class HorizontalRoundButton extends StatelessWidget {
  const HorizontalRoundButton(
      {super.key, required this.onPressed, required this.name});
  final VoidCallback onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(216, 56),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name,
                style: context.labelMedium?.copyWith(color: Colors.white)),
            SvgPicture.asset(AssetsPath.arrowSvg)
          ],
        ),
      ),
    );
  }
}
