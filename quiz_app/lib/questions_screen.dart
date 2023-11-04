import 'package:flutter/material.dart';
import 'package:quiz_app/asnwer_button.dart';
import 'package:quiz_app/data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionsIndex = 0;
  var answers = List<String>.filled(questions.length, '', growable: false);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          questions[questionsIndex].question,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 30),
        ...mapAnswers(),
      ],
    );
  }

  void answerQuestion(String answer) {
    if (questionsIndex >= questions.length - 1) {
      return;
    }

    setState(() {
      answers[questionsIndex] = answer;
      questionsIndex++;
    });
  }

  Iterable<AnswerButton> mapAnswers() {
    return questions[questionsIndex]
        .answers
        .map((text) => AnswerButton(text, () {
              answerQuestion(text);
            }));
  }
}
