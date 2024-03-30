import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.answer, required this.onSelected, super.key});

  final String answer;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onSelected,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xA8160633),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
        child: Text(answer, textAlign: TextAlign.center,)
    );
  }
}
