import 'package:flutter/material.dart';
import 'package:myquiz/quiz.dart';
import 'result.dart';
void main() {
  runApp(const QuizPage());
}
class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizState();
}

class _QuizState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('UACS Quiz Application', style: TextStyle(color: Colors.white),),
          backgroundColor: Color(0xFF29176B),
        ),
        body: Padding(padding: const EdgeInsets.all(30),
          child: _questionIndex < _questions.length ?
          Quiz(_questions, _questionIndex, _answerQuestion, _resetQuiz)
              : Result(_totalScore, _resetQuiz),),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if(_questionIndex < _questions.length) {
      Text('We have more questions');
    }
    else
    {
      Text('No more questions');
    }
  }
  final _questions = [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        { 'text': 'Microsoft', 'score': -2 },
        { 'text': 'Apache', 'score': -2 },
        { 'text': 'Google', 'score': 10 },
        { 'text': 'Twitter', 'score': -2 },
      ]
    },
    {
      'questionText': 'Q2. Flutter is a?',
      'answers': [
        { 'text': 'Windows', 'score': -2 },
        { 'text': 'SDK', 'score': 10 },
        { 'text': 'Google', 'score': -2 },
        { 'text': 'Twitter', 'score': -2 },
      ]
    },
    {
      'questionText': 'Q3. Which Programming Language is used?',
      'answers': [
        { 'text': 'Flutter', 'score': 10 },
        { 'text': 'Java', 'score': -2 },
        { 'text': 'C#', 'score': -2 },
        { 'text': 'C++', 'score': -2 },
      ]
    },
    {
      'questionText': 'Q4. How many buttons we have?',
      'answers': [
        { 'text': '2', 'score': 10 },
        { 'text': '3', 'score': -2 },
        { 'text': '4', 'score': -2 },
        { 'text': '5', 'score': -2 },
      ]
    },
    {
      'questionText': 'Q5. Is Flutter a language?',
      'answers': [
        { 'text': 'Yes', 'score': 10 },
        { 'text': 'No', 'score': -2 }
      ]
    },
  ];
}