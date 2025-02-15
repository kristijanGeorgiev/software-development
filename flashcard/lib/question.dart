import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: 
        Image.asset(questionText)
      //Text(questionText, style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
       // textAlign: TextAlign.center,),
    );
  }
}