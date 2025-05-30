import 'package:flutter/material.dart';
import 'package:propertyfinder/core/extensions/context_extensions.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/core/utils/assets_path.dart';

class NewProjectPopUp extends StatelessWidget {
  const NewProjectPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppStrings.newProject,
                style: context.bodyLarge,
              ),
              AspectRatio(
                aspectRatio: 0.6,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AssetsPath.new_project_pop_up_imageJpg,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
