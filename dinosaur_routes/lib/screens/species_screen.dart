import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/species_widget.dart';

class SpeciesScreen extends StatelessWidget {
  const SpeciesScreen({super.key});
  static const routeName = '/species';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Species'),
      ),
      body: ListView.builder(
        itemCount: DUMMY_SPECIES.length,
        itemBuilder: (ctx, index) {
          return SpeciesWidget(DUMMY_SPECIES[index].id, DUMMY_SPECIES[index].title, DUMMY_SPECIES[index].color);
        },
      ),
    );
  }
}