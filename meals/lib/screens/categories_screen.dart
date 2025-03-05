import 'package:flutter/material.dart';
import '../models/category.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category> categories = [
    // Sample categories
    Category(id: 'c1', title: 'Italian', color: Colors.purple),
    Category(id: 'c2', title: 'Quick & Easy', color: Colors.red),
    // Add other categories here
  ];

  CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meal Categories')),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: categories
            .map((catData) => CategoryItem(catData.id, catData.title, catData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
