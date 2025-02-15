import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback selectedHandler;
  final String answerText;
  const Answer(this.selectedHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ElevatedButton(onPressed: selectedHandler,
        style: ElevatedButton.styleFrom(minimumSize: Size(200, 40), elevation: 5, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)), backgroundColor: const Color(0xFF504484)), child: Text(answerText, style: TextStyle(color: Colors.white),),),
    );
  }
}