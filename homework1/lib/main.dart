import 'package:flutter/material.dart';
import './dummy_data.dart';
import './screens/tabs_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/filters_screen.dart';
import './screens/categories_screen.dart';
import './screens/meals_detail_screen.dart';
import './models/meal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favoriteMeals = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['gluten'] ?? false) {
          if(!meal.isGlutenFree) {
            return false;
          }
        }
        if (_filters['lactose'] ?? false) {
          if(!meal.isLactoseFree){
            return false;
          }
        }
        if (_filters['vegan'] ?? false) {
          if(!meal.isVegan) {
            return false;
          }
        }
        if (_filters['vegetarian'] ?? false) {
          if(!meal.isVegetarian){
            return false;
          }
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String mealId) {
    final existingIndex =
    _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(
          DUMMY_MEALS.firstWhere((meal) => meal.id == mealId),
        );
      });
    }
  }

  bool _isMealFavorite(String id) {
    return _favoriteMeals.any((meal) => meal.id == id);
  }

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
    // final ThemeData theme = ThemeData(
    //   primarySwatch: Colors.blueGrey,
    //   canvasColor: const Color.fromRGBO(255, 254, 229, 1),
    //   fontFamily: 'Raleway',
    //   textTheme: ThemeData.light().textTheme.copyWith(
    //     bodyLarge: const TextStyle(
    //       color: Color.fromRGBO(20, 51, 51, 1),
    //     ),
    //     bodyMedium: const TextStyle(
    //       color: Color.fromRGBO(20, 51, 51, 1),
    //     ),
    //     titleMedium: const TextStyle(
    //       fontSize: 20,
    //       fontFamily: 'RobotoCondensed',
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    //   appBarTheme: const AppBarTheme (
    //     backgroundColor: Colors.blueGrey,
    //     titleTextStyle: TextStyle(
    //       color: Colors.white,
    //       fontSize: 20,
    //     ),
    //     iconTheme: IconThemeData (
    //       color: Colors.white
    //     )
    //   ),
    //   colorScheme: ColorScheme.fromSwatch(
    //     primarySwatch: Colors.blueGrey,
    //     backgroundColor: const Color.fromRGBO(255, 254, 229, 1),
    //     //secondarySwatch: Colors.yellow,
    //     // Assign secondary color
    //     //secondary: Colors.yellow,
    //   ),
    // );
    return MaterialApp(
      title: 'UACS Meals App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            secondary: Colors.yellow
        ),
      ),
      // ThemeData(
      //   primarySwatch: Colors.blueGrey,
      //   accentColor: Colors.yellow,
      //   canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      //   fontFamily: 'Raleway',
      //   textTheme: ThemeData.light().textTheme.copyWith(
      //       bodyText1: const TextStyle(
      //         color: Color.fromRGBO(20, 51, 51, 1),
      //       ),
      //       bodyText2: const TextStyle(
      //         color: Color.fromRGBO(20, 51, 51, 1),
      //       ),
      //       subtitle1: const TextStyle(
      //         fontSize: 20,
      //         fontFamily: 'RobotoCondensed',
      //         fontWeight: FontWeight.bold,
      //       )),
      // ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(_favoriteMeals, _isMealFavorite, _toggleFavorite),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals, _isMealFavorite, _toggleFavorite),
        MealDetailScreen.routeName: (ctx) =>
            MealDetailScreen(_availableMeals, _isMealFavorite, _toggleFavorite),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFilters),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if (settings.name == '/meal-detail') {
        //   return ...;
        // } else if (settings.name == '/something-else') {
        //   return ...;
        // }
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
