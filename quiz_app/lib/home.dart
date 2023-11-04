import 'package:flutter/material.dart';
import 'package:quiz_app/start.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple,
              Colors.purple,
            ],
          ),
        ),
        child: const Center(
          child: Start(),
        ),
      ),
    );
  }
}
