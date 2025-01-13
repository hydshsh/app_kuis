import 'package:app_kuis/custom_widgets/gradient_button.dart';
import 'package:app_kuis/custom_widgets/gradient_container.dart';
import 'package:app_kuis/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionindex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(
      () {
        currentQuestionindex++;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionindex];

    return SizedBox(
      child: GradientContainer(
        color: const [
          Color(0xFF76698C),
          Color(0xFFAFC5EA),
          Color(0xFF4A7FD6),
        ],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuestion.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                    textStyle: const TextStyle(
                        color: Color(0xFF02000C),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 32,
              ),
              ...currentQuestion.getShuffledAnswer().map(
                (answer) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: GradientButton(
                        color: const [
                          Color(0xFF3A47A5),
                          Color(0xFF3A47A5),
                        ],
                        onPressed: () {
                          answerQuestion(answer);
                        },
                        text: answer,
                        textStyle: const TextStyle(
                          color: Colors.white,
                        )),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
