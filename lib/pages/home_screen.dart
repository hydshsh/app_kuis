import 'package:app_kuis/custom_widgets/gradient_button.dart';
import 'package:app_kuis/custom_widgets/gradient_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      color: const [
        Color(0xFF9733EE),
        Color(0xFFDA22FF),
      ],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Flutter Quiz',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Untuk mereview pembelajaran kemarin',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GradientButton(
            onPressed: startQuiz,
            text: 'Mulai Kerjakan',
          ),
        ],
      ),
    );
  }
}
