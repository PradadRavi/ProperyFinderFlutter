import 'package:flutter/widgets.dart';

abstract final class AppIcons {
  // cannot be extended
  static const String family = "icommon";
  static const IconData arrowIcon = IconData(0xe900, fontFamily: family);
  static const IconData propertyMapIcon = IconData(0xe90b, fontFamily: family);
  static const IconData agricultureLandIcon =
      IconData(0xe909, fontFamily: family);
  static const IconData rentPropertyIcon = IconData(0xe907, fontFamily: family);
  static const IconData tpVillageMapIcon = IconData(0xe901, fontFamily: family);
  static const IconData newProjectIcon = IconData(0xe905, fontFamily: family);
  static const IconData npaIcon = IconData(0xe903, fontFamily: family);
}
