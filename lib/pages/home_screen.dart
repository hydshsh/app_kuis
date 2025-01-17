import 'package:app_kuis/custom_widgets/gradient_button.dart';
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
              'assets/images/gi-logo.png',
              width: 300,
              color: const Color(0xFF3F292C),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Quiz Genshin Impact',
              style: GoogleFonts.fredoka(
                fontSize: 40,
                color: const Color(0xFF02000C),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Buat Shofia kalau emang main Genshin Impact!',
              style: GoogleFonts.fredoka(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: GradientButton(
                color: const [
                  Color(0xFF3F5C8C),
                  Color(0xFF3F5C8C),
                ],
                onPressed: startQuiz,
                buttonStyle: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                text: 'Mulai Kuis',
                textStyle: GoogleFonts.fredoka(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
