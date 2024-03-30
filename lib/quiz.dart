import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String selectedScreen = 'start';
  List<String> answers = [];

  void changeScreen(String screen) {
    if (screen == 'start') {
      answers = [];
    }
    setState(() {
      selectedScreen = screen;
    });
  }

  void chooseAnswer(String answer) {
    answers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeScreen;
    switch (selectedScreen) {
      case 'start':
        activeScreen = StartScreen(changeScreen);
        break;
      case 'questions':
        activeScreen = QuestionsScreen(changeScreen, chooseAnswer);
        break;
      case 'result':
        activeScreen = ResultScreen(changeScreen, answers);
        break;
    }
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        visualDensity: VisualDensity.standard,
      ),
      home: SafeArea(
          child: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.deepPurple.shade300,
                          Colors.deepPurple.shade900
                        ])),
                child: activeScreen,
            ),
          )),
    );
  }
}
