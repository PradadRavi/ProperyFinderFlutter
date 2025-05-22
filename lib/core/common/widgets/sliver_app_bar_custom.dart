import 'package:flutter/material.dart';
import 'package:propertyfinder/core/res/app_colors.dart';

class SliverAppBarCustom extends StatelessWidget {
  const SliverAppBarCustom(
      {super.key,
      required this.title,
      required this.expandedHeight,
      this.background});
  final String title;
  final double expandedHeight;
  final Widget? background;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primaryColor,
      expandedHeight: 160,
      actions: [
        Text("icon"),
      ],
      leading: Text("BAck"),
      title: Text("Title"),
      pinned: true,

      // bottom: AppBar(
      //   title: Text("appBar"),
      // ),
      // flexibleSpace: FlexibleSpaceBar(
      //   title: Text(title),
      //   background: background,
      //   centerTitle: true,
      //   stretchModes: [],
      // ),
    );
  }
}
