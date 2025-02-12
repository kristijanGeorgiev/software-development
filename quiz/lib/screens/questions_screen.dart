import 'package:flutter/material.dart';
import 'package:quiz/components/answer_button.dart';
import 'package:quiz/data/questions.dart';
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}
class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionindex = 0;
  void answerQuestion() {
    setState(() {
      currentQuestionindex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionindex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(textAlign: TextAlign.center, currentQuestion.text, style: TextStyle(fontSize: 18, color: Colors.yellow, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(text: answer, onTap: answerQuestion);
          })
        ],
      )
    ));
  }
}