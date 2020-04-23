import 'package:flutter/material.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';
import 'package:homemansamusa/chat/chat_page.dart';
import 'package:homemansamusa/bachillerato/selection_page_bachillerato.dart';
import 'package:homemansamusa/selection_page.dart';
import 'home_page.dart';

class NavigationBarBachiller extends StatefulWidget {
  @override
  _NavigationBarBachillerState createState() => _NavigationBarBachillerState();
}

class _NavigationBarBachillerState extends State<NavigationBarBachiller> {

  int _selectedIndex = 0;
  final _widgetOptions = [
    HomePage(),
    Text('Index 1: Search'),
    ChatPage(),
    SelectionPageBachillerato()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GradientBottomNavigationBar(
        backgroundColorStart: Theme.of(context).primaryColor,
        backgroundColorEnd: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Color(0xffAC7830),), title: Text('Inicio', style: TextStyle(color: Color(0xffAC7830)),)),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Color(0xffAC7830),), title: Text('Buscar', style: TextStyle(color: Color(0xffAC7830)),)),
          BottomNavigationBarItem(icon: Icon(Icons.chat, color: Color(0xffAC7830),), title: Text('Chat', style: TextStyle(color: Color(0xffAC7830)),)),
          BottomNavigationBarItem(icon: Icon(Icons.child_care, color: Color(0xffAC7830),), title: Text("Prince's", style: TextStyle(color: Color(0xffAC7830)),)),
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
