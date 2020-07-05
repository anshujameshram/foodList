import 'package:first_app/appbar.dart';
import 'package:first_app/food.dart';

import 'package:flutter/material.dart';

import 'food_List.dart';


class HomePage extends StatelessWidget {
  final List<Food> foods = getImagesFromServer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('Food List', Colors.orange),
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: foods.length,
          itemBuilder: (BuildContext context, int index) {
            return FoodList(food: foods[index]);
          }),
    );
  }
}
