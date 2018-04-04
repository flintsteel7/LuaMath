# Lua Math

This repository consists of coding examples and demos inspired by Keith Peters' [Coding Math](https://www.youtube.com/user/codingmath) YouTube videos.

While Keith's examples are done using the HTML5 `<canvas>` element and JavaScript, I'm re-creating them (to the best of my ability) using [Lua](https://www.lua.org/) [5.3](https://www.lua.org/versions.html#5.3) and [LÖVE 2D](https://love2d.org/).

This is just to help myself learn Lua and math.

To run any of the demos, ensure you have LÖVE 2D and Lua 5.3 installed and in your path, then either enter `love episode#` where # is the number of the episode you'd like to run, or cd into an Episode's directory and type `love .` in the console.

- [Episode 1 - Introduction](https://github.com/flintsteel7/LuaMath/tree/master/episode01): Draw 100 random black lines on a white background (also, establish boilerplate, which lives in the root directory as main.lua)
- [Episode 2 - Intro to Trigonometry](https://github.com/flintsteel7/LuaMath/tree/master/episode02): Draw a black sine wave on a white background
- [Episode 3 - More Trigonometry](https://github.com/flintsteel7/LuaMath/tree/master/episode03): Use the sine function to animate a black circle in several ways:
  - moving up and down
  - growing and shrinking
  - fading in and out
- [Episode 4 - Circles, Ellipses and Lissajous Curves](https://github.com/flintsteel7/LuaMath/tree/master/episode04): Use the sine and cosine funcitons to:
  - animate objects along a circle, ellipse, or lissajous curve
  - draw *n* number of objects evenly spaced around a circle
- [Episode 5 - Arctangent](https://github.com/flintsteel7/LuaMath/tree/master/episode05): Use atan functions to:
  - make a fixed arrow always point to the position of the mouse cursor
  - make an arrow orbiting the center of the window always point toward the position of the mouse cursor
- [Episode 7 - Vectors Part 2](https://github.com/flintsteel7/LuaMath/tree/master/episode07): Write a minimal 2D Vector library containing several methods:
  - create, getX, getY, getAngle, getLength
  - setX, setY, setAngle, setLength (mutating)
  - add, subtract, multiply, divide (return new)
  - addTo, subtractFrom, multiplyBy, divideBy (mutating)
- [Episode 8 - Velocity](https://github.com/flintsteel7/LuaMath/tree/master/episode08): Write a basic particle library and animate some particles using vector addition.