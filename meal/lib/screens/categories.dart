import 'package:flutter/material.dart';
import 'package:meal/data/dummy_data.dart';
import 'package:meal/widgets/category_grid_item.dart';
import 'package:meal/screens/meals.dart';
import 'package:meal/models/category.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});



  void _selectCategory(BuildContext context, Category category) {
    Navigator.push(
      context, MaterialPageRoute(builder: (ctx) => MealsScreen(
        title: category.title,
        meals: dummyMeals
        .where((meal) => meal
        .categories
        .contains(category.id))
        .toList(),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          ),
          children: [
            for (final category in availableCategories) 
              CategoryGridItem(category: category, onSelectCategory: () {
                _selectCategory(context, category);
              },)
        ],
        ),
      );
  }

}
