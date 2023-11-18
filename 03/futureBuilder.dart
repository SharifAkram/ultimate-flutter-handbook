import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    Future fetchUserData() async {
      await Future.delayed(const Duration(seconds: 2));
    }
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
            future: fetchUserData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // build your widget based on the data returned by the future
                return Text('Hello, ${snapshot.data['name]}!');
              } else if (snapshot.hasError) {
                // handle any errors that ocurred while fetching the data
                return Text('Error: ${snapshot.error}');
              } else {
                // show a loading indicator while the data is being fetched
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
