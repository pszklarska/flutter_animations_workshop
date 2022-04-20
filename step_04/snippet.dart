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
  final _random = Random();
  final _duration = const Duration(milliseconds: 500);

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.blue;
  // TODO(1): Add _x, _y

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implicit Animations Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Implicit Animations Demo')),
        body: Center(
          // TODO(2): Wrap AnimatedContainer with AnimatedAlign
          child: AnimatedContainer(
            duration: _duration,
            width: _width,
            height: _height,
            color: _color,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              _width = 25.0 + _random.nextInt(200).toDouble();
              _height = 25.0 + _random.nextInt(200).toDouble();
              _color = Colors.primaries[_random.nextInt(Colors.primaries.length)];
              // TODO(3): Assign new random values to _x and _y
            });
          },
        ),
      ),
    );
  }
}
