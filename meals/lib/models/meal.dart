class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> ingredients;  // Added ingredients list
  final String steps;              // Added preparation steps
  bool isFavorite;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  Meal({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.ingredients,   // Add ingredients in the constructor
    required this.steps,         // Add preparation steps in the constructor
    this.isFavorite = false,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });
}
