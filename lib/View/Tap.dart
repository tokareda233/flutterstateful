import 'package:flutter/material.dart';

class Tap extends StatefulWidget {
  const new({super.key});

  @override
  State<Tap> createState() => _TapState();
}

class _TapState extends State<Tap> {
  bool on=false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
         setState(() {
           on=true;
         });
        },
        child: AnimatedContainer(
          color: on?Colors.white:Colors.blue,
          duration: Duration(seconds: 1),
          child: Center(
            child: Column(
             children: [
              SizedBox(height: 200,),
              Text("Tap any where to change color",style: TextStyle(fontWeight: FontWeight.bold),)
             ],
            ),
          ),


        ),
      ),
    );
  }
}