import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

// runApp(MyWidget());
void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      // backgroundColor: Colors.greenAccent,
      body: GradientContainer([
        Color.fromARGB(98, 180, 173, 48),
        Color.fromARGB(200, 34, 202, 42),
      ]),
    ),
  ));
}
