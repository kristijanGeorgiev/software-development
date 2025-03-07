import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  final Meal meal;

  const MealDetailScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              meal.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              'Ingredients:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ...meal.ingredients.map((ingredient) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(ingredient),
              );
            }).toList(),
            SizedBox(height: 20),
            Text(
              'Steps:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ...meal.steps.map((step) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(step),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}