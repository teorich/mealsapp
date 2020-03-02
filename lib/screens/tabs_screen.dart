import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'categories_screen.dart';

import 'Favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  List<Map<String, Object>>_pages = [
    {'page':CategoriesScreen(), 'title':'Categories'},
    {'page':FavoritesScreen(),'title': 'Favorites'}
    
  ];
  int _selectedIndex = 0;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text(_pages[_selectedIndex]['title'])
      ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavyBar(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
   selectedIndex: _selectedIndex,
   showElevation: true, // use this to remove appBar's elevation
   onItemSelected: (index) => setState(() {
              _selectedIndex = index;
              // _pageController.animateToPage(index,
              //     duration: Duration(milliseconds: 300), curve: Curves.ease);
    }),
   items: [
     BottomNavyBarItem(
       icon: Icon(Icons.apps),
       title: Text('Categories'),
       activeColor: Colors.red,
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.star),
         title: Text('Favorites'),
         activeColor: Colors.purpleAccent
     ),
    //  BottomNavyBarItem(
    //      icon: Icon(Icons.message),
    //      title: Text('Messages'),
    //      activeColor: Colors.pink
    //  ),
    //  BottomNavyBarItem(
    //      icon: Icon(Icons.settings),
    //      title: Text('Settings'),
    //      activeColor: Colors.blue
    //  ),
   ],
)

    );
  }
}