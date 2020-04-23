import 'package:flutter/material.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';
import 'package:homemansamusa/chat/chat_page.dart';
import 'package:homemansamusa/primaria/homePagePrimaria.dart';
import 'package:homemansamusa/primaria/selection_page_primaria.dart';
import 'package:homemansamusa/selection_page.dart';

class NavigationBarPrimaria extends StatefulWidget {
  @override
  _NavigationBarPrimariaState createState() => _NavigationBarPrimariaState();
}

class _NavigationBarPrimariaState extends State<NavigationBarPrimaria> {

  int _selectedIndex = 0;
  final _widgetOptions = [
    HomePagePrimaria(),
    Text('Index 1: Search'),
    ChatPage(),
    SelectionPagePrimaria()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GradientBottomNavigationBar(
        backgroundColorStart: Colors.white,
        backgroundColorEnd: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Theme.of(context).primaryColor,), title: Text('Inicio', style: TextStyle(color: Theme.of(context).primaryColor),)),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Theme.of(context).primaryColor,), title: Text('Buscar',style: TextStyle(color: Theme.of(context).primaryColor),)),
          BottomNavigationBarItem(icon: Icon(Icons.chat, color: Theme.of(context).primaryColor,), title: Text('Chat', style: TextStyle(color: Theme.of(context).primaryColor),)),
          BottomNavigationBarItem(icon: Icon(Icons.child_care, color: Theme.of(context).primaryColor,), title: Text("Prince's", style: TextStyle(color: Theme.of(context).primaryColor),)),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        iconSize: 20,

      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }
}