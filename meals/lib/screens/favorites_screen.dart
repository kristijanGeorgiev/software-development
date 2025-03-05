import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/meals_provider.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteMeals = Provider.of<MealsProvider>(context).favoriteMeals;

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Favorites'),
      ),
      body: favoriteMeals.isEmpty
          ? Center(child: Text('You have no favorite meals yet!'))
          : ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, i) => MealItem(favoriteMeals[i]),
      ),
    );
  }
}
