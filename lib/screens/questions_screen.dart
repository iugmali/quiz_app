import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/ui/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.changeScreen, this.chooseAnswer, {super.key});

  final void Function(String) changeScreen;
  final void Function(String) chooseAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionIndex = 0;

  void _selectAnswer(String answer) {
    widget.chooseAnswer(answer);
    if (questionIndex >= questions.length - 1) {
      widget.changeScreen('result');
      return;
    }
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xc7d8e4ff)
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.shuffledOptions.map((option) {
              return AnswerButton(onSelected: () {
                _selectAnswer(option as String);
              }, answer: option);
            }),
          ],
        ),
      ),
    );
  }
}
