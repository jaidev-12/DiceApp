import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextStyle1 extends StatelessWidget {
  const TextStyle1(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24.0,
      ),
    );
  }
}
