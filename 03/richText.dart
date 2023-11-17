import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(text: 'Flutter'),
                TextSpan(
                    text: 'is', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'awesome!'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
