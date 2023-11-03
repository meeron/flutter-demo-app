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
        child: const Center(
          child: HomeText('Hello from home'),
        ),
      ),
    );
  }
}
