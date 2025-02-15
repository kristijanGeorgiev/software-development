import 'package:flashcard/quiz_start.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.zero,
              child: Opacity(
                opacity: 0.8,
                child: Image.asset(
                    'assets/cover.jpg', height: 220, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ],
    );
    Widget buttonSection1 = Row(
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
        OutlinedButton.icon(
          icon: const Icon(
              Icons.quiz, color: Color.fromARGB(255, 220, 100, 189)),
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const QuizPage()),
          label: const Text('Start Quiz'),
        ),
      ],
    );
    return Scaffold(
      body: ListView(
        children: [
          buttonSection1,
          imageSection
        ],
      ),
    );
  }
}