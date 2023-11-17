import 'package:flutter/material.dart';

class MainApp extends Stateless Widget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 48,
          ),
        ),
      ),
    );
  }
}
