import 'package:app_kuis/custom_widgets/gradient_button.dart';
import 'package:app_kuis/custom_widgets/gradient_container.dart';
import 'package:app_kuis/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  void onTap() {
    //code..
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: GradientContainer(
        color: const [
          Color(0xFF76698C),
          Color(0xFFAFC5EA),
          Color(0xFF4A7FD6),
        ],
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuestion.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                    textStyle: const TextStyle(
                        color: Color(0xFF3A47A5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 20,
              ),
              GradientButton(
                color: const [
                  Color(0xFFA58C9C),
                  Color(0xFFA58C9C),
                ],
                onPressed: () {},
                buttonStyle: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                text: currentQuestion.answer[0],
                textStyle: const TextStyle(color: Colors.black),
              ),
              GradientButton(
                color: const [
                  Color(0xFFA58C9C),
                  Color(0xFFA58C9C),
                ],
                onPressed: () {},
                buttonStyle: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.zero,
                  // fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                text: currentQuestion.answer[1],
                textStyle: const TextStyle(color: Colors.black),
              ),
              GradientButton(
                color: const [
                  Color(0xFFA58C9C),
                  Color(0xFFA58C9C),
                ],
                onPressed: () {},
                buttonStyle: ElevatedButton.styleFrom(
                  // padding: EdgeInsets.zero,
                  // fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                text: currentQuestion.answer[2],
                textStyle: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
