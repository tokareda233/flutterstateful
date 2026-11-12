import 'package:flutter/material.dart';
import 'package:flutter_application_3/Provider/TextChallenge.dart';
import 'package:flutter_application_3/Provider/changecolor.dart';
import 'package:provider/provider.dart';

class Textfieldchallenge extends StatelessWidget {
  TextEditingController text1=TextEditingController();
  Textfieldchallenge({super.key});

  @override
  Widget build(BuildContext context) {
    Textchallenge changecolorobject = Provider.of<Textchallenge>(context);
    return Scaffold(
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: text1,
            decoration: InputDecoration(
              label:Text("UserName"),
              hint: Text("Enter your name"),
              
            ),
           
           onChanged:(value) {
             changecolorobject.changecolor(value);
            } ,
          ),
           SizedBox(height: 20,),
           
           Text("You typed: ${changecolorobject.name}")
        ],
      ),
     ),

    );

  }
}
