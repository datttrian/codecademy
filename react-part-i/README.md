# Introduction: React, Part I

In this unit, you will be introduced to React.

The goal of this unit is to introduce you to the popular JavaScript
library, React. React will help you build better, scalable front-ends
for your website through the creation of components. An overview of ES6
and functional JavaScript concepts will help in your understanding of
React.

After this unit, you will be able to:

- Understand ES6+ and functional JavaScript programming concepts
- Know what a Virtual DOM is and how it is used in React
- Learn JSX
- Build first React components

Learning is social. Whatever you’re working on, be sure to connect with
the Codecademy community in the
<a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like asking for code reviews
on your project work and providing code reviews to others in the
<a href="https://discuss.codecademy.com/c/project/1833"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">projects category</a>, which can help to
reinforce what you’ve learned.

# JavaScript Refresher

Prepare yourself with a JavaScript refresher before you start learning
about React.

Before we dive into the world of React, let’s go over some core
JavaScript concepts. These resources below will help you get a better
sense of JavaScript syntax to apply to writing React apps.

- Reference Material: <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/A_re-introduction_to_JavaScript"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN’s Re-introduction to JavaScript</a>
  — Use this as a guide to brush up on foundational syntax
- Article: <a
  href="https://medium.com/functional-javascript/introduction-to-functional-javascript-45a9dca6c64a"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Introduction to Functional
  JavaScript</a> - Get the history of JS and its programming paradigms

In the next article, you’ll also learn about destructuring which is a
widely used syntax in React apps.

# Destructuring with JavaScript

Learn a new syntax for handling objects and arrays in JavaScript.

## What is Destructuring?

Destructuring, or destructuring assignment, is a JavaScript feature that
makes it easier to extract data from arrays and objects, introduced in
<a
href="https://262.ecma-international.org/6.0/#sec-destructuring-assignment"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the ES6 version of JavaScript</a>.

At this point, we assume you already know how to extract data from
arrays and objects. That means that you don’t NEED destructuring:
destructuring is a form of syntactic sugar, which means that it is an
easier way to write certain expressions, usually by being shorter and
clearer than other forms. Even if you don’t use it yourself, you’ll
probably see it in someone else’s code, so it’s valuable to understand.

## Destructuring Arrays

Data structures like arrays and objects can be very useful for storing
large amounts of data. The process of converting individual elements of
an array into individual variables can be tedious:

``` jsx
let cars = ['ferrari', 'tesla', 'cadillac'];
```

If we wanted to access these cars individually and assign them to
variables we could do this:

``` jsx
let cars = ['ferrari', 'tesla', 'cadillac'];
let car1 = cars[0];
let car2 = cars[1];
let car3 = cars[2];
console.log(car1, car2, car3); // Prints: ferrari tesla cadillac
```

We can use destructuring to shorten our code and make it more concise:

``` jsx
let cars = ['ferrari', 'tesla', 'cadillac'];
let [car1, car2, car3] = cars;
console.log(car1, car2, car3); // Prints: ferrari tesla cadillac
```

In the code above, we created three variables (`car1`, `car2`, `car3`)
that correspond to the three elements in the `cars` array. Each variable
name in the new array will be assigned the value of the corresponding
element. As you can see, we are able to achieve what we did previously
with three lines of code, in one! Imagine how many lines of code we
would save working with an array with 10 elements!

Let’s practice:

Destructure the items from the `colors` array into new variables
`color1`, `color2`, and `color3`. If done correctly, the colors should
be printed in this order: ‘blue’, ‘red’, ‘purple’.

``` jsx
let colors = ['blue','red','purple'];

// Destructure here
let [color1, color2, color3] = colors;

console.log(color1, color2, color3);
```

👏 You got it!

## Destructuring Objects

We can also use destructuring assignment with objects. Let’s look at a
basic use case in which we capture an object’s properties with new
variables:

``` jsx
let destinations = { x: 'LA', y: 'NYC', z: 'MIA' };
let x = destinations.x;
let y = destinations.y;
let z = destinations.z;
console.log(x, y, z); // Prints LA NYC MIA
```

With the simplified destructuring syntax, we access the values by
matching the variable names to the property names.

``` jsx
let destinations = { x: 'LA', y: 'NYC', z: 'MIA' };
let { x, y, z } = destinations;
console.log(x, y, z); // Prints LA NYC MIA
```

Using destructuring syntax, we’re able to create new variables directly
from an object’s properties. In this case, we took the values of
`destination.x`, `destination.y`, and `destination.z` and stored them in
new variables `x`, `y`, `z`, respectively.

Destructure the items from the `planets` object so that they are named
`x`, `y`, and `z`. If done correctly, the planets should be printed in
this order: ‘Saturn’, ‘Mars’, ‘Neptune’.

``` jsx
let planets = { x: 'Saturn', y: 'Mars', z: 'Neptune' };

// Destructure here
let { x, y, z } = planets;

console.log(x, y, z);
```

👏 You got it!

## Destructuring Function Parameters

Function arguments are another place where destructuring is useful.
Instead of accepting a complete object as an argument, a function can
use destructuring to capture specific properties as named parameters.

``` jsx
let truck = {
  model: '1977 Mustang convertible',
  maker: 'Ford',
  city: 'Detroit',
  year: '1977',
  convertible: true
};
 
const printCarInfo = ({model, maker, city}) => {
  console.log(`The ${model}, or ${maker}, is in the city ${city}.`);
};
 
printCarInfo(truck);
// Prints: The 1977 Mustang convertible, or Ford, is in the city Detroit.
```

The `printCarInfo` function uses object destructuring to create three
parameter variables: `model`, `maker`, and `city`. When the function is
invoked with the `truck` object, these parameters are assigned the
corresponding values from that object.

Note that we don’t have to use every property from the `truck` object:
we only create parameter variables for the values that we need.

Define a function named `printPlantInfo()` so that this code logs the
string: ‘The Prairie Rose, or Rosa arkansana, is in the kingdom
Plantae’.

Make sure to use destructuring for the function’s parameters.

``` jsx
let prairieRose = {
  name: 'Prairie Rose',
  scientificName: 'Rosa arkansana',
  kingdom:  'Plantae',
  genus:    'Rosa',
  use: 'ornamental'
};

const printPlantInfo = ({name, scientificName, kingdom}) => {
  console.log(`The ${name}, or ${scientificName}, is in the kingdom ${kingdom}`);
};

printPlantInfo(prairieRose);
```

👏 You got it!

### Conclusion

Destructuring is a way to unpack values from arrays and objects and
assign them to variables or parameters. There are even more cool things
you can do with destructuring: renaming variables, assigning default
values, ignoring values, etc. We encourage you to check out <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the MDN documentation and experiment</a>.
Happy Coding!

# The Virtual DOM

