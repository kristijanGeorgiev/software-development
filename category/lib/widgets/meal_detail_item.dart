import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailItemWidget extends StatelessWidget {
  final Meal meal;

  const MealDetailItemWidget({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              meal.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          ListTile(
              title: Text('${meal.ingredients} ${meal.steps}', style: TextStyle(fontWeight: FontWeight.bold))
          ),
        ],
      ),
    );
  }
}