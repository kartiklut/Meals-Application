import 'package:flutter/material.dart';
import 'package:meals_application/models/meals.dart';

class MealsItem extends StatelessWidget {

  final String imageURL;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealsItem({@required this.imageURL, @required this.title, @required this.affordability, @required this.complexity, @required this.duration});

  void onMealClick() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onMealClick,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                imageURL,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
