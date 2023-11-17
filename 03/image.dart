import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @Override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image.network(
            'https://picsum.photos/250?image=9',
            width: 250,
            height: 250,
          ),
        ),
      ),
    );
  }
}
