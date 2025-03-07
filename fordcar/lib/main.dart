import 'package:flutter/material.dart';
import 'package:fordcar/screens/car_screen.dart';
import 'package:fordcar/screens/fordcar_screen.dart'; // Import the FordCarScreen

void main() {
  runApp(FordCarApp());
}

class FordCarApp extends StatelessWidget {
  const FordCarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FordCar App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CarScreen(), // Set FordCarScreen as the home screen
    );
  }
}

