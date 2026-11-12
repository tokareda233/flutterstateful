import 'package:flutter/material.dart';
import 'package:flutter_application_3/Provider/changecolor.dart';
import 'package:provider/provider.dart';

class Tap extends StatelessWidget {
  const Tap({super.key});

 @override
  Widget build(BuildContext context) {

    Changecolor changecolorobject = Provider.of<Changecolor>(context);

    return Scaffold(
      body: GestureDetector(
        onTap:()=> changecolorobject.changecolor(),
        child: AnimatedContainer(
          color: changecolorobject.on?Colors.white:Colors.blue,
          duration: Duration(milliseconds: 1),
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