[The Virtual Dom](https://www.youtube.com/watch?v=jwRAdGLUarw)

# React: The Virtual DOM

Fighting Wasteful DOM Manipulation

## The Problem

<a
href="https://www.codecademy.com/courses/build-interactive-websites/lessons/javascript-dom/exercises/document"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">DOM manipulation</a> is the heart of the modern,
interactive web. Unfortunately, it is also a lot slower than most
JavaScript operations.

This slowness is made worse by the fact that **most JavaScript
frameworks update
<a href="https://www.codecademy.com/resources/blog/what-is-dom/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">the DOM</a> much more than they have to.**

As an example, let’s say that you have a list that contains ten items.
You check off the first item. Most JavaScript frameworks would rebuild
*the entire list*. That’s ten times more work than necessary! Only one
item changed, but the remaining nine get rebuilt exactly how they were
before.

Rebuilding a list is no big deal to a web browser, but modern websites
can use huge amounts of DOM manipulation. Inefficient updating has
become a serious problem.

To address this problem, the people at React popularized something
called the *virtual DOM.*

# The Virtual DOM

In React, for every <a href="http://eloquentjavascript.net/13_dom.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">DOM object</a>, there is a corresponding
“virtual DOM object.” A virtual DOM object is a *representation* of a
DOM object, like a lightweight copy.

A virtual DOM object has the same properties as a real DOM object, but
it lacks the real thing’s power to directly change what’s on the screen.

Manipulating the DOM is slow. Manipulating the virtual DOM is much
faster, because nothing gets drawn onscreen. Think of manipulating the
virtual DOM as editing a blueprint, as opposed to moving rooms in an
actual house.

# How it helps

When you render a JSX element, every single virtual DOM object gets
updated.

This sounds incredibly inefficient, but the cost is insignificant
because the virtual DOM can update so quickly.

Once the virtual DOM has updated, then React compares the virtual DOM
with a virtual DOM *snapshot* that was taken right before the update.

By comparing the new virtual DOM with a pre-update version, React
figures out *exactly which virtual DOM objects have changed.* This
process is called “diffing.”

Once React knows which virtual DOM objects have changed, then React
updates those objects, *and only those objects,* on the real DOM. In our
example from earlier, React would be smart enough to rebuild your one
checked-off list-item, and leave the rest of your list alone.

This makes a big difference! React can update only the necessary parts
of the DOM. React’s reputation for performance comes largely from this
innovation.

In summary, here’s what happens when you try to update the DOM in React:

1.  The entire virtual DOM gets updated.
2.  The virtual DOM gets compared to what it looked like before you
    updated it. React figures out which objects have changed.
3.  The changed objects, and the changed objects only, get updated on
    the *real* DOM.
4.  Changes on the real DOM cause the screen to change.

If you’d like to learn more about the virtual DOM, <a
href="http://reactkungfu.com/2015/10/the-difference-between-virtual-dom-and-dom/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here’s a good place to start</a>.

# Intro to JSX

## Why React?

React.js is a JavaScript library. It was developed by engineers at
Facebook.

Here are just a few of the reasons why people choose to program with
React:

- React is *fast*. Apps made in React can handle complex updates and
  still feel quick and responsive.

- React is *modular*. Instead of writing large, dense files of code, you
  can write many smaller, reusable files. React’s modularity can be a
  beautiful solution to JavaScript’s
  <a href="https://en.wikipedia.org/wiki/Spaghetti_code"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">maintainability problems</a>.

- React is *scalable*. Large programs that display a lot of changing
  data are where React performs best.

- React is *flexible*. You can use React for interesting projects that
  have nothing to do with making a web app. People are still figuring
  out React’s potential.
  <a href="https://github.com/jiwonbest/amazing-react-projects"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">There’s room to explore.</a>

- React is *popular*. While this reason has admittedly little to do with
  React’s quality, the truth is that understanding React will make you
  more employable.

If you are new to React, then this course is for you! No prior React
knowledge is expected. We will start at the very beginning and move
slowly.

If you are new to JavaScript, then consider taking
<a href="https://www.codecademy.com/learn/introduction-to-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">our JavaScript course</a> and then returning to React.

The Codecademy React courses are not a high-level overview. They are a
deep dive. Take your time! By the end, you will be ready to program in
React with a real understanding of what you’re doing.

### Solution

[Why
React?](https://content.codecademy.com/courses/React/react_animations-intro.mp4)

## Hello World

Take a look at the following line of code:

``` jsx
const h1 = <h1>Hello world</h1>;
```

What kind of weird hybrid code is that? Is it JavaScript? HTML? Or
something else?

It seems like it must be JavaScript, since it starts with `const` and
ends with `;`. If you tried to run that in an HTML file, it wouldn’t
work.

However, the code also contains `<h1>Hello world</h1>`, which looks
exactly like HTML. *That* part wouldn’t work if you tried to run it in a
JavaScript file.

What’s going on?

### Instructions

**1.**

Copy the following line into **app.js**:

``` jsx
const h1 = <h1>Hello world</h1>;
```

Click Run when you’re finished.

### Solution

``` jsx
const h1 = <h1>Hello world</h1>;
```

## The Mystery, Revealed

Good!

Take another look at the line of code that you wrote.

Does this code belong in a JavaScript file, an HTML file, or somewhere
else?

The answer is…a JavaScript file! Despite what it looks like, your code
doesn’t actually contain any HTML at all.

The part that looks like HTML, `<h1>Hello world</h1>`, is something
called *JSX*.

Click Next to learn about JSX.

## What is JSX?

*JSX* is a syntax extension for JavaScript. It was written to be used
with React. JSX code looks a lot like HTML.

What does “syntax extension” mean?

In this case, it means that JSX is not valid JavaScript. Web browsers
can’t read it!

If a JavaScript file contains JSX code, then that file will have to be
*compiled*. That means that before the file reaches a web browser, a
*JSX compiler* will translate any JSX into regular JavaScript.

Codecademy’s servers already have a JSX compiler installed, so you don’t
have to worry about that for now. Eventually we’ll walk through how to
set up a JSX compiler on your personal computer.

### Instructions

Click Next to continue.

## JSX Elements

A basic unit of JSX is called a JSX *element*.

Here’s an example of a JSX element:

``` jsx
<h1>Hello world</h1>
```

This JSX element looks exactly like HTML! The only noticeable difference
is that you would find it in a JavaScript file, instead of in an HTML
file.

### Instructions

**1.**

In **app.js**, write a JSX `<p></p>` element containing the text,
`Hello world`. Use the example code above as a guide.

### Solution

``` jsx
<p>Hello world</p>
```

## JSX Elements And Their Surroundings

JSX elements are treated as JavaScript *expressions*. They can go
anywhere that JavaScript expressions can go.

That means that a JSX element can be saved in a variable, passed to a
function, stored in an object or array…you name it.

Here’s an example of a JSX element being saved in a variable:

``` jsx
const navBar = <nav>I am a nav bar</nav>;
```

Here’s an example of several JSX elements being stored in an object:

``` jsx
const myTeam = {
  center: <li>Benzo Walli</li>,
  powerForward: <li>Rasha Loa</li>,
  smallForward: <li>Tayshaun Dasmoto</li>,
  shootingGuard: <li>Colmar Cumberbatch</li>,
  pointGuard: <li>Femi Billon</li>
};
```

### Instructions

**1.**

Create a JSX `<article></article>` element. Save it in a variable named
`myArticle`.

### Solution

``` jsx
const myArticle = <article></article>;
```

## Attributes In JSX

JSX elements can have *attributes*, just like HTML elements can.

A JSX attribute is written using HTML-like syntax: a *name*, followed by
an equals sign, followed by a *value*. The *value* should be wrapped in
quotes, like this:

``` jsx
my-attribute-name="my-attribute-value"
```

Here are some JSX elements with *attributes:*

``` jsx
<a href='http://www.example.com'>Welcome to the Web</a>;
 
const title = <h1 id='title'>Introduction to React.js: Part I</h1>; 
```

A single JSX element can have many attributes, just like in HTML:

``` jsx
const panda = <img src='images/panda.jpg' alt='panda' width='500px' height='500px' />;
```

### Instructions

**1.**

Declare a constant named `p1`.

Set `p1` equal to a JSX `<p></p>` element. Write the word `foo` in
between the `<p></p>` tags.

**2.**

On the next line, declare a constant named `p2`.

Set `p2` equal to another JSX `<p></p>` element. Write the word `bar` in
between the `<p></p>` tags.

**3.**

Give the first `<p></p>` an `id` attribute of `'large'`.

Give the second `<p></p>` an `id` attribute of `'small'`.

### Solution

``` jsx
const p1 = <p id="large">foo</p>;
const p2 = <p id="small">bar</p>;
```

## Nested JSX

You can *nest* JSX elements inside of other JSX elements, just like in
HTML.

Here’s an example of a JSX `<h1>` element, *nested* inside of a JSX
`<a>` element:

``` jsx
<a href="https://www.example.com"><h1>Click me!</h1></a>
```

To make this more readable, you can use HTML-style line breaks and
indentation:

``` jsx
<a href="https://www.example.com">
  <h1>
    Click me!
  </h1>
</a>
```

If a JSX expression takes up more than one line, then you must wrap the
multi-line JSX expression in parentheses. This looks strange at first,
but you get used to it:

``` jsx
(
  <a href="https://www.example.com">
    <h1>
      Click me!
    </h1>
  </a>
)
```

*Nested* JSX expressions can be saved as variables, passed to functions,
etc., just like non-nested JSX expressions can! Here’s an example of a
*nested* JSX expression being saved as a variable:

``` jsx
 const theExample = (
   <a href="https://www.example.com">
     <h1>
       Click me!
     </h1>
   </a>
 );
```

### Instructions

**1.**

Declare a new variable named `myDiv`. Set `myDiv` equal to a JSX
`<div></div>` element.

Wrap the `<div></div>` in parentheses, and use indentation and line
breaks like in the examples. In between the `<div></div>` tags, *nest*
an `<h1></h1>` containing the text `Hello world`.

### Solution

``` jsx
const myDiv = (
  <div>
    <h1>Hello world</h1>
  </div>
);
```

## JSX Outer Elements

There’s a rule that we haven’t mentioned: a JSX expression must have
exactly *one* outermost element.

In other words, this code will work:

``` jsx
const paragraphs = (
  <div id="i-am-the-outermost-element">
    <p>I am a paragraph.</p>
    <p>I, too, am a paragraph.</p>
  </div>
);
```

But this code will not work:

``` jsx
const paragraphs = (
  <p>I am a paragraph.</p> 
  <p>I, too, am a paragraph.</p>
);
```

The *first opening tag* and the *final closing tag* of a JSX expression
must belong to the same JSX element!

It’s easy to forget about this rule, and end up with errors that are
tough to diagnose.

If you notice that a JSX expression has multiple outer elements, the
solution is usually simple: wrap the JSX expression in a `<div></div>`.

### Instructions

**1.**

Your friend’s blog is down! He’s asked you to fix it.

You immediately diagnose the problem: a JSX expression with multiple
outer elements.

Repair your friend’s broken code by wrapping their JSX in a
`<div></div>`.

### Solution

``` jsx
const blog = (
  <div>
    <img src="pics/192940u73.jpg" />
    <h1>
      Welcome to Dan's Blog!
    </h1>
    <article>
      Wow I had the tastiest sandwich today.  I <strong>literally</strong> almost freaked out.
    </article>
  </div>
);
   
```

## Rendering JSX

You’ve learned how to write JSX elements! Now it’s time to learn how to
*render* them.

To *render* a JSX expression means to make it appear onscreen.

### Instructions

**1.**

The following code will render a JSX expression:

``` jsx
ReactDOM.render(<h1>Hello world</h1>, document.getElementById('app'));
```

Starting on line 5, carefully copy the code into the code editor. We’ll
go over how it works in the next exercise.

JavaScript is case-sensitive, so make sure to capitalize ReactDOM
correctly!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

// Copy code here:
ReactDOM.render(<h1>Hello world</h1>, document.getElementById('app'));
```

## ReactDOM.render() I

Let’s examine the code that you just wrote in the last exercise.

``` jsx
ReactDOM.render(<h1>Render me!</h1>, document.getElementById('app'));
```

You can see something called `ReactDOM`. What’s that?

`ReactDOM` is the name of a JavaScript library. This library contains
several React-specific methods, all of which deal with
<a href="http://www.w3schools.com/js/js_htmldom.asp"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the DOM</a> in some way or another.

We’ll talk more later about how `ReactDOM` got into your file. For now,
just understand that it’s yours to use.

Move slightly to the right, and you can see one of `ReactDOM`’s methods:
`ReactDOM.render()`.

`ReactDOM.render()` is the most common way to *render* JSX. It takes a
JSX expression, creates a corresponding tree of DOM nodes, and adds that
tree to the DOM. That is the way to make a JSX expression appear
onscreen.

Move to the right a little more, and you come to this expression:

``` jsx
<h1>Hello world</h1>
```

This is the first *argument* being passed to `ReactDOM.render()`.
`ReactDOM.render()`’s first argument should be a JSX expression, and it
will be rendered to the screen.

We’ll discuss the second argument in the next exercise!

### Instructions

**1.**

Below the import statements, call `ReactDOM.render()`.

Pass in this expression as a first argument:

``` jsx
<h1>Render me!</h1>
```

Pass in this expression as a second argument:

``` jsx
document.getElementById('app')
```

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

// Write code here:
ReactDOM.render(<h1>Render me!</h1>, document.getElementById('app'));
```

## ReactDOM.render() II

Move to the right a little more, and you will see this expression:

``` jsx
document.getElementById('app')
```

You just learned that `ReactDOM.render()` makes its *first* argument
appear onscreen. But *where* on the screen should that first argument
appear?

The first argument is *appended* to whatever element is selected by the
*second* argument.

In the code editor, select **index.html**. See if you can find an
element that would be selected by `document.getElementById('app')`.

That element acted as a *container* for `ReactDOM.render()`’s first
argument! At the end of the previous exercise, this appeared on the
screen:

``` jsx
<main id="app">
  <h1>Render me!</h1>
</main>
```

### Instructions

**1.**

In **index.html**, replace this:

``` jsx
<main id="app"></main>
```

with this span:

``` jsx
<span id="container"></span>
```

**2.**

Select **app.js**.

You want `<h1>Render me!</h1>` to be appended to
`<span id="container"></span>`.

On line 5, make that happen by changing the string passed to
`document.getElementById()`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

// Write code here:
ReactDOM.render(<h1>Render me!</h1>, document.getElementById('container'));
```

## Passing a Variable to ReactDOM.render()

`ReactDOM.render()`’s first argument should *evaluate* to a JSX
expression, it doesn’t have to literally *be* a JSX expression.

The first argument could also be a variable, so long as that variable
evaluates to a JSX expression.

In this example, we save a JSX expression as a *variable* named
`toDoList`. We then pass `toDoList` as the first argument to
`ReactDOM.render()`:

``` jsx
const toDoList = (
  <ol>
    <li>Learn React</li>
    <li>Become a Developer</li>
  </ol>
);
 
ReactDOM.render(
  toDoList, 
  document.getElementById('app')
);
```

### Instructions

**1.**

On line 5, declare a variable named `myList`. Set `myList` equal to a
JSX `<ul></ul>` element. Wrap your `<ul></ul>` in parentheses.

Add several `<li></li>` elements in between your `<ul></ul>` tags. Put
some text in each `<li></li>`. Use line breaks and indentation similar
to the above example.

**2.**

At the bottom of the file, call `ReactDOM.render()`.

For `ReactDOM.render()`’s first argument, pass in the variable `myList`.

For `ReactDOM.render()`’s second argument, select an HTML element with
an id of `app`.

Feel free to use the example code as a guide.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

// Write code here:
const myList = (
  <ul>
    <li>Learn React</li>
    <li>Become a Developer</li>
  </ul>
);

ReactDOM.render(
  myList, 
  document.getElementById('app')
);
```

## The Virtual DOM

One special thing about `ReactDOM.render()` is that it *only updates DOM
elements that have changed*.

That means that if you render the exact same thing twice in a row, the
second render will do nothing:

``` jsx
const hello = <h1>Hello world</h1>;
 
// This will add "Hello world" to the screen:
 
ReactDOM.render(hello, document.getElementById('app'));
 
// This won't do anything at all:
 
ReactDOM.render(hello, document.getElementById('app'));
```

This is significant! Only updating the necessary DOM elements is a large
part of what makes React so successful.

React accomplishes this thanks to something called *the virtual DOM.*
Before moving on to the end of the lesson,
<a href="https://www.codecademy.com/articles/react-virtual-dom"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">read this article about the Virtual DOM</a>.

## JSX Recap

Congratulations! You’ve learned to create and render JSX elements! This
is the first step towards becoming fluent in React.

In the next lesson, you’ll learn some powerful things that you can do
with JSX, as well as some common JSX issues and how to avoid them.

# Advanced JSX

## class vs className

This lesson will cover more advanced JSX. You’ll learn some powerful
tricks, and some common errors to avoid.

Grammar in JSX is mostly the same as in HTML, but there are subtle
differences to watch out for. Probably the most frequent of these
involves the word `class`.

In HTML, it’s common to use `class` as an attribute name:

``` html
<h1 class="big">Hey</h1>
```

In JSX, you can’t use the word `class`! You have to use `className`
instead:

``` jsx
<h1 className="big">Hey</h1>
```

This is because JSX gets translated into JavaScript, and `class` is a
reserved word in JavaScript.

When JSX is *rendered*, JSX `className` attributes are automatically
rendered as `class` attributes.

### Instructions

**1.**

On line 5, declare a new variable named `myDiv`. Set `myDiv` equal to a
JSX `<div></div>` element.

In between the `<div></div>` tags, write the text `I AM A BIG DIV`.

Give your `<div></div>` the following attribute:

``` jsx
className="big"
```

**2.**

Underneath your `<div></div>`, call `ReactDOM.render`.

For `ReactDOM.render()`’s first argument, pass in `myDiv`.

For `ReactDOM.render()`’s second argument, pass in
`document.getElementById('app')`.

If your rendered `<div></div>` has a *class* of `"big"`, then it should
look big in the browser!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

// Write code here:
const myDiv = <div className="big">I AM A BIG DIV</div>;

ReactDOM.render(myDiv, document.getElementById('app'));
```

## Self-Closing Tags

Another JSX ‘gotcha’ involves *self-closing tags*.

What’s a self-closing tag?

Most HTML elements use two tags: an *opening tag* (`<div>`), and a
*closing tag* (`</div>`). However, some HTML elements such as `<img>`
and `<input>` use only one tag. The tag that belongs to a single-tag
element isn’t an opening tag nor a closing tag; it’s a *self-closing
tag.*

When you write a self-closing tag in HTML, it is *optional* to include a
forward-slash immediately before the final angle-bracket:

``` html
Fine in HTML with a slash:
 
  <br />
 
Also fine, without the slash:
 
  <br>
```

But!

In JSX, you *have to* include the slash. If you write a self-closing tag
in JSX and forget the slash, you will raise an error:

``` jsx
Fine in JSX:
 
  <br />
 
NOT FINE AT ALL in JSX:
 
  <br>
```

### Instructions

**1.**

In **app.js**, fix the broken JSX by adding slashes to all of the
self-closing tags.

### Solution

``` jsx
const profile = (
  <div>
    <h1>I AM JENKINS</h1>
    <img src="images/jenkins.png" />
    <article>
      I LIKE TO SIT
      <br />
      JENKINS IS MY NAME
      <br />
      THANKS HA LOT
    </article>
  </div>
);
```

## JavaScript In Your JSX In Your JavaScript

So far, we’ve focused on writing JSX expressions. It’s similar to
writing bits of HTML, but inside of a JavaScript file.

In this lesson, we’re going to add something new: regular JavaScript,
written inside of a JSX expression, written inside of a JavaScript file.

Whoaaaa…

### Instructions

**1.**

Starting on line 5, carefully write the following code. What do you
think will appear in the browser?

``` jsx
ReactDOM.render(
  <h1>2 + 3</h1>,
  document.getElementById('app')
);
```

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

// Write code here:
ReactDOM.render(
  <h1>2 + 3</h1>,
  document.getElementById('app')
);
```

## Curly Braces in JSX

The code in the last exercise didn’t behave as one might expect. Instead
of adding 2 and 3, it printed out “2 + 3” as a string of text. Why?

This happened because `2 + 3` is located in between `<h1>` and `</h1>`
tags.

Any code in between the tags of a JSX element will be read as JSX, not
as regular JavaScript! JSX doesn’t add numbers - it reads them as text,
just like HTML.

You need a way to write code that says, “Even though I am located in
between JSX tags, treat me like ordinary JavaScript and not like JSX.”

You can do this by wrapping your code in *curly braces*.

### Instructions

**1.**

Add a pair of curly braces to the code from last exercise, so that your
JSX expression looks like this:

``` jsx
<h1>{2 + 3}</h1>
```

Everything inside of the curly braces will be treated as regular
JavaScript.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

// Write code here:
ReactDOM.render(
  <h1>2 + 3</h1>,
  document.getElementById('app')
);
```

## 20 Digits of Pi in JSX

You can now inject regular JavaScript into JSX expressions! This will be
extremely useful.

In the code editor, you can see a JSX expression that displays the first
twenty digits of pi.

Study the expression and notice the following:

- The code is written in a JavaScript file. By default, it will all be
  treated as regular JavaScript.
- Find `<div>` on line 5. From there up through `</div>`, the code will
  be treated as JSX.
- Find `Math`. From there up through `(20)`, the code will be treated as
  regular JavaScript again.
- The curly braces themselves won’t be treated as JSX nor as JavaScript.
  They are *markers* that signal the beginning and end of a JavaScript
  injection into JSX, similar to the quotation marks that signal the
  boundaries of a string.

### Instructions

**1.**

Select **app.js**.

Declare a new variable named `math`. Set `math` equal to a JSX
`<h1></h1>` element.

Put the following text inside of the `<h1>`:

    2 + 3 = 2 + 3

**2.**

At the bottom of the file, call `ReactDOM.render()`.

For `ReactDOM.render()`’s first argument, pass in `math`.

For `ReactDOM.render()`’s second argument, pass in
`document.getElementById('app')`.

**3.**

As you probably expected, the equation was displayed as a string.

Insert a pair of curly braces into the `<h1></h1>`, so that the browser
displays `2 + 3 = 5`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const pi = (
  <div>
    <h1>
      PI, YALL!
    </h1>
    <p>
      {Math.PI.toFixed(20)}
    </p>
  </div>
);

ReactDOM.render(
    pi,
    document.getElementById('app')
);
```

## Variables in JSX

When you inject JavaScript into JSX, that JavaScript is part of the same
environment as the rest of the JavaScript in your file.

That means that you can access variables while inside of a JSX
expression, even if those variables were declared on the outside.

``` jsx
// Declare a variable:
const name = 'Gerdo';
 
// Access your variable 
// from inside of a JSX expression:
const greeting = <p>Hello, {name}!</p>;
```

### Instructions

**1.**

Replace `ReactDOM.render()`’s first argument with a JSX `<h1></h1>`.

Using curly braces, set the `<h1></h1>`’s inner text equal to
`theBestString`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const theBestString = 'tralalalala i am da best';

ReactDOM.render(<h1>{theBestString}</h1>, document.getElementById('app'));
```

## Variable Attributes in JSX

When writing JSX, it’s common to use variables to set *attributes*.

Here’s an example of how that might work:

``` jsx
// Use a variable to set the `height` and `width` attributes:
 
const sideLength = "200px";
 
const panda = (
  <img 
    src="images/panda.jpg" 
    alt="panda" 
    height={sideLength} 
    width={sideLength} />
);
```

Notice how in this example, the `<img />`’s attributes each get their
own line. This can make your code more readable if you have a lot of
attributes on one element.

*Object properties* are also often used to set attributes:

``` jsx
const pics = {
  panda: "http://bit.ly/1Tqltv5",
  owl: "http://bit.ly/1XGtkM3",
  owlCat: "http://bit.ly/1Upbczi"
}; 
 
const panda = (
  <img 
    src={pics.panda} 
    alt="Lazy Panda" />
);
 
const owl = (
  <img 
    src={pics.owl} 
    alt="Unimpressed Owl" />
);
 
const owlCat = (
  <img 
    src={pics.owlCat} 
    alt="Ghastly Abomination" />
); 
```

### Instructions

**1.**

On line 7, declare a new variable named `gooseImg`. Set its value equal
to a JSX `<img />` element.

Give the `<img />` an attribute with a *name* of `src`. Set the
attribute’s *value* equal to the variable `goose`.

**2.**

Use `ReactDOM.render()` to render `gooseImg`.

`ReactDOM.render()`’s first argument should be `gooseImg`.

`ReactDOM.render()`’s second argument should be
`document.getElementById('app')`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const goose = 'https://content.codecademy.com/courses/React/react_photo-goose.jpg';

// Declare new variable here:
const gooseImg = <img src={goose} />;

ReactDOM.render(gooseImg, document.getElementById('app'));
```

## Event Listeners in JSX

JSX elements can have *event listeners*, just like HTML elements can.
Programming in React means constantly working with event listeners.

You create an event listener by giving a JSX element a special
*attribute*. Here’s an example:

``` jsx
<img onClick={myFunc} />
```

An event listener attribute’s *name* should be something like `onClick`
or `onMouseOver`: the word `on`, plus the type of event that you’re
listening for. You can see a list of valid event names <a
href="http://facebook.github.io/react/docs/events.html#supported-events"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

An event listener attribute’s *value* should be a function. The above
example would only work if `myFunc` were a valid function that had been
defined elsewhere:

``` jsx
function myFunc() {
  alert('Make myFunc the pFunc... omg that was horrible i am so sorry');
}
 
<img onClick={myFunc} />
```

Note that in HTML, event listener *names* are written in all lowercase,
such as `onclick` or `onmouseover`. In JSX, event listener names are
written in camelCase, such as `onClick` or `onMouseOver`.

### Instructions

**1.**

Look at line 17. `ReactDOM.render()` is being passed two `null`
arguments.

Render `kitty` by replacing the first `null` with `kitty`, and the
second `null` with `document.getElementById('app')`.

**2.**

Add an `onClick` attribute to the `<img />` element. Set `onClick`’s
*value* equal to the `makeDoggy` function.

Remember, since attributes are a part of JSX expressions, you will need
to *inject* JavaScript in order to use `makeDoggy`.

Click Run, and then click on the browser image to change the kitty into
a doggy.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

function makeDoggy(e) {
  // Call this extremely useful function on an <img>.
  // The <img> will become a picture of a doggy.
  e.target.setAttribute('src', 'https://content.codecademy.com/courses/React/react_photo-puppy.jpeg');
  e.target.setAttribute('alt', 'doggy');
}

const kitty = (
    <img 
        src="https://content.codecademy.com/courses/React/react_photo-kitty.jpg" 
        alt="kitty" onClick={makeDoggy} />
);

ReactDOM.render(kitty, document.getElementById('app'));
```

## JSX Conditionals: If Statements That Don’t Work

Great work! You’ve learned how to use curly braces to inject JavaScript
into a JSX expression!

Here’s a rule that you need to know: you can not inject an `if`
statement into a JSX expression.

This code will break:

``` jsx
(
  <h1>
    {
      if (purchase.complete) {
        'Thank you for placing an order!'
      }
    }
  </h1>
)
```

The reason why has to do with the way that JSX is compiled. You don’t
need to understand the mechanics of it for now, but if you’re interested
then you can learn more in the
<a href="https://reactjs.org/docs/jsx-in-depth.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React documentation</a>.

What if you want a JSX expression to render, but only under certain
circumstances? You can’t inject an `if` statement. What can you do?

You have lots of options. In the next few lessons, we’ll explore some
simple ways to write *conditionals* (expressions that are only executed
under certain conditions) in JSX.

## JSX Conditionals: If Statements That Do Work

How can you write a *conditional*, if you can’t inject an `if` statement
into JSX?

Well, one option is to write an `if` statement, and *not* inject it into
JSX.

Look at **if.js**. Follow the `if` statement, all the way from line 6
down to line 18.

**if.js** works, because the words `if` and `else` are *not* injected in
between JSX tags. The `if` statement is on the outside, and no
JavaScript injection is necessary.

This is a common way to express conditionals in JSX.

### Instructions

**1.**

Select **app.js**.

Starting on line 16, write an `if/else` statement, using **if.js** as a
guide.

If `(coinToss() === 'heads')`, then execute
`img = <img src={pics.kitty} />`.

Inside of the `else` clause, execute `img = <img src={pics.doggy} />`.

In other words, if the coin lands heads then you should get a picture of
a kitty, and if the coin lands tails then you should get a picture of a
doggy.

**2.**

At the bottom of the file, call `ReactDOM.render()`.

For `ReactDOM.render()`’s first argument, pass in `img`.

For `ReactDOM.render()`’s second argument, pass in
`document.getElementById('app')`.

Click Run. Refresh the browser several times. Does the picture change?

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

function coinToss() {
  // This function will randomly return either 'heads' or 'tails'.
  return Math.random() < 0.5 ? 'heads' : 'tails';
}

const pics = {
  kitty: 'https://content.codecademy.com/courses/React/react_photo-kitty.jpg',
  doggy: 'https://content.codecademy.com/courses/React/react_photo-puppy.jpeg'
};
let img;

// if/else statement begins here:
if (coinToss() === 'heads') {
  img = (
    <img src={pics.kitty} />
  );
} else {
  img = ( 
    <img src={pics.doggy} />
  );
}

ReactDOM.render(img, document.getElementById('app'));
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

let message;

if (user.age >= drinkingAge) {
  message = (
    <h1>
      Hey, check out this alcoholic beverage!
    </h1>
  );
} else {
  message = (
    <h1>
      Hey, check out these earrings I got at Claire's!
    </h1>
  );
}

ReactDOM.render(
  message, 
  document.getElementById('app')
);
```

## JSX Conditionals: The Ternary Operator

There’s a more compact way to write conditionals in JSX: the *ternary
operator*.

The ternary operator works the same way in React as it does in regular
JavaScript. However, it shows up in React surprisingly often.

Recall how it works: you write `x ? y : z`, where x, y, and z are all
JavaScript expressions. When your code is executed, `x` is evaluated as
either “truthy” or “falsy.” If `x` is truthy, then the entire ternary
operator returns `y`. If `x` is falsy, then the entire ternary operator
returns `z`. <a
href="http://stackoverflow.com/questions/6259982/how-to-use-the-ternary-operator-in-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Here’s</a> a nice explanation if you need
a refresher.

Here’s how you might use the ternary operator in a JSX expression:

``` jsx
const headline = (
  <h1>
    { age >= drinkingAge ? 'Buy Drink' : 'Do Teen Stuff' }
  </h1>
);
```

In the above example, if `age` is greater than or equal to
`drinkingAge`, then `headline` will equal `<h1>Buy Drink</h1>`.
Otherwise, `headline` will equal `<h1>Do Teen Stuff</h1>`.

### Instructions

**1.**

Take a look at **app.js**.

On line 14, replace x, y, and z with the following three expressions.
You have to decide which is x, which is y, and which is z:

``` jsx
'doggy'
 
'kitty'
 
coinToss() === 'heads'
```

`'heads'` should return `'kitty'`, and `'tails'` should return
`'doggy'`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

function coinToss () {
  // Randomly return either 'heads' or 'tails'.
  return Math.random() < 0.5 ? 'heads' : 'tails';
}

const pics = {
  kitty: 'https://content.codecademy.com/courses/React/react_photo-kitty.jpg',
  doggy: 'https://content.codecademy.com/courses/React/react_photo-puppy.jpeg'
};

const img = <img src={pics[coinToss() === 'heads' ? 'kitty' : 'doggy']} />;

ReactDOM.render(
    img, 
    document.getElementById('app')
);
```

## JSX Conditionals: &&

We’re going to cover one final way of writing conditionals in React: the
`&&` operator.

Like the ternary operator, `&&` is not React-specific, but it shows up
in React surprisingly often.

In the last two lessons, you wrote statements that would sometimes
render a kitty and other times render a doggy. `&&` would *not* have
been the best choice for those lessons.

`&&` works best in conditionals that will sometimes do an action, but
other times do *nothing at all*.

Here’s an example:

``` jsx
const tasty = (
  <ul>
    <li>Applesauce</li>
    { !baby && <li>Pizza</li> }
    { age > 15 && <li>Brussels Sprouts</li> }
    { age > 20 && <li>Oysters</li> }
    { age > 25 && <li>Grappa</li> }
  </ul>
);
```

If the expression on the left of the `&&` evaluates as true, then the
JSX on the right of the `&&` will be rendered. If the first expression
is false, however, then the JSX to the right of the `&&` will be ignored
and not rendered.

### Instructions

**1.**

You’ve been building a React website all about your favorite foods!

You’re excited to share your website with your friends, and yet at the
same time, you fear the cruel, icy harshness of their judgment.

On line 13, use the `&&` operator to make it so that this expression:

``` jsx
<li>Nacho Cheez Straight Out The Jar</li>
```

…will only appear if `!judgmental`. Feel free to use the example code as
a guide.

Once you click Run, then every time that you refresh the browser, there
will be a 50% chance that `judgmental` will be `true`. Refresh until you
see both versions of your list.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

// judgmental will be true half the time.
const judgmental = Math.random() < 0.5;

const favoriteFoods = (
  <div>
    <h1>My Favorite Foods</h1>
    <ul>
      <li>Sushi Burrito</li>
      <li>Rhubarb Pie</li>
      {!judgmental && <li>Nacho Cheez Straight Out The Jar</li>}
      <li>Broiled Grapefruit</li>
    </ul>
  </div>
);

ReactDOM.render(
    favoriteFoods, 
    document.getElementById('app')
);
```

## .map in JSX

The array method `.map()` comes up often in React. It’s good to get in
the habit of using it alongside JSX.

If you want to create a list of JSX elements, then `.map()` is often
your best bet. It can look odd at first:

``` jsx
const strings = ['Home', 'Shop', 'About Me'];
 
const listItems = strings.map(string => <li>{string}</li>);
 
<ul>{listItems}</ul>
```

In the above example, we start out with an array of strings. We call
`.map()` on this array of strings, and the `.map()` call returns a new
array of `<li>`s.

On the last line of the example, note that `{listItems}` will evaluate
to an array, because it’s the returned value of `.map()`! JSX `<li>`s
don’t have to be in an array like this, but they *can* be.

``` jsx
// This is fine in JSX, not in an explicit array:
 
<ul>
  <li>item 1</li>
  <li>item 2</li>
  <li>item 3</li>
</ul>
 
// This is also fine!
 
const liArray = [
  <li>item 1</li>, 
  <li>item 2</li>, 
  <li>item 3</li>
];
 
<ul>{liArray}</ul>
```

### Instructions

**1.**

You can see that a `.map()` call is partially set up.

On line 8, write an expression to complete the `.map()` call. This
expression should consist of an `<li></li>`, containing the `person`
parameter. Feel free to use the first example as a guide.

**2.**

On line 12, call `ReactDOM.render()`.

For `ReactDOM.render()`’s first argument, write a `<ul></ul>`. In
between the `<ul>` tags, use curly braces to inject the `peopleLis`
variable.

For `ReactDOM.render()`’s second argument, use
`document.getElementById('app')`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const people = ['Rowe', 'Prevost', 'Gare'];

const peopleLis = people.map(person =>
  // expression goes here:
  <li>{person}</li>
);

// ReactDOM.render goes here:
ReactDOM.render(<ul>{peopleLis}</ul>, document.getElementById('app'));
```

## Keys

When you make a list in JSX, sometimes your list will need to include
something called `keys`:

``` jsx
<ul>
  <li key="li-01">Example1</li>
  <li key="li-02">Example2</li>
  <li key="li-03">Example3</li>
</ul>
```

A `key` is a JSX attribute. The attribute’s *name* is `key`. The
attribute’s *value* should be something unique, similar to an `id`
attribute.

`keys` don’t do anything that you can see! React uses them internally to
keep track of lists. If you don’t use keys when you’re supposed to,
React might accidentally scramble your list-items into the wrong order.

Not all lists need to have `keys`. A list needs `keys` if either of the
following are true:

1.  The list-items have *memory* from one render to the next. For
    instance, when a to-do list renders, each item must “remember”
    whether it was checked off. The items shouldn’t get amnesia when
    they render.

2.  A list’s order might be shuffled. For instance, a list of search
    results might be shuffled from one render to the next.

If neither of these conditions are true, then you don’t have to worry
about `keys`. If you aren’t sure then it never hurts to use them!

### Instructions

**1.**

On line 8, give your `<li></li>` a `key` attribute.

What should `key`’s *value* be?

Each `key` must be a unique string that React can use to correctly pair
each rendered element with its corresponding item in the array.

So, for each element in `people`, we must generate a unique value. How
can you get `.map()` to produce unique keys?

First, add an `i` parameter to `.map()`’s inner function, so that you
can access each person’s unique index:

``` jsx
const peopleLIs = people.map((person, i) =>
```

Now, you can get a unique key on each loop, by adding the following
attribute to your `<li></li>`:

``` jsx
key={'person_' + i}
```

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const people = ['Rowe', 'Prevost', 'Gare'];

const peopleLis = people.map(person =>
  // expression goes here:
  <li>{person}</li>
);

// ReactDOM.render goes here:
ReactDOM.render(<ul>{peopleLis}</ul>, document.getElementById('app'));
```

## React.createElement

You can write React code without using JSX at all!

The majority of React programmers do use JSX, and we will use it for the
remainder of this tutorial, but you should understand that it is
possible to write React code without it.

The following JSX expression:

``` jsx
const h1 = <h1>Hello world</h1>;
```

can be rewritten without JSX, like this:

``` jsx
const h1 = React.createElement(
  "h1",
  null,
  "Hello world"
);
```

When a JSX element is compiled, the compiler *transforms* the JSX
element into the method that you see above: `React.createElement()`.
Every JSX element is secretly a call to `React.createElement()`.

We won’t go in-depth into how `React.createElement()` works, but you can
start with the <a
href="http://facebook.github.io/react/docs/top-level-api.html#react.createelement"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a> if you’d like to learn
more!

### Instructions

**1.**

Take a look at the following JSX element:

``` jsx
const greatestDivEver = <div>i am div</div>;
```

In **app.js**, create the element above *without* using JSX. Use the
example as a guide.

### Solution

``` jsx
const greatestDivEver = React.createElement(
    'div',
  null,
  'i am div'
);
```

## JSX Recap

Congratulations! You have completed the unit on JSX.

You have learned a wide variety of JSX concepts. If you don’t feel like
you’ve mastered them all yet, that’s okay! These concepts will come up
again and again throughout this course, and the following courses.

You are now ready to put your JSX knowledge to use! It’s time to move on
to the next major topic: React Components.

# Animal Fun Facts

In this project, we’ll build a program that allows users to click an
animal on the screen in order to have a fun fact pop up.

<img
src="https://content.codecademy.com/courses/React/react_jsx_project_preview.gif"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="title" />

Our program will display a selection of animals on the screen. We’ll be
allowed to decide if we want to include a background or not. Clicking an
animal will cause a fact to be randomly selected from a list of
potential options. The selected fact will pop up on the screen. As we
keep clicking, we’ll be able to see different facts.

Let’s get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click **“Get Unstuck”** to **see a project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Add a Title

1\.

On line 1 in **app.js** you should see an import statement. This is
importing the `animals` object from **animals.js**. Feel free to take a
look at it now, but we’ll be coming back to it in later tasks.

For now, let’s import the React and ReactDOM libraries starting on line
2.

2\.

Add a `title` constant that will hold the value of the title. For now,
set its value to an empty string.

In addition, create an `animalFacts` constant to hold the JSX expression
that we’ll want to be compiled. Set its value to a `<h1>` element that
contains our title.

We still shouldn’t see anything in the browser yet! We’ll have to wait
until we write our `ReactDOM.render()` method before anything shows up.

3\.

We could fill in the empty string assigned to `title` if we wanted, but
we could also leave it blank and let the JSX use a default value
instead.

Using the ternary operator, let the `<h1>` heading use ‘Click an animal
for a fun fact’ as the default if `title` is an empty string.

4\.

It’s time to write our `ReactDOM.render()` method.

Let’s pass in `animalFacts` as the JSX expression that we want to be
compiled and rendered. Click on **index.html** to find out what we
should pass to `document.getElementById()`.

When finished, click Save. If all goes well, we should see the text
‘Click an animal for a fun fact!’ appear on the screen!

## Add a Background

5\.

Let’s add a background!

Somewhere above where `animalFacts` is defined, create a constant named
`background`. Set its value to a `<img />` element.

Now let’s give it some attributes!

- Give it a class of `'background'`
- Let’s use `'ocean'` for `alt`.
- Finally, use `'/images/ocean.jpg'` as the value of `src`.

6\.

Let’s reformat the JSX expression stored in `animalFacts` to include the
`background` variable.

Wrap the current `<h1>` element and our new `background` variable inside
of `<div></div>` tags. Since the expression is going to be multiple
lines, wrap it in parentheses.

Click Save. If everything is working as it should, we should see our
background image showing up underneath the title!

## Add an Array of Images

7\.

Use a <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...in"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">for…in</code></a> loop to iterate
over the `animals` object that we’re importing on line 1. Before the
`animalFacts` definition, define an `images` array. For each animal, add
a new `<img />` to that array.

Assuming `animal` is the placeholder variable in your `for...in` loop,
each image should have the following attributes:

- `key`: `{animal}`
- `className`: `'animal'`
- `alt`: `{animal}`
- `src`: `{animals[animal].image}`
- `aria-label`: `{animal}`
- `role`: `'button'`

8\.

Now that we have our array of images, let’s inject it into the JSX
expression.

Within the `animalFacts` JSX, underneath `{background}`, create a
`<div>`. Give it a `className` attribute and set it equal to
`'animals'`. Nest the array of images inside of this element.

Finally, click Save. We should see our animals!

## Adding Fun Facts

9\.

Now that we have our animals displaying on the screen, we’re ready to
add an event listener! But first, let’s write a function to handle this
event.

1.  Create a function `displayFact()` that takes one parameter `e`, the
    event. We want this function to pick a random fun fact based on the
    selected animal.
2.  Inside of the function, use `e.target.alt` to get the name of the
    animal being clicked.
3.  Generate a random index and use it to access an element in the
    animal’s `.facts` array.
4.  Save the fun fact in a variable.

10\.

We need a place to display our fact. Create an empty `<p>` element in
`animalFacts` and give it an `id` attribute equal to `'fact'`.

11\.

We’ll need to include the event listener with each `<img>` and edit the
event listener so that it displays the fact in our new `<p>` element.

1.  In the `for...in` loop, inside each `<img>`, add an `onClick` event
    listener that calls `displayFact`.

2.  Inside `displayFact()` use `document.getElementById('fact')` to grab
    the `<p>` element where we’ll add our fact. Change the `.innerHTML`
    of the `<p>` element to our randomly selected fact.

Now save the code and click on an animal. We should see a fact pop up on
the screen!

## Extra Credit

12\.

Let’s add one last feature to our awesome app!

Create a `showBackground` constant. You can set its value to either
`true` or `false`.

If `showBackground` is `true`, `background` should show up. If it’s
`false`, it should not. Use the `&&` operator in `animalFacts` to
implement this feature.

Toggle the value of `showBackground` between `true` and `false` and save
the code to see if you got it working!

**BONUS:** In addition to the AND `&&` operator, we can use the OR `||`
operator. Given a list of variables or expressions, `||` will return the
value of the first one whose boolean evaluates to `true`.

Considering the boolean of an empty string is `false` can you think of a
way to use `||` to replace the ternary operator in the heading?

### [Solution](js-react-animal-fun-facts)

[Learn React JSX Animal Fun
Facts](https://www.youtube.com/watch?v=81mybnZPHDg)

# Your First React Component

## Hello World, Part II… THE COMPONENT

React applications are made out of *components.*

What’s a component?

A component is a small, reusable chunk of code that is responsible for
one job. That job is often to render some HTML.

Take a look at the code below. This code will create and render a new
React component:

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
 
class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
};
 
ReactDOM.render(
  <MyComponentClass />,
  document.getElementById('app')
);
```

A lot of that code is probably unfamiliar. However, you can recognize
some JSX in there, as well as `ReactDOM.render()`.

We are going to unpack that code, one small piece at a time. By the end
of this lesson, you’ll understand how to build a React component!

> **A note from the Curriculum Developers**: In this course, we teach
> both <a
> href="https://reactjs.org/docs/components-and-props.html#function-and-class-components"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">class components and function
> components</a>. We start with class components because they are still
> widely used in legacy code, are common in tutorials/documentation
> found online, and are required for a few specific use-cases. In the
> module on Hooks, we introduce function components which are the
> recommended way of creating React components. From that point on, we
> use function components throughout the remainder of our React content.

### Instructions

**1.**

Carefully copy the example code into **app.js**.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
};

ReactDOM.render(
  <MyComponentClass />,
  document.getElementById('app')
);
```

## Import React

Wooo! Your first React component!

In the last exercise, we started by importing from `react`. The line
that did this is:

``` jsx
import React from 'react';
```

This creates an object named `React` which contains methods necessary to
use the React library.

Later, we’ll go over where the React library is imported from, and how
the importing process works. For now, just know that this is how we
import the React library.

You’ve already seen one of the methods contained in the React library:
`React.createElement()`. Recall that when a JSX element is *compiled*,
it transforms into a `React.createElement()` call.

For this reason, you *have to* import the React library, and save it in
a variable named `React`, before you can use any JSX at all.
`React.createElement()` must be available in order for JSX to work.

### Instructions

**1.**

On line 1, use `import` to import the React library. Save the library in
a variable named `React`.

### Solution

``` jsx
import React from 'react';
```

## Import ReactDOM

In order to create our first component, we next imported the ReactDOM:

``` jsx
import ReactDOM from 'react-dom';
```

This line of code is very similar to line 1.

Both import JavaScript objects. In both lines, the imported object
contains React-related methods.

However, there is a difference!

The methods imported from `'react-dom'` are meant for interacting with
the DOM. You are already familiar with one of them: `ReactDOM.render()`.

The methods imported from `'react'` don’t deal with the DOM at all. They
don’t engage directly with anything that isn’t part of React.

To clarify: the DOM is *used* in React applications, but it isn’t *part*
of React. After all, the DOM is also used in countless non-React
applications. Methods imported from `'react'` are only for pure React
purposes, such as creating components or writing JSX elements.

### Instructions

**1.**

Import the `ReactDOM` library on line 2. Store the result in a variable
named `ReactDOM`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
```

## Create a Component Class

You’ve learned that a *React component* is a small, reusable chunk of
code that is responsible for one job, which often involves rendering
HTML.

Here’s another fact about components: we can use a JavaScript class to
define a new React component. We can also define components with
JavaScript functions, but we’ll focus on *class components* first.

All class components will have some methods and properties in common
(more on this later). Rather than rewriting those same properties over
and over again every time, we extend the `Component` class from the
React library. This way, we can use code that we import from the React
library, without having to write it over and over again ourselves.

After we *define* our class component, we can use it to *render* as many
instances of that component as we want.

What *is* `React.Component`, and how do you use it to make a component
class?

`React.Component` is a JavaScript *class*. To create your own component
class, you must *subclass* `React.Component`. You can do this by using
the syntax `class YourComponentNameGoesHere extends React.Component {}`.

JavaScript classes and subclassing are a complex topic beyond the scope
of this course. If you aren’t comfortable with them, here are some good
resources to consult: <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">1</a>
<a href="https://hacks.mozilla.org/2015/07/es6-in-depth-classes/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">2</a>
<a href="https://hacks.mozilla.org/2015/08/es6-in-depth-subclassing/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">3</a>
<a href="http://exploringjs.com/es6/ch_classes.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">4</a>.

Take another look at the code from the first exercise:

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
 
class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}
 
ReactDOM.render(
    <MyComponentClass />, 
    document.getElementById('app')
);
```

A lot of it is still unfamiliar, but you can understand more than you
could before!

On line 4, you know that you are declaring a new *component class*,
which is like a factory for building React components. You know that
`React.Component` is a class, which you must subclass in order to create
a component class of your own. You also know that `React.Component` is a
property on the object which was returned by `import React from 'react'`
on line 1.

### Instructions

**1.**

Skip line 3. On line 4, declare a new *component class* by writing
`class x extends React.Component {}`.

Don’t put anything between the curly braces just yet!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class x extends React.Component {
  
}
```

## Name a Component Class

Good! Subclassing `React.Component` is the way to declare a new
*component class*.

When you declare a new component class, you need to give that component
class a *name.* On our finished component, our component class’s name
was `MyComponentClass`:

``` jsx
class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}
```

Component class variable names must begin with capital letters!

This adheres to JavaScript’s class syntax. This naming convention is
also seen in other languages that write <a
href="https://en.wikipedia.org/wiki/Naming_convention_(programming)#Java"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">class names in UpperCamelCase, like
Java</a>.

In addition, there is a React-specific reason why component class names
must always be capitalized. We’ll get to that soon!

### Instructions

**1.**

Edit your code so that your component class is named `MyComponentClass`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class MyComponentClass extends React.Component {
  
}
```

## Component Class Instructions

Let’s review what you’ve learned so far! Find each of these points in
**app.js:**

- On line 1, `import React from 'react'` creates a JavaScript object.
  This object contains properties that are needed to make React work,
  such as `React.createElement()` and `React.Component`.

- On line 2, `import ReactDOM from 'react-dom'` creates another
  JavaScript object. This object contains methods that help React
  interact with the DOM, such as `ReactDOM.render()`.

- On line 4, by subclassing `React.Component`, you create a new
  *component class*. This is not a component! A component class is more
  like a factory that produces components. When you start making
  components, each one will come from a component class.

- Whenever you create a component class, you need to give that component
  class a name. That name should be written in UpperCamelCase. In this
  case, your chosen name is `MyComponentClass`.

Something that we *haven’t* talked about yet is the *body* of your
component class: the pair of curly braces after `React.Component`, and
all of the code between those curly braces.

Like all JavaScript classes, this one needs a body. The body will act as
a set of instructions, explaining to your component class how it should
build a React component.

Here’s what your class body would look like on its own, without the rest
of the class declaration syntax. Find it in **app.js**:

``` jsx
{
  render() {
    return <h1>Hello world</h1>;
  }
}
```

That doesn’t look like a set of instructions explaining how to build a
React component! Yet that’s exactly what it is.

Click Next, and we’ll go into how these instructions work.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}

ReactDOM.render(
    <MyComponentClass />, 
    document.getElementById('app')
);
```

## The Render Function

A component class is like a factory that builds components. It builds
these components by consulting a set of instructions, which you must
provide. Let’s talk about these instructions!

For starters, these instructions should take the form of a class
declaration body. That means that they will be delimited by curly
braces, like this:

``` jsx
class ComponentFactory extends React.Component {
  // instructions go here, between the curly braces
}
```

The instructions should be written in typical JavaScript
<a href="http://exploringjs.com/es6/ch_classes.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">ES2015 class syntax</a>.

There is only one property that you *have to* include in your
instructions: a *render method.*

A render method is a property whose *name* is `render`, and whose
*value* is a function. The term “render method” can refer to the entire
property, or to just the function part.

``` jsx
class ComponentFactory extends React.Component {
  render() {}
}
```

A render method must contain a `return` statement. Usually, this
`return` statement returns a JSX expression:

``` jsx
class ComponentFactory extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}
```

Of course, none of this explains the *point* of a render method. All you
know so far is that its name is `render`, it needs a return statement
for some reason, and you have to include it in the body of your
component class declaration. We’ll get to the ‘why’ of it soon!

### Instructions

**1.**

Place the cursor in between the curly braces at the end of line 4, and
hit `return`. Lines 4 through 6 should now look like this:

``` jsx
class MyComponentClass extends React.Component {
 
}
```

On line 5, write a render method. For now, make the function’s body
empty:

``` jsx
render() {}
```

**2.**

Now let’s fill out that `render` method.

Inside of the render method’s body, write a `return` statement that
returns the JSX expression `<h1>Hello world</h1>`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}
```

