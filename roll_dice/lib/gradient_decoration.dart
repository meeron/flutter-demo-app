import 'package:flutter/material.dart';

class GradientDecoration extends BoxDecoration {
  GradientDecoration(Color beginColor, Color endColor)
      : super(
          gradient: LinearGradient(
            colors: [beginColor, endColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        );
}
