import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