## Create a Component Instance

`MyComponentClass` is now a working *component class!* It’s ready to
follow its instructions and make some React components.

So, let’s make a React component! It only takes one more line:

``` jsx
<MyComponentClass />
```

To make a React component, you write a *JSX element.* Instead of naming
your JSX element something like `h1` or `div` like you’ve done before,
give it the same name as a *component class*. Voilà, there’s your
*component instance!*

JSX elements can be either HTML-like, or *component instances*. JSX uses
capitalization to distinguish between the two! *That* is the
React-specific reason why component class names must begin with capital
letters. In a JSX element, that capitalized first letter says, “I will
be a component instance and not an HTML tag.”

### Instructions

**1.**

On line 11, create an *instance* of `MyComponentClass`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}

// component goes here:
ReactDOM.render(<MyComponentClass />, document.getElementById('app'));
```

## Render A Component

You have learned that a component class needs a set of instructions,
which tell the component class how to build components. When you make a
new component class, these instructions are the body of your class
declaration:

``` jsx
class MyComponentClass extends React.Component
{ // everything in between these curly-braces is instructions for how to build components
 
  render() {
    return <h1>Hello world</h1>;
  }
}
```

This class declaration results in a new component class, in this case
named `MyComponentClass`. `MyComponentClass` has one method, named
`render`. This all happens via standard JavaScript class syntax.

You *haven’t* learned how these instructions actually work to make
components! When you make a component by using the expression
`<MyComponentClass />`, what do these instructions do?

Whenever you make a component, that component *inherits* all of the
methods of its component class. `MyComponentClass` has one method:
`MyComponentClass.render()`. Therefore, `<MyComponentClass />` also has
a method named `render`.

You could make a million different `<MyComponentClass />` instances, and
each one would inherit this same exact `render` method.

This lesson’s final exercise is to *render* your component. In order to
render a component, that component needs to have a method named
`render`. Your component has this! It *inherited* a method named
`render` from `MyComponentClass`.

Since your component has a render method, all that’s left to do is call
it. This happens in a slightly unusual way.

To call a component’s `render` method, you pass that component to
`ReactDOM.render()`. Notice your component, being passed as
`ReactDOM.render()`’s first argument:

``` jsx
ReactDOM.render(
  <MyComponentClass />,
  document.getElementById('app')
);
```

`ReactDOM.render()` will tell `<MyComponentClass />` to call *its*
render method.

`<MyComponentClass />` will call its render method, which will return
the JSX element `<h1>Hello world</h1>`. `ReactDOM.render()` will then
take that resulting JSX element, and add it to the virtual DOM. This
will make “Hello world” appear on the screen.

### Instructions

**1.**

Use `ReactDOM.render` to render `<MyComponentClass />`. For the second
argument, pass in `document.getElementById('app')`.

Oh, hello!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}

// component goes here:
ReactDOM.render(<MyComponentClass />, document.getElementById('app'));
```

