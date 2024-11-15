import 'package:flutter/material.dart';
import 'package:recipe_app/MyHomePage.dart';

class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                size: size.width * 0.07,
                Icons.home,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                size: size.width * 0.07,
                Icons.search,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                size: size.width * 0.07,
                Icons.favorite,
              ),
              label: ''),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
      body: Center(
        child: _pages.elementAt(selectedIndex),
      ),
    );
  }
}
