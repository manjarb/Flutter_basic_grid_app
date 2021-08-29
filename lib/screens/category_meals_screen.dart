import 'package:flutter/material.dart';
import 'package:flutter_meal_app/dummy_data.dart';
import 'package:flutter_meal_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            final currentMeal = categoryMeals[index];
            return MealItem(
                id: currentMeal.id,
                title: currentMeal.title,
                imageUrl: currentMeal.imageUrl,
                affordability: currentMeal.affordability,
                complexity: currentMeal.complexity,
                duration: currentMeal.duration);
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
