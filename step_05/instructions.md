# Animate opacity using AnimatedOpacity

The next widget that you're going to use is `AnimatedOpacity` to change the 
widget's opacity. 

The same way as with other widgets, the first step is to create a new 
variable `_opacity` (line #25)

```dart
class _MyAppState extends State<MyApp> {
  ...
  double _opacity = 1.0;
  ...
}
```

Next, wrap `AnimatedAlign` with `AnimatedOpacity` and provide `duration` of 
the animation (line #34)


```dart
child: AnimatedOpacity(
  duration: _duration,
  opacity: _opacity,
  child: AnimatedAlign(
    ...
  ),
),
```

The last step is to set a new random double value when the 
FloatingActionButton is pressed (line #55)

```dart
setState(() {
  ...
  _opacity = _random.nextDouble();
});
```

After you implement those steps and run the app, you can see the little box 
changing its opacity!

<details>
  <summary>Click to see the result!</summary>

![Using AnimatedOpacity](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen04.gif?raw=true)
</details>

<img alt="Google Analytics" src="https://www.google-analytics.com/collect?v=1&cid=1&t=pageview&ec=workshop&ea=open&dp=blob/main/step_05/instructions.md&dt=/step-05&tid=UA-226934227-1" style="width: 1px; height: 1px"/>
