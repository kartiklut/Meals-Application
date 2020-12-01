import 'package:flutter/material.dart';
import 'package:meals_application/dummy_data.dart';
import 'package:meals_application/widgets/meals_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "./Category-meals";

  @override
  Widget build(BuildContext context) {
    final routeargs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeargs['atitle'];
    final categoryid = routeargs['aid'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealsItem(
                imageURL: categoryMeals[index].imageUrl,
                title: categoryMeals[index].title,
                affordability: categoryMeals[index].affordability,
                complexity: categoryMeals[index].complexity,
                duration: categoryMeals[index].duration);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
