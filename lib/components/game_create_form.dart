import 'package:flutter/material.dart';

class CreateRoom extends StatefulWidget {
  Function callback;

  CreateRoom({super.key, required this.callback});

  @override
  CreateRoomState createState() {
    return CreateRoomState();
  }
}

class CreateRoomState extends State<CreateRoom> {
  final _formKey = GlobalKey<CreateRoomState>();

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
        // Submit Button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: const Size(2000, 50)),
            onPressed: () {
              print("Join Game submit button is pressed!");
              print(_formKey.toString());
            },
            child: const Text("Create Game"),
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
            child: const Text("Have a Room? Join now!"),
          ),
        ),
      ]),
    );
  }
}
