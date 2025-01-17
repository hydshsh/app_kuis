import 'package:flutter/material.dart';
import 'package:app_kuis/data/questions.dart';
import 'package:app_kuis/pages/home_screen.dart';
import 'package:app_kuis/pages/questions_screen.dart';
import 'package:app_kuis/pages/result_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuizController extends StatefulWidget {
  const QuizController({super.key});

  @override
  State<QuizController> createState() => _QuizControllerState();
}

class _QuizControllerState extends State<QuizController> {
  //todo CARA PERTAMA
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = HomeScreen(switchScreen);
  //   super.initState();
  // }

  //todo CARA KEDUA & KETIGA
  List<String> selectedAnswer = [];
  var activeScreen = '/home-screen';

  void startQuiz() {
    setState(() {
      //todo CARA PERTAMA
      // activeScreen = const QuestionsScreen();
      //todo CARA KEDUA & KETIGA
      activeScreen = '/question-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      //todo CARA PERTAMA
      // activeScreen = const QuestionsScreen();
      //todo CARA KEDUA & KETIGA
      selectedAnswer = [];
      activeScreen = '/question-screen';
    });
  }

  void endQuiz() {
    setState(() {
      //todo CARA PERTAMA
      // activeScreen = const QuestionsScreen();
      //todo CARA KEDUA & KETIGA
      selectedAnswer = [];
      activeScreen = '/home-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(
        () {
          activeScreen = '/result-screen';
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    //todo CARA KEDUA
    final screenActive = activeScreen == '/home-screen'
        ? HomeScreen(startQuiz)
        : activeScreen == '/question-screen'
            ? QuestionsScreen(
                onSelectedAnswer: chooseAnswer,
                endQuiz: endQuiz,
              )
            : ResultScreen(
                choosenAnswer: selectedAnswer,
                endQuiz: endQuiz,
                restartQuiz: restartQuiz,);

    //todo CARA KETIGA
    // Widget screenActive = HomeScreen(switchScreen);

    //todo CARA KETIGA
    // if (activeScreen == '/question-screen') {
    //   screenActive = const QuestionsScreen();
    // }

    return MaterialApp(
      home: Scaffold(
        body: Stack(
            //todo CARA PERTAMA
            // child: activeScreen,
            //todo CARA KEDUA & KETIGA
            children: [
              screenActive,
              Container(
                height: double.infinity,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Made by Fadli Ganteng kyk Ji Chang Wook',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredoka(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: const FaIcon(FontAwesomeIcons.gratipay),
                        ),
                      ],
                    ),
                    Text(
                      '© 2025 GS 65',
                      style: GoogleFonts.fredoka(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
