import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<Calculator> {
  int counter=0;

void Add(){
  setState(() {
    counter++;
  });


}
void sub(){
  setState(() {
    if(counter>0){
       counter--;
    }
    
  });

  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
           children: [
            SizedBox(height: 150,),
            Text("Counter: $counter"),
             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Add();
                }, child: Text("+")),
                SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){
                    sub();
                  }, child: Text("-")),
              ],
            )
           ],
          ),
        ),
      
    );
  }
}


