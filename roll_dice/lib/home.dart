import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_decoration.dart';
import 'package:roll_dice/home_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: GradientDecoration(Colors.deepPurple, Colors.purple),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-1.png',
                width: 200,
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: rollDice,
                child: const HomeText('Roll dice'),
              )
            ],
          ),
        ),
      ),
    );
  }

  rollDice() {}
}
