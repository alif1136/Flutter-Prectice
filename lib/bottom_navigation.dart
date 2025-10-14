import 'package:alif/Button.dart';
import 'package:alif/Grid_View.dart';
import 'package:alif/Input.dart';
import 'package:alif/List_and_Others.dart';
import 'package:alif/alert.dart';
import 'package:flutter/material.dart';

class bottom_navigation extends StatefulWidget {
  const bottom_navigation({super.key});

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int _selectedIndex = 0;
  List pages = [
    Grid_View(),
    List_and_others(),
    Input()
  ];
  onTab(int index) {
    setState(() {
      print('Test index $index');
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: onTab,
          items:[
             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
             BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
             BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ]
      ),
    );
  }
}
