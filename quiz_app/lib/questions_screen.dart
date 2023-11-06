import 'package:flutter/material.dart';
import 'package:quiz_app/asnwer_button.dart';
import 'package:quiz_app/data.dart';
import 'package:quiz_app/question_text.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onAnswer});

  final void Function(String answer) onAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        QuestionText(questions[questionsIndex].question),
        const SizedBox(height: 30),
        ...shuffleAndMapAnswers(),
      ],
    );
  }

  void answerQuestion(String answer) {
    widget.onAnswer(answer);
    setState(() {
      questionsIndex++;
    });
  }

  Iterable<AnswerButton> shuffleAndMapAnswers() {
    final list = List.of(questions[questionsIndex].answers);
    list.shuffle();

    return list.map((text) => AnswerButton(text, () {
          answerQuestion(text);
        }));
  }
}
