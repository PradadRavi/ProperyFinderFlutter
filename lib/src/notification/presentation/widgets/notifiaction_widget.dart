import 'package:flutter/material.dart';
import 'package:propertyfinder/core/res/app_colors.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';

class NotifiactionWidget extends StatelessWidget {
  const NotifiactionWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle});
  final Icon icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.alarm,
                size: 16,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                AppStrings.notificationDummyTitile,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            AppStrings.notificationDummySubtitle,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "16 hrs ago",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
