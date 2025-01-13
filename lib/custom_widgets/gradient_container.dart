import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.color, this.decoration, this.child});

  final List<Color> color;
  final BoxDecoration? decoration;
  final Widget? child;

  final begingradient = Alignment.topLeft;
  final endgradient = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: begingradient,
          end: endgradient,
        ),
      ),
      child: child,
    );
  }
}
