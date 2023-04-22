import 'package:app/components/game_create_form.dart';
import 'package:app/pages/calculator_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../components/game_join_form.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreen();
}

class _GameScreen extends State<GameScreen> {
  bool displayCreateGameComponent = false;

  updateState() {
    setState(() {
      displayCreateGameComponent = !displayCreateGameComponent;
    });
  }

  Widget loadComponent(callback) {
    if (displayCreateGameComponent) {
      return CreateRoom(callback: callback);
    } else {
      return JoinRoom(callback: callback);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        loadComponent(updateState),
      ]),
    );
  }
}
