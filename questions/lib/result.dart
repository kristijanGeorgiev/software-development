import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;
  const Result(this.resultScore, this.resetHandler, {super.key});
  String get resultPhrase {
    String resultText;
    if(resultScore >= 9) {
      resultText = 'You Got A!';
    }
    else if(resultScore >= 7 && resultScore <= 8) {
      resultText = 'You Got B';
    }
    else if(resultScore >= 5 && resultScore <= 6) {
      resultText = 'You Got C';
    }
    else if(resultScore >= 3 && resultScore <= 4) {
      resultText = 'You Got D';
    }
    else {
      resultText = 'You Got F!';
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
            Text('$resultScore'),
            TextButton(onPressed: resetHandler, child: Text('Restart Quiz', style: TextStyle(fontSize: 16, color: Colors.redAccent),))
          ],
        )
    );
  }
}