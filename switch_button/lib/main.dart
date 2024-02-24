import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Change the primary color
        scaffoldBackgroundColor:
            Colors.deepPurpleAccent.withOpacity(0.9), // Set background color
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Switch'),
        ),
        body: Center(
          child: SwitchButton(),
        ),
      ),
    );
  }
}

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white.withOpacity(0.8), // Set container background color
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isSwitched ? 'Light is ON' : 'Light is OFF',
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20.0),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                // You can perform actions based on the switch state here
                if (isSwitched) {
                  // Light is ON
                  print('Light is ON');
                } else {
                  // Light is OFF
                  print('Light is OFF');
                }
              });
            },
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
