import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int i = 1;

  void count() {
    i++;
    notifyListeners();
  }

  void mul() {
    i = i * 2;
    notifyListeners();
  }

  void mul3() {
    i = i * 3;
    notifyListeners();
  }

  void mul4() {
    i = i * 4;
    notifyListeners();
  }

  void minus() {
    i--;
    notifyListeners();
  }

  void reset() {
    i = 1;
    notifyListeners();
  }
}
