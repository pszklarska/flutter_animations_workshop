# Animate opacity using AnimatedOpacity

The next widget that you're going to use is `AnimatedOpacity` to change the 
widget's opacity. 

The same way as with other widgets, the first step is to create a new 
variable `_opacity` (line #22)

```dart
class _MyAppState extends State<MyApp> {
  ...
  double _opacity = 0.0;
  ...
}
```

Next, wrap `AnimatedAlign` with `AnimatedOpacity` and provide `duration` of 
the animation (line #31)


```dart
child: AnimatedOpacity(
  duration: const Duration(milliseconds: 500),
  opacity: _opacity,
  child: AnimatedAlign(
    ...
  ),
),
```

The last step is to set a new random double value when the 
FloatingActionButton is pressed (line #53)

```dart
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.play_arrow),
  onPressed: () {
    setState(() {
      final random = Random();
      ...
      _opacity = random.nextDouble();
    });
  },
),
```

After you implement those steps and run the app, you can see the little box 
changing its opacity!

![Using AnimatedOpacity](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen04.gif?raw=true)