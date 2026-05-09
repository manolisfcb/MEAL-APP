import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;



  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(placeholder:MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl), 
            fit: BoxFit.cover, 
            width: double.infinity,
            height: double.infinity,),
          ],
        ) // Stack allows us to place the title on top of the image
      ),
    );
}
}