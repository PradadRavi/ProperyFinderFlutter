import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  int slideCount = 0;
  void slideNext() {
    slideCount++;
    notifyListeners();
  }
}
