import "dart:math";

import "package:flutter/material.dart";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var dice_image = 'assets/dice-images/dice-1.png';
  var dice_images = [
    'assets/dice-images/dice-1.png',
    'assets/dice-images/dice-2.png',
    'assets/dice-images/dice-3.png',
    'assets/dice-images/dice-4.png',
    'assets/dice-images/dice-5.png',
    'assets/dice-images/dice-6.png'
  ];
  var i = Random();

  void rollDice() {
    setState(() {
      dice_image = dice_images[i.nextInt(6)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          dice_image,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(30),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: const Text("Press to change"),
        ),
      ],
    );
  }
}
