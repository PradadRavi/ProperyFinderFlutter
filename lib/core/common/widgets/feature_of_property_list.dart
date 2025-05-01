import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/round_rectangle_icon_text.dart';
import 'package:propertyfinder/core/res/app_icons.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';

abstract class FeatureOfPropertyList {
  static const List<Widget> list = [
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      icon: AppIcons.propertyMapIcon,
      name: AppStrings.propertyMap,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      icon: AppIcons.agricultureLandIcon,
      name: AppStrings.agricultureLandsPlots,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      icon: AppIcons.rentPropertyIcon,
      name: AppStrings.rentProperty,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      icon: AppIcons.tpVillageMapIcon,
      name: AppStrings.tpDpVillageMaps,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      icon: AppIcons.newProjectIcon,
      name: AppStrings.newProject,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      icon: AppIcons.npaIcon,
      name: AppStrings.npaProperty,
    )
  ];
}
