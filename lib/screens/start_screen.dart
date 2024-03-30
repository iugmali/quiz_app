import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/ui/main_action_button.dart';

class StartScreen extends StatelessWidget {

  const StartScreen(this.changeScreen, {super.key});

  final void Function(String) changeScreen;

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 300, color: const Color.fromARGB(150, 255, 255, 255),),
        const SizedBox(height: 24),
        Text('Let\'s start the quiz!', style: GoogleFonts.lato(color: const Color.fromARGB(255,233,223,252), fontSize: 24)),
        const SizedBox(height: 16),
        MainActionButton(
          onTap: () {
            changeScreen('questions');
          },
          icon: Icons.play_arrow,
          text: 'Start Quiz',
        ),
      ],
    ));
  }
}
