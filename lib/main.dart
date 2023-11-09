import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 54, 2, 145),
            Color.fromARGB(255, 34, 4, 85)
          ],
        ),
      ),
    ),
  );
}
