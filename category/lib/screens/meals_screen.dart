import 'package:flutter/material.dart';
import '../models/category.dart';
import '../dummy_data.dart'; // Import dummy data
import '../widgets/meal_item.dart'; // Create a MealItemWidget for displaying meals

class MealScreen extends StatelessWidget {
  final Category category;

  const MealScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Filter meals by category ID
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItemWidget(meal: categoryMeals[index]); // Display meals
        },
      ),
    );
  }
}