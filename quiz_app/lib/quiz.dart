import 'package:flutter/material.dart';
import 'package:quiz_app/data.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var currentScreen = Screen.start;
  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        currentScreen = Screen.results;
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      currentScreen = Screen.start;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = StartScreen(startQuiz);

    if (currentScreen == Screen.questions) {
      screen = QuestionsScreen(onAnswer: chooseAnswer);
    }

    if (currentScreen == Screen.results) {
      screen = ResultsScreen(onRestart: restartQuiz);
    }

    return Scaffold(
      body: Container(
        decoration: _decoration,
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(40),
            child: screen,
          ),
        ),
      ),
    );
  }

  void startQuiz() {
    setState(() {
      currentScreen = Screen.questions;
    });
  }
}

enum Screen { start, questions, results }

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
