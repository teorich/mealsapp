
import 'package:flutter/material.dart';


class CategoryMealScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  final  Color color;

  CategoryMealScreen(this.categoryId,this.categoryTitle, this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
          backgroundColor: color,
          ),
          body: Center(
        child: Text(
          'The Recipes For the Category'
        ),
        
      ),
    );
  }
}