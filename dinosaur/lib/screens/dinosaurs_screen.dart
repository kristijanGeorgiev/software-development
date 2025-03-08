import 'package:dinosaur/widgets/dinosaur_item.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart'; // Import dummy data
import '../models/species.dart';// Create a MealItemWidget for displaying meals

class DinosaursScreen extends StatelessWidget {
  final Species species;

  const DinosaursScreen({super.key, required this.species});

  @override
  Widget build(BuildContext context) {
    // Filter meals by category ID
    final dinosaurSpecies = DUMMY_DINOSAURS.where((dinosaur) {
      return dinosaur.species.contains(species.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(species.title)),
      body: ListView.builder(
        itemCount: dinosaurSpecies.length,
        itemBuilder: (ctx, index) {
          return DinosaurItemWidget(dinosaur: dinosaurSpecies[index]); // Display meals
        },
      ),
    );
  }
}