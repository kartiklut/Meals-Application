import 'package:flutter/material.dart';
import './screens/meals_details_screen.dart';
import 'screens/categories_screen.dart';
import 'widgets/category_items.dart';
import 'screens/category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoryScreen(),
      routes: {
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealsDetailsScreen.routeName: (context) => MealsDetailsScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center());
  }
}
