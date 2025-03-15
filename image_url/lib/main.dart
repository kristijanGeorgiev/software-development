import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image from URL'),
        ),
        body: Center(
          child: Image.network(
            'https://www.anywhere.com/img-a/flora-fauna/sea-mammal/cachalote/sperm-whale.jpg?q=95&w=650',  // Replace with your image URL
            width: 300,  // Adjust width as needed
            height: 300, // Adjust height as needed
            fit: BoxFit.cover, // You can change the fit as needed
          ),
        ),
      ),
    );
  }
}

