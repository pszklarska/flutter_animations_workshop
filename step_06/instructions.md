# Animate rotation using AnimatedRotation

The last step and the last widget that we're going to use is 
`AnimatedRotation`. That widget allows animating rotation of a widget.

First, we need to create a new variable for keeping a number of turns of a 
widget (each one is a 360-degree turn).

```dart
class _MyAppState extends State<MyApp> {
  ...
  double _turn = 0.0;
  ...
}
```

Second, we use `AnimatedRotation` with the `duration` parameter and a number 
of turns.


```dart
child: AnimatedRotation(
  duration: const Duration(milliseconds: 500),
  turns: _turns,
  child: AnimatedOpacity(
    ...
  ),
),
```

And finally, each time a button is tapped, a quarter of a turn is added to 
the `_turn` variable, making the widget spin.  

```dart
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.play_arrow),
  onPressed: () {
    setState(() {
      final random = Random();
      ...
      _turns += 0.25;
    });
  },
),
```

That's all! After this step you'll see a final result of this workshop. Your 
`Container` should change size, color, opacity and rotate with every button 
tap. And all of that with a nice animation!