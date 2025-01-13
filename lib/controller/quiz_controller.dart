import 'package:app_kuis/data/questions.dart';
import 'package:app_kuis/pages/home_screen.dart';
import 'package:app_kuis/pages/questions_screen.dart';
import 'package:flutter/material.dart';

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

  void switchScreen() {
    setState(() {
      //todo CARA PERTAMA
      // activeScreen = const QuestionsScreen();
      //todo CARA KEDUA & KETIGA
      activeScreen = '/question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(
        () {
          selectedAnswer = [];
          activeScreen = '/home-screen';
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    //todo CARA KEDUA
    final screenActive = activeScreen == '/home-screen'
        ? HomeScreen(switchScreen)
        : QuestionsScreen(
            onSelectedAnswer: chooseAnswer,
          );

    //todo CARA KETIGA
    // Widget screenActive = HomeScreen(switchScreen);

    //todo CARA KETIGA
    // if (activeScreen == '/question-screen') {
    //   screenActive = const QuestionsScreen();
    // }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          //todo CARA PERTAMA
          // child: activeScreen,
          //todo CARA KEDUA & KETIGA
          child: screenActive,
        ),
      ),
    );
  }
}
