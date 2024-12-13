import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/model/quiz_question.dart';

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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(questions[0].text),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () {}, child: Text(questions[0].answers[0])),
          
          ElevatedButton(onPressed: () {}, child: Text(questions[0].answers[1])),
          
          ElevatedButton(onPressed: () {}, child: Text(questions[0].answers[2])),
          
          ElevatedButton(onPressed: () {}, child: Text(questions[0].answers[3])),
        ],
      )
    );
  }
}