import 'package:flutter/material.dart';
import 'package:flutter_application_3/Provider/counter.dart';
import 'package:provider/provider.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});
@override
  Widget build(BuildContext context) {
countechellange providerobject =Provider.of<countechellange>(context);

    return Scaffold(
        body: Center(
          child: Column(
           children: [
            SizedBox(height: 150,),
            Text("Counter: ${providerobject.counter}"),
             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  providerobject.Add();
                }, child: Text("+")),
                SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){
                   providerobject.sub();
                  }, child: Text("-")),
              ],
            )
           ],
          ),
        ),
      
    );
 
}

}

