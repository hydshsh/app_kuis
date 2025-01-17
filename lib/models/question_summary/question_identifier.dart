import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      height: 40,
      width: 40,
      margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isCorrectAnswer
            ? const Color(0xFF4A7FD6)
            : const Color.fromARGB(255, 255, 0, 0),
      ),
      child: Text(
        questionNumber.toString(),
        style: GoogleFonts.fredoka(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}

// class QuestionIdentifier extend StatelessWidget {
//   QuestionIdentifier(this.choosenAnswer);

//   final List<String> choosenAnswer;

//   List<Map<String, Object>> getDataSummary () {
//     final List<Map<String, Object>> summary = [];

//     for (int i = 0; i < choosenAnswer.length; i++) {
//       summary.add({
//         'question_index': i,
//         'question': questions[i].text,
//         'correct_answer': questions[i].answer[0],
//         'user_answer': choosenAnswer,
//       });
//     }

//     return summary;
//   }
// }
