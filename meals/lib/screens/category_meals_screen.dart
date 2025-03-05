import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/meals_provider.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealData = Provider.of<MealsProvider>(context);
    final meals = mealData.availableMeals; // Fetch meals based on the category

    return Scaffold(
      appBar: AppBar(title: Text('Meals')),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, i) => MealItem(meals[i]),
      ),
    );
  }
}
