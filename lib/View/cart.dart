

import 'package:flutter/material.dart';
import 'package:flutter_application_3/View/ChartChellandge.dart';

class Cart extends StatefulWidget {
   List<product>cartlist;
   Cart({super.key,required this.cartlist});

  @override
  State<Cart> createState() => _cartState();
}

class _cartState extends State<Cart> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Text("Your Cart",style: TextStyle(color: Colors.white),),
      centerTitle: true,
    ),
    body: ListView.builder(itemCount: widget.cartlist.length,
    itemBuilder: (context, index) => Card(
      elevation: 2,
      color: Colors.white,
      
      child: ListTile(
        title:Text("${widget.cartlist[index].title}",style: TextStyle(fontWeight: FontWeight.bold),) ,
        subtitle: Text("price: ${widget.cartlist[index].subTitle}"),
        leading: Icon(widget.cartlist[index].icon,color: Colors.teal,size: 25,),
       trailing: Row(
       mainAxisSize: MainAxisSize.min,
       children: [
        IconButton(
      onPressed: () {
        setState(() {
          if (widget.cartlist[index].counter > 0) {
            widget.cartlist[index].counter--;
          }else{
            widget.cartlist.remove(widget.cartlist[index]);
          }
        });
      },
      icon: Icon(Icons.remove_circle,color: Colors.red,),
    ),

    SizedBox(width: 3),
    Text("${widget.cartlist[index].counter}"),
    SizedBox(width: 3),
    IconButton(
      onPressed: () {
        setState(() {
          widget.cartlist[index].counter++;
        });
      },
      icon: Icon(Icons.add_circle,color: Colors.teal,),
    ),
  ],
),

       
      ),
      
    ),),

    );
  }
}
