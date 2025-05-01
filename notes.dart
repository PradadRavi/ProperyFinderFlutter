// Guidelines rule of use varibale name https://dart.dev/effective-dart/style#dont-use-prefix-letters
// defaultTimeout // Good 
// kDefaultTimeout // bad
/* 

[GOOD]
import 'dart:math' as math;
import 'package:angular_components/angular_components.dart' as angular_components;
import 'package:js/js.dart' as js;
[BAD]
import 'dart:math' as Math;
import 'package:angular_components/angular_components.dart' as angularComponents;
import 'package:js/js.dart' as JS;

GOOD
const pi = 3.14;
const defaultTimeout = 1000;
final urlScheme = RegExp('^([a-z]+):');

class Dice {
  static final numberGenerator = Random();
}
BAD
const PI = 3.14;
const DefaultTimeout = 1000;
final URL_SCHEME = RegExp('^([a-z]+):');

class Dice {
  static final NUMBER_GENERATOR = Random();
}

*/