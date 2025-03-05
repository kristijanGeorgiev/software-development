import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/filters_provider.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final filtersData = Provider.of<FiltersProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              // You can save the selected filters to preferences or use them immediately.
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: Text('Gluten-Free'),
            value: filtersData.isGlutenFree,
            onChanged: (newValue) {
              filtersData.setGlutenFree(newValue);
            },
          ),
          SwitchListTile(
            title: Text('Lactose-Free'),
            value: filtersData.isLactoseFree,
            onChanged: (newValue) {
              filtersData.setLactoseFree(newValue);
            },
          ),
          SwitchListTile(
            title: Text('Vegan'),
            value: filtersData.isVegan,
            onChanged: (newValue) {
              filtersData.setVegan(newValue);
            },
          ),
          SwitchListTile(
            title: Text('Vegetarian'),
            value: filtersData.isVegetarian,
            onChanged: (newValue) {
              filtersData.setVegetarian(newValue);
            },
          ),
        ],
      ),
    );
  }
}
