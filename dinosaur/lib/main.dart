import 'package:dinosaur/screens/species_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DinosaurApp());
}

class DinosaurApp extends StatelessWidget {
  const DinosaurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinosaur App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SpeciesScreen(),
    );
  }
}
