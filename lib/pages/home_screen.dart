import 'package:app_kuis/custom_widgets/gradient_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      color: const [
        Color(0xFFC1977D),
        Color(0xFFEABA69),
        Color(0xFFB77852),
      ],
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color(0xFF3F292C),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Quiz Flutter',
              style: GoogleFonts.fredoka(
                fontSize: 36,
                color: const Color(0xFF02000C),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Uji pemahamanmu tentang Flutter dengan menjawab soal quiz!',
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3F5C8C),
                ),
                onPressed: startQuiz,
                child: Text(
                  'Mulai Kuis',
                  style: GoogleFonts.fredoka(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 2,
                  ),
                )
                // GradientButton(
                //   color: const [
                //     Color(0xFF3F5C8C),
                //     Color(0xFF3F5C8C),
                //   ],
                //   onPressed: startQuiz,
                //   buttonStyle: ElevatedButton.styleFrom(
                //     padding: EdgeInsets.zero,
                //     fixedSize: const Size(200, 50),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(40),
                //     ),
                //   ),
                //   text: 'Mulai Kuis',
                //   textStyle: GoogleFonts.fredoka(
                //     color: Colors.white,
                //     fontSize: 20,
                //     letterSpacing: 2,
                //   ),
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
