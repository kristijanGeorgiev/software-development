import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/meals_screen.dart'; // Import the MealScreen

class CategoryItemWidget extends StatelessWidget {
  final Category category;

  const CategoryItemWidget({super.key, required this.category});

  void _selectCategory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => MealScreen(category: category),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context), // Navigate on tap
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.black26,
      child: Card(
        color: category.color,
        elevation: 4.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                '${category.id} ${category.title}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}