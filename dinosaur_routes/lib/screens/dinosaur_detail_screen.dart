import 'package:flutter/material.dart';
import '../models/dinosaur.dart';
import '../widgets/dinosaur_detail_widget.dart';

class DinosaurDetailScreen extends StatelessWidget {
  final Dinosaur dinosaur;
  static const routeName = '/dinosaur-detail';
  DinosaurDetailScreen({super.key, required this.dinosaur});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(dinosaur.name),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (ctx, index) {
          return DinosaurDetailWidget(dinosaur: dinosaur);
        },
      ),
    );
  }
}