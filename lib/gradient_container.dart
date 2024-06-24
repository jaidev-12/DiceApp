import "package:dice_game/dice_roller.dart";
import "package:dice_game/text_style.dart";
import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorBg1, this.colorBg2, {super.key});

  final Color colorBg1;
  final Color colorBg2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [colorBg1, colorBg2],
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
