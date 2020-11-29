import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {

  final String title;
  final String id;
  final Color color;

  CategoryMealsScreen(this.id,this.title,this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DeliMeal'),
        ),

        body: Container(
          child: Text("hejekj"),
        ));
  }
}
