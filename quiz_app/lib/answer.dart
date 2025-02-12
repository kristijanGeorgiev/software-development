import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback selectedHandler;
  final String answerText;
  const Answer(this.selectedHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(onPressed: selectedHandler,
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF504484)), child: Text(answerText, style: TextStyle(color: Colors.white),),),
    );
  }
}
