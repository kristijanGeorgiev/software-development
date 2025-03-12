import 'package:flutter/material.dart';

import '../widgets/dinosaur_widget.dart';
import '../models/dinosaur.dart';

class DinosaurScreen extends StatefulWidget {
  static const routeName = '/dinosaurs';

  final List<Dinosaur> availableDinosaurs;
  const DinosaurScreen(this.availableDinosaurs, {super.key});

  @override
  _DinosaurScreenState createState() => _DinosaurScreenState();
}


class _DinosaurScreenState extends State<DinosaurScreen> {
  late String speciesTitle;
  late List<Dinosaur> displayedDinosaurs;
  var _loadedInitData = false;

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
      ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      speciesTitle= routeArgs['title'] ?? "";
      final speciesId = routeArgs['id'];
      displayedDinosaurs = widget.availableDinosaurs.where((dinosaur) {
        return dinosaur.species.contains(speciesId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(speciesTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return DinosaurWidget(
            id: displayedDinosaurs[index].id,
            species: displayedDinosaurs[index].species,
            name: displayedDinosaurs[index].name,
            imageUrl: displayedDinosaurs[index].imageUrl,
            speed: displayedDinosaurs[index].speed,
            length: displayedDinosaurs[index].length,
            weight: displayedDinosaurs[index].weight,
            description: displayedDinosaurs[index].description,
            height: displayedDinosaurs[index].height,
            width: displayedDinosaurs[index].width,
          );
        },
        itemCount: displayedDinosaurs.length,
      ),
    );
  }
}