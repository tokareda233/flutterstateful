import 'package:flutter/material.dart';
import 'package:flutter_application_3/Provider/SwitchProvider.dart';
import 'package:flutter_application_3/Provider/counter.dart';
import 'package:provider/provider.dart';

class Switchbutton extends StatelessWidget {
  const Switchbutton({super.key});

  @override
  Widget build(BuildContext context) {
    
    switchChallenge providerobject =Provider.of<switchChallenge>(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Switch(
              value:providerobject.s ,
              onChanged: (value) {
               providerobject.turn(value);
              },
              activeTrackColor: Colors.green,
              inactiveTrackColor: const Color.fromARGB(255, 164, 182, 191),
              activeThumbColor: const Color.fromARGB(255, 53, 134, 55),
              inactiveThumbColor: Colors.red,
            ),
            SizedBox(height: 20),
            Visibility(child: Text("switch on"), visible: providerobject.s),
            SizedBox(height: 30),
            RadioMenuButton(
              value: "Male",
              groupValue: providerobject.gender,
              onChanged: providerobject.Gender,

              child: Text("Male"),
            ),
            RadioMenuButton(
              value: "Female",
              groupValue: providerobject.gender,
              onChanged: (value) {
                providerobject.Gender(value!);
              },
              child: Text("Female"),
            ),
          ],
        ),
      ),
    );
}
}


