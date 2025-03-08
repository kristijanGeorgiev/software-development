import 'package:dinosaur/widgets/dinosaur_detail_item.dart';
import 'package:flutter/material.dart';
import '../models/dinosaur.dart';

class DinosaursDetailScreen extends StatelessWidget {
  final Dinosaur dinosaur;

  DinosaursDetailScreen({super.key, required this.dinosaur});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(dinosaur.name),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (ctx, index) {
          return DinosaurDetailItemWidget(dinosaur: dinosaur);
        },
      ),
    );
  }
}