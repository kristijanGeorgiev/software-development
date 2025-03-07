import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../screens/meals_detail_screen.dart';// Import the meal detail screen

class MealItemWidget extends StatelessWidget {
  final Meal meal;

  const MealItemWidget({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              meal.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(
              '${meal.title}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the meal detail screen when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MealDetailScreen(meal: meal),
                ),
              );
            },
            child: Text('Go to Details'),
          ),
        ],
      ),
    );
  }
}