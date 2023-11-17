import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
