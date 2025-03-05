import 'package:flutter/material.dart';

class FiltersProvider with ChangeNotifier {
  bool isGlutenFree = false;
  bool isLactoseFree = false;
  bool isVegan = false;
  bool isVegetarian = false;

  void setGlutenFree(bool newValue) {
    isGlutenFree = newValue;
    notifyListeners();
  }

  void setLactoseFree(bool newValue) {
    isLactoseFree = newValue;
    notifyListeners();
  }

  void setVegan(bool newValue) {
    isVegan = newValue;
    notifyListeners();
  }

  void setVegetarian(bool newValue) {
    isVegetarian = newValue;
    notifyListeners();
  }

  // A function to apply the selected filters
  bool isMealFiltered(String mealId) {
    // Apply your logic for filtering meals based on the selected filters.
    // Example: If 'isGlutenFree' is true, you only show meals that are gluten-free.
    return true;  // Placeholder for actual filtering logic
  }
}
