import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/ui/main_action_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.changeScreen, this.answers, {super.key});

  final List<String> answers;
  final void Function(String) changeScreen;

  @override
  Widget build(BuildContext context) {
    int correctAnswers = 0;
    for (final (i, question) in questions.indexed) {
      if (i >= answers.length) {
        break;
      }
      if (question.options[0] == answers[i]) {
        correctAnswers++;
      }
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You got $correctAnswers out of ${questions.length} correct!',
              style: GoogleFonts.lato(
                fontSize: 24,
                color: correctAnswers == questions.length ? Colors.white : const Color(0xc7d8e4ff),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: answers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor:
                          answers[index] == questions[index].options[0]
                              ? Colors.green
                              : Colors.red,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    title: Text(questions[index].question,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: answers[index] == questions[index].options[0]
                            ? Colors.white
                            : const Color(0xc79fa5b9),
                        )),
                    subtitle: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: answers[index], style: TextStyle(
                            color:
                            answers[index] == questions[index].options[0]
                                ? Colors.white
                                : const Color(0xc79fa5b9),
                          )),
                          WidgetSpan(child: Icon(
                            answers[index] == questions[index].options[0]
                                ? Icons.check
                                : Icons.close,
                            color: answers[index] == questions[index].options[0]
                                ? Colors.green
                                : Colors.red,
                          )),
                        ],
                      ),
                    ),
                    isThreeLine: true,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            MainActionButton(
              onTap: () {
                changeScreen('start');
              },
              icon: Icons.restart_alt,
              text: 'Back to Start',
            )
          ],
        ),
      ),
    );
  }
}
