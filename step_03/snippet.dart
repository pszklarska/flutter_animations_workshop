import 'dart:math';

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
  final random = Random();

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implicit Animations Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Implicit Animations Demo')),
        body: Center(
          // TODO: Replace Container with AnimatedContainer
          child: Container(
            width: _width,
            height: _height,
            color: _color,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              _width = 25.0 + random.nextInt(200).toDouble();
              _height = 25.0 + random.nextInt(200).toDouble();
              _color = Colors.primaries[random.nextInt(Colors.primaries.length)];
            });
          },
        ),
      ),
    );
  }
}
