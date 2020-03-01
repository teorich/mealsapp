import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';

class MealItem extends StatelessWidget {

  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    @required this.title,
    @required this.affordability,
    @required this.complexity,
    @required this.duration,
    @required this.imageUrl
  });

  String get complexityText {
    
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';

      case Complexity.Challenging:
        return 'Challenging';

      case Complexity.Hard:
        return 'Hard';   
        
        break;
      default:
        return 'unknown';
    }

  }

   String get affordabilityText {
    
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';

      case Affordability.Luxurious:
        return 'Expensive';

      case Affordability.Pricey:
        return 'Pricey';   
        
        break;
      default:
        return 'unknown';
    }

  }

  void selectMeal() {

  }

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15) ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            Stack(children: <Widget>[
              ClipRRect(borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl, 
                height: 250, 
                width: double.infinity,
                fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,

                  child: Container(
                    width: 300,
                    color:Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal:20,
                    ),
                    child: Text(title,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white 
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,),
                  ),
                )
            ],
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                    children: <Widget>[
                      Wrap(
                         alignment: WrapAlignment.end,
                        children: <Widget>[
                          Row( children: <Widget>[
                        Icon(Icons.schedule,),
                        SizedBox(width: 6,),
                        Text('$duration min'),
                                      ]),
                                    ],
                      ),
            Wrap(
              alignment: WrapAlignment.end,
              children: <Widget>[
            Row( children: <Widget>[
              Icon(Icons.work,),
              SizedBox(width: 6,),
              Text(complexityText,),
                            ]),
                          ],
            ),
            Wrap(
               alignment: WrapAlignment.end,
              children: <Widget>[
              Row( children: <Widget>[
              Icon(Icons.attach_money,),
              SizedBox(width: 6,),
              Text(affordabilityText, ),
                            ]),
                          ],
            ),
                    ],
                  ),
              )
          ],),
      ),
    );
  }
}