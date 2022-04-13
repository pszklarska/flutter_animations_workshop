# Animate look using AnimatedContainer

Now is the time to finally create some animations!

As the widget already changes its state, all that is left is to replace 
`Container` with an `AnimatedContainer` and add a `Duration` of the 
animation (line #30)

```dart

child: AnimatedContainer(
  duration: const Duration(milliseconds: 500),
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