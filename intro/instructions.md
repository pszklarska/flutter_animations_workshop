# Introduction

Animations are an important part of every application’s look and feel. Creating
them, however, can be very often overwhelming.

Luckily, Flutter offers a collection of widgets that allow to animate properties
of the most common widgets, such as Container, Padding, Opacity. In this
workshop, you're going to learn how to modify your existing widgets to convert
them into animated widgets using Implicit Animations.

## Implicit Animations

Implicitly Animated Widgets are widgets that automatically animate to the target
values when a new value is set. It means that you don't have to do any
calculations, all you have to do is use `setState()` on your widget and Flutter
will take care of the rest!

Using Implicit Animations is a perfect solution when you want simple animations
that don't require a lot of customising.

In this workshop, you'll learn how to transform a simple `Container` into the
animation using:

- `AnimatedContainer`
- `AnimatedAlign`
- `AnimatedOpacity`
- `AnimatedRotation`

## Start

We are going to start with a simple application that contains a blue Container
in the centre. Let's click the **Run** in the top right corner to see how it
looks now.

If you are ready, go to the next step!