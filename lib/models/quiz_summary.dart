import 'package:app_kuis/data/questions.dart';

class QuizSummary {
  QuizSummary(this.choosenAnswer);

  final List<String> choosenAnswer;

  List<Map<String, Object>> getDataSummary () {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': choosenAnswer,
      });
    }

    return summary;
  }
}