# Components and Advanced JSX

## Use Multiline JSX in a Component

In this lesson, you will learn some common ways that JSX and React
components work together. You’ll get more comfortable with both JSX and
components, while picking up some new tricks.

Take a look at this HTML:

``` jsx
<blockquote>
  <p>
    The world is full of objects, more or less interesting; I do not wish to add any more.
  </p>
  <cite>
    <a target="_blank"
      href="https://en.wikipedia.org/wiki/Douglas_Huebler">
      Douglas Huebler
    </a>
  </cite>
</blockquote>
```

How might you make a React component that renders this HTML?

Select **QuoteMaker.js** to see one way of doing it.

The key thing to notice in `QuoteMaker` is the parentheses in the
`return` statement, on lines 6 and 18. Until now, your render function
`return` statements have looked like this, without any parentheses:

``` jsx
return <h1>Hello world</h1>;
```

However, a multi-line JSX expression should always be wrapped in
parentheses! That is why `QuoteMaker`’s return statement has parentheses
around it.

### Instructions

**1.**

Here’s another quote, formatted in the same way:

``` jsx
<blockquote>
  <p>
    What is important now is to recover our senses.
  </p>
  <cite>
    <a target="_blank" 
      href="https://en.wikipedia.org/wiki/Susan_Sontag">
      Susan Sontag
    </a>
  </cite>
</blockquote>
```

