import 'package:app/pages/game_screen.dart';
import 'package:app/pages/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahjong App',
      theme: ThemeData(
        // This is the theme of your application.
        brightness: Brightness.dark
      ),
      home: const MainScreen(),
    );
  }
}