import 'package:flutter/material.dart';
import 'dart:async';

class _MainAppState extends State<MainApp> {
  StreamController<int> _streamController = StreamController<int>();
  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: StreamBuilder<int>(
            stream: _streamController.stream,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasError) {
                Return const Text('Error: ${snapshot.error}');
              }
              if (!snapshot.hasData)
                return Text('No data yet.');
              }
              return Text('Stream value: ${snapshot.data}');
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _streamController.sink.add(DateTime.now().millisecondsSinceEpoch);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