In **app.js**, write a React component that renders this HTML. Render
your component using `ReactDOM.render()`.

Use **QuoteMaker.js** as a guide! Remember to import `React` and
`ReactDOM` at the top of the file, and remember to `ReactDOM.render()`
your component at the bottom of the file.

If you don’t like this quote, feel free to use a different one.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class QuoteMaker extends React.Component {
  render() {
    return (
      <blockquote>
        <p>
          The world is full of objects, more or less interesting; I do not wish to add any more.
        </p>
        <cite>
          <a target="_blank"
            href="https://en.wikipedia.org/wiki/Douglas_Huebler">
            Douglas Huebler
          </a>
        </cite>
      </blockquote>
    );
  }
};

ReactDOM.render(
  <QuoteMaker />,
  document.getElementById('app')
);
```

## Use a Variable Attribute in a Component

Take a look at this JavaScript object named `redPanda`:

``` jsx
const redPanda = {
  src: 'https://upload.wikimedia.org/wikipedia/commons/b/b2/Endangered_Red_Panda.jpg',
  alt: 'Red Panda',
  width: '200px
};
```

How could you render a React component, and get a picture with
`redPanda`’s properties?

Select **RedPanda.js** to see one way to do it.

Note all of the curly-brace JavaScript injections inside of the render
function! Lines 16, 17, and 18 all use JavaScript injections.

You can, and often will, inject JavaScript into JSX inside of a render
function.

### Instructions

**1.**

Select **app.js**.

On lines 1 and 2, import `React` and `ReactDOM`.

**2.**

Starting on line 10, declare a new component class named `Owl`. `Owl`
should have a *render function* that returns an empty `<div></div>`.

Feel free to use **RedPanda.js** for guidance.

**3.**

*Nest* an `<h1></h1>` inside of your `<div></div>`.

Inside of the `<h1></h1>`, put `owl.title`. Remember, you will have to
use curly braces to access `owl.title`, since it is a JavaScript
property.

Don’t forget to wrap the whole multiline JSX expression in parentheses!

**4.**

Still inside of the `<div></div>`, make a new line after the
`<h1></h1>`.

On your new line, add an `<img />` element.

Your `<img />` should have two attributes:

- an `src` of `owl.src`
- an `alt` of `owl.title`

**5.**

At the bottom of the file, use `ReactDOM.render()` to render an instance
of `Owl`.

`ReactDOM.render()`’s second argument should be
`document.getElementById('app')`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const redPanda = {
  src: 'https://upload.wikimedia.org/wikipedia/commons/b/b2/Endangered_Red_Panda.jpg',
  alt: 'Red Panda',
  width:  '200px'
};

class RedPanda extends React.Component {
  render() {
    return (
      <div>
        <h1>Cute Red Panda</h1>
        <img 
          src={redPanda.src}
          alt={redPanda.alt}
          width={redPanda.width} />
      </div>
    );
  }
}

ReactDOM.render(
  <RedPanda />,
  document.getElementById('app')
);
```

