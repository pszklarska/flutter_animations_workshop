# Change the state

The next step is to use `StatefulWidget` and the `setState()` method to 
change the Container's size and color.

Firstly, create a new variables for the _height_, _width_ and _color_ of the 
Container. You should place them in the `_MyAppState` class: (line #17)

```dart
class _MyAppState extends State<MyApp> {
   double _width = 50.0;
   double _height = 50.0;
   Color _color = Colors.blue;
   
   ...
}
```

Those values are going to be modified when you tap on the button. As the next 
step, use them as the properties for the `Container` widget (line #27)
```dart
child: Container(
  width: _width,
  height: _height,
  color: _color,
),
```

The last thing to do is to actually change the values when we tap on the 
button. To do it, add a `FloatingActionButton` to the `Scaffold` (line #33)

```dart
home: Scaffold(
  ...
  floatingActionButton: FloatingActionButton(
    child: const Icon(Icons.play_arrow),
    onPressed: () {
      
    },
  ),
),
```

Now, you'll need to use Random() class to generate random values every time 
a button is pressed.

Add `'dart:math'` import at the top of the file (line #1) and create a new
instance of a `Random` class (line #16)

```dart
class _MyAppState extends State<MyApp> {
  final _random = Random();
  ...
}
```

Now you can use `Random` to generate new values when `onPressed()` is 
invoked. Inside `onPressed()` call `setState()` to change a state of the 
widget and assign a new random values to the `_width`, `_height` and 
`_color` variables.

```dart
onPressed: () {
  setState(() {
    _width = 25.0 + _random.nextInt(200).toDouble();
    _height = 25.0 + _random.nextInt(200).toDouble();
    _color = Colors.primaries[_random.nextInt(Colors.primaries.length)];
  });
},
```

After those changes, when you run the app you should see a 
FloatingActionButton in the bottom right corner. Each time you tap on it, a 
new random rectangle is shown.

<details>
  <summary>Click to see the result!</summary>

![Change the state](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen01.gif?raw=true)
</details>

<img alt="Google Analytics" src="https://www.google-analytics.com/collect?v=1&cid=1&t=pageview&ec=workshop&ea=open&dp=blob/main/step_02/instructions.md&dt=/step-02&tid=UA-226934227-1" style="width: 1px; height: 1px"/>
