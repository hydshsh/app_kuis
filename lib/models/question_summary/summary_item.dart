import 'package:flutter/material.dart';
import 'package:app_kuis/models/question_summary/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.fredoka(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Jawaban benar: ${itemData['correct_answer'] as String}',
                style: GoogleFonts.fredoka(
                  color: const Color(0xFF4A7FD6),
                  fontSize: 16,
                ),
              ),
              Text(
                'Jawaban kamu: ${itemData['user_answer'] as String}',
                style: GoogleFonts.fredoka(
                  color: const Color(0xFFB77852),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
