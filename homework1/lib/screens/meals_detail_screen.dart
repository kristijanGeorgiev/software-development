import 'package:flutter/material.dart';
import 'package:homework1/widgets/meal_detail_item.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatefulWidget {
  static const routeName = '/meal-detail';

  final List<Meal> availableMeals;
  final Function isFavorite;
  final Function toggleFavorite;

   MealDetailScreen(this.availableMeals, this.isFavorite, this.toggleFavorite);

  @override
  _MealDetailScreenState createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  late String mealTitle;
  late Meal selectedMeals;
  var _loadedInitData = false;

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
      ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      mealTitle = routeArgs['title'] ?? "";
      final mealId = routeArgs['id'];
      selectedMeals = widget.availableMeals.firstWhere((meal) => meal.id == mealId);
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mealTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealDetailItemWidget(
            id: selectedMeals.id,
            title: selectedMeals.title,
            imageUrl: selectedMeals.imageUrl,
            duration: selectedMeals.duration,
            affordability: selectedMeals.affordability,
            ingredients: selectedMeals.ingredients,
            steps: selectedMeals.steps,
            complexity: selectedMeals.complexity,
            isFavorite: widget.isFavorite,
            toggleFavorite: widget.toggleFavorite,
          );
        },
        itemCount: 1,
      ),
    );
  }
}
