import 'package:flutter/material.dart';

import 'detail_screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({ Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DetailScreen();
              }));
            },
            child: const Text('Library Screen'),
          ),
        ),
      );
    }
}