## Put Logic in a Render Function

A `render()` function must have a `return` statement. However, that
isn’t *all* that it can have.

A `render()` function can also be a fine place to put simple
calculations that need to happen right before a component renders.
Here’s an example of some calculations inside of a `render` function:

``` jsx
class Random extends React.Component {
  render() {
    // First, some logic that must happen
    // before rendering:
    const n = Math.floor(Math.random() * 10 + 1);
    // Next, a return statement
    // using that logic:
    return <h1>The number is {n}!</h1>;
  }
}
```

Watch out for this common mistake:

``` jsx
class Random extends React.Component {
  // This should be in the render function:
  const n = Math.floor(Math.random() * 10 + 1);
 
  render() {
    return <h1>The number is {n}!</h1>;
  }
};
```

In the above example, the line with the `const n` declaration will cause
a syntax error, as it should not be part of the class declaration
itself, but should occur in a method like `render()`.

### Instructions

**1.**

Let’s make a `render()` function with some logic in it.

On lines 1 and 2, import `React` and `ReactDOM`.

**2.**

Starting on line 20, create a new *component class* named `Friend`.
Remember, the component class declaration syntax is
`class YourClassName extends React.Component {}`

Give your component class the following render function:

``` jsx
render() {
 
  return (
    <div>
    </div>
  );
}
```

**3.**

Inside the body of the *render* function, before the `return` statement,
declare a new variable named `friend`.

Set `friend` equal to either `friends[0]`, `friends[1]`, or
`friends[2]`, depending on which friend sounds most appealing to you.

**4.**

Inside of the `return` statement, and inside of the `<div></div>`, write
a nested `<h1></h1>`.

Inside of the `<h1></h1>`, inject `friend.title`.

**5.**

Still inside of the `<div></div>`, make a new line after the
`<h1></h1>`.

On the new line, write an `<img />`.

Give the `<img />` an attribute of `src={friend.src}`.

**6.**

At the bottom of the file, use `ReactDOM.render()` to render an instance
of `Friend`. Use the example code as a guide.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const friends = [
  {
    title: "Yummmmmmm",
    src: "https://content.codecademy.com/courses/React/react_photo-monkeyweirdo.jpg"
  },
  {
    title: "Hey Guys!  Wait Up!",
    src: "https://content.codecademy.com/courses/React/react_photo-earnestfrog.jpg"
  },
  {
    title: "Yikes",
    src: "https://content.codecademy.com/courses/React/react_photo-alpaca.jpg"
  }
];

