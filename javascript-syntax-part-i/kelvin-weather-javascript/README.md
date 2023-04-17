# Kelvin Weather

Deep in his mountain-side meteorology lab, the mad scientist Kelvin has
mastered weather prediction.

Recently, Kelvin began publishing his weather forecasts on his website.
However there’s a problem: All of his forecasts describe the temperature
in <a href="https://en.wikipedia.org/wiki/Kelvin"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Kelvin</a>.

With our knowledge of JavaScript, let’s convert Kelvin to Celsius, then
to Fahrenheit.

<img
src="https://content.codecademy.com/projects/introduction-to-javascript/learn-javascript-introduction/kelvin-weather/Kelvin%20Thermometers.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Kelvin, Celsius, and Fahrenheit thermometers" />

For example, 283 K converts to 10 °C which converts to 50 °F.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

1\.

The forecast today is `293` Kelvin. To start, create a variable named
`kelvin`, and set it equal to `293`.

The value saved to `kelvin` will stay constant. Choose the variable type
with this in mind.

2\.

Write a comment above that explains this line of code.

3\.

Celsius is similar to Kelvin — the only difference is that Celsius is
`273` degrees less than Kelvin.

Let’s convert Kelvin to Celsius by subtracting `273` from the `kelvin`
variable. Store the result in another variable, named `celsius`.

4\.

Write a comment above that explains this line of code.

5\.

Use this equation to calculate Fahrenheit, then store the answer in a
variable named `fahrenheit`.

*Fahrenheit = Celsius \* (9/5) + 32*

In the next step we will round the number saved to `fahrenheit`. Choose
the variable type that allows you to change its value.

6\.

Write a comment above that explains this line of code.

7\.

When you convert from Celsius to Fahrenheit, you often get a decimal
number.

Use the `.floor()` method from the built-in Math object to round down
the Fahrenheit temperature. Save the result to the `fahrenheit`
variable.

8\.

Write a comment above that explains this line of code.

9\.

Use `console.log` and string interpolation to log the temperature in
`fahrenheit` to the console as follows:

``` js
The temperature is TEMPERATURE degrees Fahrenheit.
```

Use string interpolation to replace `TEMPERATURE` with the value saved
to `fahrenheit`.

10\.

Run your program to see your results!

If you want to check your work, open the hint.

11\.

By using variables, your program should work for any Kelvin temperature
— just change the value of `kelvin` and run the program again.

What’s `0` Kelvin in Fahrenheit?

12\.

Great work! Kelvin can now publish his forecasts in Celsius and
Fahrenheit.

If you’d like extra practice, try this:

- Convert `celsius` to the
  <a href="https://en.wikipedia.org/wiki/Newton_scale"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Newton</a> scale using the equation
  below

*Newton = Celsius \* (33/100)*

- Round down the Newton temperature using the `.floor()` method
- Use `console.log` and string interpolation to log the temperature in
  `newton` to the console

## [Solution](kelvin-weather-javascript.js)

``` javascript
//Temperature in Kelvin
const kelvin = 293;

//Temperature in Celsius (conversion from Kelvin)
let celsius = kelvin - 273;

//Temperature in Farenheit (convert from Celsius)
//used Math.floor() method to round number to whole number
let farenheit = Math.floor(celsius * (9 / 5) + 32);

//Temperature in Newton Scale (convert from Celsius)
//Use Math.floor() method to round number to whole number
let newton = Math.floor(celsius * (33 / 100));

//Answers
console.log(`The temperature is ${kelvin} degrees Kelvin.`);
console.log(`The temperature is ${celsius} degrees Celsius.`);
console.log(`The temperature is ${farenheit} degrees Fahrenheit.`);
console.log(`The temperature is ${newton} degrees Newton.`);
```

    ## The temperature is 293 degrees Kelvin.
    ## The temperature is 20 degrees Celsius.
    ## The temperature is 68 degrees Fahrenheit.
    ## The temperature is 6 degrees Newton.

