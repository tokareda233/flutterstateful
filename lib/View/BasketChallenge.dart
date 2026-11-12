import 'package:flutter/material.dart';
import 'package:flutter_application_3/Component/Teams.dart';

class Basketchallenge extends StatefulWidget {
  const Basketchallenge({super.key});

  @override
  State<Basketchallenge> createState() => _BasketchallengeState();
}

class _BasketchallengeState extends State<Basketchallenge> {
  num score_A=0;
  num score_B=0;
  int points=0;

  void Add_A(int points){
    setState(() {
      score_A+=points;
    });
  }
  void Add_B(int points){
    setState(() {
      score_B+=points;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 83, 42),
        centerTitle: true,
        title: Text("BasketBall",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 72),
        child: Center(
          child: Row(
            children: [
              Column(
        
                children: [
                  SizedBox(height: 90,),
                  Text("Team A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                  SizedBox(height: 30,),
                  Text("$score_A",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35)),
                  SizedBox(height: 20,),
                  CustomTeam(text: "Add 1 point", Add: Add_A, points: points),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed:(){Add_A(2);} , child: Text("Add 2 point",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 245, 83, 42)) ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed:(){Add_A(3);}, child: Text("Add 3 point",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 245, 83, 42) )),
                ],
              ),
              SizedBox(width: 9,),
              VerticalDivider(endIndent: 250,indent: 100,),
               SizedBox(width: 9,),
                Column(
                children: [
                  SizedBox(height: 90,),
                  Text("Team B",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                  SizedBox(height: 30,),
                  Text("$score_B",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35)),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){Add_B(1);}, child: Text("Add 1 point",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 245, 83, 42) )),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){Add_B(2);}, child: Text("Add 2 point",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 245, 83, 42)),),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){Add_B(3);}, child: Text("Add 3 point",style: TextStyle(color: Colors.white)),style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 245, 83, 42))),
                ],
              ),
          
            ],
          ),
        ),
      ),

    );
  }
}