import 'package:flutter/material.dart';

class Switchbutton extends StatefulWidget {
  const Switchbutton({super.key});

  @override
  State<Switchbutton> createState() => _SwitchbuttonState();
}

class _SwitchbuttonState extends State<Switchbutton> {
  bool s = true;
  String gender = "";

  void turn(bool value) {
    setState(() {
      s = value;
    });
  }

  void Gender(value) {
    setState(() {
      gender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Switch(
              value: s,
              onChanged: (value) {
                turn(value);
              },
              activeTrackColor: Colors.green,
              inactiveTrackColor: const Color.fromARGB(255, 164, 182, 191),
              activeThumbColor: const Color.fromARGB(255, 53, 134, 55),
              inactiveThumbColor: Colors.red,
            ),
            SizedBox(height: 20),
            Visibility(child: Text("switch on"), visible: s),
            SizedBox(height: 30),
            RadioMenuButton(
              value: "Male",
              groupValue: gender,
              onChanged: Gender,

              child: Text("Male"),
            ),
            RadioMenuButton(
              value: "Female",
              groupValue: gender,
              onChanged: (value) {
                Gender(value!);
              },
              child: Text("Female"),
            ),
          ],
        ),
      ),
    );
  }
}
