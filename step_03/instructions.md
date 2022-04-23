# Animate look using AnimatedContainer

Now is the time to finally create some animations!

The widget already changes its state, so now the last step is to replace 
`Container` with an `AnimatedContainer`. 

First, create a new `Duration` instance at the top of the class (line #18)

```dart
final _duration = const Duration(milliseconds: 500);
```

And replace `Container` with an `AnimatedContainer` (line #31)

```dart

child: AnimatedContainer(
  duration: _duration,
  width: _width,
  height: _height,
  color: _color,
),

```

And voilà! Now, when you run the app and tap on the button, the rectangle's 
size and color should change with a smooth animation. 

<details>
  <summary>Click to see the result!</summary>

![Using AnimatedContainer](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen02.gif?raw=true)
</details>

<img alt="Google Analytics" src="https://www.google-analytics.com/collect?v=1&cid=1&t=pageview&ec=workshop&ea=open&dp=blob/main/step_03/instructions.md&dt=/step-03&tid=UA-226934227-1" style="width: 1px; height: 1px"/>