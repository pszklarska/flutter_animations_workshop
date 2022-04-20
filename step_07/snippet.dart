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
  double _x = 0.0;
  double _y = 0.0;
  double _opacity = 1.0;
  double _turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implicit Animations Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Implicit Animations Demo')),
        body: Center(
          child: AnimatedRotation(
            duration: _duration,
            turns: _turns,
            child: AnimatedOpacity(
              duration: _duration,
              opacity: _opacity,
              child: AnimatedAlign(
                duration: _duration,
                alignment: Alignment(_x, _y),
                child: AnimatedContainer(
                  duration: _duration,
                  width: _width,
                  height: _height,
                  color: _color,
                  // TODO: Add curve
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              _width = 25.0 + _random.nextInt(200).toDouble();
              _height = 25.0 + _random.nextInt(200).toDouble();
              _color = Colors.primaries[_random.nextInt(Colors.primaries.length)];
              _x = -1.0 + _random.nextDouble() * 2.0;
              _y = -1.0 + _random.nextDouble() * 2.0;
              _opacity = _random.nextDouble();
              _turns += 0.25;
            });
          },
        ),
      ),
    );
  }
}
