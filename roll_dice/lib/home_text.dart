import 'package:flutter/material.dart';

class HomeText extends StatelessWidget {
  const HomeText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromRGBO(252, 237, 217, 1),
        fontSize: 28,
      ),
    );
  }
}
