import 'package:flutter/material.dart';

class shoppingProvider extends ChangeNotifier{
bool isAdedd=false;

 void toggle(){
  isAdedd=!isAdedd;
  notifyListeners();
 }


}