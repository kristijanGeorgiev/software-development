import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/answer.dart'; // Ensure this is imported

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) answerQuestion; // Expecting an int parameter

  const Quiz(this.questions, this.questionIndex, this.answerQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
                () => answerQuestion(answer['score'] as int),
            answer['text'] as String,
          );
        }), // Add `.toList()` to convert the iterable to a list
      ],
    );
  }
}