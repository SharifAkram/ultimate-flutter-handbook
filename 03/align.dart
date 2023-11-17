import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.grey,
            child: const Align(
              alignment: Alignment.bottomRight,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
