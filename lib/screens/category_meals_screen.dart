import 'package:flutter/material.dart';
import 'package:meals_application/dummy_data.dart';


class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "./Category-meals";

  @override
  Widget build(BuildContext context) {
    final routeargs = ModalRoute
        .of(context)
        .settings
        .arguments as Map<String, String>;
    final categoryTitle = routeargs['atitle'];
    final categoryid = routeargs['aid'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();


    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        }, itemCount: categoryMeals.length,)
    );
  }
}
