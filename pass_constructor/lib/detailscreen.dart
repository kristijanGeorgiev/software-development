import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {
  final String title;
  final int id;
  final double price;
  const DetailScreen({required this.title, required this.id, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen')
      ),
      body: Center(child: Text('Title : $title \n ID: $id \n Price: $price'))
    );
  }
}
