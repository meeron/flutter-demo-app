import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(height: 50),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(252, 237, 217, 1),
          ),
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
          ),
          child: const Text('Start quiz'),
        )
      ],
    );
  }
}
