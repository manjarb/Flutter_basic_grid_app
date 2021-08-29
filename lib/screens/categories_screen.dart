import 'package:flutter/material.dart';
import 'package:flutter_meal_app/widgets/category_item.dart';
import 'package:flutter_meal_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      children: DUMMY_CATEGORIES
          .map((cat) =>
              CategoryItem(id: cat.id, title: cat.title, color: cat.color))
          .toList(),
    );
  }
}
