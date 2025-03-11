import 'package:flutter/material.dart';
import '../models/species.dart';
import '../screens/dinosaurs_screen.dart'; // Import the MealScreen

class SpeciesItemWidget extends StatelessWidget {
  final Species species;

  const SpeciesItemWidget({super.key, required this.species});

  void _selectSpecies(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => DinosaursScreen(species: species),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectSpecies(context), // Navigate on tap
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.black26,
      child: Card(
        color: species.color,
        elevation: 4.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                '${species.id} ${species.title}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
