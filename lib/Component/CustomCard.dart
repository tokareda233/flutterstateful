import 'package:flutter/material.dart';
import 'package:flutter_application_3/View/ChartChellandge.dart';

class Customcard extends StatelessWidget {
 product item;
 VoidCallback toggle;
 Color color;
  
 
  
  Customcard({super.key,required this.item,required this.toggle,required this.color});
  

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 2,
      color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 40,),
             CircleAvatar(
              child: Icon(item.icon, size: 40, color: Colors.teal),
              backgroundColor: Colors.white,
              radius: 30, 
              ),
              SizedBox(height: 15,),
              Text("${item.title}"),
              SizedBox(height: 15),
              ElevatedButton(onPressed: toggle, child: Text(
                item.isgreen ? "Added" : "Add To Chart",
                style: const TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: color))
            ],
          ),
        ),
      

    );
  }
}