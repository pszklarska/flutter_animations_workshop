# Animate position using AnimatedAlign

Now, the same way as you animated the size and the color of a rectangle, you're 
going to animate its position now, so it randomly moves around the screen. 

To do it, you'll use another ImplicitlyAnimatedWidget: `AnimatedAlign`.

The first step is to create new variables to store X and Y positions of the 
widget (line #23)

```dart
class _MyAppState extends State<MyApp> {
  ...
  double _x = 0.0;
  double _y = 0.0;
  ...
}
```

Now wrap `AnimatedContainer` with an `AnimatedAlign` widget (line #32).

> 💡 Pro-tip: You can click on the AnimatedContainer, and use Alt+Enter 
> (Windows/Linux) or Option+Return (Mac) and select "Wrap with widget..."  
> option.  

`AnimatedAlign` requires two parameters - the _duration_ of the animation and 
_alignment_. `Alignment()` is created using X and Y positions.  

```dart
child: AnimatedAlign(
  duration: _duration,
  alignment: Alignment(_x, _y),
  child: AnimatedContainer(
    duration: _duration,
    width: _width,
    height: _height,
    color: _color,
  ),
),
```

In the last step, generate random values and assign them to `_x` and `_y` 
when the FloatingActionButton is pressed (line #47)

```dart
setState(() {
  ...
  _x = -1.0 + _random.nextDouble() * 2.0;
  _y = -1.0 + _random.nextDouble() * 2.0;
});
```

Note: X and Y values range from -1.0 to 1.0. `Alignment(-1.0, -1.0)` 
represents the top left of the screen and `Alignment(1.0, 1.0)` represents 
the bottom right of the screen.

When you run the app now, the rectangle should move around the screen. 

<details>
  <summary>Click to see the result!</summary>

![Using AnimatedAlign](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen03.gif?raw=true)
</details>

<img alt="Google Analytics" src="https://www.google-analytics.com/collect?v=1&cid=1&t=pageview&ec=workshop&ea=open&dp=blob/main/step_04/instructions.md&dt=/step-04&tid=UA-226900214-1" style="width: 1px; height: 1px"/>