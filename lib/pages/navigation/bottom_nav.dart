import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go4eveflutter/pages/navigation/profile.dart';
import 'package:go4eveflutter/pages/navigation/story.dart';

import 'bookings.dart';
import 'cart.dart';
import 'homepage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState()=> _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Bookings(),
    Cart(),
    Story(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white10,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white10,
            icon: Icon(Icons.add_business_sharp),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white10,
            icon: Icon(Icons.add),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white10,
            icon: Icon(Icons.add_a_photo_outlined),
            label: 'Story',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white10,
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffdea71d),
        onTap: _onItemTapped,

      ),
    );
  }
}