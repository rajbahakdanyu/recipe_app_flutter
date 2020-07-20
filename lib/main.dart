import 'package:flutter/material.dart';

import './category_meals_screen.dart';
import './categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.blue,
        canvasColor: Color.fromRGBO(255, 254, 229, 0.9),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Colors.black,
              ),
              headline1: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (context) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
      },
    );
  }
}
