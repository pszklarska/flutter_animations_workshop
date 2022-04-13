# Change the state

The next step is to use `StatefulWidget` and the `setState()` method to 
change the Container's size and color.

Firstly, create a new variables for the _height_, _width_ and _color_ of the 
Container. You should place them in the `_MyAppState` class: (line #14)

```dart
class _MyAppState extends State<MyApp> {
   double _width = 50.0;
   double _height = 50.0;
   Color _color = Colors.blue;
   
   ...
}
```

Those values are going to be modified when you tap on the button. As the next 
step, use them as the properties for the `Container` widget:
```dart
child: Container(
  width: _width,
  height: _height,
  color: _color,
),
```

The last thing to do is to actually change the values when we tap on the 
button. To do it, add a `FloatingActionButton` to the `Scaffold` (line #28)

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

And when `onPressed()` is invoked, call `setState()` to change a state of 
the widget and assign a new random values to the _width_, _height_ and 
_color_ variables.

```dart
onPressed: () {
  setState(() {
    final random = Random();
    _width = random.nextInt(200).toDouble();
    _height = random.nextInt(200).toDouble();
    _color = Colors.primaries[random.nextInt(Colors.primaries.length)];
  });
},
```

Now, when you run the app, you should see a FloatingActionButton in the 
bottom right corner. Each time you tap on it, a new random rectangle is 
shown.

![Change the state](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen01.gif?raw=true)