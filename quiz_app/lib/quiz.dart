import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? currentScreen;

  @override
  void initState() {
    currentScreen = StartScreen(startQuiz);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: _decoration,
        child: Center(
          child: currentScreen,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  void startQuiz() {
    setState(() {
      currentScreen = const QuestionsScreen();
    });
  }
}

const BoxDecoration _decoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.deepPurple,
      Colors.purple,
    ],
  ),
);
