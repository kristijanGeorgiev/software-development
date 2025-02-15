import 'package:flashcard/question.dart';
import 'package:flutter/material.dart';
import 'answer.dart';
import 'home_page.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) answerQuestion;
  final VoidCallback restartQuiz;

  const Quiz(
      this.questions, this.questionIndex, this.answerQuestion, this.restartQuiz,
      {super.key});
  void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

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
        }),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton.icon(
              icon: const Icon(
                  Icons.home, color: Color.fromARGB(234, 255, 100, 223)),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black, side: BorderSide.none),
              onPressed: () => navigateToScreen(context, const HomePage()),
              label: const Text('Home'),
            ),
          ],
        ),
      ],
    );
  }
}