import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: GridView(

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          ),
          children: const [
          Text('Category 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white,),),
          Text('Category 2', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white,),),
          Text('Category 3', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white,),),
          Text('Category 4', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white,),),
          Text('Category 5', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white,),),
          Text('Category 6', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white,),),
        ],
        ),
      );
  }

}
