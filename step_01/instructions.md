# Convert into a Stateful Widget

As mentioned before, implicit animations work automatically when you change a
property value on your widget. You do it by using
a [StatefulWidget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)
and a `setState()` method.

> 💡 If you don't know a difference between a StatelessWidget and 
> a StatefulWidget, see [Adding interactivity to your Flutter app](https://docs.flutter.dev/development/ui/interactive)

In your example, you have a `MyApp` widget that extends `StatelessWidget` 
(look at line #7). To convert it into a `StatefulWidget`, you need to:
1. Change a subclass from `StatelessWidget` to `StatefulWidget`
2. Override `createState()` method, which  will return a new instance of 
   `_MyAppState` class.
3. Create `_MyAppState` class that extends from `State<MyApp>`
4. Move the `build()` method which was previously in the `MyApp` class to 
   `_MyAppState`.

When you run the app now, you shouldn't see any difference. But your 
widget is now prepared for changing a state!

![Initial state - blue container](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen00.png?raw=true)