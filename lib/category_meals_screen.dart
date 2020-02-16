
import 'package:flutter/material.dart';


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
  
   
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
          backgroundColor: Colors.amber,
          ),
          body: Center(
        child: Text(
          'The Recipes For the Category'
        ),
        
      ),
    );
  }
}