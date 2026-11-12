import 'package:flutter/material.dart';

class switchChallenge extends ChangeNotifier{
  bool s = true;
  String gender = "";

  void turn(bool value) {
    
      s = value;
    notifyListeners();
  }

  void Gender(value) {
    
      gender = value;
    notifyListeners();
  }
}