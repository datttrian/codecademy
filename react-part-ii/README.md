# Introduction: React, Part II

In this unit, you will dive further into React.

The goal of this unit is to dive further into React. You’ll learn how
React is useful in passing data between different parts of your
front-end using props and state. You’ll also learn about different ways
of managing the application state using Hooks. Finally, you’ll learn how
to test your React applications using Jest and Enzyme.

After this unit, you will be able to:

- Understand how components can affect other components
- Know how to use props
- Know how to manage state
- Know how to use Lifecycle Methods
- Deploy React applications with Netlify
- Know how to pass data between components
- Use React Hooks
- Test React applications using Jest and Enzyme

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

# Components Render Other Components

## Components Interact

A React application can contain dozens, or even hundreds, of components.

Each component might be small and relatively unremarkable on its own.
When combined, however, they can form enormous, fantastically complex
ecosystems of information.

In other words, React apps are made out of components, but what makes
React special isn’t components themselves. What makes React special is
the ways in which components *interact*.

This unit is an introduction to *components interacting*.

### Solution

[Components
Interact](https://content.codecademy.com/courses/React/react_animations-components-render-components.mp4)

## A Component in a Render Function

Here is a `.render()` method that returns an HTML-like JSX element:

``` jsx
class Example extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}
```

You’ve seen render methods return `<div></div>`s, `<p></p>`s, and
`<h1></h1>`s, just like in the above example.

Render methods can also return another kind of JSX: *component
instances.*

``` jsx
class OMG extends React.Component {
  render() {
    return <h1>Whooaa!</h1>;
  }
}
 
class Crazy extends React.Component {
  render() {
    return <OMG />;
  }
}
```

In the above example, `Crazy`’s render method `returns` an *instance* of
the `OMG` component class. You could say that `Crazy` renders an
`<OMG />`.

## Apply a Component in a Render Function

This is new territory! You’ve never seen a component rendered by another
component before.

You *have* seen a component rendered before, though, but not by another
component. Instead, you’ve seen a component rendered by
`ReactDOM.render()`.

When a component renders another component, what happens is very similar
to what happens when `ReactDOM.render()` renders a component.

### Instructions

**1.**

You can see two files in the code editor: **ProfilePage.js** and
**NavBar.js**.

In this lesson, you are going to make a `<ProfilePage />` *render* a
`<NavBar />`.

How do you do that? To start, simply make `ProfilePage`’s `render()`
method return a `<NavBar />` instance.

In **ProfilePage.js**, place a `<NavBar />` on line 9.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';


class ProfilePage extends React.Component {
  render() {
    return (
      <div>
                <NavBar />
        <h1>All About Me!</h1>
        <p>I like movies and blah blah blah blah blah</p>
        <img src="https://content.codecademy.com/courses/React/react_photo-monkeyselfie.jpg" />
      </div>
    );
  }
}
```

``` jsx
import React from 'react';

export class NavBar extends React.Component {
  render() {
    const pages = ['home', 'blog', 'pics', 'bio', 'art', 'shop', 'about', 'contact'];
    const navLinks = pages.map(page => {
      return (
        <a href={'/' + page}>
          {page}
        </a>
      )
    });

    return <nav>{navLinks}</nav>;
  }
}
```

## Require A File

When you use React.js, every JavaScript file in your application is
invisible to every other JavaScript file by default. **ProfilePage.js**
and **NavBar.js** can’t see each other.

This is a problem!

On line 9, you just added an instance of the `NavBar` component class.
But since you’re in **ProfilePage.js**, JavaScript has no idea what
`NavBar` means.

If you want to use a variable that’s declared in a different file, such
as `NavBar`, then you have to *import* the variable that you want. To
import a variable, you can use an `import` statement:

``` jsx
import { NavBar } from './NavBar.js';
```

We’ve used `import` before, but not like this! Notice the differences
between the above line of code and this familiar line:

``` jsx
import React from 'react';
```

The first important difference is the curly braces around `NavBar`.
We’ll get to those soon!

The second important difference involves the contents of the string at
the end of the statement: `'react'` vs `'./NavBar.js'`.

If you use an `import` statement, and the string at the end begins with
either a dot or a slash, then `import` will treat that string as a
*filepath*. `import` will follow that filepath, and import the file that
it finds.

If your filepath doesn’t have a file extension, then “.js” is assumed.
So the above example could be shortened:

``` jsx
import { NavBar } from './NavBar';
```

**One final, important note:**  
None of this behavior is specific to React!
<a href="http://eloquentjavascript.net/10_modules.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Module systems</a> of independent,
importable files are a very popular way to organize code.
<a href="https://hacks.mozilla.org/2015/08/es6-in-depth-modules/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React’s specific module system comes from
ES6</a>. More on all of that later.

### Instructions

**1.**

The `<NavBar />` on line 9 isn’t going to work until you *import*
**NavBar.js**.

In **ProfilePage.js**, on line 3, import `NavBar` from **NavBar.js**.
**ProfilePage.js** and **NavBar.js** are located in the same parent
directory.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { NavBar } from './NavBar';

class ProfilePage extends React.Component {
  render() {
    return (
      <div>
                <NavBar />
        <h1>All About Me!</h1>
        <p>I like movies and blah blah blah blah blah</p>
        <img src="https://content.codecademy.com/courses/React/react_photo-monkeyselfie.jpg" />
      </div>
    );
  }
}
```

## export

Alright! You’ve learned how to use `import` to grab a variable from a
file *other than* the file that is currently executing.

When you import a variable from a file that is not the current file,
then an `import` statement isn’t quite enough. You also need an `export`
statement, written in the *other* file, exporting the variable that you
hope to grab.

`export` comes from <a href="http://exploringjs.com/es6/ch_modules.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">ES6’s module system,</a> just like
`import` does. `export` and `import` are meant to be used together, and
you rarely see one without the other.

There are a few different ways to use `export`. In this course, we will
be using a style called “named exports.” Here’s how named exports works:

In one file, place the keyword `export` immediately before something
that you want to export. That something can be any top-level `var`,
`let`, `const`, `function`, or `class`:

``` jsx
// Manifestos.js:
 
export const faveManifestos = {
  futurist: 'http://www.artype.de/Sammlung/pdf/russolo_noise.pdf',
  agile: 'https://agilemanifesto.org/iso/en/manifesto.html',
  cyborg:   'http://faculty.georgetown.edu/irvinem/theory/Haraway-CyborgManifesto-1.pdf'
};
```

You can export multiple things from the same file:

``` jsx
// Manifestos.js:
 
export const faveManifestos = {
  futurist: 'http://www.artype.de/Sammlung/pdf/russolo_noise.pdf',
  agile:  'https://agilemanifesto.org/iso/en/manifesto.html',
  cyborg:   'http://faculty.georgetown.edu/irvinem/theory/Haraway-CyborgManifesto-1.pdf'
};
 
export const alsoRan = 'TimeCube';
```

In a different file, `import` the name of the `var`, `let`, `const`,
`function`, or `class` from the first file:

``` jsx
// App.js:
 
// Import faveManifestos and alsoRan from ./Manifestos.js:
import { faveManifestos, alsoRan } from './Manifestos';
 
// Use faveManifestos:
console.log(`A Cyborg Manifesto:  ${faveManifestos.cyborg}`); 
```

This style of importing and exporting in JavaScript is known as “named
exports.” When you use named exports, you always need to wrap your
imported names in curly braces, such as:

``` jsx
import { faveManifestos, alsoRan } from './Manifestos';`
```

<a href="http://exploringjs.com/es6/ch_modules.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">JavaScript’s ES6 module system</a> goes
beyond named exports and has several advanced syntax features.

### Instructions

**1.**

Select **NavBar.js**.

On line 3, add the word `export` before the word `class`. This will
export the class `NavBar`.

Now, when **ProfilePage.js** uses `import` to grab the variable `NavBar`
from **NavBar.js**, it will get back exactly what it wants: the `NavBar`
component class.

### Solution

``` jsx
import React from 'react';

export class NavBar extends React.Component {
  render() {
    const pages = ['home', 'blog', 'pics', 'bio', 'art', 'shop', 'about', 'contact'];
    const navLinks = pages.map(page => {
      return (
        <a href={'/' + page}>
          {page}
        </a>
      )
    });

    return <nav>{navLinks}</nav>;
  }
}
```

## Component Rendering In Action

Now you’re ready for `<ProfilePage />` to render `<NavBar />`!

All that’s left to do is render `<ProfilePage />`.

### Instructions

**1.**

At the bottom of **ProfilePage.js**, use `ReactDOM.render()` to render
an instance of `ProfilePage`.

For `ReactDOM.render()`’s second argument, pass in
`document.getElementById('app')`.

Once the result has rendered in the browser, look at the render methods
of both `ProfilePage` and `NavBar`. Try to figure out exactly which
parts of the browser’s display come from which component class.

**2.**

Congratulations! It may not seem like a big deal yet, but you’ve just
discovered the key to React’s power.

By nesting components inside of other components, you can build
infinitely complex architectures, even if each component is relatively
simple. The relationship that you just built is the fundamental
relationship of React.js.

When you’re ready, press **Run** to continue.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { NavBar } from './NavBar';

class ProfilePage extends React.Component {
  render() {
    return (
      <div>
                <NavBar />
        <h1>All About Me!</h1>
        <p>I like movies and blah blah blah blah blah</p>
        <img src="https://content.codecademy.com/courses/React/react_photo-monkeyselfie.jpg" />
      </div>
    );
  }
}

ReactDOM.render(<ProfilePage />, document.getElementById('app'));
```

# this.props

## this.props

Previously, you learned one way that components can interact: a
component can *render* another component.

In this lesson, you will learn another way that components can interact:
a component can *pass information* to another component.

Information that gets passed from one component to another is known as
“props.”

Click Next to enter props-land!

### Instructions

In this video, you can see the Post component passing a prop to the
Content component. The prop contains a string `'../images/atom.png'`,
which is used to display an image.

### Solution

[this.props](https://content.codecademy.com/courses/React/react_animations-this-props.mp4)

## Access a Component’s props

Every component has something called `props`.

A component’s `props` is an object. It holds information about that
component.

To see a component’s `props` object, you use the expression
`this.props`. Here’s an example of `this.props` being used inside of a
render method:

``` jsx
render() {
  console.log("Props object comin' up!");
 
  console.log(this.props);
 
  console.log("That was my props object!");
 
  return <h1>Hello world</h1>;
}
```

Most of the information in `this.props` is pretty useless! But some of
it is extremely important, as you’ll see.

### Instructions

**1.**

Look at **PropsDisplayer.js**.

On line 6, you can see a variable named `stringProps`. `stringProps` is
equal to a stringified version of `this.props`.

On line 11, *inject* `stringProps` in between the `<h2></h2>` tags.

**2.**

On line 18, call `ReactDOM.render()`.

For `ReactDOM.render()`’s first argument, pass in an *instance* of
`PropsDisplayer`.

For `ReactDOM.render()`’s second argument, pass in
`document.getElementById('app')`.

Click Run, and get ready to see `<PropsDisplayer />`’s `props` object!

… hm. Kind of a letdown, huh.

Despite what you see in the browser, `<PropsDisplayer />`’s `props`
object isn’t *really* empty. It has some properties that
`JSON.stringify` doesn’t detect. But even if you could see those
properties, the `props` object still wouldn’t have much of value to show
you right now.

But it’s there!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class PropsDisplayer extends React.Component {
  render() {
    const stringProps = JSON.stringify(this.props);

    return (
      <div>
        <h1>CHECK OUT MY PROPS OBJECT</h1>
        <h2>{stringProps}</h2>
      </div>
    );
  }
}

// ReactDOM.render goes here:
ReactDOM.render(<PropsDisplayer />, document.getElementById('app'));
```

## Pass \`props\` to a Component

You can *pass information* to a React component.

How? By giving that component an *attribute:*

``` jsx
<MyComponent foo="bar" />
```

Let’s say that you want to pass a component the message,
`"This is some top secret info."`. Here’s how you could do it:

``` jsx
<Example message="This is some top secret info." />
```

As you can see, to pass information to a component, you need a *name*
for the information that you want to pass.

In the above example, we used the name `message`. You can use any name
you want.

If you want to pass information that isn’t a string, then wrap that
information in curly braces. Here’s how you would pass an array:

``` jsx
<Greeting myInfo={["top", "secret", "lol"]} />
```

In this next example, we pass several pieces of information to
`<Greeting />`. The values that aren’t strings are wrapped in curly
braces:

``` jsx
<Greeting name="Frarthur" town="Flundon" age={2} haunted={false} />
```

### Instructions

**1.**

Inside of the `ReactDOM.render()` call, pass the string `"Hello"` to
`<PropsDisplayer />`. Give that string a *name* of `myProp`. Feel free
to use the example code as a guide.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class PropsDisplayer extends React.Component {
  render() {
    const stringProps = JSON.stringify(this.props);

    return (
      <div>
        <h1>CHECK OUT MY PROPS OBJECT</h1>
        <h2>{stringProps}</h2>
      </div>
    );
  }
}

// ReactDOM.render goes here:
ReactDOM.render(<PropsDisplayer myProp="Hello"/>, document.getElementById('app'));
```

## Render a Component’s props

You just *passed* information to a component’s `props` object!

You will often want a component to *display* the information that you
pass.

Here’s how to make a component display passed-in information:

1 - Find the *component class* that is going to receive that
information.  
2 - Include `this.props.name-of-information` in that component class’s
*render* method’s `return` statement.

### Instructions

**1.**

Let’s walk through an example!

On line 11, you can see a piece of information being passed to
`<Greeting />`. The information’s *name* is `firstName`.

How could you make `firstName` show up on the screen?

By including `this.props.firstName` somewhere in the `Greeting` class’s
render method’s `return` statement!

On line 6, in between the returned `<h1></h1>` tags, add the following
expression:

``` jsx
Hi there, {this.props.firstName}!
```

**2.**

In the `ReactDOM.render()` call, change `firstName`’s *value* to a
different string.

Click Run. Once the browser refreshes, a new name should appear on the
screen.

### Solution

``` jsx
import React from 'react';

export class Greeting extends React.Component {
  render() {
    return <h1>Hi there, {this.props.name}!</h1>;
  }
}
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Greeting } from './Greeting';

class App extends React.Component {
  render() {
    return (
      <div>
        <h1>
          Hullo and, "Welcome to The Newzz," "On Line!"
        </h1>
        <Greeting name="Ruby" />
        <article>
          Latest newzz:  where is my phone?
        </article>
      </div>
    );
  }
}

ReactDOM.render(
  <App />, 
  document.getElementById('app')
);
```

## Pass props From Component To Component

You have learned how to pass a `prop` to a component:

``` jsx
<Greeting firstName="Esmerelda" />
```

You have also learned how to access and display a passed-in `prop`:

``` jsx
render() {
  return <h1>{this.props.firstName}</h1>;
}
```

The most common use of `props` is to pass information to a component,
*from a different component*. You haven’t done that yet, but it’s very
similar to what you’ve seen already.

In this exercise, you will pass a `prop` from one component to another.

**A curmudgeonly clarification about grammar:**  
You may have noticed some loose usage of the words prop and `props`.
Unfortunately, this is pretty inevitable.

`props` is the name of the object that stores passed-in information.
`this.props` refers to that storage object. At the same time, each piece
of passed-in information is called a prop. This means that `props` could
refer to two pieces of passed-in information, or it could refer to the
object that stores those pieces of information :(

### Instructions

**1.**

Your mission is to pass a `prop` *to* a `<Greeting />` component
instance, *from* an `<App />` component instance.

If `<App />` is going to pass a `prop` *to* `<Greeting />`, then it
follows that `<App />` is going to *render* `<Greeting />`.

Since `<Greeting />` is going to be rendered by another component, that
means that `<Greeting />` needs to use an `export` statement.

In **Greeting.js**, delete this statement from line 2:

``` jsx
import ReactDOM from 'react-dom';
```

At the bottom of **Greeting.js**, remove the entire call to
`ReactDOM.render()`.

On line 3, add the word `export` to the beginning of the line, before
the word `class`:

``` jsx
export class Greeting extends...
```

**2.**

`<App />` can’t pass a prop to `<Greeting />` until **App.js** imports
the variable `Greeting`! Until then, the characters `<Greeting />` in
**App.js** might as well be nonsense.

Select **App.js**. Create a new line underneath the line
`import ReactDOM from 'react-dom';`.

On your new line, import the `Greeting` component class from
`./Greeting`. Remember to wrap `Greeting` in curly braces!

**3.**

In **App.js**, add a `<Greeting />` instance to `App`’s render method,
immediately underneath the `<h1></h1>`.

Give `<Greeting />` an attribute with a *name* of “name.” The
attribute’s *value* can be whatever you’d like.

When you click Run, `<App />` will render `<Greeting />`, and pass it a
prop!

### Solution

``` jsx
import React from 'react';

export class Greeting extends React.Component {
  render() {
    return <h1>Hi there, {this.props.name}!</h1>;
  }
}
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Greeting } from './Greeting';

class App extends React.Component {
  render() {
    return (
      <div>
        <h1>
          Hullo and, "Welcome to The Newzz," "On Line!"
        </h1>
        <Greeting name="Ruby" />
        <article>
          Latest newzz:  where is my phone?
        </article>
      </div>
    );
  }
}

ReactDOM.render(
  <App />, 
  document.getElementById('app')
);
```

## Render Different UI Based on props

Awesome! You passed a prop from a component to a different component,
accessed that prop from the receiver component, and rendered it!

You can do more with `props` than just display them. You can also use
`props` to make decisions.

In the code editor, look at the `Welcome` component class.

You can tell from `this.props.name` on line 5 that `Welcome` expects to
receive a piece of information called *name*. However, `Welcome` never
renders this piece of information! Instead, it uses the information to
make a decision.

`<Welcome />` instances will render the text
`WELCOME "2" MY WEB SITE BABYYY!!!!!`, unless the user is Mozart, in
which case they will render the more respectful  
`hello sir it is truly great to meet you`  
`here on the web`.

The passed-in *name* is not displayed in either case! The name is used
to *decide* what will be displayed. This is a common technique.

Select **Home.js** and look at the `Home` component class. What will
`<Welcome />` render to the screen?

### Instructions

**1.**

Select **Greeting.js**.

Look in `Greeting`’s render function. You can see that `Greeting` now
expects *two* props: `name` and `signedIn`.

Notice that `this.props.signedIn` is *not* located inside of a `return`
statement. This means that `Greeting` will never display the value of
`signedIn`. But `Greeting` *will* use that value to decide whether to
display a friendly greeting or “GO AWAY.”

Look at `Greeting` until you feel like you understand how it works, and
then open **App.js**.

Inside of `App`’s render function, on line 12, pass `<Greeting />` a
second `prop` of `signedIn={false}`.

**2.**

How rude! I mean, honestly.

In **App.js**, change the value of `signedIn` to make `<Greeting />`
display a friendly greeting again.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Greeting } from './Greeting';

class App extends React.Component {
  render() {
    return (
      <div>
        <h1>
          Hullo and, "Welcome to The Newzz," "On Line!"
        </h1>
        <Greeting name="Alison" signedIn={true}/>
        <article>
          Latest:  where is my phone?
        </article>
      </div>
    );
  }
}

ReactDOM.render(
  <App />, 
  document.getElementById('app')
);
```

## Put an Event Handler in a Component Class

You can, and often will, pass functions as `props`. It is especially
common to pass *event handler* functions.

In the next lesson, you will pass an event handler function as a prop.
However, you have to *define* an event handler before you can pass one
anywhere. In this lesson, you will define an event handler function.

How do you define an event handler in React?

You define an event handler as a method on the component class, just
like the *render* method.

Take a look in the code editor. On lines 4 through 8, an *event handler*
method is defined, with similar syntax as the render method. On line 12,
that event handler method is attached to an *event* (a click event, in
this case).

### Instructions

**1.**

Select **Talker.js**.

Here we have a nice function named `talk` that alerts ten thousand
“blah”s to your screen. You will eventually use `talk` as an event
handler.

There’s a problem: `talk` is defined outside of the `Talker` component
class. That’s not how we do things here in React-land!

Rewrite `talk`, so that it is a method defined in the definition of
`Talker`. Look at **Example.js** if you get stuck! Remember, do NOT
separate `talk` and `render` with a comma.

Once you’re done, delete the original `talk` function before clicking
Run.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Button } from './Button';

class Talker extends React.Component {
  talk() {
    let speech = '';
    for (let i = 0; i < 10000; i++) {
      speech += 'blah ';
    }
    alert(speech);
    }
  
  render() {
    return <Button />;
  }
}

ReactDOM.render(
  <Talker />,
  document.getElementById('app')
);
```

``` jsx
import React from 'react';

export class Button extends React.Component {
  render() {
    return (
      <button>
        Click me!
      </button>
    );
  }
}
```

## Pass an Event Handler as a prop

Good! You’ve defined a new method on the `Talker` component class. Now
you’re ready to *pass* that function to another component.

You can pass a method in the exact same way that you pass any other
information. Behold, the mighty JavaScript.

### Instructions

**1.**

Select **Talker.js**.

You want to pass `talk` from here to `<Button />`.

If you want to pass *any* prop to `<Button />`, that means that you need
to give `<Button />` an *attribute*. Let’s start there.

Inside of `Talker`’s render method, give `<Button />` the following
attribute:

``` jsx
foo="bar"
```

During the next two checkpoints, you’ll replace those values with the
values that you need! Keep them as `foo` and `"bar"` for now.

**2.**

Your goal is to pass `talk` *from* `<Talker />` *to* `<Button />`.

What `prop` *name* should you choose?

It doesn’t really matter! `prop` attributes will work with just about
any name, so long as the name follows the
<a href="https://mathiasbynens.be/notes/javascript-identifiers"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">JavaScript variable name rules.</a>

Since you’re going to pass a function named `talk`, you might as well
use `talk` as your *name*. Inside of the render method, change your
attribute name from `foo` to `talk`.

**3.**

What should your `prop` *value* be?

Your `prop` *value* should be the information that you want to pass! In
this case, you want to pass the method named `talk`.

Inside of the render method, change your attribute’s *value* to `talk`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Button } from './Button';

class Talker extends React.Component {
  talk() {
    let speech = '';
    for (let i = 0; i < 10000; i++) {
      speech += 'blah ';
    }
    alert(speech);
  }
  
  render() {
    return <Button talk={this.talk} />;
  }
}

ReactDOM.render(
  <Talker />,
  document.getElementById('app')
);
```

## Receive an Event Handler as a prop

Great! You just passed a function from `<Talker />` to `<Button />`.

In the code editor, select **Button.js**. Notice that `Button` renders a
`<button></button>` element.

If a user clicks on this `<button></button>` element, then you want your
passed-in `talk` function to get called.

That means that you need to attach `talk` to the `<button></button>` as
an *event handler*.

How do you do that? The same way that you attach any event handler to a
JSX element: you give that JSX element a special *attribute*. The
attribute’s *name* should be something like `onClick` or `onHover`. The
attribute’s *value* should be the event handler that you want to attach.

### Instructions

**1.**

In **Button.js**, add an `onClick` attribute to the render method’s
`<button></button>`.

The `onClick` attribute’s *value* should be the passed-down `talk`
function. Since you *named* your prop `talk` in the last exercise, you
can access this prop via `this.props.talk`.

Click Run. Once the browser refreshes, click on the button. Ew, how
annoying!

### Solution

``` jsx
import React from 'react';

export class Button extends React.Component {
  render() {
    return (
      <button onClick={this.props.talk}>
        Click me!
      </button>
    );
  }
}
```

## handleEvent, onEvent, and this.props.onEvent

Let’s talk about naming things.

When you pass an *event handler* as a prop, as you just did, there are
two names that you have to choose.

Both naming choices occur in the *parent* component class - that is, in
the component class that defines the event handler and passes it.

The first name that you have to choose is the name of the event handler
itself.

Look at **Talker.js**, lines 6 through 12. This is our event handler. We
chose to name it `talk`.

The second name that you have to choose is the name of the prop that you
will use to *pass* the event handler. This is the same thing as your
attribute name.

For our prop name, we also chose `talk`, as shown on line 15:

``` jsx
return <Button talk={this.talk} />;
```

These two names can be whatever you want. However, there is a naming
convention that they often follow. You don’t have to follow this
convention, but you should understand it when you see it.

Here’s how the naming convention works: first, think about what *type of
event* you are listening for. In our example, the event type was
“click.”

If you are listening for a “click” event, then you name your *event
handler* `handleClick`. If you are listening for a “keyPress” event,
then you name your event handler `handleKeyPress`:

``` jsx
class MyClass extends React.Component {
  handleHover() {
    alert('I am an event handler.');
    alert('I will be called in response to "hover" events.');
  }
}
```

Your prop name should be the word `on`, plus your event type. If you are
listening for a “click” event, then you name your prop `onClick`. If you
are listening for a “keyPress” event, then you name your prop
`onKeyPress`:

``` jsx
class MyClass extends React.Component {
  handleHover() {
    alert('I am an event handler.');
    alert('I will listen for a "hover" event.');
  }
 
  render() {
    return <Child onHover={this.handleHover} />;
  }
}
```

### Instructions

**1.**

In **Talker.js** on line 6, change the event handler’s *name* from
`talk` to `handleClick`.

**2.**

In `Talker`’s render method, change the `prop`’s *name* from `talk` to
`onClick`.

Change the prop’s *value* to reflect the fact that the event handler is
now named `handleClick`, not `talk`.

**3.**

Select **Button.js**.

Change `Button`’s render function so that it expects a prop named
`onClick`, instead of a prop named `talk`.

**4.**

One major source of confusion is the fact that names like `onClick` have
special meaning, but only if they’re used on HTML-like elements.

Look at **Button.js**. When you give a `<button></button>` an attribute
named `onClick`, then the name `onClick` has special meaning. As you’ve
learned, this special `onClick` attribute creates an *event listener*,
listening for clicks on the `<button></button>`:

``` jsx
// Button.js
 
// The attribute name onClick
// creates an event listner:
<button onClick={this.props.onClick}>
  Click me!
</button>
```

Now look at **Talker.js**. Here, when you give `<Button />` an attribute
named `onClick`, then the name `onClick` doesn’t do anything special.
The name `onClick` does *not* create an event listener when used on
`<Button />` - it’s just an arbitrary attribute name:

``` jsx
// Talker.js
 
// The attribute name onClick
// is just a normal attribute name:
<Button onClick={this.handleClick} />
```

The reason for this is that `<Button />` is not an HTML-like JSX
element; it’s a *component instance*.

Names like `onClick` only create event listeners if they’re used on
HTML-like JSX elements. Otherwise, they’re just ordinary prop names.

Click “Run” again to complete this step.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Button } from './Button';

class Talker extends React.Component {
  handleClick() {
    let speech = '';
    for (let i = 0; i < 10000; i++) {
      speech += 'blah ';
    }
    alert(speech);
  }
  
  render() {
    return <Button onClick={this.handleClick}/>;
  }
}

ReactDOM.render(
  <Talker />,
  document.getElementById('app')
);
```

``` jsx
import React from 'react';

export class Button extends React.Component {
  render() {
    return (
      <button onClick={this.props.onClick}>
        Click me!
      </button>
    );
  }
}
```

## this.props.children

Every component’s `props` object has a property named `children`.

`this.props.children` will return everything in between a component’s
opening and closing JSX tags.

So far, all of the components that you’ve seen have been *self-closing
tags*, such as `<MyComponentClass />`. They don’t have to be! You could
write `<MyComponentClass></MyComponentClass>`, and it would still work.

`this.props.children` would return everything in between
`<MyComponentClass>` and `</MyComponentClass>`.

Look at **BigButton.js**. In *Example 1,* `<BigButton>`’s
`this.props.children` would equal the text, “I am a child of BigButton.”

In *Example 2,* `<BigButton>`’s `this.props.children` would equal a
`<LilButton />` component.

In *Example 3,* `<BigButton>`’s `this.props.children` would equal
`undefined`.

If a component has more than one child between its JSX tags, then
`this.props.children` will return those children in an array. However,
if a component has only one child, then `this.props.children` will
return the single child, *not* wrapped in an array.

### Instructions

**1.**

Select **App.js**.

Notice that `App` renders two `<List></List>` instances, and that each
`<List></List>` has at least one `<li></li>` child.

Now open **List.js**, and take a look at the `List` component class.

Think about the fact that each `List` instance is going to be rendered
with two JSX tags:

``` jsx
<List>  // opening tag
</List> // closing tag
```

…and that there will be at least one `<li></li>` child in between those
tags:

``` jsx
<List>  // opening tag
  <li></li> // child
</List> // closing tag
```

Click Run.

**2.**

You can see two list *titles* in the browser, but no list *items!* How
can you make the list-items appear?

In **List.js**, in the render function, in between `<ul></ul>` tags, add
`{this.props.children}`.

**3.**

BONUS: Each `<List></List>` instance is passed a singular title: “Living
Musician” and “Living Cat Musician,” respectively. Somehow, each
`<List></List>` counts its list-items and automatically adds an “s” to
the end of its title if the count is greater than one. We could add a
second piano cat, and the second list title would automatically
pluralize.

See if you can figure out how the instances of the `List` component
class are automatically pluralizing their titles!

### Solution

``` jsx
import React from 'react';

export class List extends React.Component {
  render() {
    let titleText = `Favorite ${this.props.type}`;
    if (this.props.children instanceof Array) {
        titleText += 's';
    }
    return (
      <div>
        <h1>{titleText}</h1>
        <ul>{this.props.children}</ul>
      </div>
    );
  }
}
```

## defaultProps

Take a look at the `Button` component class.

Notice that on line 8, `Button` expects to receive a prop named `text`.
The received `text` will be displayed inside of a `<button></button>`
element.

What if nobody passes any `text` to `Button`?

If nobody passes any `text` to `Button`, then `Button`’s display will be
blank. It would be better if `Button` could display a default message
instead.

You can make this happen by giving your component class a property named
`defaultProps`:

``` jsx
class Example extends React.Component {
  render() {
    return <h1>{this.props.text}</h1>;
  }
}
 
Example.defaultProps;
```

The `defaultProps` property should be equal to an object:

``` jsx
class Example extends React.Component {
  render() {
    return <h1>{this.props.text}</h1>;
  }
}
 
// Set defaultProps equal to an object:
Example.defaultProps = {};
```

Inside of this object, write properties for any default `props` that
you’d like to set:

``` jsx
class Example extends React.Component {
  render() {
    return <h1>{this.props.text}</h1>;
  }
}
 
Example.defaultProps = { text: 'yo' }; 
```

If an `<Example />` doesn’t get passed any text, then it will display
“yo.”

If an `<Example />` *does* get passed some text, then it will display
that passed-in text.

### Instructions

**1.**

Click Run.

What a sad, textless button! :(

**2.**

On line 15, give the `Button` component class a `defaultProps` property.
Make this property equal to an object.

Give the `defaultProps` object one property, so that `text`’s default
value is equal to `'I am a button'`.

The button’s appearance should change. Much better!

**3.**

In the `ReactDOM.render()` call, give `<Button />` the following
attribute:

``` jsx
text=""
```

Your new `prop` should override the default, making the
`<button></button>` sad again :(

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class Button extends React.Component {
  render() {
    return (
      <button>
        {this.props.text}
      </button>
    );
  }
}

// defaultProps goes here:
Button.defaultProps = { text: 'I am a button' };

ReactDOM.render(
  <Button text=""/>, 
  document.getElementById('app')
);
```

## this.props Recap

That completes our lesson on `props`. Great job sticking with it!

Here are some of the skills that you have learned:

- Passing a prop by giving an *attribute* to a component instance
- Accessing a passed-in prop via `this.props.prop-name`
- Displaying a prop
- Using a prop to make decisions about what to display
- Defining an event handler in a component class
- Passing an event handler as a prop
- Receiving a prop event handler and attaching it to an event listener
- Naming event handlers and event handler attributes according to
  convention
- `this.props.children`
- `getDefaultProps`

That’s a lot! Don’t worry if it’s all a bit of a blur. Soon you’ll get
plenty of practice!

# this.state

## State

<a
href="http://www.teach-ict.com/as_a2_ict_new/ocr/AS_G061/311_data_info_knowledge/static_dynamic_data/miniweb/pg4.htm"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Dynamic information</a> is information
that can change.

React components will often need *dynamic information* in order to
render. For example, imagine a component that displays the score of a
basketball game. The score of the game might change over time, meaning
that the score is *dynamic*. Our component will have to know the score,
a piece of dynamic information, in order to render in a useful way.

There are two ways for a component to get dynamic information: `props`
and `state`. Besides `props` and `state`, every value used in a
component should always stay exactly the same.

You just spent a long lesson learning about `props`. Now it’s time to
learn about `state`. `props` and `state` are all that you need to set up
an ecosystem of interacting React components.

Click Next to get started!

### Instructions

In this video, the Searchbar component’s state includes a `term` value,
which changes as a user inputs text in the search bar.

### Solution

[State](https://content.codecademy.com/courses/React/react_animations-this-state.mp4)

## Setting Initial State

A React component can access dynamic information in two ways: `props`
and `state`.

Unlike `props`, a component’s `state` is *not* passed in from the
outside. A component decides its own `state`.

To make a component have `state`, give the component a `state` property.
This property should be declared inside of a constructor method, like
this:

``` jsx
class Example extends React.Component {
  constructor(props) {
    super(props);
    this.state = { mood: 'decent' };
  }
 
  render() {
    return <div></div>;
  }
}
 
<Example />
```

Whoa, a constructor method? `super(props)`? What’s going on here? Let’s
look more closely at this potentially unfamiliar code:

``` jsx
constructor(props) {
  super(props);
  this.state = { mood: 'decent' };
}
```

`this.state` should be equal to an object, like in the example above.
This object represents the initial “state” of any component instance.
We’ll explain that more soon!

How about the rest of the code? `constructor` and `super` are both
features of ES6, not unique to React. There is nothing particularly
React-y about their usage here. A full explanation of their
functionality is outside of the scope of this course, but we’d recommend
<a href="https://hacks.mozilla.org/2015/07/es6-in-depth-classes/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">familiarizing</a>
<a href="http://exploringjs.com/es6/ch_classes.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">yourself</a>. It is important to note
that React components *always* have to call `super` in their
constructors to be set up properly.

Look at the bottom of the highest code example in this column.
`<Example />` has a `state`, and its `state` is equal to
`{ mood: 'decent' }`.

### Instructions

**1.**

In **App.js**, starting on line 6, add a constructor method to the `App`
component class. Give your constructor method a single parameter, named
`props`. Use the example code as a guide.

Inside of the body of your constructor method, call `super(props)`. On a
new line, still inside the body of your constructor, declare a new
property named `this.state`. Again, feel free to refer to the example
code.

`this.state` should be equal to the following object:

``` jsx
{ title: 'Best App' }
```

Make sure *not* to separate `constructor` and `render` with a comma!
Methods should never be comma-separated, if inside of a class body. This
is to emphasize the fact that classes and object literals are different.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class App extends React.Component {
    // constructor method begins here:
  constructor(props) {
    super(props);
    this.state = { title: 'Best App' };
  }
    
  render() {
    return (
      <h1>
        Wow this entire app is just an h1.
      </h1>
    );
  }
}
```

## Access a Component’s state

To *read* a component’s `state`, use the expression
`this.state.name-of-property`:

``` jsx
class TodayImFeeling extends React.Component {
  constructor(props) {
    super(props);
    this.state = { mood: 'decent' };
  }
 
  render() {
    return (
      <h1>
        I'm feeling {this.state.mood}!
      </h1>
    );
  }
}
```

The above component class reads a property in its `state` from inside of
its `render` function.

Just like `this.props`, you can use `this.state` from any property
defined inside of a component class’s body.

### Instructions

**1.**

In **App.js**, get rid of the text inside of the `<h1></h1>`.

Instead, in between the `<h1></h1>` tags, read your `state`’s `title`
property.

**2.**

At the bottom of the file, render `<App />` using `ReactDOM.render()`.

See your component’s `state` on display. Truly, you have the best of
apps.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class App extends React.Component {
    // constructor method begins here:
  constructor(props) {
    super(props);
    this.state = { title: 'Best App' };
  }
    
  render() {
    return (
      <h1>
        {this.state.title}
      </h1>
    );
  }
}

ReactDOM.render(<App />, document.getElementById('app'));
```

## Update state with this.setState

A component can do more than just read its own state. A component can
also *change* its own state.

A component changes its state by calling the function `this.setState()`.

`this.setState()` takes two arguments: an *object* that will update the
component’s state, and a callback. You basically never need the
callback.

In the code editor, take a look at **Example.js**. Notice that
`<Example />` has a state of:

``` jsx
{
  mood:   'great',
  hungry: false
}
```

Now, let’s say that `<Example />` were to call:

``` jsx
this.setState({ hungry: true });
```

After that call, here is what `<Example />`’s state would be:

``` jsx
{
  mood:   'great',
  hungry: true
}
```

The `mood` part of the state remains unaffected!

`this.setState()` takes an object, and *merges* that object with the
component’s current state. If there are properties in the current state
that aren’t part of that object, then those properties remain how they
were.

### Solution

``` jsx
import React from 'react';

class Example extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      mood:   'great',
      hungry: false
    };
  }

  render() {
    return <div></div>;
  }
}

<Example />
```

## Call this.setState from Another Function

The most common way to call `this.setState()` is to call a custom
function that *wraps* a `this.setState()` call. `.makeSomeFog()` is an
example:

``` jsx
class Example extends React.Component {
  constructor(props) {
    super(props);
    this.state = { weather: 'sunny' };
    this.makeSomeFog = this.makeSomeFog.bind(this);
  }
 
  makeSomeFog() {
    this.setState({
      weather: 'foggy'
    });
  }
}
```

Notice how the method `makeSomeFog()` contains a call to
`this.setState()`.

You may have noticed a weird line in there:

``` jsx
this.makeSomeFog = this.makeSomeFog.bind(this);
```

This line is necessary because `makeSomeFog()`’s body contains the word
`this`. We’ll talk about it more soon!

Let’s walk through how a function wrapping `this.setState()` might work
in practice. In the code editor, read **Mood.js** all the way through.

Here is how a `<Mood />`’s state would be set:

1.  A user triggers an *event* (in this case a click event, triggered by
    clicking on a `<button></button>`).

2.  The event from Step 1 is being listened for (in this case by the
    `onClick` attribute on line 20).

3.  When this listened-for event occurs, it calls an *event handler*
    function (in this case, `this.toggleMood()`, called on line 20 and
    defined on lines 11-14).

4.  Inside of the body of the *event handler*, `this.setState()` is
    called (in this case on line 13).

5.  The component’s `state` is changed!

Due to the way that event handlers are bound in JavaScript,
`this.toggleMood()` loses its `this` when it is used on line 20.
Therefore, the expressions `this.state.mood` and `this.setState` on
lines 12 and 13 won’t mean what they’re supposed to… *unless* you have
already bound the correct `this` to `this.toggleMood`.

That is why we must bind `this.toggleMood` to `this` on line 8.

For an in-depth explanation of this kind of binding trickery, begin with
<a href="https://facebook.github.io/react/docs/handling-events.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the React docs</a>. For the less curious,
just know that in React, whenever you define an event handler that uses
`this`, you need to add `this.methodName = this.methodName.bind(this)`
to your constructor function.

Look at the statement on line 12. What does that do?

Line 12 declares a `const` named `newMood` equal to the opposite of
`this.state.mood`. If `this.state.mood` is “good”, then `newMood` will
be “bad,” and vice versa.

A `<Mood />` instance would display “I’m feeling good!” along with a
button. Clicking on the button would change the display to “I’m feeling
bad!” Clicking again would change back to “I’m feeling good!”, etc. Try
to follow the step-by-step walkthrough in **Mood.js** and see how all of
this works.

One final note: you *can’t* call `this.setState()` from inside of the
render function! We’ll explain why in the next exercise.

### Instructions

**1.**

In the code editor, select **Toggle.js**.

Before the render method, give `Toggle` a `constructor()` method.
`Toggle`’s `constructor()` method should have one parameter, named
`props`.

Inside the body of the your constructor method, call `super(props)`;

On a new line, still inside the body of your constructor method, set
`this.state` equal to this object: `{ color: green }`. Use the example
as a guide.

Don’t put `green` in quotes! `green` should not be a string, it should
be a reference to the variable declared on line 4.

**2.**

Inside of `Toggle`’s render method, give the `<div></div>` the following
attribute:

``` jsx
style={{background: this.state.color}}
```

Make sure to include the double curly braces! We’ll explain those in a
later lesson.

**3.**

On line 2, import the `ReactDOM` library from `react-dom`.

At the bottom of the file, render `<Toggle />` using
`ReactDOM.render()`.

Click Run and see if the background color reflects the `state`.

**4.**

In between `constructor()` and `render()`, define a new method named
`changeColor()`.

`changeColor()` should set the state’s `color` to yellow if it’s
currently green, and vice versa.

**5.**

You just wrote a component class method that called `this.setState()`.
When you write a component class method that uses `this`, then you need
to *bind* that method inside of your constructor function!

Add the following line to the end of `constructor()`:

``` jsx
this.changeColor = this.changeColor.bind(this);
```

**6.**

In **Toggle.js**, in the render method, underneath the `<h1></h1>`, add
this JSX element:

``` jsx
<button>
  Change color
</button>
```

**7.**

Now let’s make the button actually work!

Give the `<button></button>` an `onClick` attribute with a value of
`{this.changeColor}`.

Hit Run and let the browser refresh. Does clicking on the button change
the color?

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const green = '#39D1B4';
const yellow = '#FFD712';

class Toggle extends React.Component {
  constructor(props){
    super(props);
    this.state = { color: green };
    this.changeColor = this.changeColor.bind(this);
  }
  
  changeColor() {
    const newColor = this.state.color == green ? yellow : green;
    this.setState({ color: newColor });
  }
  
  render() {
    return (
      <div style={{background: this.state.color}}>
        <h1>
          Change my color
        </h1>
        <button onClick={this.changeColor}>
                Change color
                </button>
      </div>
    );
  }
}

ReactDOM.render(<Toggle />, document.getElementById('app'));
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class Mood extends React.Component {
  constructor(props) {
    super(props);
    this.state = { mood: 'good' };
    this.toggleMood = this.toggleMood.bind(this);
  }

  toggleMood() {
    const newMood = this.state.mood == 'good' ? 'bad' : 'good';
    this.setState({ mood: newMood });
  }

  render() {
    return (
      <div>
        <h1>I'm feeling {this.state.mood}!</h1>
        <button onClick={this.toggleMood}>
          Click Me
        </button>
      </div>
    );
  }
}

ReactDOM.render(<Mood />, document.getElementById('app'));
```

## this.setState Automatically Calls render

There’s something odd about all of this.

Look again at **Toggle.js**.

When a user clicks on the `<button></button>`, the `.changeColor()`
method is called. Take a look at `.changeColor()`’s definition.

`.changeColor()` calls `this.setState()`, which updates
`this.state.color`. However, even if `this.state.color` is updated from
`green` to `yellow`, that alone shouldn’t be enough to make the screen’s
color change!

The screen’s color doesn’t change until `Toggle` *renders.*

Inside of the render function, it’s this line:

``` jsx
<div style={{background:this.state.color}}>
```

that changes a virtual DOM object’s color to the new `this.state.color`,
eventually causing a change in the screen.

If you call `.changeColor()`, shouldn’t you then *also* have to call
`.render()` again? `.changeColor()` only makes it so that, the next time
that you render, the color will be different. Why can you see the new
background right away, if you haven’t re-rendered the component?

Here’s why: *Any time that you call this.setState(), this.setState()
AUTOMATICALLY calls .render() as soon as the state has changed.*

Think of `this.setState()` as actually being two things:
`this.setState()`, immediately followed by `.render()`.

*That* is why you can’t call `this.setState()` from inside of the
`.render()` method! `this.setState()` *automatically* calls `.render()`.
If `.render()` calls `this.setState()`, then an infinite loop is
created.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const green = '#39D1B4';
const yellow = '#FFD712';

class Toggle extends React.Component {
  constructor(props){
    super(props);
    this.state = { color: green };
    this.changeColor = this.changeColor.bind(this);
  }
  
  changeColor() {
    const newColor = this.state.color == green ? yellow : green;
    this.setState({ color: newColor });
  }
  
  render() {
    return (
      <div style={{background: this.state.color}}>
        <h1>
          Change my color
        </h1>
        <button onClick={this.changeColor}>
                Change color
                </button>
      </div>
    );
  }
}

ReactDOM.render(<Toggle />, document.getElementById('app'));
```

## Components Interacting Recap

In this unit, you learned how to use `import` and `export` to access one
file from another. You learned about `props` and `state`, and the
countless variations on how they work.

Before this unit, you learned about JSX, components, and how they can
work together.

A React app is basically just a lot of components, setting `state` and
passing `props` to one another. Now that you have a real understanding
of how to use `props` and `state`, you have by far the most important
tools that you need!

In future lessons, the focus will shift slightly outward. In addition to
learning more new skills, you’ll also learn your first *programming
patterns.* These large-scale strategies will help you combine what
you’ve learned and really start building.

# Random Color Picker

In this project, we’ll build a program that helps designers think of new
color schemes.

Our program will set the screen’s background to a random color. Clicking
a button will refresh to a new, random color.
<a href="https://en.wikipedia.org/wiki/Oblique_Strategies"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Random generators</a> are a well-known
tool for breaking a creative rut.

Let’s get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

1\.

Take a look at the `Random` component class. `Random`’s job is to store
a random color, and to use that color to update the screen’s background.

First, let’s store this random color as `state`.

Give `Random` a `constructor()` method. Give `constructor()` one
parameter, named `props`.

Inside the body of `constructor()`, write the line `super(props);`.

Still inside the body of `constructor()`, on a new line, set
`this.state` equal to this object:

``` jsx
{ color: [x, y, z] }
```

Instead of x, y, and z, use three numbers between 0 and 255.

2\.

Good!

Change the three numbers inside of the `color` array to three different
numbers. Click Save. The background color should change!

3\.

It would be nice to know what color we’re looking at!

In the `.render()` method, inside of the `<h1></h1>`, add the text,
`Your color is ___.`

Instead of `___`, access `this.state.color`!

4\.

That’s not a very friendly way to display a color!

In `Random`, find the method named `.formatColor()`. This method
transforms an rgb array into something a bit more readable.

Inside of the `<h1></h1>`, instead of simply using `this.state.color`,
call the `.formatColor()` function and pass in `this.state.color` as an
argument.

5\.

That’s a bit better!

A user should be able to click on a button to pick a new random color.
In the code editor, you can see a **Button.js** file. That will be your
button!

Select **Button.js**. Add the word `export` so that you are exporting
the `Button` component class.

6\.

Good! Now, if you import `Button` into **Random.js**, and you’ll get the
`Button` component class that you want.

Select **Random.js**. Near the top of the file, create a new line after
`import ReactDOM from 'react-dom';`.

On this new line, use `import` the `Button` component class.

**Button.js** and **Random.js** share the same parent directory.

7\.

Now you’re ready to render a `<Button />` instance!

Inside of `Random`’s render method, after the `<h1></h1>`, add a
`<Button />`.

Give your `<Button />` this attribute:

``` jsx
light={this.isLight()}
```

8\.

You can see your `<Button />` instance in the browser. However, clicking
it doesn’t do anything!

You need to define an *event handler* that updates `this.state.color` to
a new random color.

Give `Random` a new method named `.handleClick()`.

Inside of `.handleClick()`’s body, call `this.setState()`. As an
argument, pass `this.setState()` an object with the following property:

``` jsx
color: this.chooseColor()
```

9\.

You just created a new method, that you will eventually use as an *event
handler*. Your new method uses `this`.

That means that you need to *bind* your new method.

Add a new line to your `constructor()` method. On this new line, bind
`.handleClick()`.

10\.

Great! `this.handleClick()` will update `this.state.color` to a new,
random color.

Now that you’ve defined an *event handler*, you can pass it to another
component as a `prop`. This is a pattern that you’ll see much more of in
the next course.

In `Random`’s render method, give `<Button />` an attribute with a
*name* of `onClick`. Set `onClick`’s *value* equal to the `handleClick`
method.

11\.

Only one more step!

Select **Button.js**. In the `render` function, give the
`<button></button>` an `onClick` attribute. Set `onClick`’s *value*
equal to the passed-in prop.

12\.

Try clicking the button a few times!

If you tried to make sense of the built-in parts of `Random`, you may
have come up confused. This is because `Random` includes two special
functions that we haven’t discussed yet: `.componentDidMount()` and
`.componentDidUpdate()`.

These functions are examples of a powerful React feature called
*lifecycle methods.* You’ll learn all about lifecycle methods in
*Introduction to React.js: Part II*.

BONUS: Notice that the `<h1></h1>`’s text is white if the screen’s
background is a darker color, but the text is black if the screen’s
background is a lighter color. Similarly, the `<button></button>`
changes colors based on whether the background is dark or light. Can you
figure out how that works?

13\.

Click here for a video walkthrough from our experts to help you check
your work!

[REACT Project Random Color
Picker](https://www.youtube.com/watch?v=tiH5WiA5I2E)

### [Solution](random-color)

# React Developer Tools

Use React Developer Tools to debug your React applications.

### Introduction

Effectively debugging applications is a cornerstone of programming.
After creating a React App, an important next step is setting up your
environment to debug it. We’ll cover the basics in this article using
the initial skeleton created by using create-react-app.

This article assumes you are familiar with <a
href="https://www.codecademy.com/content-items/54c92cb96ccd75f82d11041e9bd67cf4"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">create-react-app</a> and <a
href="https://www.codecademy.com/paths/premium-fswd-react-postgres/tracks/premium-unit-2-building-your-front-end/modules/premium-developing-with-css/videos/intro-to-chrome-devtools"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Chrome DevTools</a>. We’re also going to be briefly
touching on
*<a href="https://www.codecademy.com/resources/docs/react/state"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">state</a>* and
*<a href="https://www.codecademy.com/resources/docs/react/props"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">props</a>* within a component, so it’s best if you have
a basic understanding of these concepts before proceeding with this
article!

We’ve included this article in video form too. You can watch here or
scroll down to keep reading!

[Setting up React Developer Tools on your
computer](https://www.youtube.com/watch?v=fXRB6wgeKOo)

### 1. Install React Developer Tools

Facebook created a Chrome extension to help with debugging React Apps.
It is called *React Developer Tools* and allows developers to inspect
React
<a href="https://www.codecademy.com/resources/docs/react/components"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">components</a>, view their properties, and interact with
them while looking at the application in Google Chrome. You can add this
functionality to Chrome by navigating to the extension page <a
href="https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>, selecting “Add to Chrome”, and
following the installation prompts.

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react-dev-tools-install.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="React Dev Tools installation page" />

### 2. Inspect React components

With the extension installed, if you start your React App (`npm start`)
and visit the site in Chrome, the React Developer Tools icon in the
Chrome menu bar should change from inactive:

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react_devtools_inactive.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="React Dev Tools inactive status" />

to active:

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react_devtools_active.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="React Dev Tools active status" />

This indicates that the site you are browsing is a React App in
development build. When a page is using the production build of React,
the icon will look like this:

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react-dev-tools-production-icon.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="React Dev Tools active production status" />

To open the React Developer Tools, first open Chrome DevTools (View \>
Developer \> Developer Tools). On the same banner as Elements, Sources,
Console, etc., there will be two new React tabs: *Components* and
*Profiler*. These two tabs will only appear on sites using React. (If
they’re not visible, you’ll need to click on the arrow to expand the
tabs selection.)

Click on the Components tab.

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react-dev-tools-open.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="React Dev Tools tab open" />

Right now, all we can see is `App` itself. But we want to see the
contents of `App` as well!

In the above image, you’ll see that the cursor is pointing to a gear
icon. Click the gear icon to open up the settings, and then click on the
Components tab in the pop up window.

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react-dev-tools-components-filter.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="React Dev Tools filter" />

By default, there is a filter that is causing the host (DOM) nodes to be
hidden. Delete this filter for now and then exit out of the settings
window. You can always go back into settings and apply your preferred
filters!

Now you will see a tree of `App`’s contents! As you hover over the
elements on the left, they are highlighted in the rendered view, similar
to Chrome DevTools. If you click on the elements in the left side of the
window, their properties are exposed on the right side. (If your Chrome
DevTools appear vertically on the left/right side of the window, `App`
and its contents will appear on top, and their properties will be
exposed underneath.):

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react-dev-tools-content-tree.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="React Dev Tools select" />

You can also use the search box to locate elements by name:

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react-dev-tools-search.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="React Dev Tools search" />

If you’ve played around with React Developer Tools before, you may
notice that this looks a bit different than what you remember. If that’s
the case, you may want to take a look at the
<a href="https://reactjs.org/blog/2019/08/15/new-react-devtools.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">official React documentation</a> for
what’s changed or how to get the old version back if you’re more
comfortable with that.

### 3. Modify components with JavaScript

With React Developer Tools and the console, it is possible to modify
rendered React components. This allows you to experiment with changing
component values, calling methods, and testing interaction between
components.

You can access and update a component’s `state` and `props` inside the
Components tab. Click and edit the `props` and `state` from the right
side. For `state` to show up, you’ll first need to initialize the
component with some state from inside your files.

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react-dev-tools-edit-props-state.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="React Dev Tools select component" />

It works with React Hooks, too!

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react-dev-tools-edit-hooks.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="React Dev Tools select component hooks" />

You can also do this by selecting the component, switching over to the
console view, and accessing the component using `$r`. By logging `$r`,
you could see that this was indeed the component selected.

<img
src="https://content.codecademy.com/programs/react/react-developer-tools/react-dev-tools-console.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="React Dev Tools console" />

With these tools you’re now ready to begin debugging React Apps!

For more details and practice on how to use the updated tools, check out
this <a href="https://react-devtools-tutorial.now.sh/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">interactive tutorial</a>!

**resource**

# React DevTools Sandbox

## [React DevTools](https://react-devtools-tutorial.now.sh/)

The provided link goes directly to an online sandbox environment to use
the basic features of React DevTools. This is helpful if you would like
some hands-on guidance in using React DevTools.

Use this tool as a readily available resource for implementation help!

# Stateless Components From Stateful Components

## Stateless Components Inherit From Stateful Components

Let’s learn our first *programming pattern!*

In this lesson, we’ll take a look at a simple version of a programming
pattern. The following lessons will expand upon that lesson, and by the
end, we’ll have a programming pattern in its full complexity.

Our programming pattern uses two React components: a *stateful*
component, and a *stateless* component. “Stateful” describes any
component that has a `state` property; “stateless” describes any
component that does not.

In our pattern, a *stateful* component passes its `state` down to a
*stateless* component.

Click “Next” to go to the next exercise and walk through an example!

### Instructions

In this video, in the “Before” scene, the user interface is defined by a
single, complex component.

In the “After” scene, the user interface is defined by a clear hierarchy
of components in which the stateful component, Post, passes state
information to stateless components, like User info, Content, and Stats.

### Solution

[Stateless Components Inherit From Stateful
Components](https://content.codecademy.com/courses/React/react_animations-stateless-vs-stateful.mp4)

## Build a Stateful Component Class

Let’s make a *stateful* component pass its `state` to a *stateless*
component.

To make that happen, you need two component classes: a *stateful* class,
and a *stateless* class.

### Instructions

**1.**

We’ll build the stateful class first.

On line 1 of **Parent.js**, `import` the React.js library. Store the
library in a variable named `React`.

On line 2, `import` the ReactDOM library. Store it in a variable named
`ReactDOM`.

Make lines 3 and 4 empty. You’ll add code to line 3 later.

On line 5, declare a new `Parent` component. `Parent` will represent
your *stateful* component class.

Ensure `Parent` `extend`s `React.Component`. Add this method to your
`Parent` component class:

``` jsx
render() {
  return <div></div>;
}
```

**2.**

Since `Parent` is supposed to be *stateful*, it will need to set its
initial state. That means that it will need a constructor method.

Before the render method, give `Parent` a method named `constructor`.
Give `constructor` one parameter named `props`.

Inside of `constructor()`’s body, call `super(props)`. On the next line,
still inside of `constructor()`’s body, declare a property named
`this.state` set equal to `{ name: 'Frarthur' }`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';


class Parent extends React.Component {
  constructor(props) {
    super(props);
    this.state = { name: 'Frarthur' };
  }

  render() {
    return <div></div>;
  }
}
```

## Build a Stateless Component Class

Great! You just made a *stateful* component class named `Parent`.

Now, let’s make our *stateless* component class.

### Instructions

**1.**

Select **Child.js**.

On line 1, `import` the React.js library. Store the library in a
variable named `React`.

Leave line 2 blank. On line 3, declare a new component named `Child`.
`Child` will represent your *stateless* component class.

Add the following method to your `Child` component class:

``` jsx
render() {
  return <h1></h1>;
}
```

**2.**

`Child` is going to receive a `prop` called `name`, and display that
`prop` on the screen.

How can you make a component *display* a `prop` called `name`?

- To access a `prop`, use the expression `this.props.name-of-prop`.

- To make a component *display* something, include that thing in the
  render function’s `return` statement.

You need to include `this.props.name` inside of `Child`’s render
function’s `return` statement.

Add this expression in between the `<h1></h1>` tags:

``` jsx
Hey, my name is {this.props.name}!
```

**3.**

A `<Parent />` is going to pass a `prop` to a `<Child />`.

That means that a `<Parent />` is going to *render* a `<Child />`.
Rendering is the only way for a component to pass `props` to another
component.

Any component rendered by a different component must be included in an
`export` statement.

On line 3, put the word `export` before the word `class`, so that the
line begins: `export class Child`.

**4.**

That’s it! `Child` is ready to inherit a `prop` and display it.

### Solution

``` jsx
import React from 'react';

export class Child extends React.Component {
  render() {
    return <h1>Hey, my name is {this.props.name}!</h1>;
  }
}
```

## Pass a Component’s State

A `<Parent />` is supposed to pass its `state` to a `<Child />`.

Before a `<Parent />` can pass anything to a `<Child />`, you need to
`import` `Child` into **Parent.js**.

### Instructions

**1.**

To import a local component, we will need to modify our `import` syntax
to use local files and named exports. For example, if we wanted to
import a component called `ComponentName` from a local file called
**Component.js** we would write

``` jsx
import { ComponentName } from './Component';
```

On line 3, import the `Child` component from **Child.js**.

**Parent.js** and **Child.js** share the same parent directory.

**2.**

Great! Now `Parent` is ready to pass its `state` to a `<Child />`.

Inside of `Parent`’s `.render()` method’s `return` statement, get rid of
the `<div></div>`.

Replace it with a `<Child />` instance.

Give `<Child />` an attribute with a *name* of `name`. The attribute’s
*value* should be the `name` property stored in `this.state`.

**3.**

All that’s left is to render your components!

At the bottom of **Parent.js**, call `ReactDOM.render();`.

For `ReactDOM.render()`’s first argument, pass in `<Parent />`.

For `ReactDOM.render`’s second argument, pass in
`document.getElementById('app')`.

Rendering `<Parent />` will render *both* components, because `Parent`’s
render function returns a `<Child />`. Click Run, and see the rendered
information that you passed down from `Parent`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Child } from './Child';

class Parent extends React.Component {
  constructor(props) {
    super(props);
    this.state = { name: 'Frarthur' };
  }

  render() {
    return <Child name={this.state.name} />;
  }
}

ReactDOM.render(<Parent />, document.getElementById('app'));
```

## Don’t Update props

Great work! You just passed information from a *stateful* component to a
*stateless* component. You will be doing a lot of that.

You learned earlier that a component can *change* its state by calling
`this.setState()`. You may have been wondering: how does a component
*change* its props?

The answer: it doesn’t!

A component should never update `this.props`. Look at **Bad.js** to see
an example of what not to do.

This is potentially confusing. `props` and `state` store *dynamic*
information. Dynamic information can change, by definition. If a
component can’t change its `props`, then what are `props` for?

**A React component should use `props` to store information that can be
changed, but can only be changed by a *different* component.**

**A React component should use `state` to store information that the
component itself can change.**

If that’s a bit confusing, don’t worry! The next two lessons will be
examples.

### Solution

``` jsx
import React from 'react';

class Bad extends React.Component {
  render() {
    this.props.message = 'yo'; // NOOOOOOOOOOOOOO!!!
    return <h1>{this.props.message}</h1>;
  }
}
```

# Child Components Update Their Parents’ state

## Child Components Update Their Parents’ state

How does a stateless, child component *update* the state of the parent
component? Here’s how that works:

*1*

The *parent* component class defines a method that calls
`this.setState()`.

For an example, look in **Step1.js** at the `.handleClick()` method.

*2*

The parent component binds the newly-defined method to the current
instance of the component in its constructor. This ensures that when we
pass the method to the child component, it will still update the parent
component.

For an example, look in **Step2.js** at the end of the `constructor()`
method.

*3*

Once the *parent* has defined a method that updates its state and bound
to it, the parent then passes that method down to a *child.*

Look in **Step2.js**, at the `prop` on line 28.

*4*

The *child* receives the passed-down function, and uses it as an event
handler.

Look in **Step3.js**. When a user clicks on the `<button></button>`, a
click event will fire. This will make the passed-down function get
called, which will *update* the parent’s state.

### Instructions

Click through the three files in order, and try to follow their
chronology. Whenever you’re ready, click Next and we’ll build an
example!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { ChildClass } from './ChildClass';

class ParentClass extends React.Component {
  constructor(props) {
    super(props);

    this.state = { totalClicks: 0 };
  }

  handleClick() {
    const total = this.state.totalClicks;

    // calling handleClick will 
    // result in a state change:
    this.setState(
      { totalClicks: total + 1 }
    );
  }
}
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { ChildClass } from './ChildClass';

class ParentClass extends React.Component {
  constructor(props) {
    super(props);

    this.state = { totalClicks: 0 };

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    const total = this.state.totalClicks;

    // calling handleClick will 
    // result in a state change:
    this.setState(
      { totalClicks: total + 1 }
    );
  }

  // The stateful component class passes down
  // handleClick to a stateless component class:
  render() {
    return (
      <ChildClass onClick={this.handleClick} />
    );
  }
}
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

export class ChildClass extends React.Component {
  render() {
    return (
      // The stateless component class uses
      // the passed-down handleClick function,
      // accessed here as this.props.onClick,
      // as an event handler:
      <button onClick={this.props.onClick}>
        Click Me!
      </button>
    );
  }
}
```

## Define an Event Handler

To make a child component update its parent’s `state`, the first step is
something that you’ve seen before: you must define a state-changing
method on the parent.

### Instructions

**1.**

Select **Child.js**.

Look at `Child`’s render function. It’s similar to the last lesson, but
you can see a `<select>` dropdown menu that wasn’t there before.

Click Run. Try selecting different names from the dropdown menu in the
browser.

It doesn’t work! When you select a name, that name is supposed to
replace “Frarthur” on the screen.

Look at line 8. Notice that the name inside of the `<h1></h1>` is equal
to `this.props.name`. In order to make the dropdown menu *change* the
`<h1></h1>`, you will need the dropdown menu to change the value of
`this.props.name`!

**2.**

How can you change `Child`’s `this.props.name`?

Open **Parent.js** and look at line 13.

`Parent` *renders* a `<Child />`, passing in a `name` prop. This `name`
prop is the same value that the `<Child />` displays in its `<h1></h1>`.

You need `Child`’s dropdown menu to change `Parent`’s `this.state.name`!
That will cause `<Child />` to get passed a new `name` prop, which will
change the name displayed on the screen.

In **Parent.js**, define a new function that can change
`this.state.name`:

``` jsx
changeName(newName) {
  this.setState({
    name: newName
  });
}
 
render() {
  // ...
}
```

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Child } from './Child';

class Parent extends React.Component {
  constructor(props) {
    super(props);

    this.state = { name: 'Frarthur' };
  }
  
  changeName(newName) {
    this.setState({
      name: newName
    });
  }

  render() {
    return <Child name={this.state.name} />
  }
}

ReactDOM.render(
    <Parent />,
    document.getElementById('app')
);
```

``` jsx
import React from 'react';

export class Child extends React.Component {
  render() {
    return (
      <div>
        <h1>
          Hey my name is {this.props.name}!
        </h1>
        <select id="great-names">
          <option value="Frarthur">
            Frarthur
          </option>

          <option value="Gromulus">
            Gromulus
          </option>

          <option value="Thinkpiece">
            Thinkpiece
          </option>
        </select>
      </div>
    );
  }
}
```

## Pass the Event Handler

In the last exercise, you defined a function in `Parent` that can change
`Parent`’s state.

`Parent` must pass this function down to `Child`, so that `Child` can
use it in an event listener on the dropdown menu.

### Instructions

**1.**

We now need to make sure that the `.changeName()` method will always
refer to the instance of `Parent`, even when we pass it down to `Child`
to use.

In the constructor method of `Parent`, `bind` `this.changeName` to the
current value of `this` and store it in `this.changeName`.

**2.**

Pass `.changeName()` down to `Child`!

In **Parent.js**, inside of `Parent`’s render function, add a second
attribute to `<Child />`. Give this attribute a *name* of `onChange`,
and a *value* of the `changeName` method.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Child } from './Child';

class Parent extends React.Component {
  constructor(props) {
    super(props);

    this.state = { name: 'Frarthur' };
    
    this.changeName = this.changeName.bind(this);
  }
  
  changeName(newName) {
    this.setState({
      name: newName
    });
  }

  render() {
    return <Child name={this.state.name} onChange={this.changeName} />
  }
}

ReactDOM.render(
    <Parent />,
    document.getElementById('app')
);
```

## Receive the Event Handler

You just passed a function down to `Child` that can change `Parent`’s
state!

### Instructions

**1.**

Select **Child.js**.

If a user selects a new name from the dropdown menu, then you want
`Child` to call `changeName()`. `changeName()` will change the parent’s
`this.state.name`, which will change the name displayed in the
`<h1></h1>`.

Inside of `Child`’s render function, give `<select>` a new attribute.

Make the attribute’s *name* `onChange`. This will create an *event
listener*.

Make the attribute’s *value* equal to the function that you passed in
from **Parent.js**. If you can’t remember what `prop` name you used,
then check `Parent`’s render function.

**2.**

Try selecting a new name from the dropdown menu.

It doesn’t work! Why not? Take another look at `this.props.onChange`:

``` jsx
changeName(newName) {
  this.setState({
    name: newName
  });
}
```

This function needs to be passed a new name as an argument, in order to
work properly.

When a user selects a new dropdown item, it will invoke `changeName`,
but it *won’t* pass the correct argument! Instead of passing a new name,
it will pass an *event object*, as all event listeners do.

This is a common problem when passing down an *event handler* in React!
The solution is to define another function.

This new function should take an *event object* as an argument, extract
the name that you want from that event object, and then call the *event
handler*, passing in the extracted name! It sounds like a lot, but you
will see this happen so often that it will soon feel intuitive.

In *Child.js*, before the `render` function, define a new function that
can be passed an *event object:*

``` jsx
handleChange(e) {
  const name = e.target.value;
  this.props.onChange(name);
}
 
render() { ...
```

**3.**

You’ve defined a new function that can take an *event object*, and use
it to correctly update the parent’s state. Now let’s put that new
function to use!

As with all methods that we pass in React, we must first bind `this` to
our new method to the current instance of Child.

Add the following boilerplate constructor to your Child class:

``` jsx
constructor(props) {
  super(props);
}
```

Then at the end of your constructor bind `.handleChange()` to the
current value of `this`.

**4.**

In `Child`’s render function, change the *event handler* from
`{this.props.onChange}`, to `{this.handleChange}`.

Click Run, and try selecting some different names from the dropdown
menu. It should work!

### Solution

``` jsx
import React from 'react';

export class Child extends React.Component {
  constructor(props) {
    super(props);
    
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e) {
    const name = e.target.value;
    this.props.onChange(name);
  }

  render() {
    return (
      <div>
        <h1>
          Hey my name is {this.props.name}!
        </h1>
        <select id="great-names" onChange={this.handleChange}>
          <option value="Frarthur">
            Frarthur
          </option>

          <option value="Gromulus">
            Gromulus
          </option>

          <option value="Thinkpiece">
            Thinkpiece
          </option>
        </select>
      </div>
    );
  }
}
```

## Automatic Binding

Great work! *Stateless components updating their parents’ state* is a
React pattern that you’ll see more and more. Learning to recognize it
will help you understand how React apps are organized.

Click Next to move on to the final version of our programming pattern!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Child } from './Child';

class Parent extends React.Component {
  constructor(props) {
    super(props);

    this.state = { name: 'Frarthur' };
    
    this.changeName = this.changeName.bind(this);
  }
  
  changeName(newName) {
    this.setState({
      name: newName
    });
  }

  render() {
    return <Child name={this.state.name} onChange={this.changeName} />
  }
}

ReactDOM.render(
    <Parent />,
    document.getElementById('app')
);
```

``` jsx
import React from 'react';

export class Child extends React.Component {
  constructor(props) {
    super(props);
    
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e) {
    const name = e.target.value;
    this.props.onChange(name);
  }

  render() {
    return (
      <div>
        <h1>
          Hey my name is {this.props.name}!
        </h1>
        <select id="great-names" onChange={this.handleChange}>
          <option value="Frarthur">
            Frarthur
          </option>

          <option value="Gromulus">
            Gromulus
          </option>

          <option value="Thinkpiece">
            Thinkpiece
          </option>
        </select>
      </div>
    );
  }
}
```

# Child Components Update Their Siblings’ props

## Child Components Update Sibling Components

Patterns within patterns within patterns!

In lesson 1, you learned your first React programming pattern: a
*stateful*, parent component passes down a `prop` to a *stateless*,
child component.

In lesson 2, you learned that lesson 1’s pattern is actually part of a
larger pattern: a stateful, parent component passes down an *event
handler* to a stateless, child component. The child component then uses
that *event handler* to update its parent’s `state`.

In this lesson, we will expand the pattern one last time. A child
component updates its parent’s state, and the parent passes that state
to a *sibling* component.

An understanding of this final pattern will be very helpful in the wild,
not to mention in the next React course. Click Next and we’ll build an
example!

### Instructions

In this video, the Like and Stats components are siblings under the
Reactions parent component.

1.  The Reactions component passes an event handler to the Like
    component.
2.  When Like is clicked, the handler is called, which causes the parent
    Reactions component to send a new prop to Stats.
3.  The Stats component updates with the new information.

### Solution

[Child Components Update Sibling
Components](https://content.codecademy.com/courses/React/react_animations-child-updates-siblings.mp4)

## One Sibling to Display, Another to Change

One of the very first things that you learned about components is that
they should only have one job.

In the last lesson, `Child` had two jobs:

1 - `Child` displayed a name.

2 - `Child` offered a way to *change* that name.

You should divide `Child` in two: one component for displaying the name,
and a different component for allowing a user to *change* the name.

In the code editor, select **Child.js**. Notice that these lines have
vanished:

``` jsx
<h1>
  Hey, my name is {this.props.name}! 
</h1>
```

The new version of `Child` renders a dropdown menu for *changing* the
name, and *that’s it.*

Select **Sibling.js** in the code editor.

Read through the render function’s `return` statement.

*Here*, the name is displayed! Or at least it will be displayed, once
you’ve done a little editing.

That brings us to the essential new concept for this lesson: you will
have one stateless component *display* information, and a different
stateless component offer the ability to *change* that information.

### Instructions

**1.**

Click Run.

Select **Parent.js**, and look at the rendered `<Parent />` in the
browser. Try selecting a name from the dropdown menu. Does it work?

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Child } from './Child';
import { Sibling } from './Sibling';

class Parent extends React.Component {
  constructor(props) {
    super(props);

    this.state = { name: 'Frarthur' };

    this.changeName = this.changeName.bind(this);
  }

  changeName(newName) {
    this.setState({
      name: newName
    });
  }

  render() {
    return (
      <div>
        <Child 
          name={this.state.name} 
          onChange={this.changeName} />
        <Sibling />
      </div>
    );
  }
}

ReactDOM.render(
  <Parent />,
  document.getElementById('app')
);
```

``` jsx
import React from 'react';

export class Child extends React.Component {
  constructor(props) {
    super(props);

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e) {
    const name = e.target.value;
    this.props.onChange(name);
  }

  render() {
    return (
      <div>
        <select
          id="great-names"
          onChange={this.handleChange}>

          <option value="Frarthur">Frarthur</option>
          <option value="Gromulus">Gromulus</option>
          <option value="Thinkpiece">Thinkpiece</option>
        </select>
      </div>
    );
  }
}
```

``` jsx
import React from 'react';

export class Sibling extends React.Component {
  render() {

    return (
      <div>
        <h1>Hey, my name is Frarthur!</h1>
        <h2>Don't you think Frarthur is the prettiest name ever?</h2>
        <h2>Sure am glad that my parents picked Frarthur!</h2>
      </div>
    );
  }
}
```

## Pass the Right props to the Right Siblings

Look at **Parent.js** in the code editor.

Three things have changed in this file since the last Lesson:

1.  `Sibling` has been required on line 4.
2.  A `<Sibling />` instance has been added to the render function on
    line 27.
3.  `<Sibling />` and `<Child />` have been wrapped in a `<div></div>`,
    since JSX expressions must have only one outer element.

### Instructions

**1.**

`Sibling`’s job is to display the selected name.

That name is *stored* in `Parent`’s `state`. `Parent` will have to pass
the name to `Sibling`, so that `Sibling` can display it.

In `Parent`’s render function, pass the name to `<Sibling />`:

``` jsx
name={this.state.name}
```

**2.**

`Child`’s job is to offer a way to *change* the chosen name. *Not* to
display it!

In **Parent.js**, look at lines 25 and 26.

You are passing `Child` two pieces of dynamic information:

1.  The chosen name (`this.state.name`).
2.  A way to *change* the chosen name (`this.changeName`).

One of those is now unnecessary!

Remove an attribute from `<Child />`, so that it receives a way to
*change* the chosen name and nothing more.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Child } from './Child';
import { Sibling } from './Sibling';

class Parent extends React.Component {
  constructor(props) {
    super(props);

    this.state = { name: 'Frarthur' };

    this.changeName = this.changeName.bind(this);
  }

  changeName(newName) {
    this.setState({
      name: newName
    });
  }

  render() {
    return (
      <div>
        <Child onChange={this.changeName} />
        <Sibling name={this.state.name} />
      </div>
    );
  }
}

ReactDOM.render(
  <Parent />,
  document.getElementById('app')
);
```

## Display Information in a Sibling Component

You’re on the last step!

You’ve passed the name down to `<Sibling />` as a `prop`. Now
`<Sibling />` has to *display* that `prop`.

### Instructions

**1.**

Select **Sibling.js**.

Notice that `Sibling` doesn’t use any dynamic information at all. Every
time that `Sibling` renders, it will always look exactly the same.
That’s not what you want!

On line 5, declare a new variable called `name`. Set `name` equal to
`this.props.name`. You’ll use it in the next checkpoint.

**2.**

Inside of the render function’s `return` statement, there are three
instances of the word `Frarthur`.

You want to replace each instance of `Frarthur` with *whatever the
chosen name is*.

Replace each `Frarthur` with `{name}`. Click Run. Try selecting a new
name from the dropdown menu.

### Solution

``` jsx
import React from 'react';

export class Sibling extends React.Component {
  render() {
        const name = this.props.name;
    return (
      <div>
        <h1>Hey, my name is {name}!</h1>
        <h2>Don't you think {name} is the prettiest name ever?</h2>
        <h2>Sure am glad that my parents picked {name}!</h2>
      </div>
    );
  }
}
```

## Stateless Components Inherit From Stateful Components Recap

You just executed your first complete React programming pattern!

Let’s review. Follow each step in the code editor:

- A *stateful* component class defines a function that calls
  `this.setState`. (**Parent.js**, lines 15-19)

- The stateful component passes that function down to a stateless
  component. (**Parent.js**, line 24)

- That *stateless* component class defines a function that calls the
  passed-down function, and that can take an *event object* as an
  argument. (**Child.js**, lines 10-13)

- The stateless component class uses this new function as an event
  handler. (**Child.js**, line 20)

- When an event is detected, the parent’s state updates. (A user selects
  a new dropdown menu item)

- The stateful component class passes down its state, distinct from the
  ability to *change* its state, to a different stateless component.
  (**Parent.js**, line 25)

- That stateless component class receives the state and displays it.
  (**Sibling.js**, lines 5-10)

- An instance of the stateful component class is rendered. One stateless
  child component displays the `state`, and a different stateless child
  component displays a way to *change* the `state`. (**Parent.js**,
  lines 23-26)

This pattern occurs in React all the time! The more that you see it, the
more that its elegance will become clear.

Being introduced to this pattern is your first step towards
understanding how React apps fit together! You’ll get more practice
using it throughout this course, as well as in the course after this
one.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { Child } from './Child';
import { Sibling } from './Sibling';

class Parent extends React.Component {
  constructor(props) {
    super(props);

    this.state = { name: 'Frarthur' };

    this.changeName = this.changeName.bind(this);
  }

  changeName(newName) {
    this.setState({
      name: newName
    });
  }

  render() {
    return (
      <div>
        <Child onChange={this.changeName} />
        <Sibling name={this.state.name} />
      </div>
    );
  }
});

ReactDOM.render(
  <Parent />,
  document.getElementById('app')
);
```

``` jsx
import React from 'react';

export class Child extends React.Component {
  constructor(props) {
    super(props);

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e) {
    const name = e.target.value;
    this.props.onChange(name);
  }

  render() {
    return (
      <div>
        <select
          id="great-names"
          onChange={this.handleChange}>

          <option value="Frarthur">Frarthur</option>
          <option value="Gromulus">Gromulus</option>
          <option value="Thinkpiece">Thinkpiece</option>
        </select>
      </div>
    );
  }
}
```

``` jsx
import React from 'react';

export class Sibling extends React.Component {
  render() {
    const name = this.props.name;
    return (
      <div>
        <h1>Hey, my name is {name}!</h1>
        <h2>Don't you think {name} is the prettiest name ever?</h2>
        <h2>Sure am glad that my parents picked {name}!</h2>
      </div>
    );
  }
}
```

# Video Player

You just learned your first *programming pattern.* Let’s put it to use!

For this project, you’ll make three React components work together to
create a responsive video player. Let’s get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

1\.

Click Save, and take a look at your video player in the browser. It
looks pretty good! But if you try interacting with it, you’ll find that
there’s zero functionality.

Take a look at the `App` component class. This class has one property
stored as `state`: a `src` containing the address of a video file.
`App`’s job is to pass this `src` down to a stateless component, and to
pass *the ability to change the* `src` down to a different stateless
component.

Passing `src` is the easier part, so let’s do that first.

Inside of `App`’s *render* function, give `<Video />` an *attribute*.
Make this attribute’s *name* `src`, and the attribute’s *value* equal to
the `src` property stored in `this.state`.

2\.

Let’s make `<Video />` play its passed-in video file!

Select **Video.js**. In `Video`’s render function, give `<video />` a
`src` attribute. Make `src` equal to the passed-in video file.

3\.

Alright, the video player works! Now let’s make the *menu* work as well.

You’ve made `App` pass the `src` down to `<Video />`. Now `App` needs to
pass the ability to *change* the `src` down to `<Menu />`. If you want
to pass the ability to *change* a piece of `state`, then first you need
to define a function that calls `this.setState`.

In **App.js**, give `App` a new property named `chooseVideo`. Set
`chooseVideo`’s value equal to a *function* with one parameter, named
`newVideo`.

`chooseVideo` is going to get passed a string: either `'fast'`,
`'slow'`, `'cute'`, or `'eek'`. It will use this string to choose a new
src, which it will use to update `this.state.src`.

In the body of `chooseVideo`, call `this.setState`. Set `this.state.src`
equal to `VIDEOS[newVideo]`.

4\.

If you pass `chooseVideo` to `<Menu />`, then you will give `<Menu />`
the ability to *update* `<App />`’s state.

In `App`’s render function , give `Menu` a `chooseVideo` attribute. Set
`chooseVideo`’s *value* equal to the `chooseVideo` function.

5\.

Currently, if you pass `.chooseVideo()` to `Menu` the value of `this`
will be incorrect when called. In the `constructor` of `App`, `bind`
`.chooseVideo()` to the current value of `this` and store it in
`this.chooseVideo`.

6\.

Alright, now you just have to attach this passed-in function to an event
listener!

Select **Menu.js**. In `Menu`’s render function, give `<form></form>` an
`onClick` attribute. Set `onClick`’s *value* equal to the passed-in
`chooseVideo` function.

7\.

Try selecting a video in the browser.

It doesn’t work! Do you know why not?

`chooseVideo` expects a *string* as an argument. But event handlers are
automatically passed *event objects,* not strings.

You need to *wrap* `chooseVideo` in a new function that can take an
event object as an argument.

Give `Menu` a new property, before the render function, named
`handleClick`. Set `handleClick` equal to a function with one parameter
named `e`.

Inside of the body of `handleClick`, declare a new variable named
`text`. Set `text` equal to `e.target.value`. This will equal the text
of a clicked radio button.

After declaring this `text` variable, create a new line. On your new
line, call the passed-in `chooseVideo` function. Pass in `text` as an
argument.

8\.

Currently, the value of `this` will be incorrect when you call
`.handleClick()`.

Create a `constructor` for `Menu`, and in its body, call `super(props)`.
Then, `bind` `.handleClick()` to the current value of `this` and store
it in `this.handleClick`.

9\.

Only one more step! You need to use your new wrapper function as an
*event handler*.

In `Menu`’s render function’s `return` statement, replace
`{this.props.chooseVideo}` with `{this.handleClick}`.

10\.

Great job!

`App` passes down `this.state.src` to `Video`. `Video` uses this info to
display the chosen video.

`App` also passes down *the ability to change* `this.state.src` to
`Menu`. `Menu` uses this ability to let a user to select a new video.

You’ve put together a responsive video player, and done it in a way that
you will often find in the real world!

### [Solution](video-player)

# Component Lifecycle Methods

## The Component Lifecycle

We’ve seen that React components can be highly dynamic. They get
created, rendered, added to the DOM, updated, and removed. All of these
steps are part of a component’s *lifecycle*.

The component lifecycle has three high-level parts:

1.  *Mounting*, when the component is being initialized and put into the
    DOM for the first time
2.  *Updating*, when the component updates as a result of changed state
    or changed props
3.  *Unmounting*, when the component is being removed from the DOM

Every React component you’ve ever interacted with does the first step at
a minimum. If a component never mounted, you’d never see it!

Most interesting components are *updated* at some point. A purely static
component—like, for example, a logo—might not ever update. But if a
component’s state changes, it updates. Or if different props are passed
to a component, it updates.

Finally, a component is *unmounted* when it’s removed from the DOM. For
example, if you have a button that hides a component, chances are that
component will be unmounted. If your app has multiple screens, it’s
likely that each screen (and all of its child components) will be
unmounted. If a component is “alive” for the entire lifetime of your app
(say, a top-level `<App />` component or a persistent navigation bar),
it won’t be unmounted. But most components can get unmounted one way or
another!

It’s worth noting that each component instance has its own lifecycle.
For example, if you have 3 buttons on a page, then there are 3 component
instances, each with its own lifecycle. However, once a component
instance is unmounted, that’s it—it will never be re-mounted, or updated
again, or unmounted.

### Instructions

Take a look at this helpful reference diagram. Don’t worry—you don’t
have to understand all of it right now—but give it a look.

Which methods are called during the mounting phase? What about the
update phase?

What causes an update to occur?

Again, it’s okay if you don’t know the answers to these yet. We’ll learn
all about that soon!

### Solution

<img src="https://content.codecademy.com/courses/React/react_diagram-lifecycle-flow.png" alt="A diagram of the React lifecycle. We'll learn more about this soon." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Introduction to Lifecycle Methods

React components have several methods, called *lifecycle methods*, that
are called at different parts of a component’s lifecycle. This is how
you, the programmer, deal with the lifecycle of a component.

You may not have known it, but you’ve already used two of the most
common lifecycle methods: `constructor()` and `render()`!
`constructor()` is the first method called during the mounting phase.
`render()` is called later during the mounting phase, to render the
component for the first time, and during the updating phase, to
re-render the component.

Notice that lifecycle methods don’t necessarily correspond one-to-one
with part of the lifecycle. `constructor()` only executes during the
mounting phase, but `render()` executes during both the mounting and
updating phase.

With this new understanding, let’s build a simple clock component.

### Instructions

**1.**

`<Clock />` is currently a non-working React component. Give it a
`render()` method that renders an empty `<div>` to start.

(Remember: `render()` will be called when `<Clock />` mounts and
whenever it updates, as part of its lifecycle.)

**2.**

We want to store the current time in `<Clock />`’s state. Create a
`constructor`. Inside, set the initial state to `{ date: new Date() }`.
Don’t forget to call `super(props)`.

(Remember: the constructor is the first thing called when the component
instance is mounted.)

In the next step, we’ll “wire up” the state to the screen.

**3.**

“Wire up” the state to the screen. Calling
`this.state.date.toLocaleTimeString()` will produce a helpful,
human-readable representation of the current time.

Fill in your empty `<div>` with
`{this.state.date.toLocaleTimeString()}`.

Notice that this is static—it doesn’t update, even as time goes by.

(Remember: the constructor is the first thing called during mounting.
`render()` is called later, to show the component for the first time. If
it happened in a different order, `render()` wouldn’t have access to
`this.state`, and it wouldn’t work.)

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = { date: new Date() };
  }
  render() {
    return <div>{this.state.date.toLocaleTimeString()}</div>;
  }
}

ReactDOM.render(<Clock />, document.getElementById('app'));
```

## componentDidMount

We’ve made a clock component, but it’s static. Wouldn’t it be nice if it
updated?

At a high level, we’d like to update `this.state.date` with a new date
once per second.

JavaScript has a helpful function, <a
href="https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope/setInterval"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">setInterval()</code></a>, that will
help us do just this. It lets us run a function on a set interval. In
our case, we’ll make a function that updates `this.state.date`, and call
it every second.

We’ll want to run some code that looks like this:

``` jsx
// NOTE: This code doesn't clean itself up properly.
// We'll explore that in the next exercise.
const oneSecond = 1000;
setInterval(() => {
  this.setState({ date: new Date() });
}, oneSecond);
```

We have the code we want to run—that’s great. But where should we put
this code? In other words, where in the component’s lifecycle should it
go?

Remember, the component lifecycle has three high-level parts:

1.  *Mounting*, when the component is being initialized and put into the
    DOM for the first time
2.  *Updating*, when the component updates as a result of changed state
    or changed props
3.  *Unmounting*, when the component is being removed from the DOM

It’s certainly not in the unmounting phase—we don’t want to start our
interval when the clock disappears from the screen! It’s also probably
not useful during the updating phase—we want the interval to start as
soon as the clock appears, and we don’t want to wait for an update. It
probably makes sense to stick this code somewhere in the mounting phase.

We’ve seen two functions: the `render()` and the constructor. Can we put
this code in either of those places?

- `render()` isn’t a good candidate. For one, it executes during the
  mounting phase and the updating phase—too often for us. It’s also
  generally a bad idea to set up any kind of side-effect like this in
  `render()`, as it can create subtle bugs in the future.
- `constructor()` is also not great. It does only execute during the
  mounting phase, so that’s good, but you should generally avoid
  side-effects like this in constructors because it violates something
  called the Single Responsibility Principle. In short, it’s not a
  constructor’s responsibility to start side-effects.
  (<a href="https://en.wikipedia.org/wiki/Single-responsibility_principle"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">You can read more about the principle
  on Wikipedia.</a>)

If it’s not `render()` or the constructor, then where? Enter a new
lifecycle method, `componentDidMount()`.

`componentDidMount()` is the final method called during the mounting
phase. The order is:

1.  The constructor
2.  `render()`
3.  `componentDidMount()`

In other words, it’s called after the component is rendered. This is
where we’ll want to start our timer.

(Another method, <a
href="https://reactjs.org/docs/react-component.html#static-getderivedstatefromprops"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">getDerivedStateFromProps()</code></a>,
is called between the constructor and `render()`, but it is very rarely
used and usually isn’t the best way to achieve your goals. We won’t be
talking about it in this lesson.)

### Instructions

**1.**

Carefully copy-paste the following code inside of `componentDidMount()`:

``` jsx
const oneSecond = 1000;
setInterval(() => {
  this.setState({ date: new Date() });
}, oneSecond);
```

See your clock update every second! It’s a real clock now.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = { date: new Date() };
  }
  render() {
    return <div>{this.state.date.toLocaleTimeString()}</div>;
  }
  componentDidMount() {
    const oneSecond = 1000;
    setInterval(() => {
      this.setState({ date: new Date() });
    }, oneSecond);
  }
}

ReactDOM.render(<Clock />, document.getElementById('app'));
```

## componentWillUnmount

Our clock is working, but it has an important problem. We never told the
interval to stop, so it’ll keep running that function forever (or at
least, until the user leaves/refreshes the page).

When the component is unmounted (in other words, removed from the page),
that timer will keep on ticking, trying to update the state of a
component that’s effectively gone. This means your users will have some
JavaScript code running unnecessarily, which will hurt the performance
of your app.

React will log a warning that looks something like this:

``` jsx
Warning: Can't perform a React state update on an unmounted component. This is a no-op, but it indicates a memory leak in your application. To fix, cancel all subscriptions and asynchronous tasks in the componentWillUnmount method.
```

Imagine if the clock gets mounted and unmounted hundreds of
times—eventually, this will cause your page to become sluggish because
of all of the unnecessary work. You’ll also see warnings in your browser
console. Even worse, this can lead to subtle, annoying bugs.

All this bad stuff can happen if we fail to clean up a side-effect of a
component. In our case this is a call to `setInterval()`, but components
can have lots of other side-effects: loading external data with AJAX,
doing manual tweaking of the DOM, setting a global value, and more. We
try to limit our side-effects, but it’s difficult to build an
interesting app with truly zero side-effects.

*In general, when a component produces a side-effect, you should
remember to clean it up.*

JavaScript gives us the <a
href="https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope/clearInterval"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">clearInterval()</code></a>
function. `setInterval()` can return an ID, which you can then pass into
`clearInterval()` to clear it. Here’s the code we’ll want to use:

``` jsx
const oneSecond = 1000;
this.intervalID = setInterval(() => {
  this.setState({ date: new Date() });
}, oneSecond);
 
// Some time later...
clearInterval(this.intervalID);
```

At a high level, we want to continue to set up our `setInterval()` in
`componentDidMount()`, but then we want to clear that interval when the
clock is unmounted.

Let’s introduce a new lifecycle method: `componentWillUnmount()`.
`componentWillUnmount()` is called in the unmounting phase, right before
the component is completely destroyed. It’s a useful time to clean up
any of your component’s mess.

In our case, we’ll use it to clean up the clock’s interval.

### Instructions

**1.**

Try running the code as is and toggling the clock off. You should see a
React warning message appear.

**2.**

Save the interval ID into a variable, `this.intervalID`. Replace the
line that starts with `setInterval()` with
`this.intervalID = setInterval(...`.

This won’t do anything yet. We’ll use it in the next step.

**3.**

Add a new method, `componentWillUnmount()`, that cleans up the interval
with `clearInterval(this.intervalID)`.

Notice that you can hide and show the component and everything works
fine!

### Solution

``` jsx
import React from 'react';

export class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = { date: new Date() };
  }
  render() {
    return <div>{this.state.date.toLocaleTimeString()}</div>;
  }
  componentDidMount() {
    const oneSecond = 1000;
    this.intervalID = setInterval(() => {
      this.setState({ date: new Date() });
    }, oneSecond);
  }
  componentWillUnmount() {
    clearInterval(this.intervalID);
  }
}
```

## componentDidUpdate

Remember the three parts of a component’s lifecycle:

1.  *Mounting*, when the component is being initialized and put into the
    DOM for the first time
2.  *Updating*, when the component updates as a result of changed state
    or changed props
3.  *Unmounting*, when the component is being removed from the DOM

We’ve looked at mounting (`constructor()`, `render()`, and
`componentDidMount()`). We’ve looked at unmounting
(`componentWillUnmount()`). Let’s finish by looking at the updating
phase.

An update is caused by changes to props or state. You’ve already seen
this happen a bunch of times. Every time you’ve called `setState()` with
new data, you’ve triggered an update. Every time you change the props
passed to a component, you’ve caused it to update.

When a component updates, it calls
<a href="https://reactjs.org/docs/react-component.html#updating"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">several methods</a>, but only two are
commonly used.

The first is `render()`, which we’ve seen in every React component. When
a component’s props or state changes, `render()` is called.

The second, which we haven’t seen yet, is `componentDidUpdate()`. Just
like `componentDidMount()` is a good place for mount-phase setup,
`componentDidUpdate()` is a good place for update-phase work.

### Instructions

**1.**

We’ve made a small update to the clock app. Our `<Clock />` component
will still render the current time, but it can also be in “precise
mode”, where a more standardized, exact version of the time will be
shown.

Run the app. Click on the “Toggle precise mode” button and change the
clock back and forth from “precise” mode a few times to see how it
works.

**2.**

Everything looks okay, but the updates aren’t happening super frequently
in precise mode. Even though the data changes many times a second, it’s
only being updated and re-rendered once a second. Can we do better?

We’d like the clock to update more frequently in precise mode. Instead
of updating every second, we’d like it to update 10 times a second
(every 100 milliseconds instead of every 1000). Let’s get started on
that.

Create a new empty method, `componentDidUpdate()`. It should take one
argument, `prevProps`, which will be the `props` this component had the
last time it was rendered. We’ll fill it in next.

**3.**

Let’s fill in `componentDidUpdate()` with three high-level steps:

1.  If `this.props.isPrecise` hasn’t changed, stop now and don’t do the
    next steps.
2.  Clear the existing interval, like we do in `componentWillUnmount()`.
3.  Start a new interval. If in “precise” mode, it should run every 100
    milliseconds. Otherwise, it should run every 1000 milliseconds as
    before.

In code, step 1 will be to check if `isPrecise` has changed by comparing
it to `prevProps`. Copy paste this code at the beginning:

``` jsx
if (this.props.isPrecise === prevProps.isPrecise) {
  return;
}
```

For step 2, copy-paste the body of `componentWillUnmount()`—the single
line that starts with `clearInterval(...`.

We’ll fill in step 3 next.

Play around with the solution and notice that changing to/from “precise
mode” completely stops the interval, effectively freezing the clock.
We’ll fix that.

**4.**

Now that we’ve cleared the interval, we need to start a new one. At the
bottom of `componentDidUpdate()`, declare a new variable, called
`delay`. If we’re in “precise” mode, it should be set to `100`.
Otherwise, it should be set to `1000`.

Once we have that, we’ll start a new interval much like we do in
`componentDidMount()`.

Here’s a skeleton of what the code should look like:

``` jsx
let delay;
// ...
this.intervalID = setInterval(() => {
  this.setState({ date: new Date() });
}, delay);
```

Once you’ve done this, try entering “precise” mode. The clock should
update more frequently!

**5.**

Time for some final cleanup. Our little app works, but has two problems:

1.  If the clock is started in “precise” mode, the wrong interval is
    started and the clock won’t be updated frequently enough.
2.  Some of the code is duplicated.

Let’s refactor our component to solve both of these problems.

At a high level, we’re going to create a new method called
`startInterval()`. It’ll be responsible for calculating the interval
delay (either 100 or 1000 milliseconds) and calling `setInterval()`.
Then we’ll call it from both `componentDidMount()` and
`componentDidUpdate()`.

Create a new method, `startInterval()`, which will include all of the
code for setting up the interval. Next, find the code that sets up the
interval in `componentDidUpdate()`. (It should start with `let delay`
and end with the call to `setInterval()`.) Cut and paste those into the
body of `startInterval()`. In its place, put a call to
`this.startInterval()`.

Finally, remove the call to `setInterval()` from `componentDidMount()`
and replace it with a call to `this.startInterval()`, so that both
methods use the same code path.

See that everything works as before, but with the bug fixed!

### Solution

``` jsx
import React from 'react';

export class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = { date: new Date() };
  }
  render() {
    return (
      <div>
        {this.props.isPrecise
          ? this.state.date.toISOString()
          : this.state.date.toLocaleTimeString()}
      </div>
    );
  }
  startInterval() {
    let delay;
    if (this.props.isPrecise) {
      delay = 100;
    } else {
      delay = 1000;
    }
    this.intervalID = setInterval(() => {
      this.setState({ date: new Date() });
    }, delay);
  }
  componentDidMount() {
    this.startInterval();
  }
  componentDidUpdate(prevProps) {
    if (this.props.isPrecise === prevProps.isPrecise) {
      return;
    }
    clearInterval(this.intervalID);
    this.startInterval();
  }
  componentWillUnmount() {
    clearInterval(this.intervalID);
  }
}
```

## Review

We’ve come to the end of the lesson. We’ve learned about the three major
phases of a component’s lifecycle:

1.  *Mounting*, when the component is being initialized and put into the
    DOM for the first time. We saw that the `constructor`, `render()`,
    and `componentDidMount()` are called during this phase.
2.  *Updating*, when the component updates as a result of changed state
    or changed props. We saw that `render()` and `componentDidUpdate()`
    are called during this phase.
3.  *Unmounting*, when the component is being removed from the DOM. We
    saw that `componentWillUnmount()` was called here, which was a good
    time to clean things up.

We also learned about setting up side-effects and tearing them down. We
now know how to make more robust, complex components!

To your right is a reference that you can use. It shows the three phases
of a component’s lifecycle and which methods are called at each phase.
You can also refer to
<a href="https://projects.wojtekmaj.pl/react-lifecycle-methods-diagram/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this interactive diagram</a>.

For more, you can read React’s official documentation. See
<a href="https://reactjs.org/docs/state-and-lifecycle.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“State and Lifecycle”</a> and
<a href="https://reactjs.org/docs/react-component.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the docs for <code
class="code__2rdF32qjRVp7mMVBHuPwDS">React.Component</code></a>.

# Social Network for Pets

In this project, we’ll build a simple social network for pets. You’ll be
able to view a pet’s profile (which contains their name, bio, and friend
list) and navigate to other profiles. There will also be a profile
directory where you can see all of the profiles.

We’ve already set up three profiles for you: one for a cat, one for a
dog, and one for a Komodo dragon.

Let’s get started!

### Instructions

Mark the tasks as complete by checking them off

## Loading User Data

1\.

Run the app and take a look at PetBook.

It’s fairly barren right now, only showing the currently active username
and placeholder data. It’s also stuck in a loading state. We’ll fix all
of this and turn it into a proper pet profile.

The first thing we’ll want to do is load user data into the component’s
state. In order to do that, however, we’ll need a place to store that
data.

Take a look at the `<Profile>` component in **Profile.js**. This is
where we’ll be doing our work, though it may be useful to look at other
files too.

Create a constructor for this component. Inside, set `this.state` to
`{ userData: null }`, which will represent a profile with no user data
loaded. Don’t forget to call `super(props)`!

2\.

Now that we have a place to store our data, let’s start loading it.

Create a new method called `loadUserData()` that does two things:

1.  Sets the `userData` state to `null` while the data is loading. Once
    it’s loaded (in the next step), we’ll update it.

2.  Fetches the user data with `fetchUserData`. You’ll call the function
    like this:

    ``` jsx
    this.fetchID = fetchUserData(this.props.username, (userData) => {
      this.setState({ userData });
    });
    ```

(Note: `fetchUserData()` simulates real user data, but because this is a
learning exercise, it doesn’t actually do that. You don’t need to read
or understand the code, but know that it would be similar if you were
loading real data.)

3\.

Now that we have a method for loading user data, let’s call it when the
component mounts.

Add a lifecycle method for when the component mounts, and call
`this.loadUserData()` inside.

4\.

We’re now loading user data, but we aren’t displaying it anywhere
because we haven’t updated the `render()` method. Let’s fix that!

The first thing we’ll need to change is `isLoading`. It shouldn’t always
be `true`—it should only be `true` when `this.state.userData === null`.
Update `isLoading` to reflect that.

When you run the code, you won’t see any user data displayed, but you
may see the profile change slightly after data has loaded. In the next
task, we’ll actually put that data on the screen.

## Displaying User Data

5\.

Let’s start by displaying the user’s name. (We’ll get to their bio and
friend list next.)

Inside of `render()`, create a new variable called `name`.

If `isLoading` is `true`, set `name` to a sample value, such as
`'Loading...'`. (The exact string is up to you.) Otherwise, set `name`
to `this.state.userData.name`.

Finally, replace “Name goes here” with `{name}`.

When you run this and visit a profile, you should see the user’s name
appear!

6\.

Time to do the exact same thing, but for the user’s bio.

Inside of `render()`, create a new variable called `bio`.

When `isLoading` is `true`, set `bio` to a sample value. Otherwise, set
`bio` to `this.state.userData.bio`.

Finally, replace “Bio goes here” with `{bio}`.

Now the user’s bio should appear!

7\.

Two more to go: let’s update the user’s friend list.

Create a new variable called `friends` inside `render()`. When the
component is loading, `friends` should be the empty array (`[]`).
Otherwise, it should be `this.state.userData.friends`.

Next, update the `usernames` prop of the `<Userlist>` component. It’s
currently an empty array—change it from `{[]}` to `{friends}`.

8\.

The last thing we’ll do is update the user’s profile picture.

Find the `<div>` with the class name of `profile-picture`. It’s
currently empty…but not for long!

We’ll want to put the following inside, but only if `isLoading` is
`false`:

``` jsx
<img src={this.state.userData.profilePictureUrl} alt="" />
```

You can do this by defining a variable set conditionally (like `name`
and `bio`), or by using an inline `&&` right inside the JSX.

Now, the profile picture should show up once it loads! We’re not done
yet, but the profile is looking good.

## Cleaning Up

9\.

Profiles should now be showing up! There are two problems left to fix,
though:

1.  If you open a profile, then quickly return to the directory, then go
    to a different pet’s profile, there will be some jitter. (This
    requires some quick clicking.)
2.  If you click on a pet’s friends, only the username updates. We don’t
    fetch new data.

Let’s start with the first problem.

We’ll solve this by canceling the fetch when `<Profile>` unmounts.

Add a lifecycle method for when the component unmounts, and call
`cancelFetch(this.fetchID)` inside.

10\.

Let’s solve our final problem: if you click on a pet’s friends, only the
username updates. We don’t fetch new data.

Add a lifecycle method for when the component updates. If the username
has changed (in other words, if
`this.props.username !== prevProps.username`), we should do two things:

1.  Cancel the fetch currently in progress with
    `cancelFetch(this.fetchID)`.
2.  Call `this.loadUserData()` again.

Once that’s done, you should be able to navigate through pet profiles
with ease! Be proud…your pet social network is going to be big.

### [Solution](react-lifecycle-methods-social-network-for-pets)

# Create a Playlist App With the Spotify API (Part One)

In this project, you will build a React web application called
<a href="https://jammming.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Jammming</a>. You will use your knowledge
of React components, passing state, and requests with the Spotify API to
build a website that allows users to search the Spotify library, create
a custom playlist, then save it to their Spotify account.

We’ve broken the Jammming project into 13 sections. Each section
contains a descriptive header with an introductory step followed by a
set of steps that guide you to the outcome. The first step of each
section will explain the goal and provide a brief overview of how we’ll
accomplish it. Before you start the second step, try to plan how you
would complete the section. As you finish the rest of the steps, reflect
on how your solution compares to ours.

This is a long project, but we’ll be with you every step of the way.
Whether you’re completing assessments without the additional steps or
banging your head against the wall trying to understand a hint, always
use best practices and reflect on your growth. If you get stuck or just
want to see how a seasoned developer tackles this project, click “get
help” to see a walkthrough video.

Good luck!

$$Update December 2020: We’ve noticed that some learners outside of the
United States are unable to create a Spotify account. While we work on
this issue, you may try other music APIs that support GET and POST
request or skip the project for now.
<a href="https://rapidapi.com/blog/top-free-music-data-apis/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Other APIs can be found on this page</a>
or <a href="https://rapidapi.com/collection/music-apis"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this page</a>. You’ll need to adjust
steps 74-95 accordingly.$$

### Instructions

Mark the tasks as complete by checking them off

## Create a React Application

1\.

By the end of this first section, you will be ready to start building
your website. This section walks you through the process of setting up
the directory structure and adding CSS presets.

To achieve this, you will create a boilerplate react app, remove unused
files, and add **reset.css**, Google font links, and an updated favicon.

- Google fonts —
  <a href="https://fonts.googleapis.com/css?family=Poppins:600"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Poppins</a> and
  <a href="https://fonts.googleapis.com/css?family=Work%20Sans:300,500"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Work Sans</a>
- Updated <a
  href="https://content.codecademy.com/programs/react/jammming/favicon.ico"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">favicon</a>

2\.

Create a new React application in a directory called **Jammming**.

3\.

In **index.html**, update the `<title>` value to `Jammming`.

4\.

Remove **App.test.js** and **logo.svg** from the **src/** folder, as you
will not use them in this project.

5\.

Add <a
href="https://content.codecademy.com/programs/react/jammming/static-html-css/reset.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">reset.css</a> to the **public/**
directory and link to it in **index.html**.

6\.

Link to the following Google fonts in **index.html**:

- <a href="https://fonts.googleapis.com/css?family=Poppins:600"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Poppins</a>
- <a href="https://fonts.googleapis.com/css?family=Work%20Sans:300,500"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Work Sans</a>

7\.

Update **favicon.ico** with <a
href="https://content.codecademy.com/programs/react/jammming/favicon.ico"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this image</a>.

## Create Static Components

8\.

In this section, you will create a JavaScript file and a CSS file for
each of six components in the Jammming app. In the steps below, we will
link to the raw HTML templates and CSS to help you write the JSX for
each component.

In the HTML, we use comments to indicate where the JSX for one component
renders another component.

The HTML and CSS for each of the six components are listed below:

- **App** — <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/app/Apphtml.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">HTML</a> and <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/app/AppCss.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">CSS</a>
- **SearchBar** — <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/searchbar/searchbarhtml.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">HTML</a> and <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/searchbar/searchbarCss.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">CSS</a>
- **SearchResults** — <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/searchresults/searchresultsHtml.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">HTML</a> and <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/searchresults/searchresultsCss.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">CSS</a>
- **Playlist** — <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/playlist/playlisthtml.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">HTML</a> and <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/playlist/playlistCss.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">CSS</a>
- **TrackList** — <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/tracklist/tracklistHtml.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">HTML</a> and <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/tracklist/tracklistCss.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">CSS</a>
- **Track** — <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/track/trackhtml.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">HTML</a> and <a
  href="https://content.codecademy.com/programs/react/jammming/components-html-css/track/trackCss.txt"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">CSS</a>

We’ll walk through each implementing each component from the templates
provided in future steps.

9\.

Create a **src/Components** directory to hold the components.

10\.

Create a directory called **App/** in the **Components/** directory.

Move **App.js** and **App.css** to the **App/** folder and update the
path in **index.js** accordingly.

Additionally add <a
href="https://content.codecademy.com/programs/react/jammming/background_photo_desktop.jpg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this background image</a> to the
directory as well — it is used by the CSS file.

11\.

Inside of the **App.js** `.render()` method, add a return statement with
JSX that renders <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/app/Apphtml.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this HTML</a> .

Follow the guidelines below when you write the HTML (linked above) as
JSX:

- Change all class attributes to className.
- Do not change the class values, as we will use them in a later step to
  add style.

12\.

Use the comments in the HTML document from the last step to determine
the components you need to import into **App.js**.

Note, you will create a folder for each component. The JavaScript file
and CSS files for each component will live in the component’s folder.
The folder, JavaScript file, and CSS file will all have the same name.

13\.

Add <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/app/AppCss.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this CSS</a> to the **App.css** file.

Import **App.css** into **App.js**.

14\.

Create a **SearchBar/** directory in the **Components/** directory.

Inside of **SearchBar/**, add **SearchBar.js** and **SearchBar.css**.

15\.

Inside of **SearchBar.js** create a component called `SearchBar` with a
`.render()` method that returns <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/searchbar/searchbarhtml.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this HTML</a>.

Follow the guidelines below when you write the HTML (linked above) as
JSX:

- Change all class attributes to className.
- Do not change the class values, as we will use them in a later step to
  add style.

Use the comments in the HTML document to determine if you need to import
any components.

Export the `SearchBar` component.

16\.

Add <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/searchbar/searchbarCss.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this CSS</a> to the **SearchBar.css**
file.

Import **SearchBar.css** into **SearchBar.js**.

17\.

Create a **SearchResults/** directory in the **Components/** directory.

Inside of **SearchResults/**, add **SearchResults.js** and
**SearchResults.css**.

18\.

Inside of **SearchResults.js** create a component called `SearchResults`
with a `.render()` method that returns <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/searchresults/searchresultsHtml.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this HTML</a>.

Follow the guidelines below when you write the HTML (linked above) as
JSX:

- Change all class attributes to className.
- Do not change the class values, as we will use them in a later step to
  add style.

Use the comments in the HTML document to determine if you need to import
any components.

Export the `SearchResults` component.

19\.

Add <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/searchresults/searchresultsCss.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this CSS</a> to the **SearchResults.css**
file.

Import **SearchResults.css** into **SearchResults.js**.

20\.

Create a **Playlist/** directory in the **Components/** directory.

Inside of **Playlist/**, add **Playlist.js** and **Playlist.css**.

21\.

Inside of **Playlist.js** create a component called `Playlist` with a
`.render()` method that returns <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/playlist/playlisthtml.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this HTML</a>.

Follow the guidelines below when you write the HTML (linked above) as
JSX:

- Change all class attributes to `className`.
- Do not change the class values, as we will use them in a later step to
  add style.
- Change the `value` property to `defaultValue` and set it equal to
  `{'New Playlist'}`
- If you want, comment out `<TrackList />` since it doesn’t work without
  any props.

Use the comments in the HTML document to determine if you need to import
any components.

Export the `Playlist` component.

22\.

Add <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/playlist/playlistCss.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this CSS</a> to the **Playlist.css**
file.

Import **Playlist.css** into **Playlist.js**.

23\.

Create a **TrackList/** directory in the **Components/** directory.

Inside of **TrackList/**, add **TrackList.js** and **TrackList.css**.

24\.

Inside of **TrackList.js** create a component called `TrackList` with a
`.render()` method that returns <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/tracklist/tracklistHtml.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this HTML</a>.

Follow the guidelines below when you write the HTML (linked above) as
JSX:

- Change all class attributes to `className`.
- Do not modify the class values, as we will use them in a later step to
  add style.
- For now, you will hard code three tracks. In a later assessment, we
  will replace the hard-coded values with tracks from Spotify.

Use the comments in the HTML document to determine if you need to import
any components.

Export the `TrackList` component.

25\.

Add <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/tracklist/tracklistCss.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this CSS</a> to the **TrackList.css**
file.

Import **TrackList.css** into **TrackList.js**.

26\.

Create a **Track/** directory in the **Components/** directory.

Inside of **Track/**, add **Track.js** and **Track.css**.

27\.

Inside of **Track.js** create a component called `Track` with a
`.render()` method that returns <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/track/trackhtml.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this HTML</a>.

Follow the guidelines below when you write the HTML (linked above) as
JSX:

- Change all class attributes to `className`.
- Do not change the class values, as we will use them in a later step to
  add style.
- Create a method called `renderAction` that displays a `<button>`
  element with `-` as its content if the `isRemoval` property is true,
  and a `+` `<button>` element if the `isRemoval` property is false. Set
  the class name to `Track-action`.

Use the comments in the HTML document to determine if you need to import
any components.

Export the `Track` component.

28\.

Add <a
href="https://content.codecademy.com/programs/react/jammming/components-html-css/track/trackCss.txt"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this CSS</a> to the **Track.css** file.

Import **Track.css** into **Track.js**.

## Pass Down Search Result and Render Result List

29\.

In this section, you will pass the state of a search results parameter
through a series of components to render an array of tracks.

When a user requests data from Spotify, the JSON response will include a
set of song tracks. Each `track` will contain a field for `name`,
`artist`, and `album`. For each track in the results list, your Jammming
web app will display the song name, artist, and album.

In a later section, you will build a method that sets the state of the
search results parameter to a response from the Spotify API.

30\.

Add a constructor function to the `App` component, and pull in `props`
from the `React.Component` class.

31\.

Inside of the App component, set a hard-coded initial value for
`this.state.searchResults` (it will be an array containing track
objects).

32\.

Pass the state of the `App` component’s `searchResults` to the
`SearchResults` component.

33\.

Pass the search results from the `SearchResults` component to the
`TrackList` component.

34\.

In the `TrackList` component, use the `.map()` method to render each
track in the `tracks` property.

Set the `key` attribute to `track.id`.

35\.

Render the track name, artist, and album.

## Pass down Playlist to TrackList

36\.

In this section, you will pass the state of a user’s custom playlist
title and tracks from the App component down to components that render
them.

When a user adds songs from the search results list to their playlist, a
method will update the state of a playlist parameter in **App.js**, and
Jammming will render the song in the user’s playlist.

In a later assessment, you will write methods that add and remove songs
from the playlist. You will also write a method that updates the
playlist’s title.

37\.

Add hard-coded values for `playlistName` and `playlistTracks` to state
in **App.js**.

38\.

Pass the playlist name and tracks from the `App` component to the
`Playlist` component.

39\.

Pass the playlist tracks from the `Playlist` component to the
`TrackList` component.

## Add Tracks to a Playlist

40\.

In this section, you will implement a process for adding a song from the
search results track list to the user’s custom playlist.

You will add a method to **App.js** called `addTrack` that adds a song
to the playlist state. The application passes the method through a
series of components to `Track`. The user can trigger the `.addTrack()`
method by clicking the `+` sign from the search results list.

41\.

In **App.js** create a method called `addTrack` with the following
functionality:

- Accepts a `track` argument
- Use the track’s `id` property to check if the current song is in the
  `playlistTracks` state.
- If the `id` is new, add the song to the end of the playlist.
- Set the new state of the playlist

42\.

Bind the current value of `this` to `.addTrack()`.

Pass `.addTrack()` to the `SearchResults` component as an `onAdd`
attribute.

43\.

Pass `onAdd` from the `SearchResults` component to the `TrackList`
component.

Pass `isRemoval` with a value of false down to `TrackList`.

44\.

Pass `onAdd` from the `TrackList` component to the `Track` component.

45\.

Create an `.addTrack()` method in the `Track` component. Use it to add
`this.props.track` to the playlist.

46\.

Add a constructor to the `Track` component. Call `super(props)` in the
constructor method.

Bind `this.addTrack()` to the current value of `this` in the constructor
method.

47\.

In the **Track.js** `+` element, add an `onClick` property with the
value set to `this.addTrack`.

## Remove Tracks from a Playlist

48\.

In this section, you will implement a process that removes a song from a
user’s custom playlist when the user selects the `-` sign inside of a
rendered track.

49\.

In **App.js** create a method called `removeTrack` with the following
functionality:

- Accepts a track argument
- Uses the track’s `id` property to filter it out of `playlistTracks`
- Sets the new state of the playlist

50\.

In the `App` constructor method, bind the current value of `this` to
`.removeTrack()`.

Pass `.removeTrack()` to the `Playlist` component as an `onRemove`
attribute.

51\.

Pass `onRemove` from the `Playlist` component to the `TrackList`
component.

Pass `isRemoval` with a value of true down to `TrackList`.

52\.

Pass `onRemove` and `isRemoval` from the `TrackList` component to the
`Track` component.

53\.

Create a `.removeTrack()` method in the `Track` component. Use it to
remove `this.props.track` from the playlist.

54\.

In **Track.js**, bind `this.removeTrack()` to the current value of
`this` in the constructor method.

55\.

In the **Track.js** `-` element, add an `onClick` property with the
value set to the `this.removeTrack` method.

## Change the Name of a Playlist

56\.

In this section, you will implement code that allows a learner to change
the name of their playlist, and save the updated value to the `App`
component’s state.

57\.

In **App.js** create a method called `updatePlaylistName` with the
following functionality:

- Accepts a name argument
- Sets the state of the playlist name to the input argument

58\.

In the `App` constructor method, bind `this` to `.updatePlaylistName()`.

Pass `updatePlaylistName` to the `Playlist` component as an attribute
named `onNameChange`.

59\.

In the `Playlist` component, create a method called `handleNameChange`.

The method should accept an event that is triggered by an `onChange`
attribute in the `Playlist` component’s `<input>` element.

Inside the method, call `.onNameChange()` with the event target’s value
(from the `<input>` element).

60\.

Add a constructor to the `Playlist` component. Call `super(props)` in
the constructor method.

Bind the current value of `this` to `.handleNameChange()`.

61\.

In the `Playlist` render method, pass `.handleNameChange()` to an
`onChange` property.

## Create a Method that Saves the Playlist to a User’s Account

62\.

In this section, you will create a method that will save a user’s
playlist to their Spotify account and resets the state of the playlist
name and tracks array.

To accomplish the goal of this assessment, you will need to access a
`track` property named <a
href="https://developer.spotify.com/web-api/user-guide/#spotify-uris-ids"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">uri</a>. Spotify uses this field to
reference tracks in the Spotify library. You will create an array
containing the `uri` of each track in the `playlistTracks` property.

In a later section, you will pass the playlist name and the array of
`uri`s to a Spotify-linked method that writes the tracks in
`playlistTracks` to a user’s account.

63\.

In **App.js** create a method called `savePlaylist` with the following
functionality:

- Generates an array of `uri` values called `trackURIs` from the
  `playlistTracks` property.
- In a later step, you will pass the `trackURIs` array and
  `playlistName` to a method that will save the user’s playlist to their
  account.

64\.

Bind the current value of `this` to `.savePlaylist()`.

Pass `savePlaylist` to the `Playlist` component as an attribute called
`onSave`.

65\.

In the **Playlist.js** `SAVE TO SPOTIFY` button element, add an
`onClick` property with the value set to `this.props.onSave`.

## Hook up Search Bar to Spotify Search

66\.

In this section, you will create a method that updates the
`searchResults` parameter in the `App` component with a user’s search
results. You will write the logic that allows a user to enter a search
parameter, receives a response from the Spotify API, and updates the
`searchResults` state with the results from a Spotify request.

In a later section, you will hook the `.search()` method up to the
Spotify API.

67\.

In **App.js** create a method called `search` with the following
functionality:

- Accepts a search term
- Logs the term to the console

In a later assessment, we will hook this method up to the Spotify API.

68\.

In the `App` constructor method, bind `this` to `.search()`. In a later
assessment, we will use `this` in `.search()`.

Pass `.search()` to the `SearchBar` component as an `onSearch`
attribute.

69\.

In **SearchBar.js**, create a method called `search` that passes the
state of the term to `this.props.onSearch`.

70\.

In the `SearchBar` component, create a constructor method with a call to
`super(props)`.

Inside of the constructor, bind the current value of `this` to
`.search()`.

71\.

In **SearchBar.js** create a method called `handleTermChange` with the
following functionality:

- Accepts an event argument
- Sets the state of the search bar’s term to the event target’s value.

72\.

In the **SearchBar.js** constructor method, bind the current value of
`this` to `this.handleTermChange`.

73\.

In the search bar’s `<input>` element, add an `onChange` attribute and
set it equal to `this.handleTermChange`.

## Obtain a Spotify Access Token

74\.

In the next few sections, you will write three methods that accomplish
the following:

- Get a Spotify user’s access token
- Send a search request to the Spotify API
- Save a user’s playlist to their Spotify account.

Before you begin, you will need to create an empty JavaScript module
called `Spotify` located in **src/util/Spotify.js**.

In this assessment, you will register a Spotify application and create a
method called `getAccessToken` in the `Spotify` module. The method will
get a user’s access token so that they can make requests to the Spotify
API.

Use the
<a href="https://developer.spotify.com/my-applications/#!/applications"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Spotify Applications Registration
Flow</a> and <a
href="https://developer.spotify.com/web-api/authorization-guide/#implicit_grant_flow"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Spotify Authentication guide</a> to help
you write the method.

75\.

Create a **src/util** directory and add a file called **Spotify.js**

76\.

In **Spotify.js** create a `Spotify` module as an empty object.

At the bottom of **Spotify.js** export `Spotify`.

77\.

Above the empty object, declare an empty variable that will hold the
user’s access token.

78\.

Inside the `Spotify` module, create a method called `getAccessToken`.

Check if the user’s access token is already set. If it is, return the
value saved to access token.

79\.

If the access token is not already set, check the URL to see if it has
just been obtained.

You will be using the <a
href="https://developer.spotify.com/documentation/general/guides/authorization-guide/#implicit-grant-flow"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Implicit Grant Flow</a> to setup a user’s
account and make requests. The implicit grant flow returns a user’s
access token in the URL.

Use the guide to determine how to parse the URL and set values for your
access token and expiration time.

Look at the hint if you help parsing the URL.

80\.

If the access token and expiration time are in the URL, implement the
following steps:

- Set the access token value
- Set a variable for expiration time
- Set the access token to expire at the value for expiration time
- Clear the parameters from the URL, so the app doesn’t try grabbing the
  access token after it has expired

The hint below contains the code that wipes the access token and URL
parameters.

81\.

The third condition is that the access token variable is empty and is
not in the URL.

Before you write this conditional code block, you need to register your
application using the
<a href="https://developer.spotify.com/my-applications/#!/applications"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Spotify application registration
flow</a>.

Give your application a relevant name and description. Also, add the
following Redirect URI:

``` jsx
http://localhost:3000/
```

82\.

At the top of **Spotify.js** create constant variables for your
application’s client ID and redirect URI.

Set the client ID variable to the value provided on your application
page.

Set the redirect URI to `"http://localhost:3000/"`.

83\.

Back in your conditional statement, redirect users to the following URL:

``` jsx
https://accounts.spotify.com/authorize?client_id=CLIENT_ID&response_type=token&scope=playlist-modify-public&redirect_uri=REDIRECT_URI
```

Interpolate your client ID and redirect URI variables In place of
`CLIENT_ID` and `REDIRECT_URI`.

## Implement Spotify Search Request

84\.

In this section, you will create a method in **Spotify.js** that accepts
a search term input, passes the search term value to a Spotify request,
then returns the response as a list of tracks in JSON format.

You will need the user’s access token to make requests to the Spotify
API. You will use the request parameters in step four of the <a
href="https://developer.spotify.com/web-api/authorization-guide/#implicit_grant_flow"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">implicit grant flow</a> to make requests.
In the following steps, we will use `fetch()` to make our requests, but
any method will work.

You should use the `/v1/search?type=TRACK` endpoint when making your
request. Use the
<a href="https://developer.spotify.com/web-api/endpoint-reference/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Spotify Web API Endpoint Reference</a> to
help format your request.

85\.

In the `Spotify` object, add a method called `search` that accepts a
parameter for the user’s search term.

`.search()` returns a promise that will eventually resolve to the list
of tracks from the search.

86\.

Inside `.search()`, start the promise chain by returning a GET request
(using `fetch()`) to the following Spotify endpoint:

``` jsx
https://api.spotify.com/v1/search?type=track&q=TERM
```

Replace the value of `TERM` with the value saved to the search term
argument.

Add an Authorization header to the request containing the access token.

87\.

Convert the returned response to JSON.

Then, map the converted JSON to an array of tracks. If the JSON does not
contain any tracks, return an empty array.

The mapped array should contain a list of track objects with the
following properties:

- ID — returned as `track.id`
- Name — returned as `track.name`
- Artist — returned as `track.artists[0].name`
- Album — returned as `track.album.name`
- URI — returned as `track.uri`

88\.

In **App.js**, import `Spotify` and update the `.search()` method with
the `Spotify.search()` method.

Update the state of `searchResults` with the value resolved from
`Spotify.search()`’s promise.

## Save a User’s Playlist

89\.

In this section, you will create a method called `savePlaylist` that
writes the learner’s custom playlist in Jammming to their Spotify
account.

The `.savePlaylist()` method accepts a playlist name and an array of
track URIs. It makes the following three requests to the Spotify API:

- GET current user’s ID
- POST a new playlist with the input name to the current user’s Spotify
  account. Receive the playlist ID back from the request.
- POST the track URIs to the newly-created playlist, referencing the
  current user’s account (ID) and the new playlist (ID)

You will update the `.savePlaylist()` method in **App.js** to use the
new `Spotify.savePlaylist()` method.

90\.

Create a method in **Spotify.js** that accepts two arguments. The first
argument is the name of the playlist. The second is an array of track
URIs.

Inside the function, check if there are values saved to the method’s two
arguments. If not, return.

91\.

Create three default variables:

- An access token variable, set to the current user’s access token
- A headers variable, set to an object with an `Authorization` parameter
  containing the user’s access token in the <a
  href="https://developer.spotify.com/web-api/authorization-guide/#implicit_grant_flow"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">implicit grant flow request format</a>
- An empty variable for the user’s ID

92\.

Make a request that returns the user’s Spotify username.

Convert the response to JSON and save the response `id` parameter to the
user’s ID variable.

93\.

Use the returned user ID to make a POST request that creates a new
playlist in the user’s account and returns a playlist ID.

Use the
<a href="https://developer.spotify.com/web-api/playlist-endpoints/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Spotify playlist endpoints</a> to find a
request that creates a new playlist.

Set the playlist name to the value passed into the method.

Convert the response to JSON and save the response `id` parameter to a
variable called `playlistID`.

94\.

Use the returned user ID to make a POST request that creates a new
playlist in the user’s account and returns a playlist ID.

Use the
<a href="https://developer.spotify.com/web-api/playlist-endpoints/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Spotify playlist endpoints</a> to find a
request that adds tracks to a playlist.

Set the URIs parameter to an array of track URIs passed into the method.

Convert the response to JSON and save the response `id` parameter to a
variable called `playlistID`.

95\.

In **App.js** update the `.savePlaylist()` method to call
`Spotify.savePlaylist()`.

After you call `Spotify.savePlaylist()`, reset the state of
`playlistName` to `'New Playlist'` and `playlistTracks` to an empty
array.

## Deploy (Optional)

96\.

In this section, you will use <a href="https://surge.sh/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">surge</a> to deploy your Jammming
project.

You will start by installing surge globally.

In your console, run `npm install --global surge`.

97\.

Before you deploy, you need to think of a domain name with the following
format:

``` jsx
SOME_NAME.surge.sh
```

`SOME_NAME` can be replaced with anything you like.

Next, you need to replace or add this URI to two locations in your
project.

- In *\*Spotify.js*, set `redirectUri` to your new domain
- In your
  <a href="https://developer.spotify.com/my-applications/#!/applications"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Spotify application</a>, add your new
  domain as a redirect URI

98\.

Back in the command line, from the Jammming project’s root directory,
run:

``` jsx
$ npm run build
```

99\.

`cd` into the `build` directory and run the command

``` jsx
$ surge
```

Follow the steps on the screen. Change the domain value to your new URI.

Congrats! You’ve just deployed a React App that queries the Spotify API!

### [Solution](jammming-prj)

# Create a Playlist App With the Spotify API (Part Two)

In this project, you will select a feature that you think should be
added to your Jammming app. You will use this <a
href="https://static-assets.codecademy.com/Courses/Full-stack-career-path/Feature%20Request%20Template.docx"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">technical design document template</a> to
lay out all of the necessary functionality of this feature, how the
feature should be implemented, and why you chose that specific approach.
This is an essential step in the development process, so we encourage
you to think carefully and thoroughly about your feature and
implementation as you work on this project.

<a
href="https://static-assets.codecademy.com/Courses/Full-stack-career-path/Example%20Feature%20Request%20-%20Jammming.docx"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Here is an example of a technical design
document</a> for implementing multiple playlists in Jammming. You should
use it as a resource when deciding what level of information you should
include in your design document.

You can pick any feature you want for this project, but we have provided
a list of potential options at the end of this article for inspiration.
We can’t wait to see your cool new features and unique solutions!

**How to Get Started**

To start this project, you will need to make a copy of our <a
href="https://static-assets.codecademy.com/Courses/Full-stack-career-path/Feature%20Request%20Template.docx"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">technical design document template</a>.
Open the template in a new tab and then copy the file by selecting all
of the content (by clicking and dragging over all of the content, or
pressing <span class="kbd">Ctrl</span> + <span class="kbd">a</span>) and
then pressing copy (by selecting the “Edit” tab and clicking “Copy”, or
by pressing <span class="kbd">Ctrl</span> + <span class="kbd">c</span>).
Then create a new document by navigating to docs.google.com and
selecting “Start a New Document \> Blank”. Finally, paste the contents
of the template into the new document (by selecting the “Edit” tab and
clicking “Paste”, or by pressing <span class="kbd">Ctrl</span> +
<span class="kbd">v</span>). Update the name of the document to
something descriptive, and you’ll be ready to work on your project.

**Potential Jammming Features:**

- Include preview samples for each track
- Only display songs not currently present in the playlist in the search
  results
- Add a loading screen while playlist is saving
- Update the access token logic to expire at exactly the right time,
  instead of setting expiration from when the user initiates their next
  search
- After user redirect on login, restoring the search term from before
  the redirect
- Ensure playlist information doesn’t get cleared if a user has to
  refresh their access token

### Instructions

Mark the tasks as complete by checking them off

## Complete Project

1\.

Use the information above to complete this project.

### [Solution](jammming-prj)

# Getting Started with Netlify

Create a Netlify account and learn how it can be used to easily share
your websites with the world.

## What is Netlify?

Put simply, Netlify is an all-in-one platform that makes it incredibly
easy to deploy static web applications to the world in record time.

Netlify explains that “1,000,000+ developers and businesses use Netlify
to run web projects at global scale—without servers, devops, or costly
infrastructure.” As you’ll soon see, so many people rely on Netlify
because it takes care of much of this complexity associated with
developing, deploying, and hosting web applications.

Netlify is perfect for many projects because of the following:

- Deploying
  <a href="https://en.wikipedia.org/wiki/Minimum_viable_product"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Minimum Viable Products</a> and
  <a href="https://en.wikipedia.org/wiki/Proof_of_concept"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Proof of Concepts</a> can be
  accomplished in a matter of minutes.
- Many site configurations are already handled, so you can avoid
  unnecessary details and instead focus on creating your actual
  projects.
- <a href="https://en.wikipedia.org/wiki/Continuous_deployment"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Continuous Deployment</a> enables you
  to auto-publish every time you push a commit on GitHub.

Now that you know the basics of Netlify, it’s time to sign up for a free
account so that you can deploy websites!

## Signing Up

To create a free account, navigate to the
<a href="https://www.netlify.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Netlify</a> website and click the **Sign
up** button in the upper-right corner. You should be redirected to a
page that includes the following options to create an account:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_oauth_options.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the sign up options" />

For the purpose of this article, the **Email** sign up option will be
used. However, you can create an account using any of the OAuth methods
(in fact, signing up with **GitHub** may save you time later on).

After clicking the **Email** option, you’ll be asked to enter the email
and password that you want to use for your Netlify account:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_email_signup2.jpeg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of creating an account with the Email option" />

After you sign up and verify your email, you’ll have access to your new
personal dashboard. Your dashboard won’t have any projects yet and
should look similar to:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_dashboard.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the Netlify dashboard" />

It’s that simple to create an account! You’re ready to deploy websites
through Netlify, but let’s first learn more about the various services
and plans that are available.

## Plans and Services

Netlify offers many plans and services to fit each project’s needs and
empower developers like you to effortlessly share them with the world.

What’s more, Netlify provides a generous free “Starter” plan, which is
perfect for personal projects, hobby sites, or experiments. When you
create an account by following the steps above, you’re automatically
enrolled in this plan. Specifically, you’ll have access to the following
services with the “Starter” plan:

- Automated builds from Git so that your sites auto-publish when you
  push commits on GitHub (built-in Continuous Deployment).
- Deploy to the global <a href="https://www.netlify.com/products/edge/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Edge</a> network, an extremely fast and
  resilient network for handling complex tasks and running custom logic.
- Site previews for every push to test and verify changes before putting
  them into production.
- Instant rollbacks to any version so that you can easily reverse any
  changes.
- Deploy static assets and
  <a href="https://www.netlify.com/products/functions/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">dynamic serverless functions</a>, which
  provides greater flexibility when building and scaling sites.
- And so much <a href="https://www.netlify.com/pricing/#features"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">more</a>!

However, if you need even more functionality, you can look into the
<a href="https://www.netlify.com/pricing/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">paid plans</a>.

### Even More Capabilities

As you work more with Netlify, you’ll find that it has
<a href="https://docs.netlify.com/#discover-netlify"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">so many other services</a> to offer, such
as:

- Various ways to monitor your websites through real-time logs,
  notifications, and analytics that provide trends of in site activity.
- The ability to easily add custom domains and set up HTTPS for free.
- Pre-built form handling, which eliminates the need for implementing
  APIs or extra JavaScript to create forms on your websites.
- Visitor access mechanisms that enable you to control which parts of
  your website are public and even authenticate users.

## Wrapping Up

You’ve created an account and learned about some of the capabilities of
Netlify, along with seeing how it can be incorporated into your
development process. However, these are just the basics — you’ll soon
learn how to deploy websites right from your Netlify account.

If you wish, you can get a head start and explore the various tools that
you now have access to in your Netlify dashboard! Head over to
<a href="https://docs.netlify.com/site-deploys/overview/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Netlify’s documentation</a> to learn more
about deploying websites, or click “Next” to follow our tutorial.

# Deploying a Static Site with Netlify

Learn how to easily deploy a static site through Netlify’s GitHub
integration.

## Deploying a static site

If you want to share a site that doesn’t have a backend and provides the
same information to all visitors, then deploying a static site would be
perfect. As you know, the most efficient way to deploy these static
sites is through Netlify.

To do so, you’ll need to have the following:

- A Netlify account, which can be created step-by-step in <a
  href="https://www.codecademy.com/articles/getting-started-with-netlify"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">“Getting Started with Netlify”</a>.
- A <a href="https://www.codecademy.com/resources/docs/general/github"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">GitHub</a> account that you’ll be using to <a
  href="https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/fork-a-repo"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">fork</a> an existing repository. If you
  don’t know how to fork a repository, check out our
  <a href="https://www.codecademy.com/learn/learn-git"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">course on GitHub</a>.

### Forking the repository

For the purpose of this article, we’ll be using Codecademy’s <a
href="https://github.com/Codecademy/deploying-a-static-site-with-netlify-sample"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"
rel="noopener">“deploying-a-static-site-with-netlify-sample”
repository</a>. You can use your own repository if you wish, but you’ll
have to modify the following steps accordingly.

To fork the repository to your personal GitHub account, click the
**Fork** button on the <a
href="https://github.com/Codecademy/deploying-a-static-site-with-netlify-sample"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">original repository’s page</a>:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/github_fork_button.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the GitHub &quot;Fork&quot; button" />

You should then have your own copy of the
“deploying-a-static-site-with-netlify-sample” repository, which you’ll
soon deploy.

## Using Netlify

Let’s get started with deploying the GitHub repository — it only takes a
few simple steps! First, make sure you’re logged in to your Netlify
account and then go to your <a href="https://app.netlify.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">dashboard</a>.

### Creating a site from Git

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_dashboard.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the Netlify dashboard" />

In your Netlify dashboard, click **New site from Git** to start the
deployment process. You’ll be directed to a page that shows the first
step, which is connecting to your Git provider:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_new_site2.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of connecting to the Git provider" />

You should select the **GitHub** option because that is where your
forked repository is hosted. However,
<a href="https://about.gitlab.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><strong>GitLab</strong></a> and
<a href="https://bitbucket.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><strong>Bitbucket</strong></a> are
available if you want to use those for other projects.

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_github_authorization_page2.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of authorizing Netlify to connect with GitHub" />

If you didn’t create your Netlify account using GitHub, you’ll need to
provide connection permissions by clicking **Authorize Netlify**. Doing
so will eventually allow Netlify to connect with the GitHub repository
that you want to deploy.

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_github_installation_permissions.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of installing Netlify on GitHub" />

You also need to install Netlify to your GitHub account by clicking
**Install**. Note that you may have to enter your GitHub password again.

If you successfully connected your GitHub account to Netlify, you should
see your GitHub username and forked
“deploying-a-static-site-with-netlify-sample” repository under
“Continuous Deployment: GitHub App”, somewhat like:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_picking_github_repo.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of picking a GitHub repository" />

Choose the “**deploying-a-static-site-with-netlify-sample**“ repository
to link it with Netlify.

In the next step, check that the “Owner” dropdown is set to the correct
team (your Netlify account name in this case) and “Branch to deploy” is
set to **main**, like:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_repo_permissions.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the top part of the build options" />

Scrolling down, you’ll see options for “Basic build settings”:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_build_options.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the bottom part of the build options" />

Regarding the “Build command” and “Publish directory”, note the
following:

- Because this is an HTML, CSS, and JavaScript build, there is no need
  for <a
  href="https://docs.netlify.com/configure-builds/get-started/#definitions"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener"><em>build commands</em></a>, which are
  instructions that Netlify uses to build certain types of sites like
  those from frontend
  <a href="https://www.codecademy.com/resources/docs/general/framework"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">frameworks</a> and <a
  href="https://www.codecademy.com/resources/docs/general/static-site-generators"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">static site generators</a>.
- Since no build commands are used for this site, you also don’t need a
  *publish directory*, which would contain deploy-ready HTML files and
  assets generated by the build.

You’re now ready to deploy, so click **Deploy site**! You’ll then be
directed to the site’s dashboard:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_prod_progress.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the site dashboard with deployment in progress" />

The build status should continue to show “Site deploy in progress” and
“Deploying your site” until the site has been successfully deployed. At
that point, the status will change to “Your site is deployed” and you’ll
see a link to your deployed site:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_completed_deploy2.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the site dashboard with deployment completed" />

Click the link, and you’ll be directed to your deployed site:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_sample_site.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the deployed site" />

Notice that the page’s background color changes every time you click the
👏 (clap) button!

### Production deploys

You can check the ongoing log that contains in-depth information about
the site’s build status, which is especially useful for debugging any
errors that may arise. To see these logs, scroll down to the “Production
deploys” section of the **Site overview** tab:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_production_deploys_log.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the &quot;Production deploys&quot; section" />

#### Analyzing the logs

In the logs, you should specifically look for “Published” or “Failed”
statuses:

- A “Published” status means that your site has been successfully
  deployed.
- A “Failed” status means that something went wrong in the deployment
  process.

Since every project is unique, the best way to fix a “Failed” deployment
is to either google the error or browse through
<a href="https://docs.netlify.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Netlify’s documentation</a>. With that
being said, you may find the following resources from Netlify to be
helpful:

- <a
  href="https://docs.netlify.com/configure-builds/troubleshooting-tips/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Build troubleshooting tips</a>
- <a href="https://community.netlify.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Netlify Community forum</a>
- <a
  href="https://community.netlify.com/t/support-guide-frequently-encountered-problems-during-builds/213"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Frequently encountered problems during
  builds guide</a>

#### Making changes to the site

Next, select the **Deploys** tab located at the top of the site
dashboard:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_deploys_tab.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the &quot;Deploys&quot; tab" />

Notice that “Auto publishing is on”, meaning that your site
automatically deploys each time you push a commit on GitHub (<a
href="https://docs.netlify.com/site-deploys/create-deploys/#deploy-with-git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">continuous deployment</a>). Although not
recommended, you can turn this setting off by clicking **Stop auto
publishing**.

To make changes to your site, update your forked GitHub repository.
Here’s a simple example for changing the site’s heading (note that these
steps are specific to the GitHub website interface):

1.  Navigate back to your forked
    “deploying-a-static-site-with-netlify-sample” repository and make an
    edit to the `<h1>` text (e.g., you could change the text inside the
    `<h1>` element from “Welcome to your website!” to “Welcome to Jane’s
    website!”).
2.  Commit your changes and wait a few moments for Netlify to update the
    build.
3.  Like before, you can monitor the build status through the site’s
    dashboard in your Netlify account.
4.  After the build is complete, you should notice a difference in your
    published site’s heading — it’s that easy to make changes to your
    Netlify site!

### Site settings

Let’s now explore the **Site settings** tab, also at the top of the site
dashboard:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_site_settings.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the &quot;General&quot; section of the &quot;Site settings&quot; tab" />

#### Changing the site name

Notice that the name of your site is randomly generated by Netlify. To
rename your site to something more appropriate, click the **Change site
name** button located in the “Site information” panel. From there, you
can **Save** a new unique name, which also determines the site’s default
URL, like so:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_change_site_name.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of changing the site&#39;s name" />

#### Build settings

Next, click the **Build & deploy** tab on the left to see even more
settings that you can manipulate:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_build_deploy.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the &quot;Build &amp; deploy&quot; section of the &quot;Site settings&quot; tab" />

You’ll first notice a panel for <a
href="https://docs.netlify.com/configure-builds/get-started/#basic-build-settings"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“Build settings”</a>. As touched upon
before, many frontend frameworks like
<a href="https://www.codecademy.com/resources/docs/react"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">React</a> and static site generators like <a
href="https://www.codecademy.com/learn/deploy-a-website/modules/deploy-a-website-create-a-website-u"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Jekyll</a> require <a
href="https://docs.netlify.com/configure-builds/common-configurations/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">special build commands</a> that tell
Netlify how to build your specific site. Build commands weren’t used in
this case because it’s only a JavaScript, HTML, and CSS site without any
frontend frameworks or static site generators.

#### Deploy notifications

While still in the **Build & deploy** tab on the left, jump down to the
**Deploy notifications** section:

<img
src="https://static-assets.codecademy.com/Courses/Deploy-with-Heroku-and-Netlify/netlify_deploy_notifications3.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the &quot;Deploy notifications&quot; section of the &quot;Site settings&quot; tab" />

Here you can configure
<a href="https://docs.netlify.com/site-deploys/notifications/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">deploy notifications</a>, which can
inform you or external services about your site’s deploy activity. For
example, the various types of
<a href="https://www.codecademy.com/resources/docs/git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Git</a> notifications can do things like <a
href="https://docs.netlify.com/site-deploys/notifications/#github-pull-request-comments"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">add a comment to your GitHub pull
requests</a> indicating the status of the associated deploy.

Note that some types of notifications are only available with paid
<a href="https://www.netlify.com/pricing/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Netlify plans</a>.

## Wrapping up

Congrats! You’ve just deployed your very own static site using Netlify,
and you now know how to share your websites with the world.
Specifically, you learned about:

- The use-case of static sites.
- Deploying a static site through Netlify’s GitHub integration.
- Analyzing the site logs and debugging “Failed” deployments.
- Using auto publishing to make changes to the site.
- Various site settings like build commands and deploy notifications.

Most importantly, notice how many configurations Netlify handled
throughout the process — deploying an entire site only took a few
clicks!

Although you’ve used Netlify to deploy a static site, there’s
<a href="https://www.codecademy.com/article/going-beyond-with-netlify"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">so much more</a> that it can do! Features like pre-built
forms, in-depth analytics, and built-in user authentication can take
your websites even further.

# Create and Share a React App on GitHub

Learn how to use the Create React App command-line tool and upload your
project to GitHub.

So, you’ve learned the fundamentals of React and now you want to share
your work with the world? In just a few minutes, you can create a fully
structured React application on your own computer and share it on
GitHub. Let’s get started!

## Create a React app on your own computer

While you can start building your own React applications from scratch,
the recommended approach is to use the
<a href="https://create-react-app.dev/docs/getting-started"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Create React App (CRA) terminal
command</a>:

``` jsx
npx create-react-app my-react-app
```

If you have already read the article on
<a href="https://www.codecademy.com/articles/how-to-create-a-react-app"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">how to create a react app</a>, you should be familiar
with the first three parts of this command,
`npx create-react-app my-react-app`.

## Create a new repository on GitHub

In addition to creating the starting structure for your application, the
CRA command-line tool also initializes your project folder as a
<a href="https://www.codecademy.com/learn/learn-git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Git</a> project. This means that you are already set up
to connect your project to a GitHub repository!

Head over to <a href="https://github.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">github.com</a> and sign into your
account, or create an account if you don’t have one already. Once you’re
signed in, find the + icon in the top right corner and select “New
Repository”.

<img
src="https://static-assets.codecademy.com/skillpaths/react-redux/deployment/new-repo.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="The &quot;New repository&quot; button can be found by selecting the &quot;plus&quot; icon in the top right hand corner" />

When configuring your GitHub repository, there are a few important
fields to fill out. Your final configuration should look like this:

<img
src="https://static-assets.codecademy.com/skillpaths/react-redux/deployment/new-repo-config-react-only.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Your new repository should have the same name as your CRA project name and all three boxes at the bottom should be unchecked" />

A few things to note:

- Make sure the repository name matches the name of your React
  application from earlier in the article, in our example, it’s
  `my-react-app`.
- Leave all three boxes at the bottom unchecked (README, .gitignore, and
  LICENSE).

Once your repository configuration is looking good, click “Create
repository”!

## Push your project code to the GitHub “remote” repository

After creating the GitHub repository, you will be presented with a few
options for uploading your project code. The middle option is the one
that you’ll want to follow:

`"...or push an existing repository from the command line"`

As mentioned earlier in this article, the CRA command-line tool already
initialized our React app as a Git project. This means that all we have
to do is run three commands in our terminal:

``` jsx
cd my-react-app
git remote add origin https://github.com/username/my-react-app.git
git branch -M main
git push -u origin main
```

Make sure to replace `my-react-app` with the name of your own project
and `username` with your own GitHub username! You can find the full URL
for your GitHub repository at the top of the page. It should follow the
pattern `https://github.com/your-username/your-repository-name.git`:

<img
src="https://static-assets.codecademy.com/skillpaths/react-redux/deployment/git-url-react-only.png"
class="img__1JGFO2nlisObc3KeOSGPRp" />

Finally, return to your GitHub repository page. You should now see that
your code has been uploaded! If you run into any issues while using the
GitHub CLI (it happens to all of us), check out this article on <a
href="https://docs.github.com/en/github/importing-your-projects-to-github/adding-an-existing-project-to-github-using-the-command-line"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">adding an existing project to GitHub
using the command line</a>.

## Next Steps

In this article, you learned how to create a React application using the
<a href="https://create-react-app.dev/docs/getting-started"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Create React App (CRA) terminal
command</a>. While you can create React applications from scratch, the
CRA command-line tool handles the setup for your project’s file
structure and ensures that the proper React tools are being used.

You also learned how to upload an existing git project to a GitHub
repository. Now that your project has been uploaded to GitHub, you can
share your creation with the world or even <a href="REPLACE"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">deploy your project using Netlify</a>!

# Deploy Your React App to Netlify

Combine what you have learned about using the Create React App
command-line tool and deploying static sites with Netlify to deploy your
React application.

Now that you have read through the <a href="REPLACE"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Create and Share a React App on GitHub</a> article,
you’re ready to deploy your React app with Netlify.

Follow the steps outlined in the <a href="REPLACE"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Deploying a Static Site with Netlify</a> article to
deploy your React app made with the Create React App command-line tool.

As you follow these steps, you should be aware that React applications
are NOT static. Instead, they need to go through a build phase to
generate the static assets served by Netlify.

To properly configure your React application on Netlify, make sure that
you have the following configurations set for the fields “Build command”
and “Publish directory” (they should already be there):

- Build command: `npm run build`
- Publish directory: `build/`

These configurations will make sure that the non-public files are
properly compiled into static assets that can be safely served to
clients.

Once you have successfully deployed your application on Netlify, you can
move on. As you work on React projects on your own computer, use the
`git push` command to upload your changes and, thanks to Netlify’s
integration with GitHub, all changes pushed to your repository will be
applied to your deployed website.

# Function Components

## Stateless Functional Components

In the code editor, take a look at **Example.js**. The first `Example`
component is defined as a JavaScript class, but it doesn’t have to be!
In React, we can also define components as JavaScript functions — we
call them *function components* to differentiate them from *class
components*.

In the latest versions of React, function components can do everything
that class components can do. In most cases, however, function
components offer a more elegant, concise way of creating React
components. This lesson will focus on converting a class component to a
function component and adding props, which are available in all versions
of React.

Compare the `Example` class component and the `Example` function
component. For the most basic function components, all you need to do is
remove the beginning `render() {` and ending `}` of the `render()`
method:

``` jsx
render() { // Delete this
  return <h1>Hello</h1>
} // Delete this
```

To put it in other words: the function component should return the same
JSX that was originally returned by the `render()` method.

### Instructions

**1.**

Select **Friend.js**.

Rewrite the `Friend` component class as a function component.

Use **Example.js** as a guide. Make sure to delete the original `Friend`
class component when you’re done.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

export const Friend = () => {
  return <img src="https://content.codecademy.com/courses/React/react_photo-octopus.jpg" />;
};

ReactDOM.render(
    <Friend />,
    document.getElementById('app')
);
```

``` jsx
// A component class written in the usual way:
export class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}

// The same component class, written as a stateless functional component:
export const MyComponentClass = () => {
  return <h1>Hello world</h1>;
}

// Works the same either way:
ReactDOM.render(
    <MyComponentClass />,
    document.getElementById('app')
);
```

## Function Components and Props

Like any component, function components can receive information via
`props`.

To access these `props`, give your function component a parameter named
`props`. Within the function body, you can access the props using this
pattern: `props.propertyName`. You don’t need to use the `this` keyword.

``` jsx
export function YesNoQuestion (props) {
  return (
    <div>
      <p>{props.prompt}</p>
      <input value="Yes" />
      <input value="No" />
    </div>
  );
}
 
ReactDOM.render(
  <YesNoQuestion prompt="Have you eaten an apple today?" />,
  document.getElementById('app');
);
```

In the above example, we pass a value of “Have you eaten an apple
today?” as the `prompt` prop when rendering `YesNoQuestion`.

### Instructions

**1.**

Open **NewFriend.js**.

Rewrite the `NewFriend` class component as a function component.

Make sure to delete the original `NewFriend` class when you’re done.

Click Run and make sure that your new friend is still there!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

export const NewFriend = (props) => {
  return (
    <div>
      <img src={props.src} />
    </div>
  );
}

ReactDOM.render(
  <NewFriend src="https://content.codecademy.com/courses/React/react_photo-squid.jpg" />,
  document.getElementById('app')
);
```

## Review

Well done! You’ve written your first function component. Here’s a recap:

- *Function components* are React components defined as JavaScript
  functions
- Function components must return JSX
- Function components may accept a `props` parameter. Expect it to be a
  JavaScript object

Although function components and class components can do the same
things, you’ll see a lot of function components in the React
documentation and example apps. Some developers prefer them over class
components for their simplicity and straightforward features, like
Hooks, which you’ll learn later in your coding journey.

### Instructions

Take a look at the example in the code editor. Make sure the code makes
sense before moving on!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

// <Friend /> as function component
export const Friend = () => {
  return <img src='https://content.codecademy.com/courses/React/react_photo-octopus.jpg' />;
}

// <Friend /> as class component
// export class Friend extends React.Component {
//  render() {
//      return <img src='https://content.codecademy.com/courses/React/react_photo-octopus.jpg' />;
//  }
// }

ReactDOM.render(
    <Friend />,
    document.getElementById('app')
);
```

``` jsx
// A component class written in the usual way:
export class MyComponentClass extends React.Component {
  render() {
    return <h1>Hello world</h1>;
  }
}

// The same component class, written as a stateless functional component:
export const MyComponentClass = () => {
  return <h1>Hello world</h1>;
}

// Works the same either way:
ReactDOM.render(
    <MyComponentClass />,
    document.getElementById('app')
);
```

# The State Hook

## Why Use Hooks?

As React developers, we love breaking down complex problems into simple
pieces.

Classes, however, are not simple. They:

- are difficult to reuse between components
- are tricky and time-consuming to test
- have confused many developers and caused lots of bugs

The React core team heard all of this feedback from developers like us,
and they engineered an incredible solution for us! React 16.8+ supports
*Hooks*. With Hooks, we can use simple function components to do lots of
the fancy things that we could only do with class components in the
past.

React Hooks, plainly put, are functions that let us manage the internal
state of components and handle post-rendering side effects directly from
our function components. Hooks don’t work inside classes — they let us
use fancy React features without classes. Keep in mind that function
components and React Hooks do not replace class components. They are
completely optional; just a new tool that we can take advantage of.

> Note: If you’re familiar with <a
> href="https://reactjs.org/docs/state-and-lifecycle.html#adding-lifecycle-methods-to-a-class"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">lifecycle methods</a> of class
> components, you could say that Hooks let us “hook into” state and
> lifecycle features directly from our function components.

React offers a number of built-in Hooks. A few of these include
`useState()`, `useEffect()`, `useContext()`, `useReducer()`, and
`useRef()`. See <a href="https://reactjs.org/docs/hooks-reference.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the full list in the docs</a>. In this
lesson, we’ll learn different ways to manage state in a function
component.

### Instructions

**1.**

Review the class component defined in the **AppClass.js** file.

Notice how the rendering logic has been delegated to separate
presentational function components. This `AppClass` component uses a
constructor, its own class methods, as well as `this.setState()` and
`this.render()` methods from React’s `Component` class.

Make some predictions about how this code behaves, then run the code to
check your predictions!

**2.**

Buckle your seat belt. We are about to adventure into new territory.

Open the **AppFunction.js** file. We will learn how this code works in
the next few exercises. Don’t worry about the details of what is going
on here just yet, but take a few moments to read through the definition
of this function component and develop some theories about what this
code may be doing.

Open the **index.js** file and change where this module imports the App
component from, so that we can render the `AppFunction` instead of the
`AppClass` component. Press run to see how the code behaves!

### Solution

``` jsx
import React from "react";
import ReactDOM from "react-dom";
// import App from "./Container/AppClass";
import App from "./Container/AppFunction";

ReactDOM.render(
  <App />,
  document.getElementById("app")
);
```

``` jsx
import React, { Component } from "react";
import NewTask from "../Presentational/NewTask";
import TasksList from "../Presentational/TasksList";

export default class AppClass extends Component {
  constructor(props) {
    super(props);
    this.state = {
      newTask: {},
      allTasks: []
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDelete = this.handleDelete.bind(this);
  }

  handleChange({ target }){
    const { name, value } = target;
    this.setState((prevState) => ({
      ...prevState,
      newTask: {
        ...prevState.newTask,
        [name]: value,
        id: Date.now()
      }
    }));
  }

  handleSubmit(event){
    event.preventDefault();
    if (!this.state.newTask.title) return;
    this.setState((prevState) => ({
      allTasks: [prevState.newTask, ...prevState.allTasks],
      newTask: {}
    }));
  }

  handleDelete(taskIdToRemove){
    this.setState((prevState) => ({
      ...prevState,
      allTasks: prevState.allTasks.filter((task) => task.id !== taskIdToRemove)
    }));
  }

  render() {
    return (
      <main>
        <h1>Tasks</h1>
        <NewTask
          newTask={this.state.newTask}
          handleChange={this.handleChange}
          handleSubmit={this.handleSubmit}
        />
        <TasksList
          allTasks={this.state.allTasks}
          handleDelete={this.handleDelete}
        />
      </main>
    );
  }
}
```

## Update Function Component State

Let’s get started with the State Hook, the most common Hook used for
building React components. The State Hook is a named export from the
React library, so we import it like this:

``` jsx
import React, { useState } from 'react';
```

`useState()` is a JavaScript function defined in the React library. When
we call this function, it returns an array with two values:

- *current state* - the current value of this state
- *state setter* - a function that we can use to update the value of
  this state

Because React returns these two values in an array, we can assign them
to local variables, naming them whatever we like. For example:

``` jsx
const [toggle, setToggle] = useState();
```

Let’s have a look at an example of a function component using the State
Hook:

``` jsx
import React, { useState } from "react";
 
function Toggle() {
  const [toggle, setToggle] = useState();
 
  return (
    <div>
      <p>The toggle is {toggle}</p>
      <button onClick={() => setToggle("On")}>On</button>
      <button onClick={() => setToggle("Off")}>Off</button>
    </div>
  );
}
```

Notice how the state setter function, `setToggle()`, is called by our
`onClick` *event listeners*. To update the value of `toggle` and
re-render this component with the new value, all we need to do is call
the `setToggle()` function with the next state value as an argument.

No need to worry about binding functions to class instances, working
with constructors, or dealing with the `this` keyword. With the State
Hook, updating state is as simple as calling a state setter function.

Calling the state setter signals to React that the component needs to
re-render, so the whole function defining the component is called again.
The magic of `useState()` is that it allows React to keep track of the
current value of state from one render to the next!

### Instructions

**1.**

Import the default export from the ‘react’ library and call it `React`.
We will be using the State Hook, so go ahead and import the named export
`useState` from the ‘react’ library as well.

**2.**

Use `const` to declare and assign the return values from calling
`useState()` to `color` and `setColor`.

**3.**

In the JSX, use `onClick` event listeners to call the `setColor()` state
setter function with the appropriate color when the user clicks on each
of these buttons.

**4.**

Update the `divStyle` object so that the `backgroundColor` property is
set to our current state value instead of always showing purple.

### Solution

``` jsx
import React, { useState } from 'react';

export default function ColorPicker() {
  const [color, setColor] = useState();

 const divStyle = {backgroundColor: color};

  return (
    <div style={divStyle}>
      <p>The color is {color}</p>
      <button onClick={() => setColor('Aquamarine')}>
        Aquamarine
      </button>
      <button onClick={() => setColor('BlueViolet')}>
        BlueViolet
      </button>
      <button onClick={() => setColor('Chartreuse')}>
        Chartreuse
      </button>
      <button onClick={() => setColor('CornflowerBlue')}>
        CornflowerBlue
      </button>
    </div>
  );
}
```

## Initialize State

Great work building out your first stateful function component in the
last exercise. Just like you used the State Hook to manage a variable
with string values, we can use the State Hook to manage the value of any
<a
href="https://www.codecademy.com/courses/introduction-to-javascript/lessons/introduction-to-javascript/exercises/types"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">primitive data type</a> and even data collections like
arrays and objects!

Have a look at the following function component. What data type does
this state variable hold?

``` jsx
import React, { useState } from 'react';
 
function ToggleLoading() {
  const [isLoading, setIsLoading] = useState();
 
  return (
    <div>
      <p>The data is {isLoading ? 'Loading' : 'Not Loading'}</p>
      <button onClick={() => setIsLoading(true)}>
        Turn Loading On
      </button>
      <button onClick={() => setIsLoading(false)}>
        Turn Loading Off
      </button>
    </div>
  );
}
```

The `ToggleLoading()` function component above is using the simplest of
all data types, a boolean. Booleans are frequently used in React
applications to represent whether data has loaded or not. In the example
above, we see that `true` and `false` values are passed to the state
setter, `setIsLoading()`. This code works just fine as is, but what if
we want our component to start off with `isLoading` set to `true`?

To initialize our state with any value we want, we simply pass the
initial value as an argument to the `useState()` function call.

``` jsx
const [isLoading, setIsLoading] = useState(true);
```

There are three ways in which this code affects our component:

1.  During the first render, the *initial state argument* is used.
2.  When the state setter is called, React ignores the initial state
    argument and uses the new value.
3.  When the component re-renders for any other reason, React continues
    to use the same value from the previous render.

If we don’t pass an initial value when calling `useState()`, then the
current value of the state during the first render will be `undefined`.
Often, this is perfectly fine for the machines, but it can be unclear to
the humans reading our code. So, we prefer to explicitly initialize our
state. If we don’t have the value needed during the first render, we can
explicitly pass `null` instead of just passively leaving the value as
`undefined`.

### Instructions

**1.**

Professional web development is a team sport. Thankfully, a coworker was
able to help refactor the code from your `ColorPicker()` component to
support more colors. Now, our product owner wants the app to start off
with a color of “Tomato” when it first shows up on the screen.

Modify our current `ColorPicker()` component to initialize state so that
“Tomato” is the selected `color` for our component’s first render.

### Solution

``` jsx
import React, { useState } from 'react';

const colorNames = ['Aquamarine', 'BlueViolet', 'Chartreuse', 'CornflowerBlue', 'Thistle', 'SpringGreen', 'SaddleBrown', 'PapayaWhip', 'MistyRose'];

export default function ColorPicker() {
  const [color, setColor] = useState("Tomato");

 const divStyle = {backgroundColor: color};

  return (
    <div style={divStyle}>
      <p>Selected color: {color}</p>
      {colorNames.map((colorName)=>(
        <button 
          onClick={() => setColor(colorName)} 
          key={colorName}>
             {colorName}
        </button>
      ))}
    </div>
  );
}
```

## Use State Setter Outside of JSX

Let’s see how to manage the changing value of a string as a user types
into a text input field:

``` jsx
import React, { useState } from 'react';
 
export default function EmailTextInput() {
  const [email, setEmail] = useState('');
  const handleChange = (event) => {
    const updatedEmail = event.target.value;
    setEmail(updatedEmail);
  }
 
  return (
    <input value={email} onChange={handleChange} />
  );
}
```

Let’s break down how this code works!

- The square brackets on the left side of the assignment operator signal
  <a
  href="https://www.codecademy.com/content-items/92a5f93c6dbc6794d83e00383fc3af68"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">array destructuring</a>
- The local variable named `email` is assigned the current state value
  at index `0` from the array returned by `useState()`
- The local variable named `setEmail()` is assigned a reference to the
  state setter function at index `1` from the array returned by
  `useState()`
- It’s convention to name this variable using the current state variable
  (`email`) with “set” prepended

The JSX input tag has an event listener called `onChange`. This event
listener calls an *event handler* each time the user types something in
this element. In the example above, our event handler is defined inside
of the definition for our function component, but outside of our JSX.
Earlier in this lesson, we wrote our event handlers right in our JSX.
Those inline event handlers work perfectly fine, but when we want to do
something more interesting than just calling the state setter with a
static value, it’s a good idea to separate that logic from everything
else going on in our JSX. This separation of concerns makes our code
easier to read, test, and modify.

This is so common in React code, that we can comfortably simplify this:

``` jsx
const handleChange = (event) => {
  const newEmail = event.target.value;
  setEmail(newEmail);
}
```

To this:

``` jsx
const handleChange = (event) => setEmail(event.target.value);
```

Or even, use <a
href="https://www.codecademy.com/content-items/92a5f93c6dbc6794d83e00383fc3af68?"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">object destructuring</a> to just write this:

``` jsx
const handleChange = ({target}) => setEmail(target.value);
```

All three of these code snippets behave the same way, so there really
isn’t a right and wrong between these different ways of doing this.
We’ll use the last, most concise version moving forward.

### Instructions

**1.**

Declare and assign values for our current state and state setter with
`useState()`. Use `phone` as the name of our current state variable.

**2.**

Add the `value` attribute and the `onChange` event listener to our JSX
input tag. Give these attributes the values of our current state
variable and event handler function.

**3.**

Use our state setter to update the state only when the value from the
user’s change event passes our regular expression test for valid phone
number strings.

Curious about the `/^\d{1,10}$/` in our code? Check out <a
href="https://www.codecademy.com/learn/introduction-to-regular-expressions/modules/intro-to-regex"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">this great lesson</a> to learn about regular
expressions!

### Solution

``` jsx
import React, { useState } from "react";

// regex to match numbers between 1 and 10 digits long
const validPhoneNumber = /^\d{1,10}$/;

export default function PhoneNumber() {
  const [phone, setPhone] = useState('');
  
   const handleChange = ({ target })=> {
     const newPhone = target.value;
     const isValid = validPhoneNumber.test(newPhone);
     if (isValid) {
       setPhone(newPhone);
     }
     // just ignore the event, when new value is invalid
    };

  return (
    <div className='phone'>
      <label for='phone-input'>Phone: </label>
      <input value={phone} onChange={handleChange} id='phone-input' />
    </div>
  );
}
```

## Set From Previous State

Often, the next value of our state is calculated using the current
state. In this case, it is best practice to update state with a callback
function. If we do not, we risk capturing outdated, or “stale”, state
values.

Let’s take a look at the following code:

``` jsx
import React, { useState } from 'react';
 
export default function Counter() {
  const [count, setCount] = useState(0);
 
  const increment = () => setCount(prevCount => prevCount + 1);
 
  return (
    <div>
      <p>Wow, you've clicked that button: {count} times</p>
      <button onClick={increment}>Click here!</button>
    </div>
  );
}
```

When the button is pressed, the `increment()` event handler is called.
Inside of this function, we use our `setCount()` state setter in a new
way! Because the next value of `count` depends on the previous value of
`count`, we pass a callback function as the argument for `setCount()`
instead of a value (as we’ve done in previous exercises).

``` jsx
setCount(prevCount => prevCount + 1)
```

When our state setter calls the callback function, this *state setter
callback function* takes our previous `count` as an argument. The value
returned by this state setter callback function is used as the next
value of `count` (in this case `prevCount + 1`). Note: We can just call
`setCount(count +1)` and it would work the same in this example… but for
reasons that are out of scope for this lesson, it is safer to use the
callback method. If you’d like to learn more about why the callback
method is safer,
<a href="https://reactjs.org/docs/react-component.html#setstate"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this section of the docs</a> is a great
place to start.

### Instructions

**1.**

Define a `goBack()` event handler. Because our next value of state
depends on the previous state value, this function should call the state
setter with a callback function. Our state setter callback function
needs to compute the next value of `questionIndex` using an argument
named `prevQuestionIndex`. Add an event listener to the “Go Back” button
that will call our newly defined event handler.

**2.**

Define a `goToNext()` event handler. Because our next value of state
depends on the previous state value, this function should call the state
setter with a callback function. Our state setter callback function
needs to compute the next value of `questionIndex` using an argument
named `prevQuestionIndex`. Add an event listener to the “Next Question”
button that will call our newly defined event handler.

**3.**

Add an `onFirstQuestion` variable with a boolean value then use that
value to toggle the `disabled` attribute of the “Go Back” button on and
off.

### Solution

``` jsx
import React, { useState } from 'react';

export default function QuizNavBar({ questions }) {
  const [questionIndex, setQuestionIndex] = useState(0);

  const goBack = () =>
    setQuestionIndex((prevQuestionIndex) => prevQuestionIndex - 1);
  const goToNext = () =>
    setQuestionIndex((prevQuestionIndex) => prevQuestionIndex + 1);

  const onFirstQuestion = questionIndex === 0;
  const onLastQuestion = questionIndex === questions.length - 1;

  return (
    <nav>
      <span>Question #{questionIndex + 1}</span>
      <div>
        <button onClick={goBack} disabled={onFirstQuestion}>
          Go Back
        </button>
        <button onClick={goToNext} disabled={onLastQuestion}>
          Next Question
        </button>
      </div>
    </nav>
  );
}
```

## Arrays in State

Think about the last time that you ordered a pizza online. Mmmmm…

Part of the magical website that brought you tasty food was built with
code like this:

``` jsx
import React, { useState } from "react";
 
const options = ["Bell Pepper", "Sausage", "Pepperoni", "Pineapple"];
 
export default function PersonalPizza() {
  const [selected, setSelected] = useState([]);
 
  const toggleTopping = ({target}) => {
    const clickedTopping = target.value;
    setSelected((prev) => {
     // check if clicked topping is already selected
      if (prev.includes(clickedTopping)) {
        // filter the clicked topping out of state
        return prev.filter(t => t !== clickedTopping);
      } else {
        // add the clicked topping to our state
        return [clickedTopping, ...prev];
      }
    });
  };
 
  return (
    <div>
      {options.map(option => (
        <button value={option} onClick={toggleTopping} key={option}>
          {selected.includes(option) ? "Remove " : "Add "}
          {option}
        </button>
      ))}
      <p>Order a {selected.join(", ")} pizza</p>
    </div>
  );
}
```

JavaScript arrays are the best data model for managing and rendering JSX
lists. In this example, we are using two arrays:

- `options` is an array that contains the names of all of the pizza
  toppings available
- `selected` is an array representing the selected toppings for our
  personal pizza

The `options` array contains *static data*, meaning that it does not
change. We like to define static data models outside of our function
components since they don’t need to be recreated each time our component
re-renders. In our JSX, we use the `map` method to render a button for
each of the toppings in our `options` array.

The `selected` array contains *dynamic data*, meaning that it changes,
usually based on a user’s actions. We initialize `selected` as an empty
array. When a button is clicked, the `toggleTopping` event handler is
called. Notice how this event handler uses information from the event
object to determine which topping was clicked.

When updating an array in state, we do not just add new data to the
previous array. We replace the previous array with a brand new array.
This means that any information that we want to save from the previous
array needs to be explicitly copied over to our new array. That’s what
this <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">spread syntax</a> does for us: `...prev`.

Notice how we use the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/includes"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">includes()</code></a>, <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">filter()</code></a>, and <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">map()</code></a> methods of our
arrays. If these are new to you, or you just want a refresher, take a
minute to review these <a
href="https://www.codecademy.com/learn/introduction-to-javascript/modules/learn-javascript-iterators"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">array methods</a>. We don’t need to be full-fledged
JavaScript gurus to build React UIs, but know that investing time to
<a href="https://www.codecademy.com/learn/introduction-to-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">strengthen our JavaScript skills</a>, will always help
us do more faster (and have a lot more fun doing it) as React
developers.

### Instructions

**1.**

Declare and initialize a state variable called `cart` that will keep
track of a list of string values.

Each of these string values represents a grocery item that we’ve added
to our shopping cart. We’ll add event listeners and event handlers to
add and remove items to our cart in the coming steps.

For now, let’s get started by initializing our `cart` with the value of
an empty array for the first render.

**2.**

Add parameters to our two event handlers. `addItem()` should accept an
argument called `item` and `removeItem()` should accept an item called
`targetIndex`. Don’t worry about writing the function body for these
event handlers just yet, we’ll do that in the next few steps!

**3.**

Use <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">array spread syntax</a> to add a new item
to our `cart` state when the `addItem()` function is called.

**4.**

When the `removeItem()` function is called, use the array `filter()`
method to remove the item from our state that’s located at the index of
the item that was clicked in our list.

Why would we want to use the index of the clicked item instead of the
item itself when determining what to remove from our data model? Say
that we have two of the same item in an array. Using the value to remove
the item would remove all items with that value, so we use the index as
a unique identifier.

### Solution

``` jsx
import React, { useState } from "react";
import ItemList from "./ItemList";
import { produce, pantryItems } from "./storeItems";

export default function GroceryCart() {
  const [cart, setCart] = useState([]);

  const addItem = (item) => {
    setCart((prev) => {
      return [item, ...prev];
    });
  };

  const removeItem = (targetIndex) => {
    setCart((prev) => {
      return prev.filter((item, index) => index !== targetIndex);
    });
  };

  return (
    <div>
      <h1>Grocery Cart</h1>
      <ul>
        {cart.map((item, index) => (
          <li onClick={() => removeItem(index)} key={index}>
            {item}
          </li>
        ))}
      </ul>
      <h2>Produce</h2>
      <ItemList items={produce} onItemClick={addItem} />
      <h2>Pantry Items</h2>
      <ItemList items={pantryItems} onItemClick={addItem} />
    </div>
  );
}
```

## Objects in State

When we work with a set of related variables, it can be very helpful to
group them in an object. Let’s look at an example!

``` jsx
export default function Login() {
  const [formState, setFormState] = useState({});
 
  const handleChange = ({ target }) => {
    const { name, value } = target;
    setFormState((prev) => ({
      ...prev,
      [name]: value
    }));
  };
 
  return (
    <form>
      <input
        value={formState.firstName}
        onChange={handleChange}
        name="firstName"
        type="text"
      />
      <input
        value={formState.password}
        onChange={handleChange}
        type="password"
        name="password"
      />
    </form>
  );
}
```

A few things to notice:

- We use a state setter callback function to update state based on the
  previous value
- The spread syntax is the same for objects as for arrays:
  `{ ...oldObject, newKey: newValue }`
- We reuse our event handler across multiple inputs by using the input
  tag’s `name` attribute to identify which input the change event came
  from

Once again, when updating the state with `setFormState()` inside a
function component, we do not modify the same object. We must copy over
the values from the previous object when setting the next value of
state. Thankfully, the spread syntax makes this super easy to do!

Anytime one of the input values is updated, the `handleChange()`
function will be called. Inside of this event handler, we use object
destructuring to unpack the `target` property from our `event` object,
then we use object destructuring again to unpack the `name` and `value`
properties from the `target` object.

Inside of our state setter callback function, we wrap our curly brackets
in parentheses like so: `setFormState((prev) => ({ ...prev }))`. This
tells JavaScript that our curly brackets refer to a new object to be
returned. We use `...`, the spread operator, to fill in the
corresponding fields from our previous state. Finally, we overwrite the
appropriate key with its updated value. Did you notice the square
brackets around the `name`? This
<a href="http://eloquentcode.com/computed-property-names-in-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Computed Property Name</a> allows us to
use the string value stored by the `name` variable as a property key!

### Instructions

**1.**

Throughout our JSX, we are looking up properties stored on the `profile`
object. On the first render, this is a problem because attempting to get
the value of a property from an object that has not been defined causes
JavaScript to throw an error.

To defend against these errors, let’s initialize `profile` as an empty
object!

**2.**

Add the event listeners to our JSX tags to call `handleChange()`
whenever a user types in an input field.

**3.**

Let’s make our `handleChange()` function a bit easier to read. Use
object destructuring to initialize `name` and `value` in a more concise
way.

**4.**

There’s a bug in our code! Have you noticed it? Try typing in one input,
then type in a different input. What happens? Why?

Each time that we call `setProfile()` in our event handler, we give
`profile` the value of a new object with the `name` and `value` of the
input that most recently changed, but we lose the values that were
stored for inputs with any other `name`.

Let’s use the spread operator to fix this bug. We want to copy over all
of the values from our previous `profile` object whenever we call our
state setter function. Use `prevProfile` as the argument for our state
setter callback function.

**5.**

Add an event listener to call our `handleSubmit()` function when the
user submits the form.

### Solution

``` jsx
import React, { useState } from "react";

export default function EditProfile() {
  const [profile, setProfile] = useState({});

  const handleChange = ({ target }) => {
    const { name, value } = target;
    setProfile((prevProfile) => ({
      ...prevProfile,
      [name]: value
    }));
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    alert(JSON.stringify(profile, '', 2));
  };

  return (
    <form onSubmit={handleSubmit}>
      <input
        value={profile.firstName || ''}
        onChange={handleChange}
        name="firstName"
        type="text"
        placeholder="First Name"
      />
      <input
        value={profile.lastName || ''}
        onChange={handleChange}
        type="text"
        name="lastName"
        placeholder="Last Name"
      />
      <input
        value={profile.bday || ''}
        onChange={handleChange}
        type="date"
        name="bday"
      />
      <input
        value={profile.password || ''}
        onChange={handleChange}
        type="password"
        name="password"
        placeholder="Password"
      />
      <button type="submit">Save Profile</button>
    </form>
  );
}
```

## Separate Hooks for Separate States

While there are times when it can be helpful to store related data in a
data collection like an array or object, it can also be helpful to
separate data that changes separately into completely different state
variables. Managing dynamic data is much easier when we keep our data
models as simple as possible.

For example, if we had a single object that held state for a subject you
are studying at school, it might look something like this:

``` jsx
function Subject() {
  const [state, setState] = useState({
    currentGrade: 'B',
    classmates: ['Hasan', 'Sam', 'Emma'],
    classDetails: {topic: 'Math', teacher: 'Ms. Barry', room: 201};
    exams: [{unit: 1, score: 91}, {unit: 2, score: 88}]);
  });
```

This would work, but think about how messy it could get to copy over all
the other values when we need to update something in this big state
object. For example, to update the grade on an exam, we would need an
event handler that did something like this:

``` jsx
setState((prev) => ({
 ...prev,
  exams: prev.exams.map((exam) => {
    if( exam.unit === updatedExam.unit ){
      return { 
        ...exam,
        score: updatedExam.score
      };
    } else {
      return exam;
    }
  }),
}));
```

Yikes! Complex code like this is likely to cause bugs! Luckily, there is
another option… We can make more than one call to the State Hook. In
fact, we can make as many calls to `useState()` as we want! It’s best to
split state into multiple state variables based on which values tend to
change together. We can rewrite the previous example as follows…

``` jsx
function Subject() {
  const [currentGrade, setGrade] = useState('B');
  const [classmates, setClassmates] = useState(['Hasan', 'Sam', 'Emma']);
  const [classDetails, setClassDetails] = useState({topic: 'Math', teacher: 'Ms. Barry', room: 201});
  const [exams, setExams] = useState([{unit: 1, score: 91}, {unit: 2, score: 88}]);
  // ...
}
```

Managing dynamic data with separate state variables has many advantages,
like making our code more simple to write, read, test, and reuse across
components.

Often, we find ourselves packaging up and organizing data in collections
to pass between components, then separating that very same data within
components where different parts of the data change separately. The
wonderful thing about working with Hooks is that we have the freedom to
organize our data the way that makes the most sense to us!

If you’d like, have a look at another example of using <a
href="https://reactjs.org/docs/hooks-state.html#tip-using-multiple-state-variables"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">multiple State Hooks for managing
separate data</a>.

### Instructions

**1.**

Inside of the `MusicalRefactored` component, rewrite the state from
`Musical` so that its `state` object is split into three separate
variables: `title`, `actors`, and `locations`, each with their own state
setter function.

React’s State Hook allows us to name our state setters whatever we want,
but you may have noticed a pattern:

- `toggle` & `setToggle()`
- `isLoading` & `setIsLoading()`
- `email` & `setEmail()`

### Solution

``` jsx
import React, { useState } from "react";

function Musical() {
   const [state, setState] = useState({
    title: "Best Musical Ever",
    actors: ["George Wilson", "Tim Hughes", "Larry Clements"],
    locations: {
      Chicago: {
        dates: ["1/1", "2/2"], 
        address: "chicago theater"}, 
      SanFrancisco: {
        dates: ["5/2"], 
        address: "sf theater"
      }
    }
  })
 }

function MusicalRefactored() {
  const [title, setTitle] = useState("Best Musical Ever");
  const [actors, setActors] = useState(["George Wilson", "Tim Hughes", "Larry Clements"]);
  const [locations, setLocations] = useState({
    Chicago: {
      dates: ["1/1", "2/2"], 
      address: "chicago theater"}, 
    SanFrancisco: {
      dates: ["5/2"], 
      address: "sf theater"
    }
  });
}
```

## Lesson Review

Awesome work, we can now build “stateful” function components using the
`useState` React Hook!

Let’s review what we learned and practiced in this lesson:

- With React, we feed static and dynamic data models to JSX to render a
  view to the screen

- Use Hooks to “hook into” internal component state for managing dynamic
  data in function components

- We employ the State Hook by using the code below:

  - `currentState` to reference the current value of state

  - `stateSetter` to reference a function used to update the value of
    this state

  - the `initialState` argument to initialize the value of state for the
    component’s first render

    ``` jsx
    const [currentState, stateSetter] = useState( initialState );
    ```

- Call state setters in event handlers

- Define simple event handlers inline with our JSX event listeners and
  define complex event handlers outside of our JSX

- Use a state setter callback function when our next value depends on
  our previous value

- Use arrays and objects to organize and manage related data that tends
  to change together

- Use the spread syntax on collections of dynamic data to copy the
  previous state into the next state like so:
  `setArrayState((prev) => [ ...prev ])` and
  `setObjectState((prev) => ({ ...prev }))`

- Split state into multiple, simpler variables instead of throwing it
  all into one state object

### Instructions

**1.**

Remember this class component from the beginning of this lesson? The
same component was defined as a function component for your review, but
at the time, a lot of that code probably didn’t make much sense! Not
only would that code make sense to you if you had a look at it now, but
after everything you’ve learned and practiced you can now write that
code yourself!

Take a moment to read through this class component defined in the
**AppClass.js** file, then switch over to the **AppFunction.js** file.
Without any guidance, see if you can define a function component that
behaves just like this class component, but saves us all of the
complexity of dealing with JavaScript classes!

When you are ready to start testing your code, change the import
statements in the **index.js** file, just like we did at the beginning
of this lesson!

Good luck, we believe in you!

### Solution

``` jsx
import React from "react";
import ReactDOM from "react-dom";
// import App from "./Container/AppClass";
import App from "./Container/AppFunction";

ReactDOM.render(
  <App />,
  document.getElementById("app")
);
```

``` jsx
import React, { Component } from "react";
import NewTask from "../Presentational/NewTask";
import TasksList from "../Presentational/TasksList";

export default class AppClass extends Component {
  constructor(props) {
    super(props);
    this.state = {
      newTask: {},
      allTasks: []
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDelete = this.handleDelete.bind(this);
  }

  handleChange({ target }){
    const { name, value } = target;
    this.setState((prevState) => ({
      ...prevState,
      newTask: {
        ...prevState.newTask,
        [name]: value,
        id: Date.now()
      }
    }));
  }

  handleSubmit(event){
    event.preventDefault();
    if (!this.state.newTask.title) return;
    this.setState((prevState) => ({
      allTasks: [prevState.newTask, ...prevState.allTasks],
      newTask: {}
    }));
  }

  handleDelete(taskIdToRemove){
    this.setState((prevState) => ({
      ...prevState,
      allTasks: prevState.allTasks.filter((task) => task.id !== taskIdToRemove)
    }));
  }

  render() {
    return (
      <main>
        <h1>Tasks</h1>
        <NewTask
          newTask={this.state.newTask}
          handleChange={this.handleChange}
          handleSubmit={this.handleSubmit}
        />
        <TasksList
          allTasks={this.state.allTasks}
          handleDelete={this.handleDelete}
        />
      </main>
    );
  }
}
```

``` jsx
import React, { useState } from "react";
import NewTask from "../Presentational/NewTask";
import TasksList from "../Presentational/TasksList";

export default function AppFunction() {
  const [newTask, setNewTask] = useState({});
  const handleChange = ({ target }) => {
    const { name, value } = target;
    setNewTask((prev) => ({ ...prev, id: Date.now(), [name]: value }));
  };

  const [allTasks, setAllTasks] = useState([]);
  const handleSubmit = (event) => {
    event.preventDefault();
    if (!newTask.title) return;
    setAllTasks((prev) => [newTask, ...prev]);
    setNewTask({});
  };
  const handleDelete = (taskIdToRemove) => {
    setAllTasks((prev) => prev.filter(
      (task) => task.id !== taskIdToRemove
    ));
  };

  return (
    <main>
      <h1>Tasks</h1>
      <NewTask
        newTask={newTask}
        handleChange={handleChange}
        handleSubmit={handleSubmit}
      />
      <TasksList allTasks={allTasks} handleDelete={handleDelete} />
    </main>
  );
}
```

# The Effect Hook

## Why Use useEffect?

Before Hooks, function components were only used to accept data in the
form of props and return some JSX to be rendered. However, as we learned
in the last lesson, the State Hook allows us to manage dynamic data, in
the form of component state, within our function components.

In this lesson, we’ll use the Effect Hook to run some JavaScript code
after each render, such as:

- fetching data from a backend service
- subscribing to a stream of data
- managing timers and intervals
- reading from and making changes to the DOM

#### Why after each render?

Most interesting components will re-render multiple times throughout
their lifetime and these key moments present the perfect opportunity to
execute these “side effects”.

There are three key moments when the Effect Hook can be utilized:

1.  When the component is first added, or *mounted*, to the DOM and
    renders
2.  When the state or props change, causing the component to re-render
3.  When the component is removed, or *unmounted*, from the DOM.

Later on in this lesson, we’ll learn how to further fine-tune exactly
when this code executes.

### Instructions

In the editor, we’ve defined a component as both a class and a function,
each with the same “side effects”.

Even if you are unfamiliar with <a
href="https://reactjs.org/docs/react-component.html#commonly-used-lifecycle-methods"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">class component lifecycle methods</a>,
start by having a look at both implementations, just to get a sense of
both options.

> Note: Understanding lifecycle methods in class components is not a
> pre-requisite for this lesson.

In the class component in **PageTitleClass.js**, the logic for setting
the document title is split between two functions –`componentDidMount()`
and `componentDidUpdate()`.

Compare this to the function component in **PageTitleFunction.js**,
where the logic is written in one place – `useEffect()`.

Both component implementations have the same behavior, but reading and
maintaining the function component will be easier.

Ready to start using the Effect Hook? Great! We’ll dive into the details
of how to use this Hook throughout this lesson!

### Solution

``` jsx
import React, {Component} from 'react';

export default class PageTitle extends Component {
  constructor(props) {
    super(props);
    this.state = {
      name: ''
    };
  }

  componentDidMount() {
    document.title = this.state.name;
  }
  
  componentDidUpdate() {
    document.title == `Hi, ${this.state.name}`;
  }

  render() {
    return (
      <div>
        <p>Use the input field below to rename this page!</p>
        <input 
          onChange={({target}) => this.setState({ name: target.value })} 
          value={this.state.name} 
          type='text' />
      </div>
    );
  }
}
```

``` jsx
import React, { useState, useEffect } from 'react';
 
export default function PageTitle() {
  const [name, setName] = useState('');
 
 useEffect(() => {
    document.title = `Hi, ${name}`;
  }, [name]);
 
  return (
    <div>
      <p>Use {name} input field below to rename this page!</p>
      <input 
        onChange={({target}) => setName(target.value)} 
        value={name} 
        type='text' />
    </div>
  );
}
```

## Function Component Effects

Let’s break down how our `PageTitle()` function component is using the
Effect Hook to execute some code after each render!

``` jsx
import React, { useState, useEffect } from 'react';
 
function PageTitle() {
  const [name, setName] = useState('');
 
  useEffect(() => {
    document.title = `Hi, ${name}`;
  });
 
  return (
    <div>
      <p>Use the input field below to rename this page!</p>
      <input onChange={({target}) => setName(target.value)} value={name} type='text' />
    </div>
  );
}
```

First, we import the Effect Hook from the `react` library, like so:

``` jsx
import { useEffect } from 'react';
```

The Effect Hook is used to call another function that does something for
us so there is nothing returned when we call the `useEffect()` function.

The first argument passed to the `useEffect()` function is the callback
function that we want React to call after each time this component
renders. We will refer to this callback function as our *effect*.

In our example, the effect is:

``` jsx
() => { document.title = `Hi, ${name}`; }
```

In our effect, we assign the value of the `name` variable to the
`document.title` within a string. For more on this syntax, have a look
at this <a
href="https://developer.mozilla.org/en-US/docs/Web/API/Document/title"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">explanation of the document’s title
property</a>.

Notice how we use the current state inside of our effect. Even though
our effect is called after the component renders, we still have access
to the variables in the scope of our function component! When React
renders our component, it will update the DOM as usual, and then run our
effect after the DOM has been updated. This happens for every render,
including the first and last one.

### Instructions

**1.**

Import the Effect Hook, as well as State Hook and React from the
`'react'` library.

Make sure to import everything on one line.

**2.**

Call `useEffect()` with a callback function that creates an
<a href="https://developer.mozilla.org/en-US/docs/Web/API/Window/alert"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">alert</a> with the current value of
`count`. Start clicking the button to see when our `alert()` function is
called and be sure that it is logging the values that we’d expect!

**3.**

Use a <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">template literal</a> so that the message
in our alert dialog reads: “Count: 0”, then “Count: 1”, then “Count: 2”,
etc.

### Solution

``` jsx
import React, { useState, useEffect } from 'react';

export default function Counter() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    alert(`Count: ${count}`);
  });

  const handleClick = () => {
    setCount((prevCount) =>  prevCount + 1);
  };

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={handleClick}>
        Click me
      </button>
    </div>
  );
}
```

## Clean Up Effects

Some effects require **cleanup**. For example, we might want to add
event listeners to some element in the DOM, beyond the JSX in our
component. When we <a
href="https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">add event listeners to the DOM</a>, it is
important to remove those event listeners when we are done with them to
avoid <a
href="https://auth0.com/blog/four-types-of-leaks-in-your-javascript-code-and-how-to-get-rid-of-them/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">memory leaks</a>!

Let’s consider the following effect:

``` jsx
useEffect(()=>{
  document.addEventListener('keydown', handleKeyPress);
  // Specify how to clean up after the effect:
  return () => {
    document.removeEventListener('keydown', handleKeyPress);
  };
})
```

If our effect didn’t return a *cleanup function*, then a new event
listener would be added to the DOM’s `document` object every time that
our component re-renders. Not only would this cause bugs, but it could
cause our application performance to diminish and maybe even crash!

Because effects run after every render and not just once, React calls
our cleanup function before each re-render and before unmounting to
clean up each effect call.

If our effect returns a function, then the `useEffect()` Hook always
treats that as a cleanup function. React will call this cleanup function
before the component re-renders or unmounts. Since this cleanup function
is optional, it is our responsibility to return a cleanup function from
our effect when our effect code could create memory leaks.

### Instructions

**1.**

Let’s practice by making a program that documents how many times you’ve
clicked on the page.

Write an event handler named `increment()`— It’s responsible for
tracking how many times you’ve clicked— define this function so that it
calls `setClickCount()` with a state setter callback function, adding
`1` to the previous value of `clickCount`.

**2.**

Import the `useEffect()` hook and call it with an effect that adds an
event listener for `'mousedown'` events on the `document` object. When a
`"mousedown"` event occurs anywhere on the `document`, we want our
`increment()` event handler to be called.

**3.**

If you haven’t already, run our code and click around the browser
window. What is happening? Why is this happening?

Each time that our component renders, our effect is called, adding
another event listener. With just a few clicks and rerenders, we have
attached a lot of event listeners to the DOM! We need to clean up after
ourselves!

Update our effect so that it returns a cleanup function that will remove
our last event listener from the DOM.

### Solution

``` jsx
import React, { useState, useEffect } from 'react';

export default function Counter() {
  const [clickCount, setClickCount] = useState(0);

  const increment = () => setClickCount((prev) => prev + 1);

  useEffect(() => {
    document.addEventListener('mousedown', increment);
    return () => {
      document.removeEventListener('mousedown', increment);
    };
  });

  return (
      <h1>Document Clicks: {clickCount}</h1>
  );
}
```

## Control When Effects Are Called

The `useEffect()` function calls its first argument (the effect) after
each time a component renders. We’ve learned how to return a cleanup
function so that we don’t create performance issues and other bugs, but
sometimes we want to skip calling our effect on re-renders altogether.

It is common, when defining function components, to run an effect only
when the component mounts (renders the first time), but not when the
component re-renders. The Effect Hook makes this very easy for us to do!
If we want to only call our effect after the first render, we pass an
empty array to `useEffect()` as the second argument. This second
argument is called the *dependency array*.

The dependency array is used to tell the `useEffect()` method when to
call our effect and when to skip it. Our effect is always called after
the first render but only called again if something in our dependency
array has changed values between renders.

We will continue to learn more about this second argument over the next
few exercises, but for now, we’ll focus on using an empty dependency
array to call an effect when a component first mounts, and if a cleanup
function is returned by our effect, calling that when the component
unmounts.

``` jsx
useEffect(() => {
  alert("component rendered for the first time");
  return () => {
    alert("component is being removed from the DOM");
  };
}, []); 
```

Without passing an empty array as the second argument to the
`useEffect()` above, those alerts would be displayed before and after
every render of our component, which is clearly not when those messages
are meant to be displayed. Simply, passing `[]` to the `useEffect()`
function is enough to configure when the effect and cleanup functions
are called!

### Instructions

**1.**

Let’s get started by using four functions to advance the number stored
by `time` each second:

- `useEffect()` - the Effect Hook, imported from the ‘react’ library
- `setInterval()` -
  <a href="https://www.w3schools.com/jsref/met_win_setinterval.asp"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">W3Schools Documentation</a>
- `setTime()` - our state setter function
- state setter callback function - used by `setTime()` because we want
  to calculate the next value of `time` based on the previous value of
  `time`

Add an effect that uses the `setInterval()` function to call `setTime()`
every second (or 1000 ms).

**2.**

Well that doesn’t look quite right now does it? Our `time` value is
updating way too quickly! Any idea why that may be happening?

By default, the Effect Hook calls our effect after every render. Our
effect is creating a new interval that updates the value of `time` each
second. We keep adding more and more intervals that keep updating the
same `time` variable. We need to clean up our old intervals before
adding new ones!

Let’s start here by creating a variable, `intervalId` and assign it our
`setInterval()` code from the previous step.

Then below your `intervalId` code, use the `return` keyword to return a
cleanup function. Our cleanup function will use the `clearInterval()`
function. For more on how to use this JavaScript timer function have a
quick look at
<a href="https://www.w3schools.com/jsref/met_win_clearinterval.asp"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">W3Schools’s explanation</a>.

**3.**

Well, that seems to have solved our
way-too-many-intervals-all-updating-the-same-variable bug!

Let’s create a new text input element so that the user can type a
message while the timer is counting up.

- Add an `input` tag to our JSX whose `value` is managed by a current
  state variable called `name` with a state setter called `setName()`.
- Define an event handler named `handleChange()` and call that event
  handler with the input’s `onChange` event listener attribute.

**4.**

Uh oh. More bugs. Did you notice it yet? Type your full name in the text
input field. See how the timer seems to stop counting while you are
typing? That’s not what we want!

What is going on here? We are creating a new interval after each render,
that interval will call our state setter to update `time` exactly one
second after each render. When we type in the input field, our component
keeps re-rendering, cleaning up old intervals, and starting new ones…
but our state setter never gets called until one second after we are
done typing!

Let’s fix this once and for all! We really want to use a single
interval. We want that interval to start ticking away after our first
render and we want it to be cleaned up after the final render. To
accomplish this, use an empty dependency array!

### Solution

``` jsx
import React, { useState, useEffect } from 'react';

export default function Timer() {
  const [time, setTime] = useState(0);
  const [name, setName] = useState("");

  useEffect(() => {
    const intervalId = setInterval(() => {
      setTime((prev) => prev + 1);
    }, 1000);

    return () => {
      clearInterval(intervalId);
    };
  }, []);

  const handleChange = ({ target }) => setName(target.value);

  return (
    <>
      <h1>Time: {time}</h1>
      <input value={name} onChange={handleChange} type='text' />
    </>
  );
}
```

## Fetch Data

When building software, we often start with default behaviors then
modify them to improve performance. We’ve learned that the default
behavior of the Effect Hook is to call the effect function after every
single render. Next, we learned that we can pass an empty array as the
second argument for `useEffect()` if we only want our effect to be
called after the component’s first render. In this exercise, we’ll learn
to use the dependency array to further configure exactly when we want
our effect to be called!

When our effect is responsible for fetching data from a server, we pay
extra close attention to when our effect is called. Unnecessary round
trips back and forth between our React components and the server can be
costly in terms of:

- Processing
- Performance
- Data usage for mobile users
- API service fees

When the data that our components need to render doesn’t change, we can
pass an empty dependency array, so that the data is fetched after the
first render. When the response is received from the server, we can use
a state setter from the State Hook to store the data from the server’s
response in our local component state for future renders. Using the
State Hook and the Effect Hook together in this way is a powerful
pattern that saves our components from unnecessarily fetching new data
after every render!

An empty dependency array signals to the Effect Hook that our effect
never needs to be re-run, that it doesn’t depend on anything. Specifying
zero dependencies means that the result of running that effect won’t
change and calling our effect once is enough.

A dependency array that is not empty signals to the Effect Hook that it
can skip calling our effect after re-renders unless the value of one of
the variables in our dependency array has changed. If the value of a
dependency has changed, then the Effect Hook will call our effect again!

Here’s a nice example from the <a
href="https://reactjs.org/docs/hooks-effect.html#tip-optimizing-performance-by-skipping-effects"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">official React docs</a>:

``` jsx
useEffect(() => {
  document.title = `You clicked ${count} times`;
}, [count]); // Only re-run the effect if the value stored by count changes
```

### Instructions

**1.**

We’ve started building a weather planner app that will fetch data about
the weather and allow our users to write some notes next to the
forecast. A lot of good code has already been written, but there
currently isn’t anything rendering to the screen.

Let’s read through the code and start to wrap our heads around what is
going on here. What part of our code do we think is keeping the
component from rendering?

In our JSX, we are trying to map over an array stored by the `data`
state variable, but our effect that fetches this data doesn’t get called
until after the first render. So during the first render, data is
`undefined` and attempting to call `map()` on `undefined` is causing our
error!

Let’s prevent this error by checking to see if data has loaded yet. If
it hasn’t, then we want our function component to just return a
paragraph tag with the text “Loading…”. If data is no longer undefined,
then the data has been loaded, and we can go ahead and render the full
JSX!

**2.**

Our data fetching is being done in our effect. Notice how we are
currently just using `alert()` messages to keep track of requesting and
receiving data from our server. Instead of just stringifying the
response data and showing it in an alert message, let’s store that data
in our state.

When the data has been fetched, use our state setter function to store
that data in our component’s state!

P.S. Remember that we want to store an array in our `data` state
variable, not the whole response object.

**3.**

Type in each of the notes’ input fields in our table. What do you
notice? Why do you think this is happening?

Each time that we type in an input field, the component re-renders to
show the new value of that field. Even though we don’t need any new data
from the backend, our component is fetching new data after every render!

Use an empty dependency array to ensure that data is only fetched after
our component’s first render.

**4.**

Wow, that small code change made a huge difference in the performance of
our weather planner app!

Let’s make one more improvement. Did you notice the buttons at the top
of our app? We want our users to be able to choose between planning
around daily weather forecasts and weekly weather forecasts. Clicking on
these buttons currently doesn’t change anything. Let’s fix that!

The server has two different endpoints called: `/daily` and `/hourly`.
Let’s use the value of the `forecastType` state variable to determine
which endpoint our effect should request data from.

After making this change, our effect behaves differently based on the
value of `forecastType`. You could say that how we use our effect
depends on it! Add this variable to our dependency array so that the
effect is called again, updating `data` appropriately, after re-renders
where the user has selected a different forecast type.

### Solution

``` jsx
import React, { useState, useEffect } from 'react';
import { get } from './mockBackend/fetch';

export default function Forecast() {
  const [data, setData] = useState(null);
  const [notes, setNotes] = useState({});
  const [forecastType, setForecastType] = useState('/daily');

  useEffect(() => {
    alert('Requested data from server...');
    get(forecastType).then((response) => {
      alert('Response: ' + JSON.stringify(response,'',2));
      setData(response.data);
    });
  }, [forecastType]);

  const handleChange = (itemId) => ({ target }) =>
    setNotes((prev) => ({
      ...prev,
      [itemId]: target.value
    }));

  if (!data) {
    return <p>Loading...</p>;
  }

  return (
    <div className='App'>
      <h1>My Weather Planner</h1>
      <div>
        <button onClick={() => setForecastType('/daily')}>5-day</button>
        <button onClick={() => setForecastType('/hourly')}>Today</button>
      </div>
      <table>
        <thead>
          <tr>
            <th>Summary</th>
            <th>Avg Temp</th>
            <th>Precip</th>
            <th>Notes</th>
          </tr>
        </thead>
        <tbody>
          {data.map((item) => {
            return (
              <tr key={item.id}>
                <td>{item.summary}</td>
                <td> {item.temp.avg}°F</td>
                <td>{item.precip}%</td>
                <td>
                  <input
                    value={notes[item.id] || ''}
                    onChange={handleChange(item.id)}
                  />
                </td>
              </tr>
            );
          })}
        </tbody>
      </table>
    </div>
  );
}
```

## Rules of Hooks

There are two main rules to keep in mind when using Hooks:

- only call Hooks at the top level
- only call Hooks from React functions

As we have been practicing with the State Hook and the Effect Hook,
we’ve been following these rules with ease, but it is helpful to keep
these two rules in mind as you take your new understanding of Hooks out
into the wild and begin using
<a href="https://reactjs.org/docs/hooks-reference.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">more Hooks</a> in your React
applications.

When React builds the Virtual DOM, the library calls the functions that
define our components over and over again as the user interacts with the
user interface. React keeps track of the data and functions that we are
managing with Hooks based on their order in the function component’s
definition. For this reason, we always call our Hooks at the top level;
we never call hooks inside of loops, conditions, or nested functions.

Instead of confusing React with code like this:

``` jsx
if (userName !== '') {
  useEffect(() => {
    localStorage.setItem('savedUserName', userName);
  });
}
```

We can accomplish the same goal, while consistently calling our Hook
every time:

``` jsx
useEffect(() => {
  if (userName !== '') {
    localStorage.setItem('savedUserName', userName);
  }
});
```

Secondly, Hooks can only be used in React Functions. We cannot use Hooks
in class components and we cannot use Hooks in regular JavaScript
functions. We’ve been working with `useState()` and `useEffect()` in
function components, and this is the most common use. The only other
place where Hooks can be used is within custom hooks. Custom Hooks are
incredibly useful for organizing and reusing stateful logic between
function components. For more on this topic, head to the
<a href="https://reactjs.org/docs/hooks-custom.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React Docs</a>.

### Instructions

**1.**

The code that we are starting with has a lot of good ideas, but there
are some bugs that we need to help sort out. Let’s get started by
refactoring the code so that the State Hook is always called at the top
level.

It looks like the developers that wrote this code wanted to hold off on
using the `selectedCategory` and `items` state variables until after the
`categories` have been fetched. Conceptually this makes sense, but React
requires that all hooks be called on every render, so nesting these
`useState()` calls is not a valid option.

1.  Remove the `if (categories)` statement, and the surrounding curly
    braces `{ }` to bring all of our State Hook calls to the top level.
2.  To be clear about initial values, let’s explicitly set the initial
    state value for `categories` and `selectedCategory` to `null`.

**2.**

It looks like the idea behind using this expression: `if (!categories)`
was to only fetch the categories data from the server once. Nesting a
call to the Effect Hook inside of a condition like this will cause
different hooks to be called on different re-renders, resulting in
errors. Luckily, we know a better way!

Refactor this code so that the effect responsible for fetching the
`categories` data from the backend and saving it to local state follows
the rules for Hooks and only fetches the categories data once.

**3.**

Whew, we’re making great progress! It’s such a nice feeling to turn
error screens into working code, isn’t it?

Now that we are fetching the list of categories from the backend and
successfully rendering buttons for each of these to the screen, we are
ready to use another effect to fetch the items for each of these
categories, when the user clicks on each of them!

Uncomment the block of code that was attempting to do this, and refactor
it so that we follow the rules of Hooks. To optimize performance, only
call the backend for data when we don’t yet have it stored in the
component’s state like this code was trying to do.

### Solution

``` jsx
import React, { useState, useEffect } from 'react';
import { get } from './mockBackend/fetch';

export default function Shop() {
  const [categories, setCategories] = useState(null);
  const [selectedCategory, setSelectedCategory] = useState(null);
  const [items, setItems] = useState({});

  useEffect(() => {
    get('/categories').then((response) => {
      setCategories(response.data);
    });
  }, []);

  useEffect(() => {
    if (selectedCategory && !items[selectedCategory]) {
      get(`/items?category=${selectedCategory}`).then((response) => {
        setItems((prev) => ({ ...prev, [selectedCategory]: response.data }));
      });
    }
  }, [items, selectedCategory]);

  if (!categories) {
    return <p>Loading..</p>;
  }

  return (
    <div className='App'>
      <h1>Clothes 'n Things</h1>
      <nav>
        {categories.map((category) => (
          <button key={category} onClick={() => setSelectedCategory(category)}>
            {category}
          </button>
        ))}
      </nav>
      <h2>{selectedCategory}</h2>
      <ul>
        {!items[selectedCategory]
          ? null
          : items[selectedCategory].map((item) => <li key={item}>{item}</li>)}
      </ul>
    </div>
  );
}
```

## Separate Hooks for Separate Effects

When multiple values are closely related and change at the same time, it
can make sense to group these values in a collection like an object or
array. Packaging data together can also add complexity to the code
responsible for managing that data. Therefore, it is a good idea to
separate concerns by managing different data with different Hooks.

Compare the complexity here, where data is bundled up into a single
object:

``` jsx
// Handle both position and menuItems with one useEffect hook.
const [data, setData] = useState({ position: { x: 0, y: 0 } });
useEffect(() => {
  get('/menu').then((response) => {
    setData((prev) => ({ ...prev, menuItems: response.data }));
  });
  const handleMove = (event) =>
    setData((prev) => ({
      ...prev,
      position: { x: event.clientX, y: event.clientY }
    }));
  window.addEventListener('mousemove', handleMove);
  return () => window.removeEventListener('mousemove', handleMove);
}, []);
```

To the simplicity here, where we have separated concerns:

``` jsx
// Handle menuItems with one useEffect hook.
const [menuItems, setMenuItems] = useState(null);
useEffect(() => {
  get('/menu').then((response) => setMenuItems(response.data));
}, []);
 
// Handle position with a separate useEffect hook.
const [position, setPosition] = useState({ x: 0, y: 0 });
useEffect(() => {
  const handleMove = (event) =>
    setPosition({ x: event.clientX, y: event.clientY });
  window.addEventListener('mousemove', handleMove);
  return () => window.removeEventListener('mousemove', handleMove);
}, []);
```

It is not always obvious <a
href="https://reactjs.org/docs/hooks-faq.html#should-i-use-one-or-many-state-variables"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">whether to bundle data together or
separate it</a>, but with practice, we get better at organizing our code
so that it is easier to understand, add to, reuse, and test!

### Instructions

**1.**

At the moment, this code seems to work just fine. There are three
different network requests being made in a single effect and lots of
different, unrelated data being managed in a single state variable.
Let’s get to work breaking these single `useState()` and `useEffect()`
calls into separate, simpler hooks. Doing so will make this code easier
to understand, build on top of, and reuse as we continue to improve our
application!

Begin refactoring this component:

- Use a separate State Hook for `menu`, `newsFeed`, and `friends`.
- Use these new state setters instead of `setData()` in the effect.
- Simplify our JSX to use these new state variables instead of `data`.

**2.**

`Promise.all()` was helpful to us when we had all of our data bundled up
in a single object. It called all backend services, and when they all
sent back responses, we could then call our state setters with the
responses.

Because we are now managing these values separately, we can remove this
complexity! In our effect, call the `get()` function three times for the
three different data collections that our component wants to render,
without using `Promise.all()` any more.

**3.**

Now that we have three separate backend calls, let’s continue to
separate concerns by splitting each of these into three separate Effect
Hooks!

**4.**

Each `useEffect()` call is working with a corresponding `useState()`
call. Let’s reorganize our code to show this relationship more clearly,
making the logic easier to read and reuse!

For each of these three data collections, group the related State Hook
and the Effect Hook next to one. This will help to make it clear which
Hooks are working together to manage each separate data model.

### Solution

``` jsx
import React, { useState, useEffect } from 'react';
import { get } from './mockBackend/fetch';

export default function SocialNetwork() {
  const [menu, setMenu] = useState(null);
  useEffect(() => {
    get('/menu').then((response) => {
      setMenu(response.data);
    });
  }, []);

  const [newsFeed, setNewsFeed] = useState(null);
  useEffect(() => {
    get('/news-feed').then((response) => {
      setNewsFeed(response.data);
    });
  }, []);

  const [friends, setFriends] = useState(null);
  useEffect(() => {
    get('/friends').then((response) => {
      setFriends(response.data);
    });
  }, []);

  return (
    <div className='App'>
      <h1>My Network</h1>
      {!menu ? (
        <p>Loading..</p>
      ) : (
        <nav>
          {menu.map((menuItem) => (
            <button key={menuItem}>{menuItem}</button>
          ))}
        </nav>
      )}
      <div className='content'>
        {!newsFeed ? (
          <p>Loading..</p>
        ) : (
          <section>
            {newsFeed.map(({ id, title, message, imgSrc }) => (
              <article key={id}>
                <h3>{title}</h3>
                <p>{message}</p>
                <img src={imgSrc} alt='' />
              </article>
            ))}
          </section>
        )}
        {!friends ? (
          <p>Loading..</p>
        ) : (
          <aside>
            <ul>
              {friends
                .sort((a, b) => (a.isOnline && !b.isOnline ? -1 : 0))
                .map(({ id, name, isOnline }) => (
                  <li key={id} className={isOnline ? 'online' : 'offline'}>
                    {name}
                  </li>
                ))}
            </ul>
          </aside>
        )}
      </div>
    </div>
  );
}
```

## Lesson Review

In this lesson, we learned how to write effects that manage timers,
manipulate the DOM, and fetch data from a server. In earlier versions of
React, we could only have executed this type of code in the <a
href="https://reactjs.org/docs/state-and-lifecycle.html#adding-lifecycle-methods-to-a-class"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">lifecycle methods of class
components</a>, but with the Effect Hook, we can perform these types of
actions in function components with ease!

Let’s review the main concepts from this lesson:

- `useEffect()` - we can import this function from the `'react'` library
  and call it in our function components
- *effect* - refers to a function that we pass as the first argument of
  the `useEffect()` function. By default, the Effect Hook calls this
  effect after each render
- *cleanup function* - the function that is optionally returned by the
  effect. If the effect does anything that needs to be cleaned up to
  prevent memory leaks, then the effect returns a cleanup function, then
  the Effect Hook will call this cleanup function before calling the
  effect again as well as when the component is being unmounted
- *dependency array* - this is the optional second argument that the
  `useEffect()` function can be called with in order to prevent
  repeatedly calling the effect when this is not needed. This array
  should consist of all variables that the effect depends on.

The Effect Hook is all about scheduling when our effect’s code gets
executed. We can use the dependency array to configure when our effect
is called in the following ways:

| <u>Dependency Array</u> | <u>Effect called after first render & …</u>    |
|-------------------------|------------------------------------------------|
| undefined               | every re-render                                |
| Empty array             | no re-renders                                  |
| Non-empty array         | when any value in the dependency array changes |

Hooks gives us the flexibility to organize our code in different ways,
grouping related data as well as separating concerns to keep code
simple, error-free, reusable, and testable!

### Instructions

Congratulations on finishing this lesson! With the new skills and
information in this lesson, there’s so much functionality that you can
now add to the function components in your own React apps!

### Solution

``` jsx
import React, { useState, useEffect } from 'react';
 
export default function PageTitle() {
  const [name, setName] = useState('');
 
 useEffect(() => {
    document.title = `Hi, ${name}`;
  }, [name]);
 
  return (
    <div>
      <p>Use {name} input field below to rename this page!</p>
      <input 
        onChange={({target}) => setName(target.value)} 
        value={name} 
        type='text' />
    </div>
  );
}
```

``` jsx
import React, {Component} from 'react';

export default class PageTitle extends Component {
  constructor(props) {
    super(props);
    this.state = {
      name: ''
    };
  }

  componentDidMount() {
    document.title = this.state.name;
  }
  
  componentDidUpdate() {
    document.title = = `Hi, ${this.state.name}`;
  }

  render() {
    return (
      <div>
        <p>Use the input field below to rename this page!</p>
        <input 
          onChange={({target}) => this.setState({ name: target.value })} 
          value={name} 
          type='text' />
      </div>
    );
  }
}
```

# Passing Thoughts

What if you could post something and know it wouldn’t live forever? In
this project, we’ll build a place for our passing thoughts. Once you add
a short thought, it’ll disappear after just 15 seconds.

Let’s get started!

### Instructions

Mark the tasks as complete by checking them off

## Adding Thoughts

1\.

Run the app and take a look at what we have so far.

The app’s structure is there, but…well, it doesn’t actually work! There
are three major missing pieces right now:

1.  If you try to add a new thought, it refreshes the whole page and
    doesn’t do anything.
2.  If you try to delete a thought manually, it crashes!
3.  Thoughts never disappear, defeating the whole point of the app.

Before we start, let’s talk about the main piece of state that the app
stores: an array of thought objects. Each of those objects will have
three properties:

- `id`, a unique ID for this thought
- `text`, the thought’s text
- `expiresAt`, the time that the thought expires, represented as a
  number

Take a look at **App.js** and you’ll see that we’re defining two starter
thoughts like this, on lines 8–19:

``` jsx
const [thoughts, setThoughts] = useState([
  {
    id: generateId(),
    text: 'This is a place for your passing thoughts.',
    expiresAt: getNewExpirationTime(),
  },
  {
    id: generateId(),
    text: "They'll be removed after 15 seconds.",
    expiresAt: getNewExpirationTime(),
  },
]);
```

That will set the state to something like this:

``` jsx
[
  {
    id: 0,
    text: 'This is a place for your passing thoughts.',
    expiresAt: 1600624968405,
  },
  {
    id: 1,
    text: "They'll be removed after 15 seconds.",
    expiresAt: 1600624968405,
  },
]
```

When we create new thought objects, we’ll do something very similar to
this. Let’s get started!

2\.

Open the `<App>` component in **App.js**. You can see that we’ve already
set up the array of thoughts in a variable called `thoughts`, using the
`useState()` hook. We’ve also got `setThoughts()`, a function we can
call to update the list of thoughts. Let’s wire these things up so that
users can add new thoughts.

First, we’ll need to write a new function inside of `App()`, called
`addThought()`. It will take a single argument, `thought`, and it will
put itself inside of the thoughts array with `setThoughts()`.

Inside of `addThought()`, we’ll call `setThoughts()` with a function
that returns a new state: the array with the new `thought` at the front.

Add this function between the end of the `useState()` call (the line
ending with `]);`) and the `return`.

3\.

Now we have a function that’ll update the state, but we need to use it.
Specifically, let’s pass it to the `<AddThoughtForm>` component as a
prop.

In **App.js**, find where `<AddThoughtForm>` is rendered. Pass a prop
named `addThought` and give our newly created `addThought()` function as
its value.

4\.

Now that we’re passing `addThought()` into the `<AddThoughtForm>`
component, it’s time for us to make that component actually call this
function.

`<AddThoughtForm>` will have some state. Specifically, it’ll hold the
value of the text input, and when the user submits the form, we’ll take
that input and use it in a call to `addThought()`.

Open up **AddThoughtForm.js**.

On the first line, we’ll need to import `useState()` and React. Update
the import to import both `React` and `useState()`.

Next, inside of `AddThoughtForm`, set up the initial state of the text
input as an empty string.

After you have done that, you’ll need to write a function called
`handleTextChange()` that will be called when the input changes. It will
take the event as an argument, and will call `setText()` to update the
state.

Finally, you’ll need to connect these two things to the input. Pass
`text` in a prop called `value`, and pass `handleTextChange()` in a prop
called `onChange`.

Now we’re storing the state of the input!

5\.

Now that we have the input’s state stored, we will need to create a new
thought object when the form is submitted. Handling the form submission
event is the first step of doing that.

Create a new function to handle the form submission called
`handleSubmit()`. It will take the event as an argument (just like how
`handleTextChange()` does).

To prevent the form from refreshing the page, call
`event.preventDefault()` inside `handleSubmit()`. This prevents the
browser from performing its default behavior when a form is submitted.

Finally, add the submit handler to the form by passing
`onSubmit={handleSubmit}`.

Once you’ve done this, the form should no longer refresh the page.
(Nothing else will happen either, but we’ll fix that soon.)

6\.

Now, we’ll update `handleSubmit()` to…well, actually submit the data!

In **utilities.js** you will see that there are two functions:
`generateId()` and `getNewExpirationTime()`. We will use these functions
to get the values for the unique ID and the expiration time for new
thought objects.

Back in **AddThoughtForm.js**, inside of `handleSubmit()` after the call
to `event.preventDefault()`, create a new thought object with its three
required properties: `id` (generated by `generateId()`), `text` (from
prior steps), and `expiresAt` (generated by `getNewExpirationTime()`).
Pass it to `addThought()`.

If you’re not sure how to create a thought object, refer to how it’s
done in **App.js**.

Once this is done, you should be able to submit the form and see the new
thought appear on the screen!

7\.

Though we are creating new thoughts, you might notice a piece of the
user experience that feels a little unintuitive: the input isn’t cleared
when you submit the form. That means that whatever you typed stays
around, even though it probably shouldn’t.

Clear the input’s text after adding a new thought.

8\.

There’s just one thing left to do here: if the user hasn’t typed
anything but they submit the form anyway, an empty thought will be
created. We all have empty thoughts from time to time, but we probably
don’t want to add those to our app.

To fix this, only call `addThought()` if the user has typed something in
the text box. You’ll use an `if` statement to check the length of the
`text` variable before creating and adding a new thought object. (Make
sure to always call `event.preventDefault()`, though, even if the user
hasn’t typed anything.)

## Manually Deleting Thoughts

9\.

The app should feature two ways to delete thoughts:

1.  Manual deletion, when the user clicks the delete button.
2.  Automatic deletion after 15 seconds.

Let’s start with the first task. It will help us build the scaffolding
for the second.

Open **App.js**.

Just like we added a function to add new thoughts, we will need to
create a function to remove them, too.

Under `addThought()`, create a new function called `removeThought()`. It
will take the ID of the thought we want to remove in an argument called
`thoughtIdToRemove`, and it will call `setThoughts()` to remove the
thought.

To do this, you’ll call `thoughts.filter()` to filter out the thought we
want to remove.

10\.

Once this is done, all you’ll need to do is pass this new function as a
prop to the `<Thought>` component. Add a new prop called `removeThought`
with the newly created `removeThought()` function as its value.

If you’ve done this successfully, you should now be able to manually
remove thoughts by clicking the delete button next to each thought.

## Letting Thoughts Drift Away

11\.

The app is getting close, but we’re still missing the core feature:
making thoughts disappear.

When a `<Thought>` component is rendered, we want to start a countdown.
Once the countdown expires, we want to call `removeThought()`. We’ll do
this with an effect hook.

Open **Thought.js**.

Start by importing `useEffect()` from React.

12\.

Let’s start by setting a timer in the `<Thought>` component with
`setTimeout()`.

Using the `useEffect()` hook, call `setTimeout()`. The first argument
should be a function that calls `alert('Time has passed!')` (or any
sample text you want—we’ll remove it later). It should happen when the
thought expires. You might calculate that like this:

``` jsx
const timeRemaining = thought.expiresAt - Date.now();
```

Make sure you remember two things:

1.  Return a function that clears the timeout when you’re done! It’s
    always good practice to clean up your effects.
2.  Add `[thought]` as a dependency, in the second argument to
    `useEffect()`. You want to re-run the effect every time the
    `thought` is different.

Once this is done, you should see “Time has passed!” alerts after 15
seconds.

13\.

There’s just one thing left to do: replace that `alert()` with a call to
`removeThought()`. This should already be passed in as `props`, so
you’ll just need to delete the `alert()` line and replace it with a call
to `removeThought()`.

You’ll need to call `removeThought()` with this thought’s ID, which you
can get with `thought.id`.

Once that’s done, try adding some thoughts and watch them disappear…it’s
just like your brain, but you built it with React.

### [Solution](react-hooks-passing-thoughts)

# Style

## Advanced React Techniques

In this unit, you will learn a variety of useful techniques that React
programmers are expected to know.

You’ll learn how to make a *propType*, how to write a form, and how to
use styles.

You’ll also be introduced to your second programming pattern: dividing
components into *presentational components* and *container components*.

Click Next to begin!

### Instructions

In this video, an object is passed from the Post component to the User
info component. The object contains CSS-like values which affect the
styling applied to User info.

### Solution

[Advanced React
Techniques](https://content.codecademy.com/courses/React/react_animations-style.mp4)

## Inline Styles

There are many different ways to use styles in React. This lesson is
focused on one of them: *inline styles.*

An inline style is a style that’s written as an *attribute*, like this:

``` jsx
<h1 style={{ color: 'red' }}>Hello world</h1>
```

Notice the double curly braces. What are those for?

The *outer* curly braces inject JavaScript into JSX. They say,
“everything between us should be read as JavaScript, not JSX.”

The *inner* curly braces create a JavaScript object literal. They make
this a valid JavaScript object:

``` jsx
{ color: 'red' }
```

If you inject an object literal into JSX, and your entire injection is
*only* that object literal, then you will end up with double curly
braces. There’s nothing unusual about how they work, but they look funny
and can be confusing.

### Instructions

**1.**

Click Run to see the `<h1></h1>` rendered to the browser. How can you
add styles to this poor `<h1></h1>`?

**2.**

Let’s give the `<h1></h1>` an *inline style*.

Give the `<h1></h1>` an attribute with a *name* of `style`. The
attribute’s *value* should evaluate to this object:

``` jsx
{ background: 'lightblue', color: 'darkred' }
```

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const styleMe = <h1 style={{ background: 'lightblue', color: 'darkred' }}>Please style me! I am so bland!</h1>;

ReactDOM.render(
    styleMe, 
    document.getElementById('app')
);
```

## Make A Style Object Variable

That’s all that you need to apply basic styles in React! Simple and
straightforward.

One problem with this approach is that it becomes obnoxious if you want
to use more than just a few styles. An alternative that’s often nicer is
to store a style object in a *variable*, and then inject that variable
into JSX.

Look in the code editor for an example. The style object is *defined* on
lines 3-6, and then *injected* on line 11.

If you aren’t used to using modules, then this code may have made you
twitch uncontrollably:

``` jsx
const style = {
  color: 'darkcyan',
  background: 'mintcream'
};
```

Defining a variable named `style` in the top-level scope would be an
extremely bad idea in many JavaScript environments! In React, however,
it’s totally fine.

Remember that every file is invisible to every other file, except for
what you choose to expose via `module.exports`. You could have 100
different files, all with global variables named `style`, and there
could be no conflicts.

### Instructions

**1.**

Select **styleMe.js**. Make a new line after
`import ReactDOM from 'react-dom';`.

On this new line, declare a new constant named `styles`. Set `styles`
equal to this object:

``` jsx
{
  background: 'lightblue',
  color: 'darkred'
}
```

**2.**

Change the *value* of your `<h1></h1>`’s `style` attribute. Make
`style`’s value equal to your new `styles` variable.

Since you aren’t injecting an object *literal* anymore, you will no
longer need to use double curly braces.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
const styles = {
  background: 'lightblue',
  color:      'darkred'
};

const styleMe = <h1 style={styles}>Please style me! I am so bland!</h1>;

ReactDOM.render(
    styleMe, 
    document.getElementById('app')
);
```

``` jsx
import React from 'react';

const styles = {
  color: 'darkcyan',
  background: 'mintcream'
};

export class StyledClass extends React.Component {
  render() {
    return (
      <h1 style={styles}>
        Hello world
      </h1>
    );
  }
}
```

## Style Name Syntax

In regular JavaScript, style *names* are written in
hyphenated-lowercase:

``` jsx
const styles = {
  'margin-top': '20px',
  'background-color': 'green'
};
```

In React, those same names are instead written in camelCase:

``` jsx
const styles = {
  marginTop: '20px',
  backgroundColor: 'green'
};
```

This has zero effect on style property *values*, only on style property
*names*.

### Instructions

**1.**

Give your `styles` object two more properties: a `marginTop` of `100px`,
and a `fontSize` of `50px`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
const styles = {
  background: 'lightblue',
  color:      'darkred',
  marginTop: '100px',
  fontSize: '50px'
};

const styleMe = <h1 style={styles}>Please style me! I am so bland!</h1>;

ReactDOM.render(
    styleMe, 
    document.getElementById('app')
);
```

## Style Value Syntax

In the last exercise, you learned how style *names* are slightly
different in React than they are in regular JavaScript.

In this exercise, you will learn how style *values* are slightly
different in React than they are in regular JavaScript.

In regular JS, style *values* are almost always strings. Even if a style
value is numeric, you usually have to write it as a string so that you
can specify a unit. For example, you have to write `"450px"` or `"20%"`.

In React, if you write a style value as a *number*, then the unit `"px"`
is assumed.

How convenient! If you want a font size of 30px, you can write:

``` jsx
{ fontSize: 30 }
```

If you want to use units other than “px,” you can use a string:

``` jsx
{ fontSize: "2em" }
```

Specifying “px” with a string will still work, although it’s redundant.

A few specific styles will *not* automatically fill in the “px” for you.
These are styles where you aren’t likely to use “px” anyway, so you
don’t really have to worry about it. <a
href="https://github.com/facebook/react/blob/4131af3e4bf52f3a003537ec95a1655147c81270/src/renderers/dom/shared/CSSProperty.js#L15-L59"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Here is a list of styles that don’t
assume “px”.</a>

### Instructions

**1.**

In your `styles` object, change any property values that end in “px”
from strings into numbers.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
const styles = {
  background: 'lightblue',
  color:      'darkred',
  marginTop: 100,
  fontSize: 50
};

const styleMe = <h1 style={styles}>Please style me! I am so bland!</h1>;

ReactDOM.render(
    styleMe, 
    document.getElementById('app')
);
```

## Share Styles Across Multiple Components

What if you want to reuse styles for several different components?

One way to make styles *reusable* is to keep them in a separate
JavaScript file. This file should *export* the styles that you want to
reuse, via `export`. You can then `import` your styles into any
component that wants them.

In the code editor, move back and forth between **facebookStyles.js**
and **FacebookColorThief.js** to see a styles file in action.

### Instructions

**1.**

You have a meeting in 5 minutes with an important client. It is
*crucial* that you impress them by showing off a beautiful React
website.

You haven’t used any styles at all yet! Oh, no!!!

You *do* have some styles that you wrote one night while lost in a deep
dream. Open **styles.js** to see your subconscious styles.

Intriguing! But your dream-styles aren’t connected to the rest of your
app, so at the moment they’re worthless. Can you apply your styles
before it’s too late?

Click Run to see the current state of things. Maybe you don’t need to
apply your dream-styles! Maybe your site is impressive enough already!

**2.**

No, definitely not impressive enough.

You need to export your styles from **styles.js**, so that you can
import them into your other files.

In **styles.js**, export your styles:

``` jsx
export const styles = {
  fontFamily: fontFamily,
  background: background,
  fontSize: fontSize,
  padding: padding,
  color: color
};
```

**3.**

These styles are all you’ve got! You’re going to have to use them in
both **Home.js** and **AttentionGrabber.js**.

In **Home.js**, create a new line after
`import { AttentionGrabber } from './AttentionGrabber';`. On your new
line, `import` `styles` from **styles.js**.

**styles.js**, **Home.js**, and **AttentionGrabber.js** all share the
same parent directory.

**4.**

Now select **AttentionGrabber.js**.

Create a new line after `import React from 'react';`. On your new line,
import your exported `styles` variable again.

**5.**

Now you can use your dream-styles!

Select **Home.js**. In between the `styles` import and the `Home`
component declaration, define a new variable:

``` jsx
const divStyle = {
  background: styles.background,
  height: '100%' 
};
```

Now select **AttentionGrabber.js**. In between the `styles` import and
the `AttentionGrabber` component declaration, define a different new
variable:

``` jsx
const h1Style = {
  color: styles.color,
  fontSize: styles.fontSize,
  fontFamily: styles.fontFamily,
  padding: styles.padding,
  margin: 0,
};
```

**6.**

The client is walking into the conference room! Quick, use those styles!

In `Home`’s render function, give the `<div>` a `style` attribute of
`{divStyle}`.

**7.**

In `AttentionGrabber`’s render function, give the `<h1>` a `style`
attribute of `{h1Style}`.

Click Run and expand the browser.

The client falls to pieces over your minimalist, elegant design! Raises
for everyone!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { AttentionGrabber } from './AttentionGrabber';
import { styles } from './styles';

const divStyle = {
  background: styles.background,
  height:     '100%' 
};

export class Home extends React.Component {
  render() {
    return (
      <div style={divStyle}>
        <AttentionGrabber />
        <footer>THANK YOU FOR VISITING MY HOMEPAGE!</footer>
      </div>
    );
  }
}

ReactDOM.render(
    <Home />, 
    document.getElementById('app')
);
```

``` jsx
const fontFamily = 'Comic Sans MS, Lucida Handwriting, cursive';
const background = 'pink url("https://content.codecademy.com/programs/react/images/welcome-to-my-homepage.gif") fixed';
const fontSize = '4em';
const padding = '45px 0';
const color = 'green';

export const styles = {
  fontFamily: fontFamily,
  background: background,
  fontSize:   fontSize,
  padding:    padding,
  color:      color
};
```

``` jsx
import React from 'react';
import { styles } from './styles';

const h1Style = {
  color:      styles.color,
  fontSize:   styles.fontSize,
  fontFamily: styles.fontFamily,
  padding:    styles.padding,
  margin:     0
};

export class AttentionGrabber extends React.Component {
    render() {
        return <h1 style={h1Style}>WELCOME TO MY HOMEPAGE!</h1>;
    }
}
```

``` jsx
// facebook color palette

const blue = 'rgb(139, 157, 195)';
const darkBlue = 'rgb(059, 089, 152)';
const lightBlue = 'rgb(223, 227, 238)';
const grey = 'rgb(247, 247, 247)';
const white = 'rgb(255, 255, 255)';

const colorStyles = {
  blue: blue,
  darkBlue: darkBlue,
  lightBlue: lightBlue,
  grey: grey,
  white: white
};
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { colorStyles } from './facebookStyles';

let divStyle = {
  backgroundColor: styles.darkBlue,
  color: styles.white
};

export class Wow extends React.Component {
  render() {
    return (
      <div style={divStyle}>
        Wow, I stole these colors from Facebook!
      </div>
    );
  }
}

ReactDOM.render(
    <Wow />, 
    document.getElementById('app')
);
```

# Container Components From Presentational Components

## Separate Container Components From Presentational Components

In this lesson, you will learn a programming pattern that will help
organize your React code.

As you continue building your React application, you will soon realize
that one component has too many responsibilities, but how do you know
when you have reached that point?

*Separating container components from presentational components* helps
to answer that question. It shows you when it might be a good time to
divide a component into smaller components. It also shows you how to
perform that division.

### Instructions

**1.**

Click Run. You are looking at a rendered `<GuineaPigs />` component.

`<GuineaPigs />`’s job is to render a photo carousel of guinea pigs. It
does this perfectly well! And yet, it has a problem: it does too much
stuff. How might we divide this into a container component and a
presentational component?

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const GUINEAPATHS = [
  'https://content.codecademy.com/courses/React/react_photo-guineapig-1.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-2.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-3.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-4.jpg'
];

export class GuineaPigs extends React.Component {
  constructor(props) {
    super(props);

    this.state = { currentGP: 0 };

    this.interval = null;

    this.nextGP = this.nextGP.bind(this);
  }

  nextGP() {
    let current = this.state.currentGP;
    let next = ++current % GUINEAPATHS.length;
    this.setState({ currentGP: next });
  }

  componentDidMount() {
    this.interval = setInterval(this.nextGP, 5000);
  }

  componentWillUnmount() {
    clearInterval(this.interval);
  }

  render() {
    let src = GUINEAPATHS[this.state.currentGP];
    return (
      <div>
        <h1>Cute Guinea Pigs</h1>
        <img src={src} />
      </div>
    );
  }
}

ReactDOM.render(
  <GuineaPigs />, 
  document.getElementById('app')
);
```

## Create Container Component

Separating container components from presentational components is a
popular React programming pattern. It is a special application of the
concepts learned in the <a
href="https://www.codecademy.com/courses/react-102/lessons/stateless-inherit-stateful-intro/exercises/stateless-inherit-stateful"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Stateless Components From Stateful Components</a>
module.

If a component has to have state, make calculations based on props, or
manage any other complex logic, then that component shouldn’t also have
to render HTML-like JSX.

The functional part of a component (state, calculations, etc.) can be
separated into a *container component*.

### Instructions

**1.**

**GuineaPigs.js** contains a lot of logic! It has to select the correct
guinea pig to render, wait for the right amount of time before
rendering, render an image, select the next correct guinea pig, and so
on.

Let’s separate the logic from the `GuineaPigs` component into a
container component.

Near the top left of the code editor, click on the folder icon. Create a
new folder named **containers**. **containers/** should be next to
**components/**.

Inside of **containers/**, create a new file named
**GuineaPigsContainer.js**. Make sure that GuineaPigs is plural, but
Container is singular!

Once you have made **containers/GuineaPigsContainer.js**, click Run.

**2.**

Good!

Open **components/GuineaPigs.js**.

You want to separate the logic of this component class into a container
component. How do you do that?

To start, just make a copy. After that, you can delete the appropriate
parts.

Highlight the entire contents of components/GuineaPigs.js, and copy it
to the clipboard.

Now, open **containers/GuineaPigsContainer.js**.

Click inside the empty file, and paste.
**containers/GuineaPigsContainer.js** and **components/GuineaPigs.js**
should be identical.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

const GUINEAPATHS = [
  'https://content.codecademy.com/courses/React/react_photo-guineapig-1.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-2.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-3.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-4.jpg'
];

class GuineaPigs extends React.Component {
  constructor(props) {
    super(props);

    this.state = { currentGP: 0 };

    this.interval = null;

    this.nextGP = this.nextGP.bind(this);
  }

  nextGP() {
    let current = this.state.currentGP;
    let next = ++current % GUINEAPATHS.length;
    this.setState({ currentGP: next });
  }

  componentDidMount() {
    this.interval = setInterval(this.nextGP, 5000);
  }

  componentWillUnmount() {
    clearInterval(this.interval);
  }

  render() {
    let src = GUINEAPATHS[this.state.currentGP];
    return (
      <div>
        <h1>Cute Guinea Pigs</h1>
        <img src={src} />
      </div>
    );
  }
}

ReactDOM.render(
  <GuineaPigs />,
  document.getElementById('app')
);
```

## Separate Presentational Component

Now that we’ve created a container component for the logic, we can
dedicate the original component, `GuineaPigs`, to be a presentational
component.

The presentational component’s only job is to contain HTML-like JSX. It
should be an exported component and will not render itself because a
presentational component will always get rendered by a container
component.

As a separate example, say we have `Presentational` and `Container`
components. **Presentational.js** must export the component class (or
function, when applicable):

``` jsx
export class Presentational extends Component {
```

**Container.js** must import that component:

``` jsx
import { Presentational } from 'Presentational.js';
```

### Instructions

**1.**

Select **components/GuineaPigs.js**.

Look at the `GuineaPigs` component class, starting on line 11. This is
going to be your presentational component class. That means that its
only job will be to contain JSX.

On line 2, delete `import ReactDOM from 'react-dom'`.

At the bottom of the file, delete the `ReactDOM.render()` call.

Export GuineaPigs by adding the keyword `export` to the beginning of
`class GuineaPigs`.

**2.**

Good! But why did you just do that?

`GuineaPigs` will get rendered by `GuineaPigsContainer`. Any component
that gets rendered by a different component should use export.

Select **containers/GuineaPigsContainer.js**.

Make a new line after line 2. On your new line, import `GuineaPigs`.

This will be slightly different from what you’ve done before! As you saw
when you opened the file navigator, **GuineaPigs.js** and
**GuineaPigsContainer.js** are not neighbors. The file path that you
pass to import will have to navigate up one level, and then down into
the components folder.

### Solution

``` jsx
import React from 'react';

const GUINEAPATHS = [
  'https://content.codecademy.com/courses/React/react_photo-guineapig-1.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-2.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-3.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-4.jpg'
];

export class GuineaPigs extends React.Component {
  constructor(props) {
    super(props);

    this.state = { currentGP: 0 };

    this.interval = null;

    this.nextGP = this.nextGP.bind(this);
  }

  nextGP() {
    let current = this.state.currentGP;
    let next = ++current % GUINEAPATHS.length;
    this.setState({ currentGP: next });
  }

  componentDidMount() {
    this.interval = setInterval(this.nextGP, 5000);
  }

  componentWillUnmount() {
    clearInterval(this.interval);
  }

  render() {
    let src = GUINEAPATHS[this.state.currentGP];
    return (
      <div>
        <h1>Cute Guinea Pigs</h1>
        <img src={src} />
      </div>
    );
  }
}
```

## Render Presentational Component in Container Component

We now have a container component
(**containers/GuineaPigsContainer.js**) for logic and a presentational
component (**components/GuineaPigs.js**) for rendering JSX!

The container component should now render the presentational component
instead of rendering JSX.

### Instructions

**1.**

Select **containers/GuineaPigsContainer.js**.

On line 12, change the component class’s name from `GuineaPigs` to
`GuineaPigsContainer`. In the `ReactDOM.render()` call near the bottom
of the file, change `<GuineaPigs />` to `<GuineaPigsContainer />`.

**2.**

`GuineaPigsContainer` contains a lot of logic. It shouldn’t also have to
render JSX.

Delete any JSX from `GuineaPigsContainer`’s return statement in the
render function. Instead, return an instance of `GuineaPigs`.

The new render function should look like this:

``` jsx
render() { 
  const src = GUINEAPATHS[this.state.currentGP]; 
  return <GuineaPigs />;
}
```

**3.**

Once your container component has chosen a guinea pig, it must pass that
guinea pig to the presentational component.

In `GuineaPigsContainer`’s render function, pass the chosen guinea pig
by giving `<GuineaPigs />` a prop of `src = {src}`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { GuineaPigs } from '../components/GuineaPigs';

const GUINEAPATHS = [
  'https://content.codecademy.com/courses/React/react_photo-guineapig-1.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-2.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-3.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-4.jpg'
];

class GuineaPigsContainer extends React.Component {
  constructor(props) {
    super(props);

    this.state = { currentGP: 0 };

    this.interval = null;

    this.nextGP = this.nextGP.bind(this);
  }

  nextGP() {
    let current = this.state.currentGP;
    let next = ++current % GUINEAPATHS.length;
    this.setState({ currentGP: next });
  }

  componentDidMount() {
    this.interval = setInterval(this.nextGP, 5000);
  }

  componentWillUnmount() {
    clearInterval(this.interval);
  }

  render() {
    let src = GUINEAPATHS[this.state.currentGP];
    return <GuineaPigs src = {src} />;
  }
}

ReactDOM.render(
  <GuineaPigsContainer />, 
  document.getElementById('app')
);
```

## Remove Logic from Presentational Component

Our container component now renders the `GuineaPigs` presentational
component instead of JSX statements!

The last step to separating the container component from the
presentational component is to remove redundant logic in the
presentational component. The presentational component should be left
with the render function that contains JSX statements.

### Instructions

**1.**

Select **components/GuineaPigs.js**.

This component’s only job is to render HTML-like JSX. Delete everything
inside of the `GuineaPigs` component class, except for the render
function. When you’re done, the class should only have one method:
`render()`!

Inside of the `render()` function, delete this line of logic:

``` jsx
let src = GUINEAPATHS[this.state.currentGP];
```

…and replace it with this:

``` jsx
let src = this.props.src;
```

Lastly, delete the `GUINEAPATHS` array.

### Solution

``` jsx
import React from 'react';

export class GuineaPigs extends React.Component {
  render() {
    let src = this.props.src;
    return (
      <div>
        <h1>Cute Guinea Pigs</h1>
        <img src={src} />
      </div>
    );
  }
}
```

## Review

Congrats! You divided the `GuineaPigs` component into a container
component and a presentational component:
**containers/GuineaPigsContainer.js** and **components/GuineaPigs.js**.

Here are the steps we took:

1.  Identified that the original component needed to be refactored: it
    was handling both calculations/logic and presentation/rendering
2.  Copied the original component to a new **containers/** folder and
    renamed it `GuineaPigsContainer`
3.  Removed all of the presentation/rendering code from the container
    component
4.  Removed all of the calculation/logic code from the presentational
    component
5.  Accessed the presentational component from within the container
    using `import` and `export`
6.  Edited the container’s `render()` method to render the
    presentational component with the proper props

In this programming pattern, the container component does the work of
figuring out what to display. The presentational component does the work
of actually displaying it. If a component does a significant amount of
work in both areas, then that’s a sign that you should use this pattern!

If you’d like to learn more about this pattern, here are some articles
to start with:

- <a
  href="https://medium.com/@learnreact/container-components-c0e67432e005"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Container Components</a>
- <a
  href="https://medium.com/@dan_abramov/smart-and-dumb-components-7ca2f9a7c7d0"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Presentational and Container
  Components</a>

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { GuineaPigs } from '../components/GuineaPigs';

const GUINEAPATHS = [
  'https://content.codecademy.com/courses/React/react_photo-guineapig-1.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-2.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-3.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-4.jpg'
];

class GuineaPigsContainer extends React.Component {
  constructor(props) {
    super(props);

    this.state = { currentGP: 0 };

    this.interval = null;

    this.nextGP = this.nextGP.bind(this);
  }

  nextGP() {
    let current = this.state.currentGP;
    let next = ++current % GUINEAPATHS.length;
    this.setState({ currentGP: next });
  }

  componentDidMount() {
    this.interval = setInterval(this.nextGP, 5000);
  }

  componentWillUnmount() {
    clearInterval(this.interval);
  }

  render() { 
    const src = GUINEAPATHS[this.state.currentGP]; 
    return <GuineaPigs src={src} />;
  }
}

ReactDOM.render(
  <GuineaPigsContainer />, 
  document.getElementById('app')
);
```

``` jsx
import React from 'react';

export class GuineaPigs extends React.Component {
  render() {
    let src = this.props.src;
    return (
      <div>
        <h1>Cute Guinea Pigs</h1>
        <img src={src} />
      </div>
    );
  }
}
```

# PropTypes

## propTypes

In this lesson, you will learn to use an important React feature called
`propTypes`.

`propTypes` are useful for two reasons. The first reason is *prop
validation*.

*Validation* can ensure that your `props` are doing what they’re
supposed to be doing. If `props` are missing, or if they’re present but
they aren’t what you’re expecting, then a warning will print in the
console.

This is useful, but reason \#2 is arguably more useful: *documentation*.

*Documenting* `props` makes it easier to glance at a file and quickly
understand the component class inside. When you have a lot of files, and
you will, this can be a huge benefit.

Click Next to learn how to use `propTypes`!

### Instructions

In this video, the Stats component has a `propTypes` object that
requires its `comments` prop to be a number.

When a string is passed to Stats, an error is raised. When a number is
passed to Stats, the prop is accepted and the component updates with the
new value.

### Solution

[propTypes](https://content.codecademy.com/courses/React/react_animations-prop-types.mp4)

## Apply PropTypes

In the code editor, take a look at `MessageDisplayer`’s render function.

Notice the expression `this.props.message`. From this expression, you
can deduce that `MessageDisplayer` expects to get passed a `prop` named
`message`. Somewhere, at some time, this code is expected to execute:

``` jsx
<MessageDisplayer message="something" />
```

If a component class expects a `prop`, then you can use `propTypes` for
that component class!

In order to start using `propTypes`, we need to import the
`'prop-types'` library.

``` jsx
import PropTypes from 'prop-types';
```

Then, you can declare `propTypes` as a static property for your
component after the component has been defined. See the example of a
`propTypes` property on lines 11-13. Notice that the *value* of
`propTypes` is an object, not a function!

The second step is to add properties to the `propTypes` object. For each
`prop` that your component class expects to receive, there can be one
property on your `propTypes` object.

`MessageDisplayer` only expects one `prop`: `message`. Therefore, its
`propTypes` object only has one property.

### Instructions

**1.**

Select **BestSeller.js**.

Import the `'prop-types'` library as `PropTypes` on line 2.

**2.**

Give the `BestSeller` component class a `propTypes` property. For now,
set `propTypes` equal to an empty object literal.

### Solution

``` jsx
import React from 'react';
import PropTypes from 'prop-types';

export class BestSeller extends React.Component {
  render() {
    return (
      <li>
        Title: <span>
          {this.props.title}
        </span><br />
        
        Author: <span>
          {this.props.author}
        </span><br />
        
        Weeks: <span>
          {this.props.weeksOnList}
        </span>
      </li>
    );
  }
}

BestSeller.propTypes = {};
```

``` jsx
import React from 'react';
import PropTypes from 'prop-types';

export class MessageDisplayer extends React.Component {
  render() {
    return <h1>{this.props.message}</h1>;
  }
}

// This propTypes object should have
// one property for each expected prop:
MessageDisplayer.propTypes = {
  message: PropTypes.string
};
```

## Add Properties to PropTypes

In the code editor, look at the property on `MessageDisplayer`’s
`propTypes` object:

``` jsx
message: PropTypes.string 
```

What are the properties on `propTypes` supposed to *be*, exactly?

The *name* of each property in `propTypes` should be the name of an
expected `prop`. In our case, `MessageDisplayer` expects a `prop` named
`message`, so our property’s *name* is `message`.

The *value* of each property in `propTypes` should fit this pattern:

``` jsx
PropTypes.expected_data_type_goes_here
```

Since `message` is presumably going to be a string, we chose
`PropTypes.string`. You can see this on line 13. Notice the difference
in capitalization between the `propTypes` object and `PropTypes`!

Each property on the `propTypes` object is called a `propType`.

Select the next file in the code editor, **Runner.js**. Find `Runner`’s
`propTypes` object.

`Runner` has six `propTypes`! Look at each one. Note that `bool` and
`func` are abbreviated, but all other data types are spelled normally.

If you add `.isRequired` to a `propType`, then you will get a console
warning if that `prop` *isn’t* sent.

Try to find all six `prop`s from the `propTypes` object in `Runner`’s
render function: `this.props.message`, `this.props.style`, etc.

### Instructions

**1.**

Select **BestSeller.js**.

In `BestSeller`’s `propTypes` object, write one `propType` for each
`prop` that `BestSeller` is expecting: `title`, `author`, and
`weeksOnList`.

Make `title` and `author` strings. Make `weeksOnList` a number. Make all
three `isRequired`.

If you get stuck, look to **Runner.js** for guidance.

**2.**

Good! You just gave `BestSeller` three `propTypes`.

In the code editor, open the last file, **BookList.js**.

At the bottom of the file, render `<BookList />` using
`ReactDOM.render`.

### Solution

``` jsx
import React from 'react';
import PropTypes from 'prop-types';

export class BestSeller extends React.Component {
  render() {
    return (
      <li>
        Title: <span>
          {this.props.title}
        </span><br />
        
        Author: <span>
          {this.props.author}
        </span><br />
        
        Weeks: <span>
          {this.props.weeksOnList}
        </span>
      </li>
    );
  }
}

BestSeller.propTypes = {
  title: PropTypes.string.isRequired,
  author: PropTypes.string.isRequired,
  weeksOnList: PropTypes.number.isRequired
};
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { BestSeller } from './BestSeller';

export class BookList extends React.Component {
  render() {
    return (
      <div>
        <h1>Best Sellers</h1>
        <div>
          <ol>
            <BestSeller 
              title="Glory and War Stuff for Dads" 
              author="Sir Eldrich Van Hoorsgaard" 
              weeksOnList={10} />
            <BestSeller 
              title="The Crime Criminals!" 
              author="Brenda Sqrentun" 
              weeksOnList={2} />
            <BestSeller
              title="Subprime Lending For Punk Rockers" 
              author="Malcolm McLaren" 
              weeksOnList={600} />
          </ol>
        </div>
      </div>
    );
  }
}

ReactDOM.render(<BookList />, document.getElementById('app'));
```

``` jsx
import React from 'react';
import PropTypes from 'prop-types';

export class MessageDisplayer extends React.Component {
  render() {
    return <h1>{this.props.message}</h1>;
  }
}

// This propTypes object should have
// one property for each expected prop:
MessageDisplayer.propTypes = {
  message: PropTypes.string
};
```

``` jsx
import React from 'react';
import PropTypes from 'prop-types';

export class Runner extends React.Component {
  render() {
    let miles = this.props.miles;
    let km = this.props.milesToKM(miles);
    let races = this.props.races.map(function(race, i){
      return <li key={race + i}>{race}</li>;
    });

    return (
      <div style={this.props.style}>
        <h1>{this.props.message}</h1>
        { this.props.isMetric && 
          <h2>One Time I Ran {km} Kilometers!</h2> }
        { !this.props.isMetric && 
          <h2>One Time I Ran {miles} Miles!</h2> }
        <h3>Races I've Run</h3>
        <ul id="races">{races}</ul>
      </div>
    );
  }
}

Runner.propTypes = {
  message:   PropTypes.string.isRequired,
  style:     PropTypes.object.isRequired,
  isMetric:  PropTypes.bool.isRequired,
  miles:     PropTypes.number.isRequired,
  milesToKM: PropTypes.func.isRequired,
  races:     PropTypes.array.isRequired
};
```

## PropTypes in Function Components

Remember *function components?* You can see some familiar ones in
**Example.js**.

How could you write `propTypes` for a function component?

``` jsx
// Usual way:
class Example extends React.component{
 
}
 
Example.propTypes = {
 
};
...
 
// Function component way:
const Example = (props) => {
  // ummm ??????
}
```

It turns out the process is fairly similar. To write `propTypes` for a
function component, you define a `propTypes` object as a property of
*the function component itself.* Here’s what that looks like:

``` jsx
const Example = (props) => {
  return <h1>{props.message}</h1>;
}
 
Example.propTypes = {
  message: PropTypes.string.isRequired
};
```

### Instructions

**1.**

Select **GuineaPigs.js**.

You can see your `GuineaPigs` *function component* from earlier. Let’s
give it a `propType`.

After the `GuineaPigs` function component declaration, define a
`propTypes` property on `GuineaPigs`. Use the example code above as a
guide.

`GuineaPigs` is only expecting one `prop`, so it should only get one
`propType`.

Give `GuineaPigs` one `propType`, matching its expected `prop`. Make the
`propType` `isRequired`.

If you aren’t sure what prop `GuineaPigs` is expecting, check the render
function in **GuineaPigsContainer.js**.

### Solution

``` jsx
// Normal way to display a prop:
export class MyComponentClass extends React.Component {
  render() {
    return <h1>{this.props.title}</h1>;
  }
}

// Functional component way to display a prop:
export const MyComponentClass = (props) => {
  return <h1>{props.title}</h1>;
}

// Normal way to display a prop using a variable:
export class MyComponentClass extends React.component {
  render() {
    let title = this.props.title;
    return <h1>{title}</h1>;
  }
}

// Functional component way to display a prop using a variable:
export const MyComponentClass = (props) => {
    let title = props.title;
  return <h1>{title}</h1>;
}
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { GuineaPigs } from '../components/GuineaPigs';

const GUINEAPATHS = [
  'https://content.codecademy.com/courses/React/react_photo-guineapig-1.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-2.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-3.jpg',
  'https://content.codecademy.com/courses/React/react_photo-guineapig-4.jpg'
];

export class GuineaPigsContainer extends React.Component {
  constructor(props) {
    super(props);

    this.state = { currentGP: 0 };
  }

  nextGP() {
    let current = this.state.currentGP;
    let next = ++current % GUINEAPATHS.length;
    this.setState({ currentGP: next });
  }

  componentDidMount() {
    this.interval = setInterval(this.nextGP, 5000);
  }

  componentWillUnmount() {
    clearInterval(this.interval);
  }

  render() {
    let src = GUINEAPATHS[this.state.currentGP];
    return <GuineaPigs src={src} />;
  }
});

ReactDOM.render(
  <GuineaPigsContainer />, 
  document.getElementById('app')
);
```

``` jsx
// Normal way to display a prop:
export class MyComponentClass extends React.Component {
  render() {
    return <h1>{this.props.title}</h1>;
  }
}

// Functional component way to display a prop:
export const MyComponentClass = (props) => {
  return <h1>{props.title}</h1>;
}

// Normal way to display a prop using a variable:
export class MyComponentClass extends React.component {
  render() {
    let title = this.props.title;
    return <h1>{title}</h1>;
  }
}

// Functional component way to display a prop using a variable:
export const MyComponentClass = (props) => {
    let title = props.title;
  return <h1>{title}</h1>;
}
```

# React Forms

## React Forms

This unit’s final lesson is about forms.

Think about how forms work in a typical, non-React environment. A user
types some data into a form’s input fields, and the server doesn’t know
about it. The server remains clueless until the user hits a “submit”
button, which sends all of the form’s data over to the server
simultaneously.

In React, as in many other JavaScript environments, this is not the best
way of doing things.

The problem is the period of time during which a form thinks that a user
has typed one thing, but the server thinks that the user has typed a
different thing. What if, during that time, a *third* part of the
website needs to know what a user has typed? It could ask the form or
the server and get two different answers. In a complex JavaScript app
with many moving, interdependent parts, this kind of conflict can easily
lead to problems.

In a React form, you want the server to know about every new character
or deletion, *as soon as it happens*. That way, your screen will always
be in sync with the rest of your application.

## Input onChange

A traditional form doesn’t update the server until a user hits “submit.”
But you want to update the server *any time a user enters or deletes any
character.*

### Instructions

**1.**

Look at **Input.js**.

Can you find the bug? It’s somewhere in the `render` function. Scroll
down once you have a guess.

…

…

…

…

…

…

…

There’s a self-closing tag without a forward slash! Find the missing
forward slash and fill it in.

**2.**

Look at `Input`’s render function. View the result on the screen. Try
typing into the `<input />` in the browser.

Once `Input` has been set up correctly, then you will be able to change
the `<h1></h1>`’s inner text by typing into the `<input />` in the
browser.

**3.**

You want to respond to any entered or deleted character in the
`<input />` field!

The best way to do that is by listening for a “change” event on the
`<input />`.

Give `<input />` an `onChange` attribute. Set `onChange`’s *value* equal
to `{this.handleUserInput}`. Don’t worry about the fact that there is no
`handleUserInput` function yet - you’ll make one!

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

export class Input extends React.Component {
  render() {
    return (
      <div>
        <input type="text" onChange={this.handleUserInput} />
        <h1>I am an h1.</h1>
      </div>
    );
  }
}

ReactDOM.render(
    <Input />,
    document.getElementById('app')
);
```

## Write an Input Event Handler

In this exercise, you will define a function that gets called whenever a
user enters or deletes any character.

This function will be an *event handler*. It will listen for `change`
events. You can see an example of an event handler listening for change
events in **Example.js**.

### Instructions

**1.**

Select **Input.js**.

Before `Input`’s render function, write a new method named
`handleUserInput`.

Give this method one *parameter*, named `e`.

Inside of this function’s body, call `this.setState`. Set the state’s
`userInput` property equal to `e.target.value`.

`e.target.value` will equal the text in the `<input />` field. You are
setting `this.state.userInput` equal to whatever text is currently in
`<input />`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

export class Input extends React.Component {  
  handleUserInput(e) {
    this.setState({userInput: e.target.value});
  }
  
  render() {
    return (
      <div>
        <input type="text" onChange={this.handleUserInput} />
        <h1>I am an h1.</h1>
      </div>
    );
  }
}

ReactDOM.render(
    <Input />,
    document.getElementById('app')
);
```

``` jsx
import React from 'react';

export class Example extends React.Component {
    constructor(props) {
        super(props);

        this.state = { userInput: '' };

        this.handleChange = this.handleChange.bind(this);
    }

    handleChange(e) {
      this.setState({
        userInput: e.target.value
      });
    }

    render() {
      return (
        <input 
          onChange={this.handleChange} 
          type="text" />
      );
    }
}
```

## Set the Input’s Initial State

Good! Any time that someone types or deletes in `<input />`, the
`.handleUserInput()` method will update `this.state.userInput` with the
`<input />`’s text.

Since you’re using `this.setState`, that means that `Input` needs an
initial state! What should `this.state`’s initial *value* be?

Well, `this.state.userInput` will be displayed in the `<input />`. What
should the *initial* text in the `<input />` be, when a user first
visits the page?

The initial text should be blank! Otherwise it would look like someone
had already typed something.

### Instructions

**1.**

Give `Input` a `constructor` function which takes a parameter of `props`
and calls `super(props)` on its first line.

Then, still in the constructor, set `state` equal to this object:

``` jsx
{ userInput: '' }
```

Feel free to use the example code as a guide.

**2.**

Next, at the end of the constructor, bind `.handleUserInput()` to the
current value of `this`.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

export class Input extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = { userInput: '' };
    
    this.handleUserInput = this.handleUserInput.bind(this);
  }
  
  handleUserInput(e) {
    this.setState({userInput: e.target.value});
  }

  render() {
    return (
      <div>
        <input type="text" onChange={this.handleUserInput} />
        <h1>I am an h1.</h1>
      </div>
    );
  }
}

ReactDOM.render(
    <Input />,
    document.getElementById('app')
);
```

## Update an Input’s Value

When a user types or deletes in the `<input />`, then that will trigger
a *change* event, which will call `handleUserInput`. That’s good!

`handleUserInput` will set `this.state.userInput` equal to whatever text
is currently in the input field. That’s also good!

There’s only one problem: you can set `this.state.userInput` to whatever
you want, but `<input />` won’t care. You need to somehow make the
`<input />`’s text responsive to `this.state.userInput`.

Easy enough! You can control an `<input />`’s text by setting its
`value` attribute.

### Instructions

**1.**

Inside of `Input`’s render function, give `<input />` the following
attribute:

``` jsx
value={this.state.userInput}
```

**2.**

That should do it! An idiomatically correct React form!

This example doesn’t have a server per se, but any time that a user
updates `<input />`, the new text is immediately stored in `Input`’s
`state`. We could easily connect that `state` with a server. What
matters is that the text is sent somewhere to be stored on every
character change.

Inside of the `<h1></h1>`, delete the text:

``` jsx
I am an h1.
```

Replace it with:

``` jsx
{this.state.userInput}
```

Click Run. Try typing into the `<input />` in the browser.

### Solution

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

export class Input extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = { userInput: '' };
    
    this.handleUserInput = this.handleUserInput.bind(this);
  }
  
  handleUserInput(e) {
    this.setState({userInput: e.target.value});
  }

  render() {
    return (
      <div>
        <input type="text" onChange={this.handleUserInput} value={this.state.userInput} />
        <h1>{this.state.userInput}</h1>
      </div>
    );
  }
}

ReactDOM.render(
    <Input />,
    document.getElementById('app')
);
```

## Controlled vs Uncontrolled

There are two terms that will probably come up when you talk about React
forms: *controlled component* and *uncontrolled component*. Like
automatic binding, *controlled vs uncontrolled components* is a topic
that you should be familiar with, but don’t need to understand deeply at
this point.

An *uncontrolled component* is a component that maintains its own
internal state. A *controlled component* is a component that does not
maintain any internal state. Since a controlled component has no state,
it must be *controlled* by someone else.

Think of a typical `<input type='text' />` element. It appears onscreen
as a text box. If you need to know what text is currently in the box,
then you can ask the `<input />`, possibly with some code like this:

``` jsx
let input = document.querySelector('input[type="text"]');
 
let typedText = input.value; // input.value will be equal to whatever text is currently in the text box.
```

The important thing here is that the `<input />` *keeps track of* its
own text. You can ask it what its text is at any time, and it will be
able to tell you.

The fact that `<input />` keeps track of information makes it an
*uncontrolled component*. It maintains its own internal state, by
remembering data about itself.

A *controlled component*, on the other hand, has no memory. If you ask
it for information about itself, then it will have to get that
information through `props`. Most React components are *controlled*.

In React, when you give an `<input />` a `value` attribute, then
something strange happens: the `<input />` BECOMES controlled. It stops
using its internal storage. This is a more ‘React’ way of doing things.

You can find more information about controlled and uncontrolled
components in the <a href="https://reactjs.org/docs/forms.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React Forms documentation</a>.

### Instructions

Move to the next exercise when ready.

### Solution

``` html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/styles.css">
    <title>Learn ReactJS</title>
</head>

<body>
  <main id="app"></main>
    <script src="https://content.codecademy.com/courses/React/react-course-bundle.min.js"></script>
  <script src="/Input.compiled.js"></script>
</body>

</html>
```

``` css
html, body {
    margin: 0;
    height: 100%;
}

body {
    background-color: #ffffff;
    font-family: Helvetica, Arial, sans-serif;
  text-align: center;
}

#app {
    position: relative;
    height: 100%;
    width: 100%;
    padding-top: 10px;
}

#app div {
    width: 100%;
}

#app div div {
    position: absolute;
    height: 100%;
}

#app div div div {
    position: relative;
    height: auto;
}

h1 {
    margin-left: 5%;
    margin-right: 5%;
}

ul {
    list-style-type: none;
    padding: 0;
}

label {
    display: block;
    margin: 20px;
    font-size: 30px;
    font-weight: bold;
}

nav a {
    margin:12px;
    text-transform: uppercase;
    font-size: 10px;
}

button {
    -webkit-transition-duration: 0.1s; /* Safari */
    transition-duration: 0.1s;
    background-color: #F4595B;
    border-radius: 8px;
    border-bottom: 4px solid #C24648;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    font-family: 'Oxygen', sans-serif;
    letter-spacing: 2px;
}

button:hover {
  background-color: #FF7375;
  border: none;
  border-radius: 8px;
  border-bottom: 4px solid #C24648;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  font-family: 'Oxygen', sans-serif;
  letter-spacing: 2px;
}

button:active {
  background-color: #C24648;
  border: none;
  border-radius: 8px;
  border-bottom: 4px solid #C24648;
  color: #CCC;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  font-family: 'Oxygen', sans-serif;
  letter-spacing: 2px;
}
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

export class Input extends React.Component {
  render() {
    return (
      <div>
        <input type="text" />
        <h1>I am an h1.</h1>
      </div>
    );
  }
}

ReactDOM.render(
    <Input />,
    document.getElementById('app')
);
```

``` jsx
import React from 'react';

export class Example extends React.Component {
  constructor(props) {
    super(props);

    this.state = { userInput: '' };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e) {
    this.setState({
      userInput: e.target.value
    });
  }

  render() {
    return (
      <input 
        onChange={this.handleChange} 
        type="text" />
    );
  }
}
```

## React Forms Recap

Great work! You just wrote your first React form.

Notice that you didn’t use a submit button. You didn’t even use a
`<form>` element! Your “form” was actually just an `<input />`.

That won’t always be the case. You will still sometimes want a `<form>`
element and a submit button, especially if you need to differentiate
between a finished form and an in-progress form. But in some cases, it’s
fine to have a “form” that is really just an input field.

This is because, unlike in the traditional form paradigm, in React you
re-send your form on every single character change. That removes the
need to ever “submit” anything.

That marks the end of this lesson! You’ve learned a wide variety of
important techniques: inline styles, separating container and
presentational components, stateless functional components, proptypes,
and forms. These techniques will be invaluable as you continue to build
out more React apps!

# Copycat

In this project, we’ll build a program that lets users type into a
textbox and allows them to visualize the immediate effect that these
changes have on the web page.

Our program will display a textbox with a picture of a cat beneath it.
When users type into the textbox, a copy of the text will appear below
the cat image, suggesting that the cat is being a copycat. Clicking on
the image of the cat will toggle whether or not it is able to copy the
user.

Let’s get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click **“Get Unstuck”** to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Split into Presentational and Container Components

1\.

Take a look at the code in **components/CopyCat.js**. We’re going to
divide `CopyCat` into a *presentational* component and a *container*
component.

Inside of the **containers** folder, there is a *file* named
**CopyCatContainer.js**. Copy all of the contents from
**components/CopyCat.js** and paste them into
**containers/CopyCatContainer.js**.

If you click Save, you’ll see the component in **CopyCatContainer.js**
render in the browser!

2\.

Select **components/CopyCat.js**. This is going to be our
*presentational* component class.

On line 2, delete the line `import ReactDOM from 'react-dom';`. At the
bottom of the file, delete the `ReactDOM.render()` call.

Inside of `CopyCat`’s class definition, delete everything except for the
render function.

Finally, export `CopyCat`.

3\.

Select **containers/CopyCatContainer.js**. This is going to be our
*container* component class.

Import `CopyCat` at the top of the file.

Now, down where the class is being defined, change `CopyCat` to
`CopyCatContainer`. Be sure to update this in the `ReactDOM.render` call
at the bottom of the file as well.

Inside of `CopyCatContainer`’s render function, delete everything inside
of the `return` statement. Instead, just return an instance of
`CopyCat`.

4\.

Take a close look at `CopyCat`. You’ll see that the component needs
access to the `copying` state as well as the `toggleTape` method that
now only exists in `CopyCatContainer`.

Inside of **containers/CopyCatContainer.js**, pass `copying` and
`toggleTape` as props to `<CopyCat/>`.

Now switch back to `CopyCat` in **components/CopyCat.js**. Make sure the
render method is grabbing `copying` and `toggleTape` from the props.

Then click Save. If everything was done correctly, the app should look
the exact same in the browser as it did in step 1. Don’t worry that it
doesn’t look pretty. We’ll spruce it up once we add some style!

## Add Styles

5\.

Select **styles.js**.

In this file, you’ll see a number of style properties defined.
Underneath these, there are two objects, each of which contain a
selection of these properties: `divStyles` and `imgStyles`.

At the bottom of this file, create a const `styles`. Set its value to be
an object that holds `divStyles` and `imgStyles`. Export this `styles`
object.

6\.

Go back to **CopyCat.js** and import `styles`.

In the JSX in the `render()` method, set the `<div>` element’s style to
`divStyles`. Use `imgStyles` for the `<img/>` element.

Give `<h1>` a single style property: `marginBottom: 80`.

## Add a Form

7\.

In **CopyCat.js**, create an `<input>` element between the `<h1>` and
`<img>` elements. Give it three attributes: `type`, `value`, `onChange`.
Set `type` to be `’text’`.

The values of `value` and `onChange` will be acquired from the props,
but we currently aren’t passing anything down for those. For now, use
empty braces as their values.

8\.

Navigate to **CopyCatContainer.js**.

Add `input` to the state and set its initial value to an empty string.

Next, write an event handler function called `handleChange` which takes
the event `e` as an argument. The function should update the state with
`<input>`’s value whenever it changes.

Don’t forget to bind `handleChange` in the constructor method!

9\.

Next, pass `input` and `handleChange` as props to `<CopyCat>`.

Navigate back to `CopyCat.js` and update the values for `<input>`’s
`value` and `onChange` attributes.

10\.

Still working in **CopyCat.js**, add a `<p>` element after the `<img>`
element in the JSX.

Inside of the `<p></p>` tags, write a conditional to check the value of
`copying` and decide whether or not to display `value` here. If
`copying` evaluates to `true`, `value` should show up. If `copying`
evaluates to `false`, `value` should NOT show up.

When you’re done, save your code. Type into the text box and see if
anything happens. Click on the cat to toggle whether or not it’s copying
you!

## Typecheck with PropTypes

11\.

Let’s give our `CopyCat` component class a propTypes property!

The first thing we’ll need to do is import `PropTypes` at the top of the
file.

Next, declare a `propTypes` property after the close of the component
declaration. In the `propTypes` object, write one `propType` for each
`prop` that `CopyCat` is expecting.

Make sure each `propType` has an `isRequired` constraint.

12\.

Finally, let’s add an optional `name` prop to define the cat’s name.

Inside of the `<h1></h1>` tags, add a condition immediately after “Copy
Cat”. If a name is passed down in `props`, that name will be displayed.
If not, the name that will be displayed will default to “Tom”.

Add a `propType` for `name` to `propTypes`.

### Solution

``` jsx
```

# React Router

## What is routing?

*Routing* is the process by which a web application uses the current
browser URL (**U**niform **R**esource **L**ocator) to determine what
content to show a user. For example, a user visiting wikipedia’s
<a href="https://en.wikipedia.org/wiki/Node.js"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">/wiki/Node.js</code></a> page would
expect to see something different from the
<a href="https://en.wikipedia.org/wiki/React_(JavaScript_library)"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">/wiki/React\_(JavaScript_library)</code></a>
page.

By organizing an application’s content and displaying only what the user
has requested to see, routing allows for rich, engaging, and clear user
experiences.

Before we dive into the lesson, let’s briefly go over the basic
structure of URLs. Consider this URL:

<img
src="https://static-assets.codecademy.com/Courses/Learn-Node/http/url-dark.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="URL breakdown" />

Every URL is essentially a request for some resource and each component
of the URL serves to specify which resource is desired. URLs consist of
several components, some of which are mandatory and some of which are
optional:

1.  The scheme (eg. `HTTP`, `HTTPS`, `mailto`, etc), which specifies
    what <a href="https://www.codecademy.com/articles/http-requests"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">protocol</a> should be used to access the resource.
2.  The domain (eg. `codecademy.com`), which specifies the website that
    hosts the resource. The domain serves as the entry point for your
    application.
3.  The path (eg. `/articles`), which identifies the specific resource
    or page to be loaded and displayed to the user. This is where
    routing begins!
4.  The optional query string (eg. `?search=node`), which appears after
    a ‘?’ and assigns values to parameters. Common uses of query strings
    include search parameters and filters.

Depending on the kind of application you build, there are different ways
to handle the requests coming into your server. A popular back-end
solution is to use the
<a href="https://www.codecademy.com/learn/learn-express"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Express</a> routing framework. In this lesson, we will
cover <a href="https://v5.reactrouter.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React Router</a>, a popular front-end
routing solution designed specifically for React applications.

> **Jan 2022 Update:** These lesson’s exercises are meant to be written
> using React Router v5. React Router v6 introduces breaking changes and
> your code will not work using these instructions if you install v6.
> Check out React Router’s documentation to learn more about
> <a href="https://reactrouter.com/en/main/upgrading/v5"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">upgrading from v5 to v6</a>.

### Instructions

Each exercise in this lesson will feature a video that will guide you
through the process of implementing routing in a React application with
React Router – all on your own computer!

To get started, click on the video to learn about the application you
will be building.

Before we begin learning about React Router, click on the link below to
download the starter code `.zip` file for the project you will be
working on. Make sure to store this file in a location that you can find
easily before unzipping it! Then, move on to the next exercise.

<a
href="https://static-assets.codecademy.com/Courses/react-router/react-router-lesson-starter-1.zip"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">react-router-lesson-starter-code.zip</a>

Here’s an article about <a href="https://www.wikihow.com/Unzip-a-File"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">unzipping a <code
class="code__2rdF32qjRVp7mMVBHuPwDS">.zip</code> file</a> if you need
some help!

### Solution

[Learn React Router Exercise
1](https://www.youtube.com/watch?v=tuxt25oaous)

## Installing React Router

> **Jan 2022 Update:** This project is meant to be written using React
> Router v5. React Router v6 introduces breaking changes and your
> project will not work using these instructions if you install v6.
> Check out React Router’s documentation to learn more about
> <a href="https://reactrouter.com/en/main/upgrading/v5"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">upgrading from v5 to v6</a>.

In order to use React Router, you will need to include the
<a href="https://www.npmjs.com/package/react-router-dom"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">react-router-dom</code> package</a>
(the version of React Router built specifically for web browsers) in
your project by using `npm` like so:

``` jsx
npm install --save react-router-dom@5.2.0
```

Once you have added `react-router-dom` to your project, you can import
one of its router components to add routing to your project. React
Router provides several router components however the most common one is
the `BrowserRouter`. The other option and the reasons you might choose
one over the other are outside the scope of this lesson, but you can
read more about that in the
<a href="https://v5.reactrouter.com/web/api/BrowserRouter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React Router Documentation</a>.

For the sake of simplicity and readability, it is common to alias
`BrowserRouter` as `Router` when importing, like so:

``` jsx
import { BrowserRouter as Router } from ‘react-router-dom’
```

### Instructions

#### Task 1

Before we can install `react-router-dom`, we need to install all of the
dependencies for this project. This can be done by running the command
below in your terminal:

``` jsx
npm install
```

Hint

In the root directory of the project, run the command

``` jsx
npm install
```

You should see a folder called **node_modules** appear in your file
system.

------------------------------------------------------------------------

#### Task 2

Next, install `react-router-dom@5.2.0`.

To verify that you have successfully added the package to your project,
navigate to **package.json** and check that `react-router-dom` appears
in the “dependencies”.

Hint

Your terminal command should look like this:

``` jsx
npm install --save react-router-dom@5.2.0
```

------------------------------------------------------------------------

#### Task 3

In **App.js** import `BrowserRouter` from `react-router-dom` and rename
it to `Router`.

To confirm that you’ve followed these steps properly, run `npm start` in
your terminal to start your application. Then, inspect the console and
you should see no red errors related to `react-router-dom` (you may see
yellow warnings though!).

Hint

The syntax for importing a component and renaming it looks like this:

``` jsx
import { ComponentName as AliasName } from `name-of-package`;
```

### Solution

[Learn React Router Exercise
2](https://www.youtube.com/watch?v=vi_MzFyosSA)

## Rendering A \<Router\>

In the React Router paradigm, the different views of your application,
also called *routes*, along with the `Router` itself, are just React
components. To include them in your application, you will need to render
them.

The first step is to render a `Router` component as the top-level
component in your application.

``` jsx
import { BrowserRouter as Router } from 'react-router-dom';
 
export default function App () {
  return (
    <Router>
      /* Application views are rendered here */
    </Router>
  );
}
 
```

Making `Router` the top-level component prevents URL changes from
causing the page to reload. Instead, URL changes will allow the `Router`
to determine which of its child components to render while passing along
information about the current URL’s path as props.

In the next exercises, you will see how the children of the `Router` can
make use of this information but for now, let’s add a `Router` to our
application.

### Instructions

#### Task 1

To add routing to your application, in **App.js**, replace the `<div>`
component which currently surrounds the entire application’s contents
with a `Router` component.

Hint

At this point, the \`App\` component should return the following:

``` jsx
<Router>
  <Header />
  <main>
    {/* Add Routes here! */}
  </main>
  <Footer />
</Router>
```

### Solution

[Learn React Router Exercise
3](https://www.youtube.com/watch?v=pzxHs_2b62Y)

## Basic Routing with \<Route\>

With the `Router` component in place, we can begin defining the
different views, or *routes*, that our application will render for
various URL paths. For example, we might want to render an `About`
component for the `/about` path and a `SignUp` component for the
`/sign-up` path.

To do this, we must use the `Route` component provided by the
`react-router-dom` package. This component can be imported alongside the
`BrowserRouter` like so:

``` jsx
import { BrowserRouter as Router, Route } from `react-router-dom`
```

The `Route` component is designed to render (or not render) a component
based on the current URL path. Each `Route` component should:

1.  be rendered inside a `Router`.
2.  have a `path` prop indicating the URL path that will cause the route
    to render.
3.  wrap the component that we want to display in the event that the
    `path` prop matches.

For example, the following `Route` renders the `About` component when
the URL path matches `'/about'`:

``` jsx
<Router>
  <Route path='/about'>
    <About />
  </Route>
</Router>
```

If your router includes a `Route` with no `path` prop, then that route
will always match and render. You can leverage this fact to make your
application render components that you want your user to see regardless
of the current route, such as sidebars and navigation bars.

``` jsx
<Router>
 
  {/* Renders when the URL matches '/about' */
  <Route path='/about'>  
    <About />
  </Route>
 
  {/* Always renders */}
  <Route>
    <Sidebar />
  </Route>
 
</Router>
```

Whereas other routing paradigms are static (eg. routes are predefined
prior to and separate from the process of rendering),
<a href="https://reactrouter.com/web/guides/philosophy"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React Router’s philosophy</a> is
declarative and dynamic. This means that routes come into being when
they are rendered. While this might seem more complicated than
configuring our routes statically, it’s also more flexible. As you’ll
see throughout this lesson, our application’s route structure can evolve
based on user interactions and changing state.

### Instructions

#### Task 1

Navigate to **App.js** where we will begin adding routes to our
`Router`. First, add the `Route` component to the import statement.

Hint

To import multiple values from a package, you can write something like
this:

``` jsx
import { valueA, valueB } from 'package';
```

------------------------------------------------------------------------

#### Task 2

Next, let’s render the main routes of the application. As you can see,
at the top of **App.js** a number of components are being imported but
not used. For now, we’ll render the `About`, `SignUp`, `Articles`,
`Categories`, and `Profile` components.

Between the `<main>` tags, use the `Route` component to render the
following components for their respective paths:

- `About`: `/about`
- `SignUp`: `/sign-up`
- `Articles`: `/articles`
- `Categories`: `/categories`
- `Profile`: `/profile`

Hint

Your syntax for adding a route should look something like this:

``` jsx
<Route path='/your-path-here'>
  <ChildComponent />
</Route>
```

------------------------------------------------------------------------

#### Task 3

Test that your code works by navigating to these URLs in your browser.
For example, to see the `About` component, navigate to
<a href="http://localhost:3000/about"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:3000/about</a>.

You should see each component render only when the URL matches the
appropriate path. You should see the `Header` and `Footer` rendered
regardless of the URL.

### Solution

[Learn React Router Exercise
4](https://www.youtube.com/watch?v=vBq-olSb7hc)

## Linking to Routes

In the last exercise, you used the URL bar to navigate to a path that
matched one of your application’s routes. But how do you navigate from
within the app itself?

When building a website using HTML, the anchor (`<a>`) tag can be used
to create links to other pages, however, this causes the page to reload
which can distract our users from the immersive experience of our smooth
React application!

React Router offers two solutions for this: the
<a href="https://reactrouter.com/web/api/Link"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">Link</code></a> and
<a href="https://reactrouter.com/web/api/NavLink"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">NavLink</code></a> components which
can be imported from `react-router-dom` on their own or alongside the
other components we’ve already imported.

``` jsx
import { BrowserRouter as Router, Route, Link, NavLink } from 'react-router-dom';
```

Both `Link` and `NavLink` components work much like anchor tags:

- They have a `to` prop that indicates the location to redirect the user
  to (similar to the anchor tag’s `href` attribute)
- They wrap some HTML to use as the display for the link

``` jsx
<Link to="/about">About</Link>
<NavLink to="/about">About</NavLink>
```

The two links above will generate anchor (`<a>`) tags with the text
“About” and which take the user to the `/about` page when clicked.
However, the default behavior of an anchor tag – refreshing when the
page loads – will be disabled!

So, what’s the difference between a `Link` and a `NavLink`? When the URL
path matches a `NavLink` component’s `to` prop, the link will
automatically have an `'active'` class applied to it. This can be quite
useful for building navigation menus, as we can define CSS styles for
the `.active` class name to differentiate between active and inactive
links, enabling a user to quickly see which content they are viewing.

`NavLink` components also accept an optional `activeClassName` prop
which can specify an additional class or set of classes that will be
applied when the URL path matches their `to` prop.

> Note: Though the simplest way to specify the `to` location is as a
> string, React Router also allows you to provide this location as a
> <a href="https://reactrouter.com/web/api/Link/to-function"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">function</a> or
> <a href="https://reactrouter.com/web/api/Link/to-object"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">object</a>. These approaches aren’t
> covered in this lesson but you may find it interesting to read about
> them if you need to programmatically generate the `to` location.

### Instructions

#### Task 1

Head over to **Articles.js** located in the **src/components/**. This
component renders a list of `<a>` links for each value in the
`filteredArticles` array. If you try clicking on these links in the
running application, you’ll notice a very subtle page reload (pay
attention to the “refresh” button in your browser)!

Import the `Link` component into this file and then replace the `<a>`
tags to eliminate the page reload!

> Note: The articles themselves won’t appear yet. We’ll fix that soon!

Hint

Take a look at the **Categories.js** file to see how this is done. Your
code should look something like this:

``` jsx
<Link to='/path/to/page'>
  Link Text
</Link>
```

------------------------------------------------------------------------

#### Task 2

In the running application, try clicking on the links rendered by the
`Header`, such as “Articles”. Again, you may notice a page refresh.

Open up the **Header.js** file and you’ll see that these links are
rendered using plain old `<a>` tags!

First, import the `NavLink` component into the **Header.js** file. Then,
inside the `return` statement of the `Header` component, replace each
instance of the `<a>` tag with a `NavLink` component.

Make sure to replace the `href` attribute with the `to` prop!

Hint

You will have to import the `NavLink` component from `react-router-dom`.

To render a `NavLink`, include a `to` prop like so:

``` jsx
<NavLink to="/path">Click Me</NavLink>
```

------------------------------------------------------------------------

#### Task 3

To verify your work, try clicking on the navigation links. You should
notice that the page no longer refreshes! Furthermore, you’ll notice
that link that you click on will be bolded!

Hint

Recall that the `.active` class is automatically added when the URL
matches the `to` prop of a `NavLink`. If you open up the
**public/index.css** file, you’ll see that we’ve defined a style for the
selector `.header a.active`.

### Solution

[Learn React Router Exercise
5](https://www.youtube.com/watch?v=UQxK1Np5-kI)

## Dynamic Routes

So far, all the routes we’ve covered have been static, which means they
match a single unique path. This works for certain types of routes, but
not all.

For example, imagine in a tech news site where every article is
accessible at the path `'/articles/' + someTitle` where `someTitle` is
different for each article. Specifying a unique route for every article
would not only be verbose and time-consuming, it would require an
impractical amount of maintenance should the path structure ever change.

Instead, we would rather express the pattern at a high level with a
single route that can match any path of the form
`'/articles/' + someTitle` and still know which article to render. React
Router allows us to do this by using *URL parameters* to create *dynamic
routes*.

URL parameters are dynamic segments of a URL that act as placeholders
for more specific resources the URL is meant to display. They appear in
a dynamic route as a colon (`:`) followed by a variable name, like so:

``` jsx
<Route path='/articles/:title'>
  <Article />
</Route>
```

Let’s break down this short, yet powerful demonstration of URL
parameters:

- In this example, the path `'/articles/:title'` contains the URL
  parameter `:title`.
- This means that when the user navigates to pages such as
  `'/articles/what-is-react'` or `'/articles/html-and-css'`, the
  `<Article />` component will render.
- When the `Article` component is rendered in this way, it can access
  the actual value of that `:title` URL parameter (`what-is-react` or
  `html-and-css`) to determine which article to display (more on this in
  the next exercise).

A single route can even have multiple parameters (eg.
`'/articles/:title/comments/:commentId'`) or none (eg. `'/articles'`).

To make a URL parameter optional, you can append a `'?'` to the end of
the URL parameter’s name (eg. `'/articles/:title?'`). In this case, the
child component of the `Route` will render when the URL matches either
`/articles/what-is-react` or just `/articles`.

### Instructions

#### Task 1

Navigate to **App.js**. Within the `<main>` section, add a dynamic route
with a URL parameter that renders the `Article` component whenever the
URL path matches paths such as `'/articles/objects'` or
`'/articles/browser-compatibility'`.

Name the URL parameter in the route’s `path` prop `:title`.

To confirm that your code works, navigate to
<a href="http://localhost:3000/articles/objects"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"
rel="noopener">http://localhost:3000/articles/objects</a> or try
clicking on one of the links in the `/articles` page.

Hint

To add a dynamic route, render the `Route` component and make sure that
its `path` prop includes a dynamic segment (a segment beginning with a
colon). Your code should look like this:

``` jsx
<Route>
  <MyComponent path='/path/:param' />
</Route>
```

------------------------------------------------------------------------

#### Task 2

Add another dynamic route with a URL parameter that renders the `Author`
component whenever the URL path matches paths such as `'/authors/maria'`
or `'/authors/samir'`.

Name the URL parameter in the route’s `path` prop `:name`.

To confirm that your code works, navigate to
<a href="http://localhost:3000/authors/Lily"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:3000/authors/Lily</a>.
You should see the header “Articles by REPLACE ME” rather than the
articles by the author Lily. In the exercise, we’ll fix this.

### Solution

[Learn React Router Exercise
6](https://www.youtube.com/watch?v=h7ZTdTFcv-w)

## useParams

It is common to use the value of URL parameters to determine what is
displayed in the component that a dynamic route renders. For example,
the `Article` component might need to display the title of the current
article.

React Router provides a hook, `useParams()`, for accessing the value of
URL parameters. When called, `useParams()` returns an object that maps
the names of URL Parameters to their values in the current URL.

For example, consider the `Articles` component below which is rendered
when by a route with the dynamic URL `'/articles/:title'`. Suppose the
user visits `/articles/objects`:

``` jsx
import { Link, useParams } from 'react-router-dom';
 
// Rendered when the user visits '/articles/objects'
export default function Article() {
 
  let { title } = useParams();
  // title will be equal to the string 'objects'
 
  // The title will be rendered in the <h1>
  return (
    <article>
      <h1>{title}</h1>
      // ...
    </article>
  );
}
```

Let’s break down the example above.

- First, the `useParams()` hook is imported from `react-router-dom`.
- Then, inside the `Article` component, `useParams()` is called which
  returns an object.
- <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Destructuring assignment</a> is then
  used to extract the value of the URL parameter from that object,
  storing it in a variable named `title`.
- Finally, this `title` value is used to display the name of the article
  in the `<h1>` element.

### Instructions

#### Task 1

You may have noticed that navigating to the various `/articles/:title`
paths will render an `Article` component that displays the proper
article. However, this doesn’t work as well when navigating to a
specific author’s page.

Take a look at the **Article.js** file and you can see that the
`useParams()` hook has been imported and used. Let’s do the same thing
with the **Author.js** file.

First, in **Author.js**, import `useParams` from `'react-router-dom'`.

Hint

Use the named import syntax:

``` jsx
import { value } from 'name-of-package';
```

------------------------------------------------------------------------

#### Task 2

Now, at the top of the `Author` component, call `useParams()` to get the
value of the `:name` URL parameter. You should use destructuring syntax
to extract the value into a variable called `name`.

Hint

To get the value of a particular URL parameter, use destructuring
assignment like so:

``` jsx
const { nameOfParameter } = useParams();
```

------------------------------------------------------------------------

#### Task 3

Now that you have the value of `name`, let’s use it to display the
correct data in the `Author` component.

First, on the line where we define `author`, replace the string
`"replace me"` with the variable `name`.

Next, in between the `<h1>` tags we’ve provided, replace the text
“REPLACE ME” with `{name}`.

To test that your code works, navigate to an article and click on its
author. The Authors page should display the name that you just clicked
on.

Hint

Watch the video to see how to complete this step!

### Solution

[Learn React Router Exercise
7](https://www.youtube.com/watch?v=3p1LfoCwcmE)

## \<Switch\> and exact

By design, a `Router` will render *all* the `Routes` whose paths match
the current URL. This allows us to compose layouts in which multiple
components should appear or disappear based on the current URL (for
example, an application in which the sidebar and main display respond to
changes in the current URL). But sometimes, this design choice can
produce unintended results.

Consider the following (relatively common) setup:

``` jsx
<Router>
  <div>
    <Route path='/articles/new'>
      <NewArticle />
    </Route>
    <Route path='/articles/:title'>
      <Article />
    </Route>
    <Route path='/articles'>
      <Articles />
    </Route>
  </div>
</Router>
```

What should happen when the user navigates to `'articles/new'`? The
`NewArticle` component should appear, right?

What actually happens is that ALL routes match:

- `/articles/new` matches exactly
- `/articles/:title` will match `new` to the URL parameter `:title`
- `/articles` will match because both begin with `/articles`.

Because all routes match, the application will render the `NewArticle`,
`Article`, and `Articles` components simultaneously.

React Router provides several mechanisms for preventing this sort of
unintended rendering. The first is the `Switch` component:

``` jsx
import { Switch } from 'react-router-dom';
```

When wrapped around a collection of routes, `Switch` will render the
first of its child routes whose `path` prop matches the current URL.

``` jsx
<Switch>
  <div>
    <Route path='/articles/new'>
      <NewArticle />
    </Route>
    <Route path='/articles/:title'>
      <Article />
    </Route>
    <Route path='/articles'>
      <Articles />
    </Route>
  </div>
</Switch>
```

Because the `Switch` checks routes sequentially, the order in which
Routes are rendered matters. Consider a similar example but with the
order of the routes reversed:

``` jsx
<Switch>
  <div>
    <Route path='/articles/:title'>
      <Article />
    </Route>
    <Route path='/articles/new'>
      <NewArticle />
    </Route>
    <Route path='/articles'>
      <Articles />
    </Route>
  </div>
</Switch>
```

Now imagine that a user navigates to `'/articles/new'`. The `Switch`
renders the first route with a matching path, `'/articles/new'` matches
`'/articles/:title'`, since `:title` is a dynamic segment. With the
routes listed in this order, the `NewArticle` component will never
render. In general, you can avoid this problem by listing routes from
most- to least-specific.

Sometimes you may want to leverage React Router’s composability and
render multiple routes simultaneously (this would prevent you from using
a `Switch` component) while also ensuring your router distinguishes
between static paths and paths including URL parameters. Consider the
following example:

``` jsx
<Router>
  <div>
    <Route path='/'>
      <Home />
    </Route>
    <Route path='/sign-up'>
      <SignUp />
    </Route>
  </div>
</Router>
```

Any path will match first route, so the the `Home` component will be
rendered whether the user is at `'/'` or `'/sign-up'`. This might be
ideal behavior if the component rendered by the `'/'` route should
display regardless of the current route.

But what if you only want the `Home` component to be visible to users on
the home page and not to those who have navigated to `/sign-up`? By
using React Router’s `exact` prop on the first route, you can ensure
that the route will match *only if the current URL is an exact match*.

``` jsx
 <Route exact path='/'>
   <Home />
 </Route>
```

Now, when a user visits `/`, the `Home` component will render. But when
a user visits `/sign-up`, only the second route will match and only the
`SignUp` component will render.

React Router provides a couple of additional
props—<a href="https://reactrouter.com/web/api/Route/strict-bool"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">strict</code></a> and
<a href="https://reactrouter.com/web/api/Route/sensitive-bool"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">sensitive</code></a>—on the `Route`
component for fine-tuning when a particular route should match, however,
these are used far less frequently than the `exact` prop.

### Instructions

#### Task 1

If you navigate to `/articles/objects`, you will notice that the
`Article` and `Articles` components both render. Let’s fix this by using
a `Switch` component.

First, import the `Switch` component in **App.js**.

Hint

Import the `Switch` component from `react-router-dom` and wrap the
existing routes in a `Switch`.

------------------------------------------------------------------------

#### Task 2

Next, use a `Switch` component to wrap all of the `Route` components
inside the `<main>` section. Organize your `Route` components such that
only the `Articles` component renders when you visit `'/articles'` and
only the `Article` component renders when you visit `/articles/objects`.

Hint

Make sure to organize your components from most specific to least
specific. In this case, the `Route` with the path `'/articles/:title'`
should be above the `Route` with the path `'/articles'`.

### Solution

[Learn React Router Exercise
8](https://www.youtube.com/watch?v=6ryX7rVK3Dk)

## Nested Routes

Up to this point, we have been working with routers that are small
enough to be rendered entirely in a single file. But as an application
grows in scope, it can be useful to split up the router and write
`Route`s nearer to where the related UI logic is written.

Let’s return to our tech article website example, and imagine that the
engineering team is building out a `Categories` feature that will
organize tech news articles by their category – front end, back end,
mobile development, etc. In addition to a `Categories` component (which
will render links to each individual category), the team has created a
`Category` view that will display all the articles for a given category.

Previously, we might have written a router like this:

``` jsx
// In the top level App component
<Router>
  <Route path={'/categories/:categoryName'}>
    <Category />
  </Route>
  <Route path={'/categories'}>
    <Categories />
  </Route>
  {/* Other Routes */}
</Router>
```

There’s nothing wrong with this way of routing, but as soon as you start
to introduce more features into your application, you may find that
having all the routes contained in a single router becomes a bit
unwieldy. The way around this is to get comfortable with rendering
routes from components nested within your app.

For example, consider the `Categories` component, which iterates through
a list of categories and creates `Link`s for each category:

``` jsx
function Categories ({ categories }) {
  return (
    <ul>
      {
        categories.map(category =>
          <li>
            <Link to={`/categories/${category}`}>
              {category}
            </Link>
          </li>
        )
      }
    </ul>
  );
};
```

Clicking on a link rendered by this component will cause the URL to
change, for example, to `/categories/html`. According to our previously
defined `Router`, the route `'/categories/:categoryName'` will then
match and the `Category` component will render.

Notice that the code for the `Categories` component doesn’t indicate
which component will be rendered when the user clicks on one of the
category links (it’s the `Category` component). We have to navigate back
to the top-level `App` component file where the `Router` is defined in
order to see that the `Category` component will be rendered when the URL
changes to `/categories/html`. This separation of cause and effect is
not ideal.

Because React Router handles routing dynamically (eg. routes exist when
they are rendered), you can render a `Route` anywhere within your
application. In this case, we can relocate the `Route` that renders an
individual `Category` component to within the `Categories` component
where the links to that route are defined:

``` jsx
import { Link, Route } from 'react-router-dom'
 
function Categories ({ categories }) {
  return (
    <div>
      <ul>
        {
          categories.map(category => 
            <li>
              <Link to={`/categories/${category}`}>
                {category}
              </Link>
            </li>
          )
        }
      </ul>
 
      <Route path={'/categories/:categoryName'}>
        <Category />
      </Route>
    </div>
  )
}
```

As a result, the top-level router can be simplified:

``` jsx
// In the top level App component
<Router>
 
  {/* The Category route has been removed. */}
 
  <Route path={'/categories'}>
    <Categories />
  </Route>
 
  {/* Other Routes */}
</Router>
```

Rewriting your routes this way makes it very obvious what will happen
when the user clicks on a link. It also allows us to clean up our
top-level router by removing the route for an individual category.
Splitting routes up this way also makes an application more efficient
since `Route`s are not always rendered. Instead, `Route`s are only
rendered when the UI logic requires them to be.

### Instructions

#### Task 1

In the running application, navigate to the sign-up form and choose a
username. Then navigate to the new “Profile” link that will appear. The
URL will change to `/profile` and you should see the username you just
entered, followed by a link to an “Edit” page. Try clicking on this link
– you’ll notice that the URL changes, but the page does not.

The `EditProfileForm` component should render when the URL changes to
`/profile/edit` but it is currently not being rendered by the
application. Let’s fix that with a nested routing approach.

First, open up **Profile.js** which can be found in the
**src/components/** folder.

------------------------------------------------------------------------

#### Task 2

Notice that the `EditProfileForm` component is being imported into
**Profile.js** but isn’t being used.

At the bottom of the `<main>` element returned by `Profile`, render
`EditProfileForm` when the URL path matches `/profile/edit`.

To test your code, try clicking on the “Edit” button.

Hint

Notice that the `EditProfileForm` component is rendered alongside the
`Profile` component, but only when the URL matches the path
`/profile/edit`. Using a nested approach, we can choose to render both
of these components at the same time for this particular URL.

If `EditProfileForm` were rendered in the `App` component’s `Switch`
component, then only one would be rendered at a time.

### Solution

[Learn React Router Exercise
9](https://www.youtube.com/watch?v=Sv4Vhp-LfCw)

## useRouteMatch

In the previous exercise, we created a nested `Link` and `Route` in the
`Categories` component.

``` jsx
// Ex: Create a link for the '/categories/html' page
<Link to={`/categories/${category}`}>
  {category}
</Link>
 
... 
// Ex: When the user visits `/categories/html`, a Category component is rendered
<Route path={'/categories/:categoryName'}>
  <Category />
</Route>
```

Route nesting improves the organization of `Link` and `Route` components
in our application. As in the `Categories` component, it is common that
nested `Link` and `Route` components stem from the same base URL (in
this case, the `/categories` URL).

Instead of writing out the full URL path, it would be much more flexible
if we could create relative paths based on the `/categories` URL. React
Router provides a hook, `useRouteMatch()`, that makes it incredibly easy
to do this.

Below, you can see the basic usage in a component called `BandPage` that
gets rendered by the route `'/bands/:band/'`. Suppose that the user
visits the page `/bands/queen/`. This page should render a list of
relative `Link`s based on the various songs by the band
<a href="https://en.wikipedia.org/wiki/Queen_(band)"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Queen</a>. A `Route` is also created to
render a `SongPage` for any chosen song:

``` jsx
import { useRouteMatch, Link, Route } from 'react-router-dom';
import { SongPage } from '../SongPage.js'
 
function BandPage ({ songs }) {
  let { path, url } = useRouteMatch();
 
  // path = '/band/:band'
  // url = '/band/queen' 
 
  // Render a list of relative Links and a Route to render a SongPage
  return (
    <div>
      <ul>
        {
          songs.map(songName =>
            <li>
              <Link to={`${url}/song/${songName}`}> 
                {category}
              </Link>
            </li>
          )
        }
       </ul>
 
       <Route path={`${path}/song/:songName`}>
         <SongPage />
       </Route>
     </div>
  )
}
```

Let’s break this down.

- `useRouteMatch()` should be called inside a component and returns an
  object with a `url` and a `path` property. This object is sometimes
  referred to as the `match` object:
- The `path` property contains the dynamic path pattern with URL
  parameters (eg. `/bands/:band`) and should be used for creating
  relative `path` props for `Route` components (eg.
  `/bands/:band/songs/:songName`)
- The `url` property has the values of URL parameters filled in (eg.
  `/bands/queen`) and should be used for creating relative `to` props
  for `Link` components (eg. `/bands/queen/songs/we_are_the_champions`).

Let’s see how we can use these values within the `Categories` component
to create relative routes to the `Category` component:

``` jsx
import { Link, Route, useRouteMatch } from 'react-router-dom'
 
function Categories ({ categories }) {
  let { path, url } = useRouteMatch();
 
  // path = '/categories'
  // url = '/categories' 
 
  // Even though path and url are the same in this case, use path for relative Routes and url for relative Links
  return (
    <div>
      <ul>
        {
          categories.map(category =>
            <li>
              <Link to={`${url}/${category}`}>
                {category}
              </Link>
            </li>
          )
        }
       </ul>
 
       <Route path={`${path}/:category`}>
        <Category />
       </Route>
     </div>
  )
}
```

Using the relative `url` and `path` values to generate the `Link` and
`Route` components ensures that they accurately route the user to the
correct URL regardless of the route that caused the `Categories`
component to render.

### Instructions

#### Task 1

Let’s now return to the `Profile` component. We want to use relative
paths to construct the `Link` and `Route` components for the
`EditProfileForm` component.

In **src/components/Profile.js**, import `useRouteMatch` from
`react-router-dom`.

Hint

You can either add `useRouteMatch` to the list of existing imports, or
import it on its own.

------------------------------------------------------------------------

#### Task 2

Next, inside the `Profile` component, use destructuring assignment to
get the `url` and `path` properties from the object returned by
`useRouteMatch`.

Hint

Your code should look something like this:

``` jsx
const { valueA, valueB } = useRouteMatch();
```

------------------------------------------------------------------------

#### Task 3

Refactor the `Route` and `Link` components by replacing hard-coded
instances of `/profile` with the `path` and `url` values from
`useRouteMatch` as appropriate.

Hint

Though both `path` and `url` will have the same value (`'/profile'`),
it’s important to consistently use `path` when constructing `Route`
components, and `url` when constructing `Link` components.

Your code may look like this (using plain string concatenation):

``` jsx
<Link to={url+"/edit"}>Edit</Link>
<Route path={path+"/edit"}>
  <EditProfileForm />
</Route>
```

or like this (using template literals):

``` jsx
<Link to={`${url}/edit`}>Edit</Link>
<Route path={`${path}/edit`}>
  <EditProfileForm />
</Route>
```

Note: The `url` and `path` values are mixed up in the video!

### Solution

[Learn React Router Exercise
10](https://www.youtube.com/watch?v=k05c1m6ozrc)

## \<Redirect\>

If you take anything away from this lesson, it should be that React
Router treats everything as a component. To get fully comfortable using
React Router in your code, you have to embrace this idea and the
declarative coding style that follows from it. For the most part, this
is pretty intuitive, but it can feel a bit counterintuitive when it
comes to redirecting users.

To appreciate the declarative pattern, consider a common case for
redirecting a user: a user wants to access a `/profile` page that
requires authentication but is not currently signed in.

The `Redirect` component provided by React Router makes this easy! Like
a `Link` or `NavLink`, the `Redirect` component has a `to` prop.
However, once the `Redirect` is rendered, the user will immediately be
taken to the location specified by the `to` prop:

``` jsx
import { Redirect } from 'react-router-dom'
 
const UserProfile = ({ loggedIn }) => {
  if (!loggedIn) {
    return (
      <Redirect to='/' />
    )
  }
 
  return (
    // ... user profile contents here
  )  
}
```

In this example, when the `UserProfile` component renders, if the
`loggedIn` prop is `false`, then the `Redirect` component will be
returned and then rendered, sending the user to the `/` page. Otherwise,
the component will render normally.

### Instructions

#### Task 1

If you had been previously signed in, press the “Log Out” button. Then,
manually navigate to <a href="http://localhost:3000/profile/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:3000/profile/</a> which
will render the `Profile` component.

As you can see, the component will render but there will be no username
to show. Instead, the `Profile` component should only be viewable if
there is a user logged in and it should redirect the user to the
`SignUp` page otherwise.

First, import `Redirect` from `react-router-dom`.

Hint

You may either add `Redirect` to the existing list of imports or you can
import it on its own.

------------------------------------------------------------------------

#### Task 2

Now, above the `return` statement in the `Profile` component, return a
`Redirect` to the path `'/sign-up'` if `loggedIn` is `false`.

Test that your code works by first making sure that you are signed out.
Then by revisiting `/profile`. You should be redirected to the
`/sign-up` page.

### Solution

[Learn React Router Exercise
11](https://www.youtube.com/watch?v=haQ-5XBKOcY)

## useHistory

In the previous exercise you learned how to redirect declaratively by
rendering a `Redirect` component that updates the browser’s current
location. Though this approach follows React Router’s declarative coding
style, it does introduce a few extra steps in the React rendering
lifecycle:

1.  The `Redirect` component must be returned
2.  The `Redirect` is then rendered
3.  The URL is then updated
4.  And finally the appropriate route is rendered.

React Router also provides a mechanism for updating the browser’s
location imperatively: the `Router`’s
<a href="https://reactrouter.com/web/api/history"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">history</code></a> object which is
accessible via the `useHistory()` hook.

``` jsx
import { useHistory } from 'react-router-dom';
```

The `history` object that `useHistory()` returns has a number of methods
for imperatively redirecting users. The first and most straightforward
is `history.push(location)` which redirects the user to the provided
`location`.

Consider this example which immediately triggers a redirect back to the
`/` page after a user successfully submits a `<form>`:

``` jsx
import { useHistory } from `react-router-dom`
 
export const ExampleForm = () => {
 
  const history = useHistory()
 
  const handleSubmit = e => {
    e.preventDefault();
    history.push('/')
  }
 
  return (
    <form onSubmit={handleSubmit}>
      {/* form elements */ }
    </form>
  )
}
```

By enabling imperative updates to the browser location, the `history`
object allows you to respond immediately to user input without having to
wait.

You might be wondering how the `history` object works. Internally, the
`BrowserRouter`’s `history` object uses the
<a href="https://developer.mozilla.org/en-US/docs/Web/API/History_API"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">html5 history API</a>. In brief, browser
`history` is a stack that stores the URLs visited by the user and
maintains a pointer to the user’s current location. This `history` API
allows you to navigate through a user’s session history and alter the
history stack if necessary.

In addition to `history.push()`, the `history` object has a few more
useful methods for navigating through the browser’s history:

- `history.goBack()` which navigates to the previous URL in the history
  stack
- `history.goForward()` which navigates to the next URL in the history
  stack
- `history.go(n)` which navigates `n` entries (where positive `n` values
  are forward and negative `n` values are backward) through the history
  stack

Below, we can see how the `.goBack()` method is used to create a “Go
Back” button:

``` jsx
import { useHistory } from `react-router-dom`
 
export const BackButton = () => {
  const history = useHistory()
 
  return (
    <button onClick={() => history.goBack()}>
      Go Back
    </button>
  )
}
```

### Instructions

#### Task 1

So far, you may have noticed the “Back” and “Forward” buttons in the
`Footer` component. However, if you try clicking on them, nothing will
happen. Let’s fix that using the `history` object and its methods!

First, navigate to **Footer.js** and import the `useHistory` hook.

Hint

Use the named import syntax to import the `useHistory` method from
`'react-router-dom'`:

``` jsx
import { value } from 'package-name';
```

------------------------------------------------------------------------

#### Task 2

Next, inside the `Footer` component, call `useHistory()` to get the
`history` object.

Hint

Your code should look like this:

``` jsx
const history = useHistory();
```

------------------------------------------------------------------------

#### Task 3

Finally, modify the `goBack` and `goForward` click handlers such that
they imperatively redirect the user.

Verify your work by navigating to a few URLs and then using the “Back”
and “Forward” buttons in the footer.

Hint

Call the `history` object’s `.goBack()` method inside the `goBack`
handler. Call the `history` object’s `.goForward()` method inside the
`goForward` handler.

------------------------------------------------------------------------

#### Task 4

Lastly, let’s add an imperative redirect to the `SignUp` component such
that after a user submits their username they are redirected to the
`/profile` page.

Navigate to **SignUp.js** and import the `useHistory` hook.

Then, use the appropriate `history` method to redirect the user to
`'/profile'` at the end of the `handleSubmit` method.

Test that your code works by signing up and ensuring that you are
redirected to the profile page (which you can now view since `loggedIn`
is now true).

Hint

Import the `useHistory` hook from `react-router-dom`, call it to get a
`history` object, and use the `history` object’s `push` function to
redirect the user to `'/profile'`.

### Solution

[Learn React Router Exercise
12](https://www.youtube.com/watch?v=ozhqPr9Od6A)

## Query Parameters

Query parameters appear in URLs beginning with a question mark (`?`) and
are followed by a parameter name assigned to a value. They are optional
and are most often used to search, sort and/or filter resources.

For example, if you were to visit the URL below…

``` jsx
https://www.google.com/search?q=codecademy
```

… you would be taken to Google’s `/search` page displaying results for
the search term `codecademy`. In this example, the name of the query
parameter is `q`.

React Router provides a mechanism for grabbing the values of query
parameters: the `useLocation()` hook. When called, `useLocation()`
returns a <a href="https://reactrouter.com/web/api/location"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">location</code></a> object with a
`search` property that is often directly extracted with destructuring
syntax. This `search` value corresponds to the current URL’s query
string.

Consider this example of a `SortedList` component:

``` jsx
import { useLocation } from 'react-router-dom'
 
// Rendered when a user visits "/list?order=DESC"
export const SortedList = (numberList) => {
  const { search } = useLocation();
  console.log(search); // Prints "?order=DESC"
};
```

While we could parse this `search` string on our own to get the query
parameter value (`'DESC'`), the native <a
href="https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">URLSearchParams</code></a>
constructor is often used to do this for us:

``` jsx
import { useLocation } from 'react-router-dom'
 
// Rendered when a user visits "/list?order=DESC"
export const SortedList = (numberList) => {
  const { search } = useLocation();
  const queryParams = new URLSearchParams(search);
  const order = queryParams.get('order');
  console.log(order); // Prints 'DESC'
};
```

Let’s break down this example:

- First, we import `useLocation()` and call it within `SortedList` to
  get the `search` query parameter string `'?order=DESC'`
- Next, we pass the `search` string into the `new URLSearchParams()`
  constructor which returns an object, often called `queryParams`. This
  object has a `.get()` method for retrieving query parameter values.
- Finally, to get the value of a specific query parameter, we pass in
  the name of the query parameter whose value we want to obtain as a
  string (`'order'`) to the `queryParams.get()` method. The value
  (`'DESC'`) is then stored in the variable `order`.

Let’s expand the `SortedList` example so that the component uses the
`order` value to render a list of data either in ascending order, in
descending order, or in its natural order.

``` jsx
import { useLocation } from 'react-router-dom'
 
// Rendered when a user visits "/list?order=DESC"
export const SortedList = (numberList) => {
  const { search } = useLocation();
  const queryParams = new URLSearchParams(search);
  const sortOrder = queryParams.get('order');
 
  if (sortOrder === 'ASC') {
    // render the numberList in ascending order
  } else if (sortOrder === 'DESC') {
    // render the numberList in descending order
  } else {
    // render the numberList as is
  }
}
```

Now, if the user were to visit `/list?order=DESC`, the value `'DESC'`
would be extracted and we can render the `SortedList` component in
descending order. Likewise, visiting `/list?order=ASC` will render the
list in ascending order. Finally, since query parameters are optional,
if we were to visit `/list`, the `SortedList` component would render in
its natural order.

### Instructions

#### Task 1

You’re going to add a search feature to the `Articles` page that filters
the listed articles by whether or not their titles match the search
string. For example, if the path is `/articles?title=react`, only the
articles with `'react'` in the title should be displayed.

Navigate to **Articles.js** and import `useLocation` from
`react-router-dom`.

Hint

Import `useLocation` from `react-router-dom`.

------------------------------------------------------------------------

#### Task 2

Next, inside the `Articles` component, call `useLocation` to get access
to the current URL’s query string (accessible via the location object’s
`search` property) and store it in a variable called `search`.

Hint

Often, the `search` value is extracted from `useLocation()` using
destructuring assignment, like so:

``` jsx
const { search } = useLocation();
```

------------------------------------------------------------------------

#### Task 3

Pass the search string to the `URLSearchParams()` constructor to get the
`queryParams` value.

Hint

You do not need to import `URLSearchParams`. Your code should look like
this:

``` jsx
const queryParams = new URLSearchParams(search);
```

------------------------------------------------------------------------

#### Task 4

Finally, you should see a variable named `title` declared and assigned
to the empty string value `''`. Replace this hard-coded `''` value with
`queryParams.get()`, passing in the name of the query parameter whose
value we would like to extract.

Verify your code works by navigating to `/articles?title=browser` and
ensuring that only articles with “browser” in the title show up on the
page.

Hint

The query parameter we want to extract is called `?title` so your code
should look like this:

``` jsx
const title = queryParams.get('title');
```

### Solution

[Learn React Router Exercise
13](https://www.youtube.com/watch?v=p7LeZWUh8BA)

## Review

Great work! You’ve learned everything you need to know to add front-end
routing to your React applications using
<a href="https://reactrouter.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React Router</a>! To recap, you can now:

- Install `react-router-dom` to add it to your React applications
- Enable routing by wrapping your application’s contents in the
  `BrowserRouter` component
- Make your code more concise by aliasing `BrowserRouter` component to
  `Router`
- Use the `Route` component to add routes to your application
- Use the `Route` component’s path prop to specify static routes (those
  without URL parameters, eg. `/users`) and dynamic routes (those with
  URL parameters, eg `/users/:userId`)
- Access the values of URL parameters using React Router’s `useParams`
  hook
- Declaratively redirect users by rendering React Router’s `Redirect`
  component
- Imperatively redirect users by accessing the `history` object via the
  `useHistory` hook and calling its `goForward`, `goBack`, and `push`
  methods.
- Access the value of query parameters using React Router’s
  `useLocation` hook

### Instructions

If you’d like to compare your solution to ours, you can download our
solution <a
href="https://static-assets.codecademy.com/Courses/react-router/react-router-lesson-solution-1.zip"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

### Solution

[Learn React Router Exercise 14
Review](https://www.youtube.com/watch?v=P1YK6iqlS00)

**documentation**

# Documentation: React Router

<a href="https://reactrouter.com/"
class="noUnderline__1DujYZeohdnOrK9vnT5gfM" target="_blank"
tabindex="0"></a>

## React Router

The provided link goes directly to the go-to documentation for React
Router. This is helpful if you would like a comprehensive resource
describing all React Router syntax.

Instead of trying to remember it all, use the documentation as a readily
available resource for syntax or implementation help!

# Adopt a Pet!

In this project, you will have the opportunity to practice using React
Router to add client-side routing to a React Application. Specifically,
you will be building a pet adoption website that allows users to view
all the adoptable pets of a particular species and view the profiles of
specific adoptable pets.

Currently, the app renders a `HomePage` component that fetches and
displays all adoptable pets (you can view the code for this page in
**src/pages/home/index.js**). We have also built a `PetDetailsPage` to
display the details for a particular pet
(**src/pages/detail/index.js**), but this component will not render
until you create a route to display it.

Your tasks will be to add client-side routing to the application using
React Router so that:

- The `HomePage` component responds to the browser’s current URL by
  displaying only pets of the species the user wishes to view.
- The `PetDetailsPage` page displays when the browser’s current URL
  includes a specific pet’s `id`.
- The `PetDetailsPage` displays data for the correct pet based on the
  `id` in the URL parameters’ values.
- When the user searches for a pet in the search bar, they are
  redirected to the `SearchPage`, which uses the query parameter called
  `name` to filter pets by name.
- When a user clicks a pet whose details are not available, they are
  redirected to a `PetNotFoundPage`.
- From the `PetNotFound` page, users can click “Go Back” button that
  will take them to page they were previously on.

Before you get started, spend some time familiarizing yourself with the
project’s starting code. In particular, in the **src/** folder, take
note of the components that you’ll be primarily working with:

- **src/App.js** (`App`)
- **src/pages/home/index.js** (`HomePage`)
- **src/pages/detail/index.js** (`PetDetailsPage`)
- **src/pages/search/index.js** (`SearchPage`)
- **src/pages/petNotFound/index.js** (`PetDetailsNotFound`)

This lesson uses <a href="https://mswjs.io/docs/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mock Service Worker</a> (MSW) to
replicate the functionality of an external API. To use MSW, you’ll want
to use <a href="https://www.google.com/chrome/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google Chrome</a> and
<a href="https://support.google.com/chrome/answer/95647"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">enable third-party cookies</a>.

#### Setup Instructions

This project should be completed on your own computer instead of on
Codecademy. You can download what you’ll need by clicking the “Download”
button below. If you need help setting up your computer, read our
<a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article about setting up a text editor for HTML/CSS
development</a>.

Once you’ve downloaded the project, open up the project folder in your
text editor. Then, make sure to install all of the dependencies by
running the command below:

``` jsx
npm install
```

Finally, you can start the application locally by running the command
below:

``` jsx
npm start
```

As you can see, the project has been started for you! Take a look at
**src/App.js** where you can see the `Navigation` and `HomePage`
components being rendered. However, while you can click on the various
links in the website, the application isn’t set up to handle those
changing routes. Now, it is up to you to add React Router to this
project.

> Note: This application was created using
> <a href="https://www.codecademy.com/articles/how-to-create-a-react-app"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank">Create React App</a>.

Download

### Instructions

Mark the tasks as complete by checking them off

## Installing React Router and adding a Router to your project.

1\.

Install `react-router-dom` so that you can use React Router components
in your project. Use the command below:

``` jsx
npm install --save react-router-dom@5.2.0
```

> **Jan 2022 Update:** This project is meant to be written using
> <a href="https://v5.reactrouter.com/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">React Router v5</a>. React Router v6
> introduces breaking changes and your project will not work using these
> instructions if you install v6 via the default command
> `npm install react-router-dom`. Check out the docs to learn more about
> <a href="https://reactrouter.com/docs/en/v6/upgrading/v5"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">upgrading from v5 to v6</a>.

To check that you were successful, ensure that `react-router-dom`
appears in the `"dependencies"` object located within your project’s
**package.json** file.

2\.

In **src/App.js**, import React Router’s `BrowserRouter` component and
alias it to `Router`.

3\.

In **src/App.js**, wrap your applications contents in a `Router` so that
your components can use React Router’s components and hooks.

## Creating Your First Route

4\.

Great job! Now that you’ve wrapped your application in a `Router`, you
are ready to start adding `Route`s.

Before you can use the `Route` component, you need to add it to the list
of imports from `react-router-dom`.

5\.

First, you will create a `Route` that renders the `HomePage` component
which displays the list of animals available for adoption. This
component should appear when the path matches `/:type`, where `:type`
corresponds to one of the species of pets (in which case the home page
should render only pets of the given species).

Wrap your `HomePage` component in a `Route` component. The `Route`
should have a `path` prop of `/:type` so that the home page will render
the species specified by the value of the URL parameter. To test that
your code works, try clicking on a particular species or navigating to
`/cat` or `/dog`.

> Note that if you click on the “All Pets” button, the `HomePage`
> doesn’t render. We’ll be fixing that in the next task.

6\.

We still want the `HomePage` to render even if no type is specified in
the URL path. This means that `type` should be an optional URL parameter
in the path that renders the `HomePage` component. Make `type` optional
for the `Route` that renders the `HomePage`.

Test that your code works by clicking on the “All Pets” link in the
navigation menu – the homepage should still display since the new URL’s
path (`/`) now matches the path of the `Route` that renders `HomePage`.

## Using URL Parameters in Your React Components

7\.

Notice that even after you navigate to `/cats`, the `HomePage` component
still renders all the pets (not just the cats). Your next task is to fix
that by building on the code we’ve provided for the `HomePage`
component. Remember, the `useParams()` hook can be used to give a
component access to the values of the URL parameters in the current URL.

In **src/pages/home/index.js**, import the `useParams()` hook from
`react-router-dom`.

8\.

Within the `HomePage` component, we’ve defined a variable, `type`, and
set it equal to an empty string. Replace this variable declaration and
instead use `useParams()` to get the value of the `:type` URL parameter.
Store the value in a variable called `type`.

To test that your code works, click on one of the species links – you
should now see only pets of that type!

> How does this work? Inside the `useEffect()` hook, we’ve passed `type`
> to our API’s `getPets` method which fetches pets of the specified type
> to be rendered on the page. Now, this `type` comes from the URL
> parameter (rather than an empty string)!

## Replacing a Tags with React Router Elements

9\.

When you tested your work for the last task by clicking on one of the
species’ links in the navigation bar, you may have noticed a conspicuous
page reload. Recall that this happens when we use native `a` tags
(instead of React Router’s `Link` and `NavLink` components) to navigate
to client-side routes.

In the Navigation component (located in
**src/components/navigation/index.js**), you will improve your user’s
experience by replacing the `a` tags with React Router’s `NavLink`
component. First, you have to import `NavLink` from `react-router-dom`.

10\.

Next, replace the `a` tags in the `Navigation` component with
`NavLink`s. As you give these `NavLink` components their props, remember
that `NavLink` has a `to` prop instead of the `a` tag’s `href`
attribute.

Recall that `NavLink` also accepts an `activeClassName` property that
will be applied to the `NavLink` whose `to` prop matches the current
URL. In `public/index.css`, we’ve written a CSS selector for the class
`.nav-link-active` that will darken the background of any element with
that class name.

Give your `NavLink` components an `activeClassName` prop and set it
equal to `"nav-link-active"` so that the `NavLink` whose `to` prop
matches the current URL will appear darker than the others.

Lastly, to prevent the “All Pets” `NavLink` from always displaying as
active, add the `exact` prop to it. This will ensure that the `NavLink`
only renders as active when the current URL’s path is an exact match
(so, for example, the “All Pets” `NavLink` will render as active when
the current path is `/` but not when the current path is `/dogs`).

11\.

Notice that if you click on an individual animal’s link, the page will
refresh. Instead, we want to use React Router `Link`s to skip that
refresh. Like `NavLink`, the `Link` component has a `to` property in
place of the `a` tag’s `href`.

First, in **src/pages/home/index.js**, import `Link` from
’react-router-dom\`.

Then, replace each `a` tag in the `HomePage` component with a `Link`
component with a `to` prop.

When you complete this task, clicking on an individual pet will no
longer cause the page to reload. However, the details for that pet won’t
come up just yet. Continue on to the next task group to fix this!

## Adding Another Route

12\.

Great work! Clicking on an animal no longer causes a reload, however,
we’re not seeing the individual animal’s details either! The component
designed to do that is the `PetDetailsPage` which has already been
imported into **src/App.js**.

Back in **src/App.js** and above the `Route` for the `HomePage`
component, add a `Route` to your `Router` that renders the
`PetDetailsPage` component. This `Route`’s `path` should match URLs such
as `/dog/123` or `/cat/456`. This URL path will need two URL parameters:
the animal’s species and the specific id. The names for these parameters
should be `:type` and `:id` respectively.

To test that your code works, click on one of the pets listed on the
home page. You should be redirected to the detailed view Shuri the cat!

But… maybe you didn’t click on Shuri? Continue on to the next task to
fix this.

13\.

Try clicking on a few different pets and you’ll notice that you’ll keep
seeing the details for Shuri the cat! Take a look at the
`PetDetailsPage` component, found in **src/pages/detail/index.js**.
Here, you’ll see that we’ve hard-coded a pet `id`.

To make this page render the details for the actual pet your user has
selected, use the `useParams()` hook to get the value of the `:id` URL
parameter in the `PetDetailsPage` component.

To test that your code works, refresh the page. You should see the
details for the pet whose picture you clicked previously.

> Note: Only the pets with a real picture will have pet details. Later
> on, we will route users to a default page when they click on a pet
> with a missing picture and missing details.

14\.

Great work! There’s one problem though: now, when you navigate to
`/:type/:id` not only will you see the detailed view for a particular
pet, but also the list of all pets that share the current pet’s species.
For example, if you go to `/cat/51322435` then you’ll see Shuri and all
of the cats.

Remember, React Router’s `Router` will render *all* of the `Route`
components nested within it whose `path` matches that of the current
URL. In this case, when the `PetDetailsPage` component is rendered for
`/cats/123`, the `HomePage` component is being rendered as well. The
`Switch` component can help us with this!

Return to **src/App.js** and import the `Switch` component.

15\.

Now, in **src/App.js**, wrap your `Route`s with a `Switch` component so
that only one `Route` will render at a time. Make sure to NOT wrap the
`Navigation` component inside the `Switch` component.

Remember: `Switch` renders only the *first* `Route` that matches the
current URL, so you’ll have to think about what order you should list
your routes in to achieve the desired behavior.

Test your code to ensure that the `HomePage` renders when the URL path
matches `/:type` and the `PetDetailsPage` renders when the URL path
matches `/:type/:id`.

## Adding a Search Feature

16\.

Nice job! Your next task will be to add a search feature to the pet
adoption website. We’ve included a search bar for you in the
`Navigation` component, but it doesn’t currently work. Your task will be
to add React Router to this search bar so that when a user searches for
a particular pet, they are redirected to a page showing all pets whose
names match the search query.

First, you’ll need to make the search bar update the URL when the user
enters a new search query. We will do this imperatively using the
`history` object.

Inside the `Search` component (**src/components/search/index.js**),
import the `useHistory()` hook. Then, inside the `Search` component, get
the value of the `history` object it returns. This will allow us to
control the current URL location.

17\.

In `onSearchHandler`, we’ve provided the value `searchQuery` for you.
This value will hold the query string. For example, if the user searches
for “fido”, the value of `searchQuery` will be `name=fido`.

Below this variable, use the `history` object’s `.push()` method to
imperatively redirect the user to a path of the form
`/search?name=fido`.

Test out your code by searching for a value in the search bar. If you
search for “fido” then the URL should become `/search?name=fido`.

18\.

Now, back in **src/App.js** we want to render the `SearchPage` whenever
the user types into the search bar and is redirected to paths like
`/search?name=fido`.

Add a `Route` in the `Switch` that renders the `SearchPage` component
we’ve imported for you. This route’s `path` prop should match URLs that
begin with `/search`.

To test that your code works, try typing something into the search bar
and hitting enter. The `SearchPage` component should be rendered.

19\.

Now, the `SearchPage` component will be rendered whenever the user types
in a query into the search bar. When searching for a pet, users will be
redirected to URLs such as `/search?name=fido`, where `fido` is the
search query.

In order to render the pets that match the specified query, we will need
to capture the query parameter value from `?name=fido`. Remember, we can
do this with the `useLocation()` hook.

First, in **src/pages/search/index.js**, import React Router’s
`useLocation()` hook.

20\.

Next, inside the `SearchPage` component, call `useLocation` and get the
value of the `search` property on the object it returns by using
destructuring assignment.

21\.

Recall that the `search` property on the `location` object corresponds
to the current URL’s query string. To turn this query string into an
object whose keys correspond to query parameters and whose values
correspond to those parameters’ values, you should pass the `search`
object to the <a
href="https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">URLSearchParams</code></a>
constructor and store the result in a constant called `queryParams`.

React will issue a warning if you don’t wrap this call to
`URLSearchParams()` in
<a href="https://reactjs.org/docs/hooks-reference.html#usememo"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React’s <code
class="code__2rdF32qjRVp7mMVBHuPwDS">useMemo()</code> hook</a>.
Therefore, your code should look something like this:

``` jsx
const queryParams = useMemo(() => { 
  return new URLSearchParams(search)
}, [search]);
```

Without this, every time the `SearchPage`renders, the call to the
`URLSearchParams` constructor will create a new object and cause
`queryParams` to change.

22\.

Finally, in the `useEffect()` hook, an API call to `getPets` is made to
fetch the specified `petNameToFind`.

Using the `.get()` method on the `queryParams` object, retrieve the
`'name'` query parameter and assign it to `petNameToFind`.

To test that your code works, try searching for `"Shuri"` and you should
see our favorite cat appear in the search results!

## Adding a PetDetailsNotFound Page

23\.

Nice work! The next (and last) feature you’ll add to the application is
a `PetDetailsNotFound` page in the event that the user clicks on a pet
whose details are not yet available. Back in **src/App.js** this
component has already been imported for you.

First, in **src/App.js**, add a `Route` that renders the
`PetDetailsNotFound` component when the current URL’s path is
`'/pet-details-not-found'`.

To test that your code works properly, navigate to
`/pet-details-not-found` in your URL bar.

24\.

When a user clicks on a specific animal in the `HomePage`, the
`PetDetailsPage` (found in **src/pages/detail/index.js**) will be
rendered. If a pet’s details are not found the API call to
`getPetDetails(id)` will return an error.

Your task is to conditionally redirect the user to
`'/pet-details-not-found'` whenever that happens.

First, In **src/pages/detail/index.js**, import React Router’s
`Redirect` component.

25\.

Next, update the `return` statement of the `PetDetailsPage` component to
render a `Redirect` if the `getPetDetails` API call returns an error.
The `to` prop for the `Redirect` should cause the application to render
the `PetDetailsNotFound` component.

Test that your code works by clicking on ‘Dottie’—the second pet in the
‘All Pets’ view. Since we don’t have Dottie’s details, the API will
return an error and you should be redirected to the `PetDetailsNotFound`
page.

26\.

It would be nice if the user could easily navigate away from the
`PetDetailsNotFound` page to the page they were on before. We’ve
provided a button for this purpose, but you will need to use React
Router’s `history` object to imperatively redirect the user when it is
clicked.

First, in **src/pages/petDetailsNotFound/index.js** import React
Router’s `useHistory()` hook.

27\.

Inside the `PetDetailsNotFound` component, call `useHistory` to get
access to React Router’s `history` object.

28\.

The `onClick` prop of the ‘Go Back’ button is set to the callback
function `goBack()`. Use the `history` object’s `.goBack()` method to
redirect the user to the previous page when the user clicks on the ‘Go
Back’ button.

Test out your code by clicking on a pet whose details have not been
loaded yet and then click on the “Go Back” button. You should be
redirected back to the page you just came from.

29\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/adopt-a-pet-off-platform-practice-project/597981"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

### Solution

``` jsx
```

# Getting Started with Jest for JavaScript Testing

In this article, you will learn about structuring unit testing of
JavaScript code using the popular Jest JavaScript library.

→ **<a href="https://www.valentinog.com/blog/jest/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Getting Started with Jest for JavaScript
Testing</a>**

In this article, you will learn about structuring unit testing of
JavaScript code using the popular Jest JavaScript library. This is
helpful if you would like to get comfortable using Jest for basic
JavaScript testing before unit testing in React. After you finish
reading the article, return to this page and complete the following
assessments.

In Jest, which function is the actual test *most immediately* wrapped
in?

    test("string for describing the test suite", () => {
      // test code
    });

``` jsx
expect(functionName(inputs)).toEqual(output);
```

    describe("Function description", () => {
      // test code
    });

    it('string for describing the test suite', () => {
      // test code
    });

👏 Correct! The expect function performs the actual test by specifying
the expected output of a function given a specified input.

Which line(s) of code in the function `filterByTerm` are not covered in
the testing block?

``` jsx
//function
function filterByTerm(inputArr, searchTerm) {
  if (!searchTerm) throw Error("searchTerm cannot be empty");
  if (!inputArr.length) throw Error("inputArr cannot be empty");
  return inputArr.filter(function(arrayElement) {
    return arrayElement.url.match(searchTerm);
  });
}
 
//testing block
describe("Filter function", () => {
  test("it should filter by a search term (link)", () => {
    const input = [
      { id: 1, url: "https://www.url1.dev" },
      { id: 2, url: "https://www.url2.dev" },
      { id: 3, url: "https://www.link3.dev" }
    ];
    const output = [{ id: 3, url: "https://www.link3.dev" }];
    expect(filterByTerm(input, "link")).toEqual(output);
  });
  test("it should throw when searchTerm is empty string", () => {
    const input = [];
    expect(() => {
      filterByTerm(input, "");
    }).toThrowError(Error("searchTerm cannot be empty"));
  });
});
 
```

    if (!searchTerm) throw Error("searchTerm cannot be empty");

``` jsx
if (!inputArr.length) throw Error("inputArr cannot be empty");
```

    if (!searchTerm) throw Error("searchTerm cannot be empty");

and

    if (!inputArr.length) throw Error("inputArr cannot be empty");

    There is full code coverage in the testing block.

👏 Correct! The testing block does not check for throws if the array is
empty. Jest’s built-in code coverage feature can help you to identify
this oversight.

# Writing Tests for React Applications Using Jest and Enzyme

Learn about the testing frameworks Jest and Enzyme.

→ **<a
href="https://css-tricks.com/writing-tests-for-react-applications-using-jest-and-enzyme/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Writing Tests for React Applications
Using Jest and Enzyme</a>**

In this article, you will learn how to write tests for your React
application using Jest and Enzyme. This is helpful if you want to write
tests to catch edge cases, regressions, and have more confidence in
shipping updates to your users.

This article uses <a href="https://yarnpkg.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">yarn</a> instead of npm. Yarn is an
alternative package manager. The syntax for Yarn is slightly different
compared to npm. You can use either package manager when following
along.

## Running packages

- Using Yarn:

  `yarn create-react-app my-app`

- Using npm (specifically the
  <a href="https://docs.npmjs.com/cli/v8/commands/npx"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">npx command</a> to execute a package
  without installing it):

  `npx create-react-app my-app`

## Adding dependencies

- Using Yarn:

  `yarn add enzyme enzyme-adapter-react-16 --dev`

- Using npm:

  `npm install enzyme enzyme-adapter-react-16 --save-dev`

## Running `package.json` scripts

- Using Yarn:

  `yarn run test`

- Using npm:

  `npm run test`

**documentation**

# Documentation: Jest

<a href="https://jestjs.io/docs/en/tutorial-react"
class="noUnderline__1DujYZeohdnOrK9vnT5gfM" target="_blank"
tabindex="0"></a>

## Jest

The provided link goes directly to the go-to documentation for Jest.
This is helpful if you would like a comprehensive resource describing
all Jest syntax.

Instead of trying to remember it all, use the documentation as a readily
available resource for syntax or implementation help!

**documentation**

# Documentation: Enzyme

<a href="https://enzymejs.github.io/enzyme/"
class="noUnderline__1DujYZeohdnOrK9vnT5gfM" target="_blank"
tabindex="0"></a>

## Enzyme

The provided link goes directly to the go-to documentation for Enzyme.
This is helpful if you would like a comprehensive resource describing
all Enzyme syntax.

Instead of trying to remember it all, use the documentation as a readily
available resource for syntax or implementation help!

# Code Review: React

You can learn a lot on your own, but you can learn even more when you
collaborate with others!

## Code Review in the Full-Stack Engineer Path

As part of this Career Path, you will have the opportunity to connect
with other learners to practice and apply your new skills. At this point
in the path, **you are ready to conduct a code review**. Throughout the
career path, we will prompt you at specific intervals to work with
peers, but you should feel free to review code as often as you like to
gain practice!

### How to Conduct a Code Review with Peers

#### Step 1: Learn about Code Review

We have compiled the best resources to get you prepared to do a code
review <a
href="https://discuss.codecademy.com/t/article-giving-and-receiving-code-review/521901"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here in this article.</a> Check it out!
No need to read it all at once; this information is intended for
reference.

#### Step 2: Find a Partner

<a href="http://codecademy.com/cohorts/full-stack-engineer-career-path"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Visit your group</a> and reply to the
thread asking if anyone else is seeking a code review. Alternatively,
reply to someone else who is looking for a code review in a DM by
clicking on their user name. Remember, both giving and receiving a code
review are part of the learning experience!

Another option is to seek out a partner in the
<a href="https://discord.gg/g5vzQCstyB"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">full-stack-engineer channel in
Codecademy’s Discord server</a>.

When you arrive, be sure to introduce yourself with the following
information:

- What % of the path you have completed
- What timezone or country you’re in
- One fun fact about yourself

#### Step 3: Choose what to Review

Select which project you want your partner to review and ask them what
they would like to have reviewed. We suggest the <a
href="https://www.codecademy.com/paths/fscj-22-front-end-development/tracks/fscj-22-react-part-ii/modules/wdcp-22-appointment-planner/projects/appointment-planner"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Appointment Planner</a> challenge project, which will
help you to refine your React skills by combining what you have learned
so far. Alternatively, have them review any previous project that you
have worked on or any personal projects you’re doing on the side.

#### Step 4: Review!

Review some code! Here’s an initial checklist that will apply to all
types of projects. The specific project you are reviewing may have
additional requirements:

1.  The code runs and fulfills its intended purpose.
2.  The code is efficient and handles errors gracefully.
3.  The code has a consistent format.
4.  The code is commented where necessary.

### FAQs

- **How will I remotely give a code review?**

  There are lots of tools available to help make the code review process
  easy. <a href="https://kinsta.com/blog/code-review-tools/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Here’s a list of 12 code review
  tools.</a> Alternatively, you can post your code in a direct message
  in either <a href="http://discuss.codecademy.com"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">the forums</a> or Discord, and provide
  one another feedback right then and there.

- **What will we work on?**

  We’ve made a few suggestions that align with where you are in the
  path. However, feel free to choose a different project in the Path or
  go over a personal project instead.

- **Do I have to do this?**

  Nope! But the curriculum developers at Codecademy believe this is a
  strong pedagogical tool for cementing your learnings as a new
  developer. Additionally, code reviews are a huge part of the software
  development process when working on a professional team.

# Challenge Project: Appointment Planner

#### Overview

Instead of a step-by-step tutorial, this project contains a series of
open-ended requirements which describe the project you’ll be building.
There are many possible ways to correctly fulfill all of these
requirements, and you should expect to use the internet, Codecademy, and
other resources when you encounter a problem that you cannot easily
solve.

#### Project Goals

In this project, you will use functional React components to create an
app that manages contacts and appointments. The app consists of two
pages: one to view and add contacts and one to view and add
appointments.

<img
src="https://static-assets.codecademy.com/skillpaths/react-redux/appointments-components.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Component Diagram" />

You will work with stateful and stateless functional React components
using hooks. The requirements section will walk through implementing the
app from the topmost component down. If you would like to implement it
in a different order feel free to do what is comfortable for you.

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. Make sure you have
<a href="https://www.codecademy.com/articles/setting-up-node-locally"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Node installed on your computer</a> and then, inside the
project’s root directory, run `npm install`. Finally, run `npm start`
which will automatically open up a new tab in your browser with your
running application. If a new tab does not appear, you can visit
<a href="http://localhost:3000/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:3000/</a>.

Download

### Instructions

Mark the tasks as complete by checking them off

## Prerequisites

1\.

To complete this project, you should have completed the Codecademy
lessons from <a href="https://www.codecademy.com/learn/react-101"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn React</a> including:

- JSX
- React Components
- Components Interacting
- Stateless Components From Stateful Components
- Advanced React
- Hooks

## Project Requirements

2\.

The application code starts with **App.js**, **ContactsPage.js** and
**AppointmentsPage.js**. These are the three stateful components you
will work with in this project. **App.js** is located in the **/src**
directory in the file explorer and should already be open in the code
editor.

`App` is a stateful component that handles the routing between the two
pages, `ContactsPage` and `AppointmentsPage`. This is already
implemented using
<a href="https://reactrouter.com/web/guides/quick-start"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React Router</a>.

> Note: You do not need to be familiar with React Router to complete
> this project.

Based on the given requirements, implement `App` as a stateful component
that maintains appointments and contacts. It should also pass those
values, along with callback functions to update those state values, to
its child components.

**`App` Requirements:**

- Keep track of the contacts and appointments data, each being an array
  of objects
- Define a callback function that, given a name, phone number, and
  email, adds a new contact object with that data to the array of
  contacts
- Define a callback function that, given a title, contact, date, and
  time, adds a new appointment object with that data to the array of
  appointments
- Pass the array of contacts and the appropriate callback function as
  props to the `ContactsPage` component
- Pass the appointments array, contacts array, and the add appointment
  function as props to the `AppointmentsPage` component

3\.

**ContactsPage.js** is located in the **/src/containers/contactsPage**
directory in the file explorer and should already be open in the code
editor.

Based on the given requirements, implement `ContactsPage` as a stateful
component to handle the logic for adding new contacts and listing
current contacts.

**`ContactsPage` Requirements:**

- Receive two props:
  - The current list of contacts
  - A callback function for adding a new contact
- Keep track of three local state values: the current name, phone, and
  email entered into the form
- Check for duplicates whenever the name in the form changes and
  indicate the name is a duplicate
- Only add a new contact on form submission if it does not duplicate an
  existing contact’s name
- A successful submission should clear the form
- In the **Add Contact** section, render a `ContactForm` with the
  following passed via `props`:
  - local state variables
  - local state variable setter functions
  - `handleSubmit` callback function
- In the **Contacts** section, render a `TileList` with the contact
  array passed via `props`

4\.

**ContactForm.js** is located in the **/src/components/contactForm**
directory in the file explorer and should already be open in the code
editor.

Based on the given requirements, implement `ContactForm` as a stateless
component that renders a web form to collect the necessary contact
information.

**`ContactForm` Requirements:**

- Render a `form` with:
  - The `onSubmit` attribute set
  - 3 controlled `<input>` elements, one for each piece of contact data
  - A submit button
- Include a `pattern` attribute to the phone `<input>` with <a
  href="https://regexlib.com/Search.aspx?k=phone&amp;c=-1&amp;m=-1&amp;ps=20"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">a regex</a> that matches the phone
  locale of your preference

5\.

Open the **TileList.js** file located in the
**/src/components/tileList** directory.

Based on the given requirements, implement `TileList` as a stateless
component that renders a list of `Tile` components using an array of
objects.

**`TileList` Requirements:**

- Receive one prop:
  - An array of objects to render as a list
- Use the array passed via `props` to iteratively render `Tile`
  components, passing each object in the array as a prop to each
  rendered `Tile` component

The requirements for the `TileList` component are generalized and allow
it to be shared by the `ContactsPage` and `AppointmentsPage` components.
As long as an array of objects with either the contact data or
appointments data is passed then the content will be handled
appropriately.

6\.

Open the **Tile.js** file located in the **/src/components/tile**
directory.

Based on the given requirements, implement `Tile` as a stateless
component that renders the data from an object.

**`Tile` Requirements:**

- Receive one prop:
  - An object
- Iterate over the values in the object, passed in via props, and render
  a `<p>` element for each value
- Give a `className` of `"tile-title"` to the first `<p>` element
- Give a `className` of `"tile"` to all other `<p>` elements

Just like the `TileList` component, the `Tile` component is generalized
to work with data from any object. This allows it to be used in both the
`ContactsPage` and `AppointmentsPage` components.

7\.

Open the **AppointmentsPage.js** file located in the
**/src/containers/appointmentsPage** directory.

Based on the given requirements, implement `AppointmentsPage` as a
stateful component that handles the logic for adding new appointments
and listing current appointments.

**`AppointmentsPage` Requirements:**

- Receive three props:
  - The current list of appointments
  - The current list of contacts
  - A callback function for adding a new appointment
- Keep track of four local state variables, the current title, contact,
  date, and time entered into the form
- Add a new appointment on form submission
- Clear the form on submission
- In the **Add Appointment** section, render an `AppointmentForm` with
  the following passed via `props`:
  - local state variables
  - local state variable setter functions
  - `handleSubmit` callback function
- In the **Appointments** section, render a `TileList` with the
  appointment array passed via `props`

8\.

Open the **AppointmentForm.js** file located in the
**/src/components/appointmentForm** directory.

Based on the given requirements, implement `AppointmentForm` as a
stateless component that renders a web form to collect the necessary
appointment information.

**`AppointmentForm` Requirements:**

- Render a `form` with:
  - The `onSubmit` attribute set to the callback function passed in via
    `props`
  - 3 controlled `input` components, to be used for the title, date and
    time appointment data
  - A `ContactPicker` component with the contacts list passed in via
    props
  - A submit button
- Use `getTodayString()` to set the `min` attribute of the date `input`

9\.

Open the **ContactPicker.js** file located in the
**/src/components/contactPicker** directory.

Based on the given requirements, implement `ContactPicker` as a
stateless component that renders a drop-down list of all contact names.

**`ContactPicker` Requirements:**

- Receive 2 props:
  - The array of contacts
  - A callback function to handle when the `onChange` event is triggered
- Render a `select` element with the `onChange` attribute set to the
  callback passed in via props
- Have a default first `option` element that indicates no contact is
  selected
- Iteratively add `option` elements using the contact names from the
  array passed in via props

## Solution

10\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/appointment-planner-project-react/576778"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

### Solution

``` jsx
```

# Review: React, Part II

In this unit, you learned more about React.

Congratulations! The goal of this unit was to dive further into React.
You learned how React is useful in passing data between different parts
of your front-end using props and state. You also learned about
different ways of managing the application state using Hooks. Finally,
you learned how to test your React applications using Jest and Enzyme.

Having completed this unit, you are now able to:

- Understand how components can affect other components
- Know how to use props
- Know how to manage state
- Know how to use Lifecycle Methods
- Deploy React applications with Netlify
- Know how to pass data between components
- Use React Hooks
- Test React applications using Jest and Enzyme

If you are interested in learning more about these topics, here are some
additional resources:

- Article: <a
  href="https://code.visualstudio.com/docs/nodejs/reactjs-tutorial#_debugging-react"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Debugging React</a>
- Article: <a href="https://pusher.com/tutorials/react-jest-enzyme/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Unit Testing React Applications with
  Jest and Enzyme</a>
- Article: <a
  href="https://ericdcobb.medium.com/advanced-react-component-mocks-with-jest-and-react-testing-library-f1ae8838400b"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Advanced React Component Mocks with
  Jest and React Testing Library</a>
- Article: <a
  href="https://techblog.commercetools.com/testing-in-react-best-practices-tips-and-tricks-577bb98845cd"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Testing in React: Best Practices, Tips,
  and Tricks</a>

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
