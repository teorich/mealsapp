
import 'package:flutter/material.dart';
import 'package:mealsapp/widgets/meal_item.dart';

import '../dummy_data.dart';



class CategoryMealScreen extends StatelessWidget {
  static const  routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;
  // final  Color color;

  // CategoryMealScreen(this.categoryId,this.categoryTitle, this.color);

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    
    
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);

    }).toList();
  
   
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
          backgroundColor: Colors.amber,
          ),
          body: ListView.builder(itemBuilder: (ctx,index) {
            return MealItem(
              title: categoryMeals[index].title, 
              affordability: categoryMeals[index].affordability, 
              complexity: categoryMeals[index].complexity, 
              duration: categoryMeals[index].duration, 
              imageUrl: categoryMeals[index].imageUrl);

          }, itemCount: categoryMeals.length,),
    );
  }
}