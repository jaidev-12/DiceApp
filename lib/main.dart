import "package:flutter/material.dart";
import "gradient_container.dart";

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.purple,
      body: GradientContainer(Colors.black, Color.fromARGB(255, 6, 85, 150)),
    ),
  ));
}
