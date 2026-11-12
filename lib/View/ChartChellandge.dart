import 'package:flutter/material.dart';
import 'package:flutter_application_3/Component/CustomCard.dart';
import 'package:flutter_application_3/View/cart.dart';

class product{
  IconData icon;
  String title;
  String subTitle;
  bool isgreen;
  int counter;

  product({required this.icon,required this.title,required this.subTitle, this.isgreen=false,required this.counter});
}
class Chartchellandge extends StatefulWidget {
  const new({super.key});

  @override
  State<Chartchellandge> createState() => _ChartchellandgeState();
}

class _ChartchellandgeState extends State<Chartchellandge> {
  List<product> data=[
    product(icon: Icons.watch, title: "Smart Watch", subTitle: "\$15.0",isgreen: false,counter: 0),
    product(icon: Icons.headphones, title: "Head Phones", subTitle: "\$15.0",isgreen: false,counter: 0),
    product(icon: Icons.laptop, title: "Laptop", subTitle: "\$15.0",isgreen: false,counter: 0),
    product(icon: Icons.camera, title: "Camera", subTitle: "\$15.0",isgreen: false,counter: 0),
    product(icon: Icons.smartphone, title: "Smart phone", subTitle: "\$15.0",isgreen: false,counter: 0),
    product(icon: Icons.tablet, title: "Tablet", subTitle: "\$15.0",isgreen: false,counter: 0
    
    ),
];

List<product>added=[];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,centerTitle: true, title: Text("Shopping"),),
        body: GridView.builder(itemCount: data.length,gridDelegate: 
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemBuilder: (context, index) => Customcard(item: data[index], toggle: (){
          setState(() {
            data[index].isgreen=!data[index].isgreen;
            if(data[index].isgreen){
               added.add(data[index]);
            }else{
              added.remove(data[index]);
            }
            
          });
        },color: data[index].isgreen?Colors.red:Colors.teal,),
        ),
        floatingActionButton:Container( decoration: BoxDecoration(color: const Color.fromARGB(255, 232, 216, 216),borderRadius:BorderRadius.circular(11) ),child: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(cartlist: added,),));
        }, icon: Icon(Icons.shopping_cart ,color: Colors.teal,))) ,

    );
  }
}