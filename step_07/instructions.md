# Customising animations

<!-- I was wondering if you were going to discuss Curves. You're one step 
ahead of me! Very important topic, glad to see it covered :) -->
The main benefit of implicit animations is the simplicity of the usage. But 
just because it's simple, it doesn't mean you can't customise it!

With any `ImplicitlyAnimatedWidget` you can change the `Curve` of the 
animation. By default, all animations are linear (it means the rate of an 
animation is the same for the whole duration).

You can see a collection of all common curves with the examples in the 
Flutter documentation for 
[Curves](https://api.flutter.dev/flutter/animation/Curves-class.html) class.

And for the guidelines about when to use them, see this [MaterialDesign](https://material.io/archive/guidelines/motion/duration-easing.html#duration-easing-common-durations) 
documentation.

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

<img alt="Google Analytics" src="https://www.google-analytics.com/collect?v=1&cid=555&t=pageview&ec=repo&ea=open&dp=flutter_animations_workshop/step-07&dt=flutter_animations_workshop/step-07&tid=UA-226900214-1" style="width: 1px; height: 1px"/>
