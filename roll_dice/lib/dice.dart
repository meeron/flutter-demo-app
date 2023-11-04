import 'package:flutter/material.dart';
import 'package:roll_dice/home_text.dart';
import 'dart:math';

final random = Random();

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {
  var number = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$number.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const HomeText('Roll dice'),
        )
      ],
    );
  }

  rollDice() {
    setState(() {
      number = random.nextInt(6) + 1;
    });
  }
}
