import 'package:flutter/material.dart';

class MainActionButton extends StatelessWidget {
  const MainActionButton({required this.onTap, required this.text, required this.icon, super.key});

  final VoidCallback onTap;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onTap,
      icon: Icon(icon, size: 28),
      label: Text(text),
    );
  }
}
