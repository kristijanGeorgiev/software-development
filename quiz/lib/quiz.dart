import 'package:flutter/material.dart';
import 'package:quiz/screens/questions_screen.dart';
import 'package:quiz/screens/start_screen.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}
class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }
  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.deepPurple,
                        Colors.deepPurple
                      ])
              ),
              child: screenWidget
            )
        )
    );
  }
}