// New component class starts here:
class Friend extends React.Component {
  render() {
    let friend = friends[0];
    return (
        <div>
        <h1>{friend.title}</h1>
        <img src={friend.src} />
        </div>
    );
    }
}

ReactDOM.render(<Friend />, document.getElementById('app'));
```

## Use a Conditional in a Render Function

How might you use a *conditional* statement inside of a `render()`
function?

Select **TodaysPlan.js** to see one way of doing it.

Notice that the `if` statement is located *inside* of the render
function, but *before* the `return` statement. This is pretty much the
only way that you will ever see an `if` statement used in a render
function.

### Instructions

**1.**

Select **app.js**. You can see a variable named `fiftyFifty`.

`fiftyFifty` will equal `true` half the time and `false` half the time.

Starting on line 7, write a new component class named `TonightsPlan`.

If `fiftyFifty` is true, then `TonightsPlan` should render this element:

``` jsx
<h1>Tonight I'm going out WOOO</h1>
```

If `fiftyFifty` is *false*, then `TonightsPlan` should render this
element:

``` jsx
<h1>Tonight I'm going to bed WOOO</h1>
```

Use `TodaysPlan` as a guide, but you don’t have to stick to it exactly.
There are many valid ways to solve this problem using a conditional.

**2.**

Render an instance of `TonightsPlan` and see what fate has in store.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class TodaysPlan extends React.Component {
  render() {
    let task;
    if (!apocalypse) {
      task = 'learn React.js'
    } else {
      task = 'run around'
    }

    return <h1>Today I am going to {task}!</h1>;
  }
}

ReactDOM.render(
    <TodaysPlan />,
    document.getElementById('app')
);
```

## Use this in a Component

The word `this` gets used in React a lot!

You are especially likely to see `this` inside of the body of a
component class declaration. Here’s an example:

``` jsx
class IceCreamGuy extends React.Component {
  get food() {
    return 'ice cream';
  }
 
  render() {
    return <h1>I like {this.food}.</h1>;
  }
}
```

In the code, what does `this` mean?

Once you have a guess, scroll down to see the answer.

…

…

…

…

…

…

The simple answer is that `this` refers to an instance of `IceCreamGuy`.
The less simple answer is that `this` refers to the object on which
`this`’s enclosing method, in this case `.render()`, is called. It is
almost inevitable that this object will be an instance of `IceCreamGuy`,
but technically it could be something else.

Let’s assume that `this` refers to an instance of your component class,
as will be the case in all examples in this course. `IceCreamGuy` has
two methods: `.food` and `.render()`. Since `this` will evaluate to an
instance of `IceCreamGuy`, `this.food` will evaluate to a call of
`IceCreamGuy`’s `.food` method. This method will, in turn, evaluate to
the string “ice cream.”

Why don’t you need parentheses after `this.food`? Shouldn’t it be
`this.food()`?

You don’t need those parentheses because `.food` is a *getter* method.
You can tell this from the `get` in the above class declaration body.

There’s nothing React-specific about getter methods, nor about `this`
behaving in this way! However, in React you will see `this` used in this
way almost constantly.

`this` in JavaScript can be a difficult concept! Here is a good resource
for <a
href="https://dmitripavlutin.com/gentle-explanation-of-this-in-javascript/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">understanding <code
class="code__2rdF32qjRVp7mMVBHuPwDS">this</code> in JavaScript</a>.

### Instructions

**1.**

On line 6, add a getter method to your class body. Your getter method
should have a *name* of `name`, and a *return value* of a string:

``` jsx
get name() {
  return 'whatever-your-name-is-goes-here';
}
```

**2.**

Inside of the render function, in between the `<h1></h1>` tags, add the
text `My name is _.`.

In place of `_`, get `name` from `this` with `this.name`. Feel free to
use the example code as a guide.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class MyName extends React.Component {
    // name property goes here:
  get name() {
    return 'Rybu';
  }

  render() {
    return <h1>My name is {this.name}.</h1>;
  }
}

ReactDOM.render(<MyName />, document.getElementById('app'));
```

## Use an Event Listener in a Component

Render functions often contain event listeners. Here’s an example of an
event listener in a render function:

``` jsx
render() {
  return (
    <div onHover={myFunc}>
    </div>
  );
}
```

Recall that an event *handler* is a function that gets called in
response to an event. In the above example, the event handler is
`myFunc()`.

In React, you define event handlers as *methods* on a component class.
Like this:

``` jsx
class MyClass extends React.Component {
  myFunc() {
    alert('Stop it.  Stop hovering.');
  }
 
  render() {
    return (
      <div onHover={this.myFunc}>
      </div>
    );
  }
}
```

Notice that the component class has two methods: `.myFunc()` and
`.render()`. `.myFunc()` is being used as an *event handler*.
`.myFunc()` will be called any time that a user hovers over the rendered
`<div></div>`.

### Instructions

**1.**

In **app.js**, find the `<button></button>` inside of the render
function.

Give this `<button></button>` an `onClick` attribute. The attribute’s
*value* should be the `.scream()` method.

Feel free to use the example code as a guide.

**2.**

At the bottom of the file, render a `<Button />` using
`ReactDOM.render()`. For `ReactDOM.render()`’s second argument, pass in
`document.getElementById('app')`.

Once your component renders, click on the button in the browser.
Bone-chilling!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class Button extends React.Component {
  scream() {
    alert('AAAAAAAAHHH!!!!!');
  }

  render() {
    return <button onClick={this.scream}>AAAAAH!</button>;
  }
}

ReactDOM.render(<Button />, document.getElementById('app'));
```

## Components Recap

Congratulations! You have finished the unit on React components.

React components are complicated. Their syntax is complicated, and the
reasoning behind their syntax is especially complicated.

You have learned a lot about both their syntax and their reasoning. You
have learned about component classes and component instances. You have
learned about `React.Component`, and about the instructions that you
must provide to a component class. You have learned how to `import`, and
how to render a component instance.

You have been introduced to some common ways of using JSX in React
components. You have rendered components using multiline JSX
expressions, logic inside of the render function, a conditional
statement, `this`, and an event listener.

You have spent a lot of time studying React components in isolation!
Now, it’s time to start learning how components fit into with the world
around them.

# Authorization Form

A client just called you to say that they love their new website!
There’s only one problem: they don’t like how their contact page
displays their personal information for all to see.

They’ve asked you to hide their website’s contact page behind a password
form. In this project, you’ll accomplish this by using a React component
to set up a simple authorization layer.

Let’s get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Setting Up

1\.

Click Save to see the current state of things. The contact info in the
browser looks fine, but it should be hidden until you enter a password!

Look in the code editor. You can see a `Contact` component class.
`Contact`’s instructions object has three methods: `constructor()`,
`.authorize()`, and `.render()`.

`constructor()` is a special method. You’ll learn about it in the next
unit. For now, just know that you can check whether a user has entered
the right password by running the expression `this.state.authorized`.

2\.

Let’s start with the `<h1></h1>` in the render function.

Right now, the `<h1></h1>` displays the text `Contact`. If a user hasn’t
been authorized, then you want the `<h1></h1>` to display
`Enter the Password` instead.

Make the `<h1></h1>` display Contact only if `this.state.authorized` is
true. If `this.state.authorized` is false, then the `<h1></h1>` should
display `Enter the Password`.

3\.

The browser should say ‘Enter the Password.’

To make sure it’s working properly, edit the `constructor()` method so
that the user is authorized.

This should change the text back to ‘Contact’.

If it works, then make sure to change `authorized` back to `false`!

## The Login Form

4\.

If the user isn’t authorized, then you want them to see a login form
into which they can enter a password. Let’s make that login form!

In the `.render()` method, before the `return` statement, declare a new
variable named `login`.

Set login equal to a JSX `<form></form>` element. This `<form></form>`
is going to have multiple children, so wrap it in parentheses! Give the
`<form></form>` an attribute of `action="#"`.

5\.

Good! Now let’s give your form some `<input />`s for the user to fill
out.

In between the `<form></form>` tags, write two `<input />` tags. Give
the first `<input />` two attributes: `type="password"` and
`placeholder="Password"`. Give the second `<input />` one attribute:
`type="submit"`.

## The Contact Info

6\.

Now let’s hide the contact info.

After your `login` variable, declare another variable named
`contactInfo`. Set it equal to empty parentheses:

Cut the `<ul></ul>` out of the return statement, and paste it in between
those parentheses!

7\.

Great! By saving two JSX expressions as variables, you’ve set yourself
up nicely to toggle between them.

In the render function’s `return` statement, make a new line right below
the `<h1></h1>`. On this new line, use a ternary operator.

If `this.state.authorized` is true, make the ternary return
`contactInfo`. Otherwise, make the ternary return `login`.

## Handling the Submit

8\.

On lines 14 through 21, you can see a method named `.authorize()`.

This method will check whether a submitted password is equal to
‘swordfish’. If it is, then `this.state.authorized` will become true.

You need `authorize` to get called whenever a user hits “Submit!”

Give the `<form></form>` an `onSubmit` attribute. Set the attribute’s
value equal to the `authorize` function.

9\.

Try entering an incorrect password and hitting *Submit*. Nothing should
happen. Now try entering `swordfish`. Your screen should change!

### Solution

``` jsx
```

# Creating a React App

Use create-react-app to bootstrap a React application on your own
computer

## Introduction

*React* is a user interface framework developed by Facebook. It has a
quickly growing developer adoption rate and was ranked as the most loved
web framework in the <a
href="https://insights.stackoverflow.com/survey/2019#most-loved-dreaded-and-wanted"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">2019 Stack Overflow developer survey</a>.
This article will walk you through setting up your first React app and
assumes you are familiar with text editors and command line navigation.

## Getting Ready

We will be using the *Node package manager (npm)*, so you will need to
have *Node* installed on your computer. To check if you have Node
installed, run this command in your terminal:

``` jsx
node -v
```

If you have Node installed, this command will return a version number,
like `v12.18.1`.

If it’s not already installed, follow the steps in <a
href="https://www.codecademy.com/content-items/c4fe3060dbc61fc82d810c4ea06c29a8"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Setting Up Node Locally</a> before moving on.

When you install Node, you automatically get npm installed on your
computer as well. However, npm is a separate project from Node.js, and
tends to update more frequently. As a result, even if you’ve just
installed Node (and therefore npm), it’s a good idea to update your npm.
Luckily, npm knows how to update itself!

To upgrade to the latest version of npm on \*nix (OSX, Linux, etc.), you
can run this command in your terminal:

``` jsx
sudo npm install -g npm@latest
```

To upgrade on Windows, follow the steps found
<a href="https://docs.npmjs.com/try-the-latest-stable-version-of-npm"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">in the npm documentation</a>.

## 1. Setting Up the Boilerplate Application

It is possible to manually create a React app, but Facebook has created
a Node package <a href="https://create-react-app.dev/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><em>create-react-app</em></a> to generate
a boilerplate version of a React application.

Besides providing something that works out-of-the-box, this has the
added benefit of providing a consistent structure for React apps that
you will recognize as you move between React projects. It also provides
an out-of-the-box build script and development server.

We will use *npx*, a package runner tool that comes with npm 5.2+ and
higher, to install and run `create-react-app`. This will ensure that the
latest version of create-react-app is used.

Open up your terminal.

