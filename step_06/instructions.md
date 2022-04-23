# Animate rotation using AnimatedRotation

The last step and the last widget that you're going to use is 
`AnimatedRotation`. That widget allows animating rotation of a widget.

First, create a new variable `_turn` for keeping the number of turns of a 
widget (line #26), each one is a 360-degree turn.

```dart
class _MyAppState extends State<MyApp> {
  ...
  double _turn = 0.0;
  ...
}
```

In the second step, use `AnimatedRotation` with the `duration` and 
`turns` parameters (line #35)


```dart
child: AnimatedRotation(
  duration: _duration,
  turns: _turns,
  child: AnimatedOpacity(
    ...
  ),
),
```

And finally, each time a button is pressed, a quarter of a turn is added to 
the `_turn` variable, making the widget spin. In button's `onPressed()` 
method, assign a new value to the `_turns` variable (line #61)

```dart
setState(() {
  ...
  _turns += 0.25;
});
```

That's all! After this step you'll see a final result of this workshop. Your 
`Container` should change size, color, opacity and rotate with every button 
tap. And all that with a nice animation!

<details>
  <summary>Click to see the result!</summary>

![Using AnimatedRotation](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen05.gif?raw=true)
</details>

<img alt="Google Analytics" src="https://www.google-analytics.com/collect?v=1&cid=1&t=pageview&ec=workshop&ea=open&dp=blob/main/step_06/instructions.md&dt=/step-06&tid=UA-226934227-1" style="width: 1px; height: 1px"/>