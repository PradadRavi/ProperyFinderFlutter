import 'package:flutter/material.dart';
import 'package:propertyfinder/core/res/app_colors.dart';

class RecentPropertyWidget extends StatelessWidget {
  const RecentPropertyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
                // image: DecorationImage(
                //   image: NetworkImage(""),
                // ),
              ),
            ),
            Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.favorite_rounded),
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Beautiful 3BHK Home for Rent",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          "Jasdan, Rajkot - Expire in 10 dys",
          style: TextStyle(fontSize: 10, color: Colors.grey),
        ),
        SizedBox(
          height: 6,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "25000",
          ),
          TextSpan(text: "/months")
        ]))
      ],
    );
  }
}
