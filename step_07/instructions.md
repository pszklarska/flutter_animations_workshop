# Customising animations

The main benefit of implicit animations is the simplicity of the usage. But 
just because it's simple, it doesn't mean you can't customise it!

With any `ImplicitlyAnimatedWidget` you can change the `Curve` of the 
animation. By default, all animations are linear (it means the rate of an 
animation is the same for the whole duration).

You can see a collection of all common curves with the examples in the 
Flutter documentation for 
[Curves](https://api.flutter.dev/flutter/animation/Curves-class.html) class.

Let's change a curve for the `AnimatedContainer` widget (line #48)

```dart
child: AnimatedContainer(
  curve: Curves.easeIn,
  ...
),
```

Now, when you run the app, and have a very good eye, you can see that the 
Container's animation starts slowly, speeds up and ends quickly.

Feel free to check out other curves for different animation effects!