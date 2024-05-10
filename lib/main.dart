import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 31, 75, 111),
            Color.fromARGB(255, 25, 83, 130),
            Color.fromARGB(255, 22, 102, 168),
          ],
        ),
      ),
    ),
  );
}
