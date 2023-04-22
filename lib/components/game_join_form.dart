import 'package:flutter/material.dart';

class JoinRoom extends StatefulWidget {
  Function callback;

  JoinRoom({super.key, required this.callback});

  @override
  JoinRoomState createState() {
    return JoinRoomState();
  }
}

class JoinRoomState extends State<JoinRoom> {
  final _formKey = GlobalKey<JoinRoomState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        const SizedBox(height: 50.0),
        // NickName text field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your nickname',
              contentPadding: EdgeInsets.all(20.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter valid nickname';
              }
              return null;
            },
          ),
        ),
        // RoomId text field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your RoomID',
              contentPadding: EdgeInsets.all(20.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter valid roomId';
              }
              return null;
            },
          ),
        ),
        // Submit Button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: const Size(2000, 50)),
            onPressed: () {
              print("Join Game submit button is pressed!");
              print(_formKey.toString());
            },
            child: const Text("Join Game"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(20, 30),
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              widget.callback();
            },
            child: const Text("Dont have a Room? Create one now!"),
          ),
        ),
      ]),
    );
  }
}
