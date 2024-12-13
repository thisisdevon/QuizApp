import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

class StartScreen extends StatelessWidget {

  final void Function() onPressedFunction;
  const StartScreen(this.onPressedFunction, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 300, color: const Color.fromARGB(127, 255, 255, 255),),
        const SizedBox(height: 20,),
        const Text('Learn Flutter the fun way', style: TextStyle(color: Colors.white, fontSize: 20), ),
        OutlinedButton.icon(
          onPressed: onPressedFunction,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white
          ), 
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'))
      ],
    );
  }
}