# Introduction

Animations are an important part of every application’s look and feel. Creating
them, however, can be very often overwhelming.

Luckily, Flutter offers a collection of widgets that allow to animate properties
of the most common widgets, such as Container, Padding, Opacity.

In this workshop you're going to learn how to modify your existing widgets to
convert them into animated widgets using Implicit Animations.

### Author

This workshop is authored by Paulina Szklarska ([@p_szklarska](https://twitter.com/p_szklarska)), feel free to reach out!

If you have any questions or comments about this workshop, please [file an issue](https://github.com/pszklarska/flutter_animations_workshop/issues/new).

## Implicit Animations

Implicitly Animated Widgets are widgets that automatically animate to the target
values when a new value is set. It means that you don't have to do any
calculations, all you have to do is use `setState()` on your widget and Flutter
will take care of the rest!

Using Implicit Animations is a perfect solution when you want simple animations
that don't require a lot of customising. You can also compose smaller Implicitly
Animated Widgets to build more complex animations.

### Goals
In this workshop, you'll learn how to transform a simple `Container` into the
nice animation.

<details>
  <summary>Click to see the final animation!</summary>

![Final effect](https://github.com/pszklarska/flutter_animations_workshop/raw/main/assets/screen05.gif?raw=true)
</details>

You'll create that animation using the following widgets:

- [AnimatedContainer](https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html)
- [AnimatedAlign](https://api.flutter.dev/flutter/widgets/AnimatedAlign-class.html)
- [AnimatedOpacity](https://api.flutter.dev/flutter/widgets/AnimatedOpacity-class.html)
- [AnimatedRotation](https://api.flutter.dev/flutter/widgets/AnimatedRotation-class.html)

## Start

You're going to start with a simple application that contains a blue Container
in the centre. Let's click the **Run** in the top right corner to see how it
looks now.

If you are ready, go to the next step!

<img alt="Google Analytics" src="https://www.google-analytics.com/collect?v=1&cid=555&t=pageview&ec=repo&ea=open&dp=flutter_animations_workshop/intro&dt=flutter_animations_workshop/intro&tid=UA-226900214-1" style="width: 1px; height: 1px"/>