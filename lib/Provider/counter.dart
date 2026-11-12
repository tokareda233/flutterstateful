 import 'package:flutter/material.dart';

class countechellange extends ChangeNotifier{
    int counter=1;

void Add(){
  
    counter++;
notifyListeners();
}


void sub(){
 
    if(counter>0){
       counter--;
    }
    notifyListeners();
    
}


 }