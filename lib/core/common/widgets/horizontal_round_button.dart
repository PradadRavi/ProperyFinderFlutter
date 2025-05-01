import 'package:flutter/material.dart';
import 'package:propertyfinder/core/res/app_colors.dart';

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
          fixedSize: Size(160, 20), backgroundColor: AppColors.primaryColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
