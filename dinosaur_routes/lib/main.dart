import 'package:flutter/material.dart';
import './screens/dinosaur_detail_screen.dart';
import './screens/dinosaur_screen.dart';
import './screens/species_screen.dart';
import './dummy_data.dart';
import './models/dinosaur.dart';

void main() => runApp(DinosaurApp());
class DinosaurApp extends StatefulWidget {
  @override
  _DinosaurState createState() => _DinosaurState();
}

class _DinosaurState extends State<DinosaurApp> {
  final List<Dinosaur> _availableDinosaurs = DUMMY_DINOSAURS;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.blueGrey,
      scaffoldBackgroundColor: const Color.fromRGBO(255, 254, 229, 1), // <-- Set scaffold background here
      canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
        bodyLarge: const TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1),
        ),
        bodyMedium: const TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1),
        ),
        titleMedium: const TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blueGrey,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blueGrey,
        backgroundColor: const Color.fromRGBO(255, 254, 229, 1),
      ),
    );
    return MaterialApp(
      title: 'Dinosaur App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            secondary: Colors.yellow
        ),
      ),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => SpeciesScreen(),
        DinosaurScreen.routeName: (ctx) =>
            DinosaurScreen(_availableDinosaurs),
        DinosaurDetailScreen.routeName: (ctx) =>
            DinosaurDetailScreen(_availableDinosaurs)
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => SpeciesScreen(),
        );
      },
    );
  }
}