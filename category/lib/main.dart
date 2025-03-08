import 'package:category/screens/categories_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CategoryApp());
}

class CategoryApp extends StatelessWidget {
  const CategoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Category App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CategoriesScreen(),
    );
  }
}