import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView.builder(
        itemCount: DUMMY_CATEGORIES.length,
        itemBuilder: (ctx, index) {
          return CategoryItemWidget(category: DUMMY_CATEGORIES[index]);
        },
      ),
    );
  }
}