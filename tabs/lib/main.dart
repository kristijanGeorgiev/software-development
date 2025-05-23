import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

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
      title: 'Meals App',
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
        '/': (ctx) => TabsScreen()
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
          builder: (ctx) => TabsScreen(),
        );
      },
    );
  }
}
