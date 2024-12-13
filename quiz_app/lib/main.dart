import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.purple, Colors.deepPurple], begin: Alignment.topLeft, end: Alignment.bottomRight)
          ),
          child: const Center( 
            child: Quiz()
          )
        )
      )
    );
  }
}
