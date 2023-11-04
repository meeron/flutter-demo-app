import 'package:flutter/material.dart';
import 'package:quiz_app/asnwer_button.dart';
import 'package:quiz_app/data.dart';
import 'package:quiz_app/question_text.dart';

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
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QuestionText(questions[questionsIndex].question),
          const SizedBox(height: 30),
          ...shuffleAndMapAnswers(),
        ],
      ),
    );
  }

  void answerQuestion(String answer) {
    setState(() {
      answers[questionsIndex] = answer;
      if (questionsIndex >= questions.length - 1) {
        return;
      }
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
