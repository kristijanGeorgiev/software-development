import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealsProvider with ChangeNotifier {
  final List<Meal> _availableMeals = [
    Meal(
      id: 'm1',
      title: 'Spaghetti Carbon',
      imageUrl: 'https://example.com/spaghetti.jpg',
      isGlutenFree: false,
      isLactoseFree: false,
      isVegan: false,
      isVegetarian: false, ingredients: [], steps: '',
    ),
    // Add other meal objects here...
  ];

  List<Meal> get availableMeals {
    return [..._availableMeals];
  }

  List<Meal> get favoriteMeals {
    return _availableMeals.where((meal) => meal.isFavorite).toList();
  }

  // This method will return a meal based on its id.
  Meal findMealById(String id) {
    return _availableMeals.firstWhere((meal) => meal.id == id);
  }

  void toggleFavorite(String mealId) {
    final meal = _availableMeals.firstWhere((meal) => meal.id == mealId);
    meal.isFavorite = !meal.isFavorite;
    notifyListeners();
  }
}
