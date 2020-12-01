import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "./Category-meals";

  @override
  Widget build(BuildContext context) {
    final routeargs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeargs['atitle'];
    final categoryid = routeargs['aid'];

    return Scaffold(
        appBar: AppBar(
          title: const Text('DeliMeal'),
        ),
        body: Container(
          child: Text(categoryTitle),
        ));
  }
}
