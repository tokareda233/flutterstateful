import 'package:flutter/material.dart';

class CustomTeam extends StatelessWidget {
 
  String text;
  Function(int) Add;
  int points;
  
  CustomTeam({super.key, required this.text,required this.Add,required this.points});

   @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:(){Add(points);} , child: Text("$text",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 245, 83, 42) ));
    }
}