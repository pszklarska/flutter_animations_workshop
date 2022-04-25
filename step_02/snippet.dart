// TODO(3): Add 'dart:math' import
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TODO(1): Add _width, _height, _color
  // TODO(3): Create new Random instance

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implicit Animations Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Implicit Animations Demo')),
        body: Center(
          child: Container(
            // TODO(2): Replace values with variables
            width: 50.0,
            height: 50.0,
            color: Colors.blue,
          ),
        ),
        // TODO(4): Add FloatingActionButton
      ),
    );
  }
}
