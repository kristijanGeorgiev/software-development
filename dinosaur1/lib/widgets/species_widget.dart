import 'package:flutter/material.dart';
import '../screens/dinosaurs_screen.dart'; // Import the MealScreen

class SpeciesWidget extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const SpeciesWidget(this.id, this.title, this.color);

  void selectSpecies(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DinosaursScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectSpecies(context), // Navigate on tap
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.black26,
      child: Card(
        color: color,
        elevation: 4.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                '${id} ${title}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
