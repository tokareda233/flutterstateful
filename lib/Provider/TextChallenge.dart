
import 'package:flutter/material.dart';

class Textchallenge extends ChangeNotifier {
    String name="";
    

 void changecolor(value){
    name =value;
   notifyListeners();
     }
  
}