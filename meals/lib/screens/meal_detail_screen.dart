import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/meals_provider.dart';

class MealDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final meal = Provider.of<MealsProvider>(context).findMealById(mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: [
          Image.network(meal.imageUrl),
          SizedBox(height: 10),
          Text(
            meal.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 10),
          Text('Ingredients: ${meal.ingredients}'),
          // Add more details like steps, etc. if you have them in your meal model
        ],
      ),
    );
  }
}


