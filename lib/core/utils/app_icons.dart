import 'package:flutter/widgets.dart';

// class AppIcons {
//   AppIcons._(); // No one can make object
//   static const String family = "icommon";
//   static const int vector = 0xe900;
//   static const int propertyLocation = 0xe90b;
//   static const int landLocation = 0xe909;
//   static const int houseBuilding = 0xe907;
//   static const int bank = 0xe903;
//   static const int building = 0xe905;
//   static const int regionLocation = 0xe901;
//   static IconData makeIcon(int iconCode) {
//     return IconData(iconCode, fontFamily: AppIcons.family);
//   }
// }
//App Icon Code
const String family = "icommon";
const int propertyLocationCode = 0xe90b;
const int landLocationCode = 0xe909;
const int rentPropertyCode = 0xe907;
const int npaCode = 0xe903;
const int newProjectCode = 0xe905;
const int villageLocationCode = 0xe901;

// Useable Icons
const IconData propertyIcon =
    IconData(propertyLocationCode, fontFamily: family);
const IconData landLocationIcon =
    IconData(landLocationCode, fontFamily: family);
const IconData rentPropertyIcon =
    IconData(rentPropertyCode, fontFamily: family);
const IconData villageLocationIcon =
    IconData(villageLocationCode, fontFamily: family);
const IconData newProjectIcon = IconData(newProjectCode, fontFamily: family);
const IconData npaIcon = IconData(npaCode, fontFamily: family);
