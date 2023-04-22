import 'package:app/pages/detail_screen.dart';
import 'package:app/pages/game_screen.dart';
import 'package:app/pages/library_screen.dart';
import 'package:flutter/material.dart';

import 'calculator_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getWidget() {
    if (_selectedIndex == 0) {
      return const GameScreen();
    } else if (_selectedIndex == 1) {
      return const CalculatorScreen();
    } else if (_selectedIndex == 2) {
      return const LibraryScreen();
    } else {
      return const DetailScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getWidget(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad_outlined), label: 'Game'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: 'Calculator'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Library'),
          BottomNavigationBarItem(
              icon: Icon(Icons.keyboard_control), label: 'Options'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
