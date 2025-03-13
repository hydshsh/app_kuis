import 'package:app_kuis/models/question_summary/summary_item.dart';
import 'package:flutter/material.dart';
import 'package:app_kuis/data/questions.dart';
import 'package:app_kuis/custom_widgets/gradient_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  List<Map<String, Object>> getDataSummary() {
    final List<Map<String, Object>> summaryData = [];

    for (int i = 0; i < choosenAnswer.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': choosenAnswer[i],
      });
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final summary =
        getDataSummary(); // bikin variabel buat ngumpulin hasil summary dari function getDataSummary
    final numTotalQuestion = questions.length;
    final numTotalCorrectAnswer = summary.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Stack(
      children: [
        const GradientContainer(
          color: [
            Color(0xFF548167),
            Color(0xFFCEDBBF),
            Color(0xFFAC9A7E),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(40, 120, 40, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Kamu berhasil menjawab $numTotalCorrectAnswer pertanyaan dengan benar dari total $numTotalQuestion pertanyaan!',
                style: GoogleFonts.fredoka(
                  color: const Color(0xFF02000C),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 360,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: summary.map((data) {
                      return SummaryItem(data);
                    }).toList(),
                    // Column(
                    //   children: summary.map((data) {
                    //     return Row(
                    //       children: [
                    //         Container(
                    //           child: Text(
                    //             ((data['question_index'] as int) + 1)
                    //                 .toString(),
                    //             style: GoogleFonts.fredoka(
                    //               color: Colors.black,
                    //               fontSize: 12,
                    //             ),
                    //           ),
                    //         ),
                    //         Expanded(
                    //           child: Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Text(
                    //                 data['question'] as String,
                    //                 style: GoogleFonts.fredoka(
                    //                     color: Colors.black,
                    //                     fontSize: 12,
                    //                     fontWeight: FontWeight.bold),
                    //               ),
                    //               Text(
                    //                 data['correct_answer'] as String,
                    //                 style: GoogleFonts.fredoka(
                    //                   color: const Color(0xFF4A7FD6),
                    //                   fontSize: 12,
                    //                 ),
                    //               ),
                    //               Text(
                    //                 data['user_answer'] as String,
                    //                 style: GoogleFonts.fredoka(
                    //                   color: const Color(0xFFB77852),
                    //                   fontSize: 12,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     );
                    //   }).toList(),
                    // ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 80),
                child: Row(
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
                      child: Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.rotateRight,
                            size: 16,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Ulangi Kuis',
                            style: GoogleFonts.fredoka(
                              color: const Color(0xFF02000C),
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
