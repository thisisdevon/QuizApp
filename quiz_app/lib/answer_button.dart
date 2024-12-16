import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget
{
  final String answer;
  final void Function() onPressedFunction;

  const AnswerButton(this.answer, this.onPressedFunction, {super.key});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 88, 21, 175),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)
      ),
      child: Text(answer, 
      textAlign: TextAlign.center,)
    );
  }
}