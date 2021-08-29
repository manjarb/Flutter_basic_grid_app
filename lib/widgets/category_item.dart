import 'package:flutter/material.dart';
import 'package:flutter_meal_app/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(
      {Key? key, required this.id, required this.title, required this.color})
      : super(key: key);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryMealsScreen(id, title);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectCategory(context),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color.withOpacity(0.7), color],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15)),
        ));
  }
}
