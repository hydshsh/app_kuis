import 'package:app_kuis/custom_widgets/gradient_container.dart';
import 'package:app_kuis/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectedAnswer,
    required this.endQuiz,
  });

  final void Function(String answer) onSelectedAnswer;
  final VoidCallback endQuiz;

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
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 56),
                child: Text(
                  currentQuestion.text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                    textStyle: const TextStyle(
                        color: Color(0xFF02000C),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                children: [
                  ...currentQuestion.getShuffledAnswer().map(
                    (answer) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF3A47A5),
                          ),
                          onPressed: () {
                            answerQuestion(answer);
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              textAlign: TextAlign.center,
                              answer,
                              style: GoogleFonts.fredoka(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: widget.endQuiz,
                    child: Text(
                      'Batal Kuis',
                      style: GoogleFonts.fredoka(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 20,
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
