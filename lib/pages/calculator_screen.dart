import 'package:flutter/material.dart';

import 'library_screen.dart';

class CalculatorScreen extends StatelessWidget {
    const CalculatorScreen({ Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LibraryScreen();
              }));
            },
            child: const Text('Calculator Screen'),
          ),
        ),
      );
    }
}