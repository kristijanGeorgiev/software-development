import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;
  const Result(this.resultScore, this.resetHandler, {super.key});
  String get resultPhrase {
    String resultText;
    if(resultScore >= 41) {
      resultText = 'Wow great Job!';
    }
    else if(resultScore >= 21) {
      resultText = 'Pretty Likeable';
    }
    else if(resultScore >= 1) {
      resultText = 'You need to work harder!';
    }
    else {
      resultText = 'This is poor score!';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(resultPhrase, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
          Text('Score', semanticsLabel: '$resultScore', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
          TextButton(onPressed: resetHandler, child: Text('Restart Quiz', style: TextStyle(fontSize: 16, color: Colors.redAccent),))
        ],
      )
    );
  }
}
