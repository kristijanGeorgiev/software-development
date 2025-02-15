import 'package:flashcard/quiz.dart';
import 'package:flutter/material.dart';
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
      'questionText': 'assets/dolphin.jpg',
      'answers': [
        { 'text': 'Fish', 'score': -2 },
        { 'text': 'Mammal', 'score': -2 },
        { 'text': 'Dolphin', 'score': 10 },
        { 'text': 'Ray', 'score': -2 },
      ]
    },
    {
      'questionText': 'assets/gwshark.jpg',
      'answers': [
        { 'text': 'Fish', 'score': -2 },
        { 'text': 'great white shark', 'score': 10 },
        { 'text': 'Tiger', 'score': -2 },
        { 'text': 'Rabbit', 'score': -2 },
      ]
    },
    {
      'questionText': 'assets/mshark.jpg',
      'answers': [
        { 'text': 'Mako Shark', 'score': 10 },
        { 'text': 'Giraffe', 'score': -2 },
        { 'text': 'Cat', 'score': -2 },
        { 'text': 'Dog', 'score': -2 },
      ]
    },
    {
      'questionText': 'assets/swhale.jpg',
      'answers': [
        { 'text': 'Ostrich', 'score': -2 },
        { 'text': 'Monkey', 'score': -2 },
        { 'text': 'Sperm Whale', 'score': 10 },
        { 'text': 'Cow', 'score': -2 },
      ]
    },
    {
      'questionText': 'assets/hshark.jpg',
      'answers': [
        { 'text': 'Seal', 'score': -2 },
        { 'text': 'Hammerhead Shark', 'score': 10 },
        { 'text': 'Tree', 'score': -2 },
        { 'text': 'Bug', 'score': -2 }
      ]
    },
    {
      'questionText': 'assets/whale.jpg',
      'answers': [
        { 'text': 'Whale', 'score': 10 },
        { 'text': 'Church', 'score': -2 },
        { 'text': 'Egg', 'score': -2 },
        { 'text': 'Dinosaur', 'score': -2 },
      ]
    },
    {
      'questionText': 'assets/mray.jpg',
      'answers': [
        { 'text': 'Ray', 'score': 10 },
        { 'text': 'Snail', 'score': -2 },
        { 'text': 'Race', 'score': -2 },
        { 'text': 'Cash', 'score': -2 },
      ]
    },
    {
      'questionText': 'assets/ytang.jpg',
      'answers': [
        { 'text': 'Fish', 'score': 10 },
        { 'text': 'EarthQuake', 'score': -2 },
        { 'text': 'ThunderStorm', 'score': -2 },
        { 'text': 'Flood', 'score': -2 },
      ]
    },
    {
      'questionText': 'assets/orca.jpg',
      'answers': [
        { 'text': 'Whale', 'score': 10 },
        { 'text': 'Hash', 'score': -2 },
        { 'text': 'Bird', 'score': -2 },
        { 'text': 'Owl', 'score': -2 },
      ]
    },
    {
      'questionText': 'assets/midol.jpg',
      'answers': [
        { 'text': 'Fish', 'score': 10 },
        { 'text': 'Instrument', 'score': -2 },
        { 'text': 'Western', 'score': -2 },
        { 'text': 'Common', 'score': -2 },
      ]
    },
  ];

}