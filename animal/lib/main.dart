import 'package:animal/screens/sea_animal_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AnimalApp());
}

class AnimalApp extends StatelessWidget {
  const AnimalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SeaAnimalScreen(),
    );
  }
}