- If you’ve previously installed `create-react-app` globally via
  `npm install -g create-react-app`, it is recommended that you
  uninstall the package first. In your terminal run these commands:

  ``` jsx
  npm uninstall -g create-react-app
  npx create-react-app myfirstreactapp
  ```

- If you’ve never installed `create-react-app` before, you can simply
  run this command:

  ``` jsx
  npx create-react-app myfirstreactapp
  ```

- If you have *Yarn* installed, `create-react-app` will use it by
  default to create new projects. If you would prefer to use npm, you
  can append `--use-npm` to the creation command. It will look like
  this:

  ``` jsx
  npx create-react-app myfirstreactapp --use-npm
  ```

(Feel free to replace `myfirstreactapp` with whatever name you want, as
long as it doesn’t contain capital letters :-))

Upon completion, you will get some quick tips on how to use the
application:

<img
src="https://content.codecademy.com/programs/react/creating-a-react-app/npm_react_commands.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="createReactAppCommands" />

Before we run the app, let’s take a look around the app structure and
see what it contains.

## 2. React App Structure

Change directories into the app you just created, and open the app in
the text editor of your choice. You should see the following file
structure:

``` jsx
myfirstreactapp
├── node_modules
├── public
│   ├── favicon.ico
│   ├── index.html
│   ├── logo192.png
│   ├── logo512.png
│   ├── manifest.json
│   └── robots.txt
├── src
│   ├── App.css
│   ├── App.js
│   ├── App.test.js
│   ├── index.css
│   ├── index.js
│   ├── logo.svg
│   ├── serviceWorker.js
│   └── setupTests.js
├── .gititgnore
├── package.json
├── package-lock.json
└── README.md
```

create-react-app has taken care of setting up the main structure of the
application as well as a couple of developer settings. Most of what you
see will not be visible to the visitor of your web app. React uses a
tool called *webpack* which transforms the directories and files here
into static assets. Visitors to your site are served those static
assets.

Don’t worry if you don’t understand too much about webpack for now. One
of the benefits of using create-react-app to set up our React
application is that we’re able to bypass any sort of manual
configuration for webpack. If you’re interested in delving deeper into
it on your own, you can find a
<a href="https://webpack.js.org/concepts/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">high-level overview of webpack’s core
concepts here</a>.

**.gitignore**

This is the standard file used by the source control tool git to
determine which files and directories to ignore when committing code.
While this file exists, create-react-app did not create a git repo
within this folder. If you take a look at the file, it has taken care of
ignoring a number of items (even **.DS_Store** for Mac users):

<img
src="https://content.codecademy.com/programs/react/creating-a-react-app/react_gitignore.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="createReactAppGitIgnore" />

**package.json**

<img
src="https://content.codecademy.com/courses/React/react_setup-037-package-json.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="package_json" />

This file outlines all the settings for the React app.

- `name` is the name of your app
- `version` is the current version
- `"private": true` is a failsafe setting to avoid accidentally
  publishing your app as a public package within the npm ecosystem.
- `dependencies` contains all the required Node modules and versions
  required for the application. In the picture above, you’ll see six
  dependencies. The first three, as you may have guessed, are for the
  purpose of testing. The next two dependencies allow us to use `react`
  and `react-dom` in our JavaScript. Finally, `react-scripts` provides a
  useful set of development scripts for working with React. In the
  screenshot above, the `react` version specified is `^16.13.1`. This
  means that npm will install the most recent major version matching
  16.x.x. In contrast, you may also see something like `~1.2.3` in
  **package.json**, which will only install the most recent minor
  version matching 1.2.x.
- `scripts` specifies aliases that you can use to access some of the
  react-scripts commands in a more efficient manner. For example,
  running `npm test` in your command line will run
  `react-scripts test --env=jsdom` behind the scenes.
- You will also see two more attributes, `eslintConfig` and
  `browserslist`. Both of these are Node modules having their own set of
  values. `browserslist` provides information about browser
  compatibility of the app, while `eslintConfig` takes care of the
  <a href="https://stackoverflow.com/questions/8503559/what-is-linting"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">code linting</a>.

**node_modules**

This directory contains dependencies and sub-dependencies of packages
used by the current React app, as specified by **package.json**. If you
take a look, you may be surprised by how many there are.

Running `ls -1 | wc -l` within the **node_modules/** directory will
yield more than 800 subfolders. This folder is automatically added to
the **.gitignore** for good reason! Don’t worry, even with all these
dependencies, the basic app will only be around 50 KB after being
<a href="https://techterms.com/definition/minification"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">minified</a> and compressed for
production.

**package-lock.json**

This file contains the exact dependency tree installed in
**node_modules/**. This provides a way for teams working on private apps
to ensure that they have the same version of dependencies and
sub-dependencies. It also contains a history of changes to
**package.json**, so you can quickly look back at dependency changes.

**public**

This directory contains assets that will be served directly without
additional processing by webpack. **index.html** provides the entry
point for the web app. You will also see a favicon (header icon) and a
**manifest.json**.

The manifest file configures how your web app will behave if it is added
to an Android user’s home screen (Android users can “shortcut” web apps
and load them directly from the Android UI). You can read more about it
<a
href="https://developers.google.com/web/fundamentals/engage-and-retain/web-app-manifest/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

**src**

This contains the JavaScript that will be processed by webpack and is
the heart of the React app. Browsing this folder, you see the main App
JavaScript component (**App.js**), its associated styles (**App.css**),
and test suite (**App.test.js**). **index.js** and its styles
(**index.css**) provide an entry into the App and also kick off the
**registerServiceWorker.js**. This service worker takes care of caching
and updating files for the end-user. It allows for offline capability
and faster page loads after the initial visit. More of this methodology
is available <a
href="https://developers.google.com/web/fundamentals/primers/service-workers"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

As your React app grows, it is common to add a **components/** directory
to organize components and component-related files and a **views/**
directory to organize React views and view-related files.

## 3. Starting the React App Development Server

As was stated in the success message when you ran `create-react-app`,
you just need to run `npm start` in your app directory to begin serving
the development server. It should auto-open a tab in your browser that
points to `http://localhost:3000/` (if not, manually visit that
address). You will find yourself looking at a page resembling the
following image:

<img
src="https://content.codecademy.com/courses/React/react_setup-038-default-react-app.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="default_react_app" />

As stated, any changes to the source code will live-update here. Let’s
see that in action.

Leave the current terminal tab running (it’s busy serving the React app)
and open **src/App.js** in your favorite text editor. You’ll see what
looks like a mashup of JavaScript and HTML. This is *JSX*, which is how
React adds XML syntax to JavaScript. It provides an intuitive way to
build React components and is compiled to JavaScript at runtime. We’ll
delve deeper into this in other content, but for now, let’s make a
simple edit and see the update in the browser.

Change the main paragraph text to read `Hello Codecademy!` in **App.js**
and save the file.

<img
src="https://content.codecademy.com/courses/React/react_setup-039-app-js.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="react_setup" />

If you left the terminal running, you should be able to switch over to
your browser and see the update:

<img
src="https://content.codecademy.com/courses/React/react_setup-040-edited-react-app.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="edited_react_app" />

Congratulations! You’re now up and running with React. You can now begin
adding functionality for your application.

## Next Steps

If you’d like to learn more about create-react-app, start with the
<a href="https://create-react-app.dev/docs/getting-started"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation on the create-react-app
website</a>.

Since an important next step after creating a React App is to set up
your environment to debug it, consider checking out our <a
href="https://www.codecademy.com/paths/web-development/tracks/front-end-applications-with-react/modules/react-development-setup-and-ravenous-part-1/informationals/ready-react-developer-tools"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">React Developer Tools article</a>. There, we use the
initial skeleton created with create-react-app to get you ready to begin
debugging React Apps.

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtMWV5NTU3eS1TdmcgZW9sMnp2bTAiPjx0aXRsZT5GaWxlIFNlYXJjaCBJY29uPC90aXRsZT48cGF0aCBmaWxsPSJub25lIiBzdHJva2U9ImN1cnJlbnRDb2xvciIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTMuNzUgNi43NWgxMC41bS0xMC41IDQuNUg3LjVtLTMuNzUgNC41SDcuNW0wIDQuNUgyLjI1YTEuNSAxLjUgMCAwMS0xLjUtMS41VjIuMjVhMS41IDEuNSAwIDAxMS41LTEuNWgxMC42MjlhMS41IDEuNSAwIDAxMS4wNi40MzlsMi44NzIgMi44NzJhMS41IDEuNSAwIDAxLjQzOSAxLjA2VjcuNSI+PC9wYXRoPjxjaXJjbGUgY3g9IjE1Ljc2NCIgY3k9IjE1Ljc1IiByPSI1LjI1IiBmaWxsPSJub25lIiBzdHJva2U9ImN1cnJlbnRDb2xvciIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNSI+PC9jaXJjbGU+PHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlPSJjdXJyZW50Q29sb3IiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik0yMy4yNSAyMy4yNWwtMy43NzMtMy43ODgiPjwvcGF0aD48L3N2Zz4="
class="gamut-1ey557y-Svg eol2zvm0" />**documentation**

# Documentation: Create React App

<a href="https://create-react-app.dev/"
class="noUnderline__1DujYZeohdnOrK9vnT5gfM" target="_blank"
tabindex="0"></a>

## Create React App<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtcTF4ZDV3LVN2ZyBlb2wyenZtMCI+PHRpdGxlPk9wZW4gSWNvbjwvdGl0bGU+PHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlPSJjdXJyZW50Q29sb3IiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik0yMy4yNTEgNy40OThWLjc0OGgtNi43NW02Ljc1IDBsLTE1IDE1bTMtMTAuNWgtOWExLjUgMS41IDAgMDAtMS41IDEuNXYxNWExLjUgMS41IDAgMDAxLjUgMS41aDE1YTEuNSAxLjUgMCAwMDEuNS0xLjV2LTkiPjwvcGF0aD48L3N2Zz4="
class="gamut-q1xd5w-Svg eol2zvm0" />

The provided link goes directly to the go-to documentation for Create
React App. This is helpful if you would like further guidance in getting
up and running using the Create React App.

Instead of trying to remember it all, use the documentation as a readily
available resource for syntax or implementation help!

# Review: React, Part I

In this unit, you learned about React.

Congratulations! The goal of this unit was to introduce you to the
popular JavaScript library, React. React is a powerful tool to help you
build better, scalable front-ends for your website through the creation
of components. You also reviewed ES6 and functional JavaScript concepts
to further help in your understanding of React.

Having completed this unit, you are now able to:

- Understand ES6+ and functional JavaScript programming concepts
- Know what a Virtual DOM is and how it is used in React
- Understand JSX
- Build React components

If you are interested in learning more about these topics, here are some
additional resources:

- Documentation: <a href="https://reactjs.org/docs/getting-started.html"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">React Documentation: Getting
  Started</a>
- Tutorial: <a href="https://reactjs.org/tutorial/tutorial.html"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Intro to React</a>
- Article: <a href="https://reactjs.org/docs/thinking-in-react.html"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Thinking in React</a>
- Article: <a href="https://maggieappleton.com/react-vdom"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">What the Fork is the React Virtual
  DOM</a>
- Resource: <a href="https://github.com/enaqx/awesome-react"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Awesome React</a>
- Resource: <a href="https://github.com/facebook/create-react-app"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Create React App</a>

Learning is social. Whatever you’re working on, be sure to connect with
the Codecademy community in the
<a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like asking for code reviews
on your project work and providing code reviews to others in the
<a href="https://discuss.codecademy.com/c/project/1833"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">projects category</a>, which can help to
reinforce what you’ve learned.
