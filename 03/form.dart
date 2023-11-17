import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _name = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _email = value;
                };
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('Name: $_name, Email: $_email');
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    ),
  }
}
