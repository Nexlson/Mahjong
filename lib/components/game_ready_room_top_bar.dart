import 'package:flutter/material.dart';

class GameWaitingRoomTopBar extends StatelessWidget {
  String roomId;

  GameWaitingRoomTopBar({super.key, required this.roomId});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          RichText(
            text: TextSpan(
              text: "Room ID: $roomId",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            selectionColor: Colors.red,
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.navigate_next_rounded),
            tooltip: 'Next round',
            onPressed: () {
              print("Go to next round");
            },
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app_rounded),
            tooltip: 'Exit game room',
            onPressed: () {
              print("Exited game toom");
            },
          ),
        ],
      ),
      Row(
        children: [
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Host',
            onPressed: () {
              print("I am the host");
            },
          ),
          const Spacer(),
        ],
      ),
      Row(
        children: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Player 2',
            onPressed: () {
              print("I am player 2");
            },
          ),
          IconButton(
            icon: const Icon(Icons.radio_button_on),
            tooltip: 'Table',
            onPressed: () {
              print("I am the table");
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Player 4',
            onPressed: () {
              print("I am player 4");
            },
          ),
        ],
      ),
      Row(
        children: [
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Player 3',
            onPressed: () {
              print("I am player 3");
            },
          ),
          const Spacer(),
        ],
      ),
    ]);
  }
}
