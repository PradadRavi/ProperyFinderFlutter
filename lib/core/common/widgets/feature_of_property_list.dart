import 'package:flutter/material.dart';
import 'package:propertyfinder/core/common/widgets/round_rectangle_icon_text.dart';
import 'package:propertyfinder/core/res/app_icons.dart';
import 'package:propertyfinder/core/utils/app_strings.dart';
import 'package:propertyfinder/core/utils/assets_path.dart';

class FeatureOfPropertyList {
  static const List<Widget> list = [
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      svgPath: AssetsPath.propertyMapSvg,
      name: AppStrings.propertyMap,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      svgPath: AssetsPath.agriculturLandsSvg,
      name: AppStrings.agricultureLandsPlots,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      svgPath: AssetsPath.rentProperySvg,
      name: AppStrings.rentProperty,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      svgPath: AssetsPath.tpDpSvg,
      name: AppStrings.tpDpVillageMaps,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      svgPath: AssetsPath.newProjectSvg,
      name: AppStrings.newProject,
    ),
    RoundRectangleIconText(
      backgroundColor: Colors.white,
      svgPath: AssetsPath.npaPropertySvg,
      name: AppStrings.npaProperty,
    )
  ];
}
