# Animate position using AnimatedAlign

Now, the same way as we animated the size and the color of a rectangle, we 
are going to animate its position now, so it randomly moves around the screen. 

To do it, we will use another ImplicitlyAnimatedWidget: `AnimatedAlign`.

The first step is to create new variables to store X and Y positions of the 
widget.

```dart
class _MyAppState extends State<MyApp> {
  ...
  double _x = 0.0;
  double _y = 0.0;
  ...
}
```

Now, we can wrap `AnimatedContainer` in an `AnimatedAlign` widget. It 
requires two parameters - the _duration_ of the animation and _alignment_ 
which is created using X and Y positions.  

```dart
child: AnimatedAlign(
  duration: const Duration(milliseconds: 500),
  alignment: Alignment(_x, _y),
  child: AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    width: _width,
    height: _height,
    color: _color,
  ),
),
```

The last step is to set the new values when the FloatingActionButton is tapped.

```dart
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.play_arrow),
  onPressed: () {
    setState(() {
      final random = Random();
      ...
      _x = -1.0 + random.nextDouble() * 2.0;
      _y = -1.0 + random.nextDouble() * 2.0;
    });
  },
),
```

Note: X and Y values can be between -1.0 and 1.0. `Alignment(-1.0, -1.0)`
represents the top left of the screen and `Alignment(1.0, 1.0)` represents 
the bottom right of the screen.

When you run the app now, the rectangle should move around the screen. 

![Using AnimatedAlign](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen03.gif?raw=true)