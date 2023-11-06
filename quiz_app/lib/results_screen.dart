import 'package:flutter/material.dart';
import 'package:quiz_app/question_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.onRestart});

  final void Function() onRestart;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const QuestionText('These are your results'),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          onPressed: onRestart,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.restart_alt),
          label: const Text('Restart quiz'),
        ),
      ],
    );
  }
}
