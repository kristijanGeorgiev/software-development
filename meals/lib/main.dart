import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/meals_provider.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/favorites_screen.dart';
import 'screens/filters_screen.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => MealsProvider(),
      child: MaterialApp(
        title: 'Meal App',
        theme: ThemeData(
          primarySwatch: Colors.green,
          hintColor: Colors.orange,
        ),
        routes: {
          AppRoutes.categories: (ctx) => CategoriesScreen(),
          AppRoutes.categoryMeals: (ctx) => CategoryMealsScreen(),
          AppRoutes.mealDetail: (ctx) => MealDetailScreen(),
          AppRoutes.favorites: (ctx) => FavoritesScreen(),
          AppRoutes.filters: (ctx) => FiltersScreen(),
        },
      ),
    );
  }
}

