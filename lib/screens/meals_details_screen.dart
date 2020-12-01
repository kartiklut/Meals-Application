import 'package:flutter/material.dart';

class MealsDetailsScreen extends StatelessWidget {
  static const routeName="/MealsDetailsScreen";


  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('$mealId'),),
      body: Center(
        child: Text('The meal - $mealId!'),
      ),
    );
  }
}
