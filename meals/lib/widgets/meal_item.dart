import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/meals_provider.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    final mealsProvider = Provider.of<MealsProvider>(context, listen: false);

    return ListTile(
      title: Text(meal.title),
      leading: CircleAvatar(backgroundImage: NetworkImage(meal.imageUrl)),
      trailing: IconButton(
        icon: Icon(
          meal.isFavorite ? Icons.favorite : Icons.favorite_border,
        ),
        onPressed: () {
          mealsProvider.toggleFavorite(meal.id);
        },
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/meal-detail', arguments: meal.id);
      },
    );
  }
}
