import 'package:flutter/material.dart';

class Changecolor extends ChangeNotifier {
     bool on=false;

 void changecolor(){
     on=!on;
     notifyListeners();
     }
  
}