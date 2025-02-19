import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Application',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> emojis = [
    EmojiWidget(key: UniqueKey(), emoji: '😊'),
    EmojiWidget(key: UniqueKey(), emoji: '😂'),
  ];

  void swapEmojis() {
    setState(() {
      emojis = emojis.reversed.toList(); // Swap the emojis
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Emoji Swapper Application',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.accents[Random().nextInt(Colors.accents.length)],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: emojis,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: swapEmojis,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text('Swap', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class EmojiWidget extends StatelessWidget {
  final String emoji;

  const EmojiWidget({super.key, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        emoji,
        style: const TextStyle(fontSize: 50, color: Colors.black87),
      ),
    );
  }
}

