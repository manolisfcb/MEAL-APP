import 'package:flutter/material.dart';


class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title, 
    required this.meals
  });

  final String title;
  final List meals;


  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => Text(
          meals[index].title, style:
           TextStyle(color: Colors.amber ),),
      );
    
    if (meals.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: const Center(
          child: Text('No meals found. Please try again later!'),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content
    );
  }
}