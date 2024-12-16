import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget
{
  const QuestionScreen ({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen>
{
  int currentQuestionIndex = 0;

  void answerQuestion()
  {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    var answers = currentQuestion.getShuffledAnswers();

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text, 
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 238, 196, 255),
                fontSize: 34,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            ...answers.map((answer)
            {
              return AnswerButton(answer, answerQuestion);
            }),
          ],
        ),
      )
    );
  }
}