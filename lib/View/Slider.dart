import 'package:flutter/material.dart';

class Slidertest extends StatefulWidget {
  const new({super.key});

  @override
  State<Slidertest> createState() => _SlidertestState();
}

class _SlidertestState extends State<Slidertest> {
  double acc =0.0;
   
void change(value){
  setState(() {
    acc=value;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Center(
        child: Column(
          children: [
            SizedBox(height: 190,),
            Text("Value: ${acc.toStringAsFixed(1)}"),
            SizedBox(height: 20,),
            Slider(value:acc , onChanged: change,min: 0,max: 100)
          ],
        ),
       ),

    );
  }
}