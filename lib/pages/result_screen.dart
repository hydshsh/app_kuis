import 'package:flutter/material.dart';
import 'package:app_kuis/custom_widgets/gradient_container.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.choosenAnswer,
      required this.endQuiz,
      required this.restartQuiz});

  final List<String> choosenAnswer;
  final VoidCallback endQuiz;
  final VoidCallback restartQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GradientContainer(
        color: const [
          Color(0xFF548167),
          Color(0xFFCEDBBF),
          Color(0xFFAC9A7E),
        ],
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Kamu berhasil menjawab X pertanyaan dengan benar dari total Y pertanyaan!',
                style: GoogleFonts.fredoka(
                  color: const Color(0xFF02000C),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                // 'List pertanyaan dan jawaban',
                choosenAnswer.join(','),
                style: GoogleFonts.fredoka(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: endQuiz,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF548167),
                    ),
                    child: Text(
                      'Selesai',
                      style: GoogleFonts.fredoka(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: restartQuiz,
                    child: Text(
                      'Ulangi Kuis',
                      style: GoogleFonts.fredoka(
                        color: const Color(0xFF02000C),
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
