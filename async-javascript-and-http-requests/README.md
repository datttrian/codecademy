# Introduction: Async JavaScript and HTTP Requests

In this Unit, you’ll learn about asynchronous JavaScript and how to use
it in web development.

The goal of this unit is to learn about working with asynchronous
JavaScript. This will allow you to eventually make HTTP requests to APIs
(Application Programming Interfaces). Working with APIs will enable you
to work with data stored on remote servers, including data from
third-party sites (such as Instagram and Reddit).

After this unit, you will be able to:

- Write asynchronous JavaScript with async-await and promises syntax
- Explain the different types of HTTP requests
- Describe REST protocol
- Work with JSON data
- Make HTTP requests to external web APIs

You will put all of this knowledge into practice with an upcoming
Portfolio Project. You can complete the Portfolio Project either in
parallel with or after taking the prerequisite content — it’s up to you!

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

# General Asynchronous Programming Concepts

Explore asynchronous programming and how it allows applications/apps to
run operations in a non-sequential order.

## What is Synchronous Code?

Before we define asynchronous code, let’s first start with synchronous
code. We don’t even have to start with code, let’s use a real-life
example.

Consider the building of a house. We would first need to first lay down
the bricks that make our foundation. Then, we layer more bricks on top
of each other, building the house from the ground up. We can’t skip a
level and expect our house to be stable. Therefore, the laying of bricks
happens *synchronously*, or in sequential order.

Likewise, *synchronous code* executes in sequential order — it starts
with the code at the top of the file and executes line by line until it
gets to the end of the file. This type of behavior is known as
*blocking* (or blocking code) since each line of code cannot execute
until the previous line finishes.

## What is Asynchronous Code?

Let’s begin again with examining a real-life scenario, like baking a
cake. We could start to preheat the oven and prepare our cake’s
ingredients while we wait for our oven to heat up. The wait for the oven
and the preparation of ingredients can happen at the same time, and thus
these actions happen *asynchronously*.

Similarly, *asynchronous code* can be executed in parallel to other code
that is already running. Without the need to wait for other code to
finish before executing, our apps can save time and be more efficient.
This type of behavior is considered *non-blocking*.

## Asynchronous Code Under the Hood

For most programming languages, the ability to execute asynchronous code
depends on the number of *threads* that an app has access to. We can
think of a thread as a resource that a computer provides an app to do a
task. Typically one thread allows for an app to complete one task. If we
return to our house example, our computers thread tasks might look like
this:

    Thread 1: build house foundation -> build walls -> construct floor 

A single thread could work for a synchronous task like building a house.
However, in our cake baking example, our threads would have to look like
this:

    Thread 1: preheat oven
    Thread 2: prepare ingredients -> bake-cake

We won’t discuss in-depth how many threads an app can access but we
should note that the more threads we have, the more tasks we can run
concurrently. Also, in most modern-day computers, multithreading is
achieved by having a CPU that has multiple cores or by some other
technology.

## Asynchronous Code in Web Development

Similar to how asynchronous behavior is useful in baking a cake, it can
also be helpful for web programming. If we use synchronous (blocking)
code in the browser, we might be stopping a user from being able to
interact with a web app until the code is done running. This isn’t a
great user experience. If our app takes a long time to load, our users
might think that something’s wrong and might even opt to browse a
different site!

However, if we opt for an asynchronous approach, we can cut down on the
wait time. We’d load only the code that’s necessary for user
interactions and then load up other bits of code in the background. With
asynchronous code, we can create better user experiences and make apps
that work more efficiently!

In your own words, how are synchronous actions different from
asynchronous actions? Try to also come up with your own examples of both
types of actions.

*Synchronous actions happen sequentially, one after the other. Whereas,
asynchronous actions can happen at the same without one action blocking
the other.*

## Review

Synchronous code and asynchronous code both have roles to play in
programming. Understanding the concept of how asynchronous code works
gives us an extra tool to make our apps work faster and more
efficiently. We can avoid blocking users and give them a more seamless
browsing experience. However, we would need to consider the number of
threads that our programming language can access, which also depends on
what resources our computer has. With this in mind, consider what type
of code you need, is it synchronous or asynchronous?

# Introduction to Asynchronous JavaScript

Learn how JavaScript enables asynchronous actions.

## Asynchronous Code in Web Development

JavaScript provides us with a seamless web browsing experience using
asynchronous code. Sites often allow us to perform different
interactions like scrolling through content, clicking to create a pop-up
modal, typing out text, etc. When a site is set up to respond to
different user actions at the same time, it’s likely that this site is
using asynchronous JavaScript code. Such code takes into consideration
how users might use the site without *blocking* them (forcing the user
to wait for code from one interaction to finish before moving on to the
next).

It is our job as developers to think about how much time it takes to
complete a task and how to plan around that wait. Tasks like contacting
the back-end to retrieve information, querying our database for user
information, or making a request to an external server, like a 3rd party
API, take varying amounts of time. Since we aren’t sure when we’ll get
this information back, we can use asynchronous code to run these tasks
in the background. Let’s see how JavaScript handles asynchronous code.

## JavaScript and Asynchronous Code

JavaScript is a *single-threaded* language. This means it has a single
thread that can carry out one task at a time. However, Javascript has
what is known as the *event loop*, a specific design that allows it to
perform asynchronous tasks even while only using a single thread (more
on this later!). Let’s examine some examples of asynchronous code in
Javascript!

### Asynchronous Callbacks

One common example of asynchronicity in JavaScript is the use of
*asynchronous callbacks*. This is a type of callback function that
executes after a specific condition is met and runs concurrently to any
other code currently running. Let’s look at an example:

``` js
easterEgg.addEventListener('click', () => {
  console.log('Up, Up, Down, Down, Left, Right, Left, Right, B, A');
});
```

In the code above, the function passed as the second argument of
`.addEventListener()` is an asynchronous callback — this function
doesn’t execute until the `easterEgg` is clicked.

### setTimeout

In addition to asynchronous callbacks, JavaScript provides a handful of
built-in functions that can perform tasks asynchronously. One function
that is commonly used is the
<a href="https://developer.mozilla.org/en-US/docs/Web/API/setTimeout"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">setTimeout()</code></a> function.

With `setTimeout()` we can write code that tells our JavaScript program
to wait a minimum amount of time before executing its callback function.
Take a look at this example:

``` js
setTimeout(() => {
  console.log('Delay the printing of this string, please.');
}, 1000);
```

Notice that `setTimeout()` takes 2 arguments, a callback function and a
number specifying how long to wait before executing the function. In the
example above, the function will print
`'Delay the printing of this string, please.'` after `1000` milliseconds
(or 1 second) have passed.

Since `setTimeout()` is non-blocking, we can be executing multiple lines
of code at the same time! . Imagine if we had a program like this:

``` js
setTimeout(() => {
  console.log('Delay the printing of this string, please.');
}, 1000);
console.log('Doing important stuff.');
console.log('Still doing important stuff.'); 
```

Which outputs:

    'Doing important stuff.'
    'Still doing important stuff.' 
    'Delay the printing of this string, please.'

If we take a closer look at the output, we’ll see that our
`setTimeout()`’s callback function didn’t execute until after our other
very important `console.log()` statements were executed.

In web development, this means we can write code to wait for an event to
trigger all while a user goes on interacting with our app. One such
example could be if a user goes to a shopping site and gets notified
that an item is up for sale and only for a limited time. Our
asynchronous code could allow the user to interact with our site and
when the sale timer expires, our code will remove the sale item.

### setInterval()

Another common built-in function is
<a href="https://developer.mozilla.org/en-US/docs/Web/API/setInterval"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">setInterval()</code></a> which also
takes a callback function and a number specifying how often the callback
function should execute. For example:

``` js
setInterval(() => {
  alert('Are you paying attention???')
}, 300000)
```

The `setInterval()` would call the `alert()` function and show a pop-up
message of `'Are you paying attention???'` every `300000` milliseconds
(or 5 minutes). Note: Please don’t actually do this in your apps, thank
you.

While we wait for our alert to chime in every 5 minutes, our users could
still use our app! Note: Again, please don’t do this.

With `setInterval()`, we can programmatically create an alarm, a
countdown timer, set the frequency of an animation, and so much more!

How is `setInterval()` considered asynchronous code?

*`setInterval()` is considered asynchronous code because the supplied
callback function is not blocked by other code — the callback function
can be executed in parallel to other code being executed. The
determining factor for when the callback function is executed is
determined by the second argument provided.*

## Review

Asynchronous code can really benefit sites and apps that rely on actions
that take time. Even though JavaScript is a single-threaded language, it
can still execute asynchronous code using the event loop. We took a look
at some of the main ways javascript accomplishes asynchronicity via
callbacks, `setTimeout()`, and `setInterval()`. With this new knowledge,
let’s continue to implement asynchronicity into our programs!

# Concurrency Model and Event Loop in JavaScript

How JavaScript uses its event loop to emulate concurrency

If you’ve learned about asynchronous programming, you may wonder how
your code can actually be non-blocking and move on to other tasks while
it waits for asynchronous operations to complete. This article will
remove some of the abstractions about how JavaScript can emulate
concurrency by looking at what’s going on with the event loop behind the
scenes. But what exactly is the event loop? And why do we need it?

### Why Do We Need an Event Loop?

JavaScript is a *single-threaded* language, which means that two
statements can’t be executed simultaneously. For example, if you have a
`for` loop that takes a while to process, it’ll have to finish executing
before the rest of your code runs. That results in blocking code. But as
we already learned, we can run non-blocking code in JavaScript, which is
where the Event Loop comes in. Input/output (I/O) is handled with events
and callbacks so code execution can continue. Let’s look at an example
of blocking and non-blocking code. Run this block of code yourself
locally.

``` js
console.log("I'm learning about");
 
for (let idx=0; idx < 999999999; idx++) {}
 
// The second console.log() statement is
// delayed by the for loop's execution
console.log("the Event Loop");
```

What happened when you ran the code? What did you notice about the
timing of the execution of your `console.log()` statements?

*The code logged 2 lines to the console. The first line logged, then the
`for`</code>\` loop executed, and after some time, the last line logged
to the console.*

The example above has synchronous code with a long `for` loop. Here’s
what happens:

1.  The code executes and “I’m learning about” is logged to the console.
2.  Next, a `for` loop executes and runs 999999999 loops, which results
    in blocking code. If you run this locally, this is where the pause
    happens.
3.  Finally, “the Event Loop” is logged.

Now let’s take a look at the non-blocking example. There are functions
like `setTimeout()` that work differently thanks to the Event Loop. Run
the code:

``` js
console.log("I’m learning about");
setTimeout(() => { console.log("Event Loop");}, 2000);
console.log("the");
```

In this case, the code snippet uses the `setTimeout()` function to
demonstrate how JavaScript can be non-blocking with use of the event
loop. Here’s what happens:

1.  A statement is logged.
2.  The `setTimeout()` function is executed.
3.  A third line of code executes and logs text: “the”.
4.  Finally, the `setTimeout()` function timer completes and additional
    text is logged: “Event Loop”.

In this case, JavaScript is still single-threaded, but the event loop is
enabling something called concurrency.

### Concurrency in JavaScript

Usually when we think about *concurrency* in programming, it means that
two or more procedures are executed at the same time on the same shared
resources. Since JavaScript is single-threaded, as we saw in the `for`
loop example, we’ll never have that flavor of “true” concurrency.
However, we can emulate concurrency using the event loop.

### What Is the Event Loop?

At a high level, the event loop is a system for managing code execution.
In the diagram, you can see an overview of how the parts that make up
the event loop fit together.

We have data structures that we call the heap and the call stack, which
are part of the JavaScript engine. The heap and call stack interact with
Node and Web APIs, which pass messages back to the stack via an event
queue. The event queue’s interaction with the call stack is managed by
an event loop. All together, those parts maintain the order of code
execution when we run asynchronous functions. Don’t worry about
understanding what those terms mean yet–we’ll dive into them shortly.

<a
href="https://static-assets.codecademy.com/Courses/Learn-JavaScript/Event-Loop-and-Concurrency/JavaScript-Engine-Diagram.png"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><img
src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/Event-Loop-and-Concurrency/JavaScript-Engine-Diagram.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Diagram of pieces that make up the browser runtime and JavaScript engine. A heap and stack are parts of the JavaScript runtime, and web APIs, the event queue, and the event loop all come together to process code asynchronously." /></a>

*Note: You can click on the image to enlarge it.*

## Understand the Components of the Event Loop

The *event loop* is made up of these parts:

- Memory Heap
- Call Stack
- Event Queue
- Event Loop
- Node or Web APIs

Let’s take a closer look at each part before we put it all together.

#### The Heap

The *heap* is a block of memory where we store objects in an unordered
manner. JavaScript variables and objects that are currently in use are
stored in the heap.

#### The Call Stack

The *stack*, or *call stack*, tracks what function is currently being
run in your code.

When you invoke a function, a *frame* is added to the stack. Frames
connect that function’s arguments and local variables from the heap.
Frames enter the stack in a *last in, first out* (LIFO) order. In the
code snippet below, a series of nested functions are declared, then
`foo()` is called and logged.

``` js
function foo() {
 return function bar() {
   return function baz() {
     return 'I love CodeCademy'
   }
 }
}
console.log(foo()()());
```

The function executing at any given point in time is at the top of the
stack. In our example code, since we have nested functions, they will
all be added to the stack until the innermost function has been
executed. When the function finishes executing e.g. returns, its frame
is removed from the stack. When we execute `console.log(foo()()())`,
we’d see the stack build as follows:

<iframe src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/Event-Loop-and-Concurrency/call-stack-applet/call-stack.html" width="100%" height="700px" class="iframe__rk2yNYIwJeUOj5J8cQJ9-">
</iframe>

You might have noticed that `global()` is at the bottom of the
stack–when you first initiate a program, the *global execution context*
is added to the call stack, which contains the global variable and
lexical environment. Each subsequent frame for a called function has a
function execution context that includes the function’s lexical and
variable environment.

So when we say the call stack tracks what function is currently being
run in our code, what we are tracking is the current execution context.
When a function runs to completion, it is popped off of the call stack.
The memory, or the frame, is cleared.

### The Event Queue

The *event queue* is a list of messages corresponding to functions that
are waiting to be processed. In the diagram, these messages are entering
the event queue from sources such as various web APIs or async functions
that were called and are returning additional events to be handled by
the stack. Messages enter the queue in a first in, first out (FIFO)
order. No code is executed in the event queue; instead, it holds
functions that are waiting to be added back into the stack.

### The Event Loop

This event loop is a specific part of our overall event loop concept.
Messages that are waiting in the event queue to be added back into the
stack are added back via the event loop. When the call stack is empty,
if there is anything in the event queue, the event loop can add those
one at a time to the stack for execution.

1.  First the event loop will poll the stack to see if it is empty.
2.  It will add the first waiting message.
3.  It will repeat steps 1 and 2 until the stack has cleared.

## The Event Loop in Action

Now that we know all of the pieces of the event loop, let’s walk through
some code to understand the event loop in action.

``` js
console.log("This is the first line of code in app.js.");
 
function usingsetTimeout() {
    console.log("I'm going to be queued in the Event Loop.");
}
setTimeout(usingsetTimeout, 3000);
 
console.log("This is the last line of code in app.js.");
```

1.  `console.log("This is the first line of code in app.js.");` is added
    to the stack, executes, then pops off of the stack.
2.  `setTimeout()` is added to the stack.
3.  `setTimeout()`’s callback is passed to be executed by a web API. The
    timer will run for 3 seconds. After 3 seconds elapse, the callback
    function, `usingsetTimeout()` is pushed to the Event Queue.
4.  The Event Loop, meanwhile, will check periodically if the stack is
    cleared to handle any messages in the Event Queue.
5.  `console.log("This is the last line of code in app.js.");` is added
    to the stack, executes, then pops off of the stack.
6.  The stack is now empty, so the event loop pushes `usingsetTimeout`
    onto the stack.
7.  `console.log("I'm going to be queued in the Event Loop.");` is added
    to the stack, executes, gets popped
8.  `usingsetTimeout` pops off of the stack.

## Summary

Thanks to the event loop, JavaScript is a single-threaded, event-driven
language that can run non-blocking code asynchronously. The Event Loop
can be summarized as: when code is executed, it is handled by the heap
and call stack, which interact with Node and Web APIs. Those APIs enable
concurrency and pass asynchronous messages back to the stack via an
event queue. The event queue’s interaction with the call stack is
managed by an event loop. All together, those parts maintain the order
of code execution when we run asynchronous functions.

### How is concurrency in JavaScript different from other programming

languages?

Usually when we think about concurrency in programming, it means that
two or more procedures are executed at the same time on the same shared
resources (e.g. threads, processes, CPU cores). JavaScript is
single-threaded and can’t run that way, but we can emulate concurrency
with the event loop. Code will always execute synchronously, but
asynchronous code can be pushed to web APIs and directed back into the
stack via the event queue and event loop.

### Describe what role the heap and the stack play in the event loop.

The heap and stack are the parts maintained by the JavaScript engine
that run synchronously. The heap is a block of memory where we store
objects or pointers to variables. JavaScript variables and objects that
are currently in use are stored in the heap. The stack, or call stack,
tracks what function is currently being run in your code.

### Describe in regard to the event loop what is happening when this code

executes:

``` js
const shopForBeans = () => {
  return new Promise((resolve, reject) => {
    const beanTypes = ['kidney', 'fava', 'pinto', 'black', 'garbanzo'];
    setTimeout(() => {
      let randomIndex = Math.floor(Math.random() * beanTypes.length);
      let beanType = beanTypes[randomIndex];
      console.log(`2. I bought ${beanType} beans because they were on sale.`);
      resolve(beanType);
    }, 1000);
  });
}
 
async function getBeans() {
  console.log(`1. Heading to the store to buy beans...`);
  let value = await shopForBeans();
  console.log(`3. Great! I'm making ${value} beans for dinner tonight!`);
}
 
getBeans();
console.log("Describe what happens with this `console.log()` statement as well.");
```

The code will execute and log text in this order:

1.  Heading to the store to buy beans…
2.  I bought fava beans because they were on sale.
3.  Great! I’m making fava beans for dinner tonight!

When the function `getBeans()` is called, `getBeans()` is added to the
stack. The first `console.log()` statement is added to the stack,
executes, and is popped off the stack. Next, the async function
`shopForBeans()` is called and the return value is assigned to the
variable `value`.

The response will be handled by the event queue and event loop and
pushed back into the stack when it is cleared. The final log statement
will then be added to the stack, log the argument, and pop off the
stack.

The stack will be clear afterward, so the response event in the event
queue will get added back to the stack and executed. The final two
`console.log()` statements will then be added to the stack and popped
off after logging their arguments.

# JavaScript Promises

## Introduction

In web development, asynchronous programming is notorious for being a
challenging topic.

An *asynchronous operation* is one that allows the computer to “move on”
to other tasks while waiting for the asynchronous operation to complete.
Asynchronous programming means that time-consuming operations don’t have
to bring everything else in our programs to a halt.

There are countless examples of asynchronicity in our everyday lives.
Cleaning our house, for example, involves asynchronous operations such
as a dishwasher washing our dishes or a washing machine washing our
clothes. While we wait on the completion of those operations, we’re free
to do other chores.

Similarly, web development makes use of asynchronous operations.
Operations like making a network request or querying a database can be
time-consuming, but JavaScript allows us to execute other tasks while
awaiting their completion.

This lesson will teach you how modern JavaScript handles asynchronicity
using the `Promise` object, introduced with ES6. Let’s get started!

### Solution

<img src="https://content.codecademy.com/courses/learn-javascript-promises/Art-354_Promise.svg" alt="a person cleaning their kitchen with a cute dog underfoot" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## What is a Promise?

Promises are objects that represent the eventual outcome of an
asynchronous operation. A `Promise` object can be in one of three
states:

- **Pending**: The initial state— the operation has not completed yet.
- **Fulfilled**: The operation has completed successfully and the
  promise now has a *resolved value*. For example, a request’s promise
  might resolve with a JSON object as its value.
- **Rejected**: The operation has failed and the promise has a reason
  for the failure. This reason is usually an `Error` of some kind.

We refer to a promise as *settled* if it is no longer pending— it is
either fulfilled or rejected. Let’s think of a dishwasher as having the
states of a promise:

- **Pending**: The dishwasher is running but has not completed the
  washing cycle.
- **Fulfilled**: The dishwasher has completed the washing cycle and is
  full of clean dishes.
- **Rejected**: The dishwasher encountered a problem (it didn’t receive
  soap!) and returns unclean dishes.

If our dishwashing promise is fulfilled, we’ll be able to perform
related tasks, such as unloading the clean dishes from the dishwasher.
If it’s rejected, we can take alternate steps, such as running it again
with soap or washing the dishes by hand.

All promises eventually settle, enabling us to write logic for what to
do if the promise fulfills or if it rejects.

### Instructions

Observe the diagram on the right. Here, we illustrate the different
possible states of a dishwashing promise.

### Solution

<img src="https://content.codecademy.com/courses/learn-javascript-promises/Art-346-01.svg" alt="diagram of a running dishwasher and its possible outcomes " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Constructing a Promise Object

Let’s construct a promise! To create a new `Promise` object, we use the
`new` keyword and the `Promise` constructor method:

``` js
const executorFunction = (resolve, reject) => { };
const myFirstPromise = new Promise(executorFunction);
```

The `Promise` constructor method takes a function parameter called the
*executor function* which runs automatically when the constructor is
called. The executor function generally starts an asynchronous operation
and dictates how the promise should be settled.

The executor function has two function parameters, usually referred to
as the `resolve()` and `reject()` functions. The `resolve()` and
`reject()` functions aren’t defined by the programmer. When the
`Promise` constructor runs, JavaScript will pass **its own** `resolve()`
and `reject()` functions into the executor function.

- `resolve` is a function with one argument. Under the hood, if invoked,
  `resolve()` will change the promise’s status from `pending` to
  `fulfilled`, and the promise’s resolved value will be set to the
  argument passed into `resolve()`.
- `reject` is a function that takes a reason or error as an argument.
  Under the hood, if invoked, `reject()` will change the promise’s
  status from `pending` to `rejected`, and the promise’s rejection
  reason will be set to the argument passed into `reject()`.

Let’s look at an example executor function in a `Promise` constructor:

``` js
const executorFunction = (resolve, reject) => {
  if (someCondition) {
      resolve('I resolved!');
  } else {
      reject('I rejected!'); 
  }
}
const myFirstPromise = new Promise(executorFunction);
```

Let’s break down what’s happening above:

- We declare a variable `myFirstPromise`
- `myFirstPromise` is constructed using `new Promise()` which is the
  `Promise` constructor method.
- `executorFunction()` is passed to the constructor and has two
  functions as parameters: `resolve` and `reject`.
- If `someCondition` evaluates to `true`, we invoke `resolve()` with the
  string `'I resolved!'`
- If not, we invoke `reject()` with the string `'I rejected!'`

In our example, `myFirstPromise` resolves or rejects based on a simple
condition, but, in practice, promises settle based on the results of
asynchronous operations. For example, a database request may fulfill
with the data from a query or reject with an error thrown. In this
exercise, we’ll construct promises which resolve synchronously to more
easily understand how they work.

### Instructions

**1.**

You’ll be writing your code in the code-editor, but we won’t be running
it until the final step. To check your code for a step, you can press
the “Check Work” button.

We’re going to create a promise representing ordering sunglasses from an
online store. First, create the function, `myExecutor()`. Later on,
you’ll pass this function into the `Promise` constructor.

`myExecutor()` should:

- Have two parameters: `resolve` and `reject`
- Check if the `sunglasses` property on the `inventory` object has a
  value greater than zero
- If it does, `myExecutor()` should invoke `resolve()` with the string
  `'Sunglasses order processed.'`
- If it does not, `myExecutor()` should invoke `reject()` with the
  string `'That item is sold out.'`

When you’re ready, press the “Check Work” button.

**2.**

Create a function, `orderSunglasses()`. This function should have no
parameters. It should return a new promise constructed by passing your
`myExecutor()` function into the `Promise` constructor.

**3.**

Create a variable `orderPromise` assigned to the returned value of your
`orderSunglasses()` function.

**4.**

At the bottom of your **app.js** file, log `orderPromise` to the
console.

**5.**

In this exercise and throughout the lesson, we’ll provide you with a
bash terminal to execute your code. To run the **app.js** program,
you’ll type `node app.js` in the terminal and hit
<span class="kbd">enter</span> (or <span class="kbd">return</span>).
You’ll be able to see the output of the program in the terminal.

Let’s try it! Type `node app.js` in the terminal and hit
<span class="kbd">enter</span>.

If you’d like, you can see an alternate output by changing the
`sunglasses` property in the `inventory` object to `0` and executing
`app.js` from the terminal again.

When you’re ready to move on, press the “Check Work” button.

### Solution

``` javascript
const inventory = {
  sunglasses: 1900,
  pants: 1088,
  bags: 1344
};

// Write your code below:
const myExecutor = (resolve, reject) => {
    if (inventory.sunglasses > 0) {
        resolve('Sunglasses order processed.');
    } else {
        reject('That item is sold out.');
    }
};

const orderSunglasses = () => {
    return new Promise(myExecutor);
};

const orderPromise = orderSunglasses();

console.log(orderPromise);                      
```

## The Node setTimeout() Function

Knowing how to construct a promise is useful, but most of the time,
knowing how to *consume*, or use, promises will be key. Rather than
constructing promises, you’ll be handling `Promise` objects returned to
you as the result of an asynchronous operation. These promises will
start off pending but settle eventually.

Moving forward, we’ll be simulating this by providing you with functions
that return promises which settle after some time. To accomplish this,
we’ll be using `setTimeout()`. `setTimeout()` is a Node API (a
comparable API is provided by web browsers) that uses callback functions
to schedule tasks to be performed after a delay. `setTimeout()` has two
parameters: a callback function and a delay in milliseconds.

``` js
const delayedHello = () => {
  console.log('Hi! This is an asynchronous greeting!');
};
 
setTimeout(delayedHello, 2000);
```

Here, we invoke `setTimeout()` with the callback function
`delayedHello()` and `2000`. In at least two seconds `delayedHello()`
will be invoked. But why is it “at least” two seconds and not exactly
two seconds?

This delay is performed asynchronously—the rest of our program won’t
stop executing during the delay. Asynchronous JavaScript uses something
called *the event-loop*. After two seconds, `delayedHello()` is added to
a line of code waiting to be run. Before it can run, any synchronous
code from the program will run. Next, any code in front of it in the
line will run. This means it might be more than two seconds before
`delayedHello()` is actually executed.

Let’s look at how we’ll be using `setTimeout()` to construct
asynchronous promises:

``` js
const returnPromiseFunction = () => {
  return new Promise((resolve, reject) => {
    setTimeout(( ) => {resolve('I resolved!')}, 1000);
  });
};
 
const prom = returnPromiseFunction();
```

In the example code, we invoked `returnPromiseFunction()` which returned
a promise. We assigned that promise to the variable `prom`. Similar to
the asynchronous promises you may encounter in production, `prom` will
initially have a status of pending.

Let’s explore `setTimeout()` a bit more.

### Instructions

**1.**

Create a function, `usingSTO()`. Your `usingSTO()` function should have
no parameters. Inside the function body, it should print a string to the
console. This can be any string you want (as long as it’s not either
“This is the first line of synchronous code.” or “This is the last line
of synchronous code.”).

Check your work to move on to the next step.

**2.**

Now, let’s invoke the `setTimeout()` function. Remember, `setTimeout()`
has two parameters. Invoke `setTimeout()` with your `usingSTO()`
function as the first argument and a number between `0` and `3000` as
the second argument.

**3.**

Take a moment to predict the output of this program.

Whenever you’re ready, type `node app.js` in the terminal and hit
<span class="kbd">enter</span>.

See if the program’s output in the terminal lines up with what you
expected.

Be sure to click “Check Work” after running the command to pass this
checkpoint and move on to the next exercise.

### Solution

``` javascript
console.log("This is the first line of code in app.js.");
// Keep the line above as the first line of code
// Write your code here:


const usingSTO = () => {
  console.log("This line of code will log to the console last.");
};

setTimeout(usingSTO, 100);




// Keep the line below as the last line of code:
console.log("This is the last line of code in app.js.");
```

## Consuming Promises

The initial state of an asynchronous promise is `pending`, but we have a
guarantee that it will settle. How do we tell the computer what should
happen then? Promise objects come with an aptly named `.then()` method.
It allows us to say, “I have a promise, when it settles, **then** here’s
what I want to happen…”

In the case of our dishwasher promise, the dishwasher will run **then**:

- If our promise rejects, this means we have dirty dishes, and we’ll add
  soap and run the dishwasher again.
- If our promise fulfills, this means we have clean dishes, and we’ll
  put the dishes away.

`.then()` is a higher-order function— it takes two callback functions as
arguments. We refer to these callbacks as *handlers*. When the promise
settles, the appropriate handler will be invoked with that settled
value.

- The first handler, sometimes called `onFulfilled`, is a *success
  handler*, and it should contain the logic for the promise resolving.
- The second handler, sometimes called `onRejected`, is a *failure
  handler*, and it should contain the logic for the promise rejecting.

We can invoke `.then()` with one, both, or neither handler! This allows
for flexibility, but it can also make for tricky debugging. If the
appropriate handler is not provided, instead of throwing an error,
`.then()` will just return a promise with the same settled value as the
promise it was called on. One important feature of `.then()` is that it
always returns a promise. We’ll return to this in more detail in a later
exercise and explore why it’s so important.

### Solution

<img src="https://content.codecademy.com/courses/updated_images/Art-347_v1_Updated_1-01.svg" alt="diagram of a dishwashers promise." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Success and Failure Callback Functions

To handle a “successful” promise, or a promise that resolved, we invoke
`.then()` on the promise, passing in a success handler callback
function:

``` js
const prom = new Promise((resolve, reject) => {
  resolve('Yay!');
});
 
const handleSuccess = (resolvedValue) => {
  console.log(resolvedValue);
};
 
prom.then(handleSuccess); // Prints: 'Yay!'
```

Let’s break down what’s happening in the example code:

- `prom` is a promise which will resolve to `'Yay!'`.
- We define a function, `handleSuccess()`, which prints the argument
  passed to it.
- We invoke `prom`’s `.then()` function passing in our `handleSuccess()`
  function.
- Since `prom` resolves, `handleSuccess()` is invoked with `prom`’s
  resolved value, `'Yay'`, so `'Yay'` is logged to the console.

With typical promise consumption, we won’t know whether a promise will
resolve or reject, so we’ll need to provide the logic for either case.
We can pass both a success callback and a failure callback to `.then()`.

``` js
let prom = new Promise((resolve, reject) => {
  let num = Math.random();
  if (num < .5 ){
    resolve('Yay!');
  } else {
    reject('Ohhh noooo!');
  }
});
 
const handleSuccess = (resolvedValue) => {
  console.log(resolvedValue);
};
 
const handleFailure = (rejectionReason) => {
  console.log(rejectionReason);
};
 
prom.then(handleSuccess, handleFailure);
```

Let’s break down what’s happening in the example code:

- `prom` is a promise which will randomly either resolve with `'Yay!'`
  or reject with `'Ohhh noooo!'`.
- We pass two handler functions to `.then()`. The first will be invoked
  with `'Yay!'` if the promise resolves, and the second will be invoked
  with `'Ohhh noooo!'` if the promise rejects.

> Note: The success callback is sometimes called the “success handler
> function” or the `onFulfilled` function. The failure callback is
> sometimes called the “failure handler function” or the `onRejected`
> function.

Let’s write some success and failure callbacks!

### Instructions

**1.**

Take a look at the provided code in **app.js**. We use `require()` to
include the function `checkInventory()` from **library.js**. It builds
on the logic of the `orderSunglasses()` function you wrote in a previous
exercise.

- `checkInventory()` takes in an array representing an order and returns
  a promise.
- If every item in the order is in stock, that promise resolves with the
  value `"Thank you. Your order was successful."`
- Otherwise, the promise rejects with the value
  `"We're sorry. Your order could not be completed because some items are sold out"`.

We used `setTimeout()` to ensure that the `checkInventory()` promise
settles asynchronously.

If you’d like, look at the **library.js** file to see how it works.
Press “Check Work” when you’re ready to move on.

**2.**

Write a function, `handleSuccess()`. You’ll use this function later on
as your success handler. `handleSuccess()` should have one parameter,
representing a resolved value. Inside the body of `handleSuccess()`, log
the parameter to the console.

**3.**

Write a function, `handleFailure()`. You’ll use this function later on
as your failure handler. `handleFailure()` should have one parameter,
representing a rejection reason. Inside the body of `handleFailure()`,
log the parameter to the console.

**4.**

Invoke `checkInventory()` with `order`. This will return a promise.
Attach a `.then()` function to this. Pass into `.then()` the two
handlers you wrote as callback functions.

**5.**

Type `node app.js` in the terminal and hit
<span class="kbd">enter</span>.

### Solution

``` javascript
const {checkInventory} = require('./library.js');

const order = [['sunglasses', 1], ['bags', 2]];

// Write your code below:
const handleSuccess = (resolvedValue) => {
  console.log(resolvedValue);
};

const handleFailure = (rejectReason) => {
  console.log(rejectReason);
};

checkInventory(order)
  .then(handleSuccess, handleFailure);
```

## Using catch() with Promises

One way to write cleaner code is to follow a principle called
*separation of concerns*. Separation of concerns means organizing code
into distinct sections each handling a specific task. It enables us to
quickly navigate our code and know where to look if something isn’t
working.

Remember, `.then()` will return a promise with the same settled value as
the promise it was called on if no appropriate handler was provided.
This implementation allows us to separate our resolved logic from our
rejected logic. Instead of passing both handlers into one `.then()`, we
can chain a second `.then()` with a failure handler to a first `.then()`
with a success handler and both cases will be handled.

``` js
prom
  .then((resolvedValue) => {
    console.log(resolvedValue);
  })
  .then(null, (rejectionReason) => {
    console.log(rejectionReason);
  });
```

Since JavaScript doesn’t mind whitespace, we follow a common convention
of putting each part of this chain on a new line to make it easier to
read. To create even more readable code, we can use a different promise
function: `.catch()`.

The `.catch()` function takes only one argument, `onRejected`. In the
case of a rejected promise, this failure handler will be invoked with
the reason for rejection. Using `.catch()` accomplishes the same thing
as using a `.then()` with only a failure handler.

Let’s look at an example using `.catch()`:

``` js
prom
  .then((resolvedValue) => {
    console.log(resolvedValue);
  })
  .catch((rejectionReason) => {
    console.log(rejectionReason);
  });
```

Let’s break down what’s happening in the example code:

- `prom` is a promise which randomly either resolves with `'Yay!'` or
  rejects with `'Ohhh noooo!'`.
- We pass a success handler to `.then()` and a failure handler to
  `.catch()`.
- If the promise resolves, `.then()`’s success handler will be invoked
  with `'Yay!'`.
- If the promise rejects, `.then()` will return a promise with the same
  rejection reason as the original promise and `.catch()`’s failure
  handler will be invoked with that rejection reason.

Let’s practice writing `.catch()` functions.

### Instructions

**1.**

We’re going to refactor the functionality of the previous exercise but
this time we’ll use `.catch()`! First invoke the `checkInventory()`
function with the `order`. Remember, this function will return a
promise.

**2.**

Add a `.then()` to the returned promise. Pass in the success handler
`handleSuccess()`.

**3.**

Add a `.catch()` to the returned promise. Pass in the failure handler
`handleFailure()`.

**4.**

We set our inventory of sunglasses to `0`, so the order shouldn’t go
through. Let’s make sure our code has the expected results. Type
`node app.js` in the terminal and hit <span class="kbd">enter</span>.

### Solution

``` javascript
const {checkInventory} = require('./library.js');

const order = [['sunglasses', 1], ['bags', 2]];

const handleSuccess = (resolvedValue) => {
  console.log(resolvedValue);
};

const handleFailure = (rejectReason) => {
  console.log(rejectReason);
};

// Write your code below:
checkInventory(order)
    .then(handleSuccess)
    .catch(handleFailure);
```

## Chaining Multiple Promises

One common pattern we’ll see with asynchronous programming is multiple
operations which depend on each other to execute or that must be
executed in a certain order. We might make one request to a database and
use the data returned to us to make another request and so on! Let’s
illustrate this with another cleaning example, washing clothes:

We take our dirty clothes and put them in the washing machine. If the
clothes are cleaned, **then** we’ll want to put them in the dryer. After
the dryer runs, if the clothes are dry, **then** we can fold them and
put them away.

This process of chaining promises together is called *composition*.
Promises are designed with composition in mind! Here’s a simple promise
chain in code:

``` js
firstPromiseFunction()
.then((firstResolveVal) => {
  return secondPromiseFunction(firstResolveVal);
})
.then((secondResolveVal) => {
  console.log(secondResolveVal);
});
```

Let’s break down what’s happening in the example:

- We invoke a function `firstPromiseFunction()` which returns a promise.
- We invoke `.then()` with an anonymous function as the success handler.
- Inside the success handler we **return** a new promise— the result of
  invoking a second function, `secondPromiseFunction()` with the first
  promise’s resolved value.
- We invoke a second `.then()` to handle the logic for the second
  promise settling.
- Inside that `.then()`, we have a success handler which will log the
  second promise’s resolved value to the console.

In order for our chain to work properly, we had to `return` the promise
`secondPromiseFunction(firstResolveVal)`. This ensured that the return
value of the first `.then()` was our second promise rather than the
default return of a new promise with the same settled value as the
initial.

Let’s write some promise chains!

### Instructions

**1.**

Take a look at the provided code. We require in three functions:
`checkInventory()`, `processPayment()`, `shipOrder()`. These functions
each return a promise.

`checkInventory()` expects an `order` argument and returns a promise. If
there are enough items in stock to fill the order, the promise will
resolve to an array. The first element in the resolved value array will
be the same `order` and the second element will be the total cost of the
order as a number.

`processPayment()` expects an array argument with the `order` as the
first element and the purchase total as the second. This function
returns a promise. If there is a large enough balance on the giftcard
associated with the order, it will resolve to an array. The first
element in the resolved value array will be the same `order` and the
second element will be a tracking number.

`shipOrder()` expects an array argument with the `order` as the first
element and a tracking number as the second. It returns a promise which
resolves to a string confirming the order has shipped.

If you’d like, look at the **library.js** file to see how these
functions work. Press “Check Work” when you’re ready to move on to the
next checkpoint.

**2.**

We set up a promise chain but it’s missing a couple important lines of
code to make it function properly.

We invoked `checkInventory()` with `order` and chained a `.then()`
function to it. This `.then()` has an anonymous function as its success
handler, but it’s missing a `return` statement.

The success handler should return a `processPayment()` promise.

**3.**

We have a second `.then()` function on the chain. This `.then()` also
has an anonymous function as its success handler and is missing a
`return` statement.

The success handler should return a `shipOrder()` promise.

**4.**

Type `node app.js` in the terminal and hit
<span class="kbd">enter</span>.

### Solution

``` javascript
const {checkInventory, processPayment, shipOrder} = require('./library.js');

const order = {
  items: [['sunglasses', 1], ['bags', 2]],
  giftcardBalance: 79.82
};

checkInventory(order)
.then((resolvedValueArray) => {
  // Write the correct return statement here:
 return processPayment(resolvedValueArray);
})
.then((resolvedValueArray) => {
  // Write the correct return statement here:
  return shipOrder(resolvedValueArray);
})
.then((successMessage) => {
  console.log(successMessage);
})
.catch((errorMessage) => {
  console.log(errorMessage);
});
```

## Avoiding Common Mistakes

Promise composition allows for much more readable code than the nested
callback syntax that preceded it. However, it can still be easy to make
mistakes. In this exercise, we’ll go over two common mistakes with
promise composition.

**Mistake 1:** Nesting promises instead of chaining them.

``` js
returnsFirstPromise()
.then((firstResolveVal) => {
  return returnsSecondValue(firstResolveVal)
    .then((secondResolveVal) => {
      console.log(secondResolveVal);
    })
})
```

Let’s break down what’s happening in the above code:

- We invoke `returnsFirstPromise()` which returns a promise.
- We invoke `.then()` with a success handler.
- Inside the success handler, we invoke `returnsSecondValue()` with
  `firstResolveVal` which will return a new promise.
- We invoke a second `.then()` to handle the logic for the second
  promise settling all **inside** the first `then()`!
- Inside that second `.then()`, we have a success handler which will log
  the second promise’s resolved value to the console.

Instead of having a clean chain of promises, we’ve nested the logic for
one inside the logic of the other. Imagine if we were handling five or
ten promises!

**Mistake 2:** Forgetting to `return` a promise.

``` js
returnsFirstPromise()
.then((firstResolveVal) => {
  returnsSecondValue(firstResolveVal)
})
.then((someVal) => {
  console.log(someVal);
})
```

Let’s break down what’s happening in the example:

- We invoke `returnsFirstPromise()` which returns a promise.
- We invoke `.then()` with a success handler.
- Inside the success handler, we create our second promise, but we
  forget to `return` it!
- We invoke a second `.then()`. It’s supposed to handle the logic for
  the second promise, but since we didn’t return, this `.then()` is
  invoked on a promise with the same settled value as the original
  promise!

Since forgetting to return our promise won’t throw an error, this can be
a really tricky thing to debug!

### Instructions

**1.**

The code in **app.js** works correctly, but it doesn’t follow best
practices.

Type `node app.js` in the terminal and hit
<span class="kbd">enter</span>, so you can see what the program outputs.

When you’re ready, press the “Check Work” button.

**2.**

Refactor, or rewrite, the code to avoid the two common mistakes: nesting
and forgetting to return properly.

**3.**

Type `node app.js` in the terminal and hit
<span class="kbd">enter</span> to make sure your program is still
working as expected.

When you are ready to move on, press the “Check Work” button.

### Solution

``` javascript
const {checkInventory, processPayment, shipOrder} = require('./library.js');

const order = {
  items: [['sunglasses', 1], ['bags', 2]],
  giftcardBalance: 79.82
};

// Refactor the code below:

checkInventory(order)
.then((resolvedValueArray) => {
  return processPayment(resolvedValueArray);
})
.then((resolvedValueArray) => {
  return shipOrder(resolvedValueArray);
})
.then((successMessage) => {
  console.log(successMessage);
});
```

## Using Promise.all()

When done correctly, promise composition is a great way to handle
situations where asynchronous operations depend on each other or
execution order matters. What if we’re dealing with multiple promises,
but we don’t care about the order? Let’s think in terms of cleaning
again.

For us to consider our house clean, we need our clothes to dry, our
trash bins emptied, and the dishwasher to run. We need **all** of these
tasks to complete but not in any particular order. Furthermore, since
they’re all getting done asynchronously, they should really all be
happening at the same time!

To maximize efficiency we should use *concurrency*, multiple
asynchronous operations happening together. With promises, we can do
this with the function `Promise.all()`.

`Promise.all()` accepts an array of promises as its argument and returns
a single promise. That single promise will settle in one of two ways:

- If every promise in the argument array resolves, the single promise
  returned from `Promise.all()` will resolve with an array containing
  the resolve value from each promise in the argument array.
- If any promise from the argument array rejects, the single promise
  returned from `Promise.all()` will immediately reject with the reason
  that promise rejected. This behavior is sometimes referred to as
  *failing fast*.

Let’s look at a code example:

``` js
let myPromises = Promise.all([returnsPromOne(), returnsPromTwo(), returnsPromThree()]);
 
myPromises
  .then((arrayOfValues) => {
    console.log(arrayOfValues);
  })
  .catch((rejectionReason) => {
    console.log(rejectionReason);
  });
```

Let’s break down what’s happening:

- We declare `myPromises` assigned to invoking `Promise.all()`.
- We invoke `Promise.all()` with an array of three promises— the
  returned values from functions.
- We invoke `.then()` with a success handler which will print the array
  of resolved values if each promise resolves successfully.
- We invoke `.catch()` with a failure handler which will print the first
  rejection message if any promise rejects.

### Instructions

**1.**

Our business is doing so well that we’re running low on inventory. We
want to reach out to some distributors to see if they have the items we
need. We only want to make one restocking order, so we’ll only want to
place the order if **all** of the items are available.

Take a look at the provided code. We require in one function:
`checkAvailability()`.

`checkAvailability()` expects two string arguments: an item and a
distributor. It returns a promise. The function simulates checking that
the given distributor has a given item. 80% of the time it will resolve
the promise with the item, and 20% of the time it will reject the
promise with an error message stating that the item isn’t available.

We also provided two functions which will serve as success and failure
handlers.

If you’d like, look at the **library.js** file to see how these
functions work. Press “Check Work” when you’re ready to move on to the
next checkpoint.

**2.**

Create three variables each assigned to a separate promise:

- `checkSunglasses` should be assigned the value returned from invoking
  `checkAvailability()` with `'sunglasses'` as its first argument and
  `'Favorite Supply Co.'` as its second argument.
- `checkPants` should be assigned the value returned from invoking
  `checkAvailability()` with `'pants'` as its first argument and
  `'Favorite Supply Co.'` as its second argument.
- `checkBags` should be assigned the value returned from invoking
  `checkAvailability()` with `'bags'` as its first argument and
  `'Favorite Supply Co.'` as its second argument.

**3.**

Invoke `Promise.all()` with an array containing `checkSunglasses`,
`checkPants`, and `checkBags`.

**4.**

Chain a `.then()` to the promise returned from `Promise.all()`. You
should pass in `onFulfill` to serve as the success handler.

**5.**

Add a `.catch()` to the chain. You should pass in `onReject` to serve as
the failure handler.

**6.**

Type `node app.js` in the terminal and hit
<span class="kbd">enter</span> to execute your program.

Be sure to click “Check Work” after the terminal is finished loading.

### Solution

``` javascript
const {checkAvailability} = require('./library.js');

const onFulfill = (itemsArray) => {
  console.log(`Items checked: ${itemsArray}`);
  console.log(`Every item was available from the distributor. Placing order now.`);
};

const onReject = (rejectionReason) => {
    console.log(rejectionReason);
};

// Write your code below:

const checkSunglasses = checkAvailability('sunglasses', 'Favorite Supply Co.');
const checkPants = checkAvailability('pants', 'Favorite Supply Co.'); 
const  checkBags = checkAvailability('bags', 'Favorite Supply Co.');

Promise.all([checkSunglasses, checkPants, checkBags])
  .then(onFulfill)
  .catch(onReject);
```

## Review

Awesome job! Promises are a difficult concept even for experienced
developers, so pat yourself on the back. You’ve learned a ton about
asynchronous JavaScript and promises. Let’s review:

- Promises are JavaScript objects that represent the eventual result of
  an asynchronous operation.
- Promises can be in one of three states: pending, resolved, or
  rejected.
- A promise is settled if it is either resolved or rejected.
- We construct a promise by using the `new` keyword and passing an
  executor function to the `Promise` constructor method.
- `setTimeout()` is a Node function which delays the execution of a
  callback function using the event-loop.
- We use `.then()` with a success handler callback containing the logic
  for what should happen if a promise resolves.
- We use `.catch()` with a failure handler callback containing the logic
  for what should happen if a promise rejects.
- Promise composition enables us to write complex, asynchronous code
  that’s still readable. We do this by chaining multiple `.then()`’s and
  `.catch()`’s.
- To use promise composition correctly, we have to remember to `return`
  promises constructed within a `.then()`.
- We should chain multiple promises rather than nesting them.
- To take advantage of concurrency, we can use `Promise.all()`.

# Async Await

## Introduction

Often in web development, we need to handle asynchronous actions—
actions we can wait on while moving on to other tasks. We make requests
to networks, databases, or any number of similar operations. JavaScript
is non-blocking: instead of stopping the execution of code while it
waits, JavaScript uses an <a href="https://youtu.be/8aGhZQkoFbQ"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">event-loop</a> which allows it to
efficiently execute other tasks while it awaits the completion of these
asynchronous actions.

Originally, JavaScript used callback functions to handle asynchronous
actions. The problem with callbacks is that they encourage complexly
nested code which quickly becomes difficult to read, debug, and scale.
With ES6, JavaScript integrated native <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">promises</a> which allow us to write
significantly more readable code. JavaScript is continually improving,
and <a
href="https://en.wikipedia.org/wiki/ECMAScript#8th_Edition_-_ECMAScript_2017"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">ES8</a> provides a new syntax for
handling our asynchronous action, *`async...await`*. The `async...await`
syntax allows us to write asynchronous code that reads similarly to
traditional synchronous, imperative programs.

The `async...await` syntax is
<a href="https://en.wikipedia.org/wiki/Syntactic_sugar"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">syntactic sugar</a>— it doesn’t introduce
new functionality into the language, but rather introduces a new syntax
for using promises and <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">generators</a>. Both of these were
already built in to the language. Despite this, `async...await`
powerfully improves the readability and scalability of our code. Let’s
learn how to use it!

### Instructions

**1.**

In this lesson, you’ll be given a code-editor to write your code and a
bash terminal to execute your code. To execute your program, you’ll type
`node app.js` in the terminal and hit <span class="kbd">enter</span> (or
<span class="kbd">return</span>). You’ll press the “Check Work” button
to submit your code for evaluation.

Check out the code we provided. It shows three ways of accomplishing the
same task: reading and printing from two files in a specified order:

- The first version uses callback functions.
- The second version uses native promise syntax
- The third version uses `async...await`.

Don’t worry about understanding the `async...await` syntax— that’s what
you’ll learn in this lesson! If you haven’t already, type `node app.js`
into the terminal and press <span class="kbd">enter</span>. Then, press
“Check Work”.

### Solution

``` javascript
const fs = require('fs');
const promisifiedReadfile = require('./promisifiedReadfile');
      
// Here we use fs.readfile() and callback functions:
fs.readFile('./file.txt', 'utf-8', (err, data) => {
  if (err) throw err;
  let firstSentence = data;
  fs.readFile('./file2.txt',  'utf-8', (err, data) => {
    if (err) throw err;
    let secondSentence = data;
    console.log(firstSentence, secondSentence);
  });
});

// Here we use native promises with our "promisified" version of readfile:
let firstSentence;
promisifiedReadfile('./file.txt', 'utf-8')
  .then((data) => {
    firstSentence = data;
    return promisifiedReadfile('./file2.txt', 'utf-8');
  })
  .then((data) => {
    let secondSentence = data;
    console.log(firstSentence, secondSentence)
  })
  .catch((err) => {console.log(err)});

// Here we use promisifiedReadfile() again but instead of using the native promise .then() syntax, we declare and invoke an async/await function:
async function readFiles() {
  let firstSentence = await promisifiedReadfile('./file.txt', 'utf-8');
  let secondSentence = await promisifiedReadfile('./file2.txt', 'utf-8');
  console.log(firstSentence, secondSentence);
}

readFiles();
```

## The async Keyword

The `async` keyword is used to write functions that handle asynchronous
actions. We wrap our asynchronous logic inside a function prepended with
the `async` keyword. Then, we invoke that function.

``` js
async function myFunc() {
  // Function body here
};
 
myFunc();
```

We’ll be using `async` function declarations throughout this lesson, but
we can also create `async` function expressions:

``` js
const myFunc = async () => {
  // Function body here
};
 
myFunc();
```

`async` functions always return a promise. This means we can use
traditional promise syntax, like `.then()` and `.catch` with our `async`
functions. An `async` function will return in one of three ways:

- If there’s nothing returned from the function, it will return a
  promise with a resolved value of `undefined`.
- If there’s a non-promise value returned from the function, it will
  return a promise resolved to that value.
- If a promise is returned from the function, it will simply return that
  promise

``` js
async function fivePromise() { 
  return 5;
}
 
fivePromise()
.then(resolvedValue => {
    console.log(resolvedValue);
  })  // Prints 5
```

In the example above, even though we return `5` inside the function
body, what’s actually returned when we invoke `fivePromise()` is a
promise with a resolved value of `5`.

Let’s write an `async` function!

### Instructions

**1.**

We provided a function `withConstructor()` which takes in a number. If
the number is `0`, it returns a promise that resolves to the string
`'zero'`. If the number is not `0`, it returns a promise that resolves
to the string `'not zero'`. Take a moment to understand this function
and the code that follows. When you’re ready to run it, type
`node app.js` in to the terminal and press
<span class="kbd">enter</span>.

**2.**

Write an `async` function, `withAsync()` which reproduces the
functionality of `withConstructor()`. Though your function will return a
promise, it should not construct the promise using the `new` keyword.
Instead, it should rely on the fact that an `async` function
automatically returns a promise.

When you’re ready, check your work to move on to the next step.

**3.**

Now test your code! Uncomment the test code we wrote at the bottom of
**app.js**. In the terminal, type `node app.js` and press
<span class="kbd">enter</span> to execute the code.

### Solution

``` javascript
function withConstructor(num){
  return new Promise((resolve, reject) => {
    if (num === 0){
      resolve('zero');
    } else {
      resolve('not zero');
    }
  });
}

withConstructor(0)
  .then((resolveValue) => {
  console.log(` withConstructor(0) returned a promise which resolved to: ${resolveValue}.`);
});

// Write your code below:
async function withAsync(num){
  if (num === 0){
      return 'zero';
    } else {
      return 'not zero';
    }
}

withAsync(100)
  .then((resolveValue) => {
  console.log(` withAsync(100) returned a promise which resolved to: ${resolveValue}.`);
});
```

## The await Operator

In the last exercise, we covered the `async` keyword. By itself, it
doesn’t do much; `async` functions are almost always used with the
additional keyword `await` inside the function body.

The `await` keyword can only be used inside an `async` function. `await`
is an operator: it returns the resolved value of a promise. Since
promises resolve in an indeterminate amount of time, `await` halts, or
pauses, the execution of our `async` function until a given promise is
resolved.

In most situations, we’re dealing with promises that were returned from
functions. Generally, these functions are through a library, and, in
this lesson, we’ll be providing them. We can `await` the resolution of
the promise it returns inside an `async` function. In the example below,
`myPromise()` is a function that returns a promise which will resolve to
the string `"I am resolved now!"`.

``` js
async function asyncFuncExample(){
  let resolvedValue = await myPromise();
  console.log(resolvedValue);
}
 
asyncFuncExample(); // Prints: I am resolved now!
```

Within our `async` function, `asyncFuncExample()`, we use `await` to
halt our execution until `myPromise()` is resolved and assign its
resolved value to the variable `resolvedValue`. Then we log
`resolvedValue` to the console. We’re able to handle the logic for a
promise in a way that reads like synchronous code.

### Instructions

**1.**

In the provided code, we’ve required in the function
`brainstormDinner()`. This function expects no arguments and returns a
new promise with a resolved value of a string representing a meal. (You
can look at the code for this function by navigating to the
**library.js** file.)

Look at the `nativePromiseDinner()` function in **app.js**. Take a
moment to understand this function and predict its expected outcome. In
the next step, you’ll be recreating its functionality using
`async...await` rather than native promises.

It’s not necessary to execute the `nativePromiseDinner()` function, but,
if you’d like to, check out the hint for some guidance. Press “Check
Work” when you’re ready to move on to the next step.

**2.**

Fill in the body of the `announceDinner()` function so that it has the
same functionality as `nativePromiseDinner()`. It should wait for the
promise returned from `brainstormDinner()` to resolve, and then log a
string to the console in the same format as did `nativePromiseDinner()`.
You’ll need to use the `await` operator inside your function.

When you’re ready, check your work to move on to the next step.

**3.**

At the bottom of **app.js**, beneath the function declaration, invoke
the `announceDinner()` function.

**4.**

In the terminal type `node app.js` and press
<span class="kbd">enter</span> to execute your code.

### Solution

``` javascript
const brainstormDinner = require('./library.js');


// Native promise version:
function nativePromiseDinner() {
  brainstormDinner().then((meal) => {
      console.log(`I'm going to make ${meal} for dinner.`);
  });
}


// async/await version:
async function announceDinner() {
  // Write your code below:
  let meal = await brainstormDinner();
  console.log(`I'm going to make ${meal} for dinner.`);
}

announceDinner();
```

## Writing async Functions

We’ve seen that the `await` keyword halts the execution of an `async`
function until a promise is no longer pending. Don’t forget the `await`
keyword! It may seem obvious, but this can be a tricky mistake to catch
because our function will still run— it just won’t have the desired
results.

We’re going to explore this using the following function, which returns
a promise that resolves to `'Yay, I resolved!'` after a 1 second delay:

``` js
let myPromise = () => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve('Yay, I resolved!')
    }, 1000);
  });
}
```

Now we’ll write two `async` functions which invoke `myPromise()`:

``` js
async function noAwait() {
 let value = myPromise();
 console.log(value);
}
 
async function yesAwait() {
 let value = await myPromise();
 console.log(value);
}
 
noAwait(); // Prints: Promise { <pending> }
yesAwait(); // Prints: Yay, I resolved!
```

In the first `async` function, `noAwait()`, we left off the `await`
keyword before `myPromise()`. In the second, `yesAwait()`, we included
it. The `noAwait()` function logs `Promise { <pending> }` to the
console. Without the `await` keyword, the function execution wasn’t
paused. The `console.log()` on the following line was executed before
the promise had resolved.

Remember that the `await` operator returns the resolved value of a
promise. When used properly in `yesAwait()`, the variable `value` was
assigned the resolved value of the `myPromise()` promise, whereas in
`noAwait()`, `value` was assigned the promise object itself.

### Instructions

**1.**

Take a look at the provided code. We required in the `shopForBeans()`
function from **library.js** which returns a promise with a resolved
value of a string representing a type of bean, eg. ‘kidney’.

Next, we declared the `getBeans()` function. Let’s summarize its
intended functionality:

- Log `'1. Heading to the store to buy beans...'` to the console.
- Capture the resolved value of the promise returned when we invoke
  `shopForBeans()`.
- The promise returned from `shopForBeans()` prints a string in the
  format
  `'2. I bought [the resolved type of beans] beans because they were on sale.'`
- Finally, the function prints a string in the format
  `'3. Great! I'm making [the bean type] beans for dinner tonight!'` to
  the console.

Execute **app.js** in the terminal to see if `getBeans()` is working as
intended.

**2.**

Uh oh, `getBeans()` is logging
`'3. Great! I'm making [object Promise] beans for dinner tonight!'` to
the console. Take a moment to understand why this is happening, and then
refactor `getBeans()` so it works as intended. Check your work when
you’re ready to move on to the next step.

**3.**

To test that the code is now functioning properly, execute **app.js** in
the terminal again.

### Solution

``` javascript
const shopForBeans = require('./library.js');

async function getBeans() {
  console.log(`1. Heading to the store to buy beans...`);
  let value = await shopForBeans();
  console.log(`3. Great! I'm making ${value} beans for dinner tonight!`);
}

getBeans();
```

## Handling Dependent Promises

The true beauty of `async...await` is when we have a series of
asynchronous actions which depend on one another. For example, we may
make a network request based on a query to a database. In that case, we
would need to wait to make the network request until we had the results
from the database. With native promise syntax, we use a chain of
`.then()` functions making sure to return correctly each one:

``` js
function nativePromiseVersion() {
  returnsFirstPromise()
    .then((firstValue) => {
      console.log(firstValue);
      return returnsSecondPromise(firstValue);
    })
   .then((secondValue) => {
      console.log(secondValue);
    });
}
```

Let’s break down what’s happening in the `nativePromiseVersion()`
function:

- Within our function we use two functions which return promises:
  `returnsFirstPromise()` and `returnsSecondPromise()`.
- We invoke `returnsFirstPromise()` and ensure that the first promise
  resolved by using `.then()`.
- In the callback of our first `.then()`, we log the resolved value of
  the first promise, `firstValue`, and then return
  `returnsSecondPromise(firstValue)`.
- We use another `.then()` to print the second promise’s resolved value
  to the console.

Here’s how we’d write an `async` function to accomplish the same thing:

``` js
async function asyncAwaitVersion() {
  let firstValue = await returnsFirstPromise();
  console.log(firstValue);
  let secondValue = await returnsSecondPromise(firstValue);
  console.log(secondValue);
}
```

Let’s break down what’s happening in our `asyncAwaitVersion()` function:

- We mark our function as `async`.
- Inside our function, we create a variable `firstValue` assigned
  `await returnsFirstPromise()`. This means `firstValue` is assigned the
  resolved value of the awaited promise.
- Next, we log `firstValue` to the console.
- Then, we create a variable `secondValue` assigned to
  `await returnsSecondPromise(firstValue)`. Therefore, `secondValue` is
  assigned this promise’s resolved value.
- Finally, we log `secondValue` to the console.

Though using the `async...await` syntax can save us some typing, the
length reduction isn’t the main point. Given the two versions of the
function, the `async...await` version more closely resembles synchronous
code, which helps developers maintain and debug their code. The
`async...await` syntax also makes it easy to store and refer to resolved
values from promises further back in our chain which is a much more
difficult task with native promise syntax. Let’s create some `async`
functions with multiple `await` statements!

### Instructions

**1.**

Take a look at the provided code. We require in three functions:
`shopForBeans()`, `soakTheBeans()`, and `cookTheBeans()`. These
functions each return a promise.

- `shopForBeans()` expects no arguments and returns a promise which will
  resolve to a string of a bean type.
- `soakTheBeans()` expects a bean type string as an argument and returns
  a promise which resolves to a boolean indicating whether or not the
  beans are softened.
- `cookTheBeans()` expects a boolean as an argument and, if that value
  is `true`, returns a promise which will resolve to a string announcing
  that dinner is ready.

If you’d like, look at the **library.js** file to see how these
functions work. Press “Check Work” to move on to the next step.

**2.**

In the following checkpoints, you’ll create an `async` function that
handles the three dependent promises we just walked through. It will
simulate shopping for, soaking, and then cooking the beans. To get
started, declare an `async` function, `makeBeans()`. You can leave the
function body blank for now.

Check your work to move on to the next step.

**3.**

Inside your function, declare a variable, `type`, assigned to the
resolved value of `shopForBeans()`. This must be accomplished in one
statement.

**4.**

Next inside your function, declare a variable, `isSoft`, assigned to the
resolved value of `soakTheBeans()`. Don’t forget: the `soakTheBeans()`
function expects an argument. Make sure to pass the expected value into
`soakTheBeans()`.

**5.**

Next inside your function, declare a variable, `dinner`, assigned to the
resolved of `cookTheBeans()`. Don’t forget: the `cookTheBeans()`
function also expects an argument. Make sure to pass the expected value
into `cookTheBeans()`.

**6.**

Next inside your function, log your `dinner` variable to the console.

**7.**

Beneath your function declaration, invoke the `makeBeans()` function.

**8.**

Let’s see your `async` function in action! In the terminal, type
`node app.js` and press <span class="kbd">enter</span> to execute the
code. (Press “Check Work” when complete to continue)

### Solution

``` javascript
const {shopForBeans, soakTheBeans, cookTheBeans} = require('./library.js');

// Write your code below:
async function makeBeans() {
  let type = await shopForBeans();
  let isSoft = await soakTheBeans(type);
  let dinner = await cookTheBeans(isSoft);
  console.log(dinner);
}

makeBeans();
```

## Handling Errors

When `.catch()` is used with a long promise chain, there is no
indication of where in the chain the error was thrown. This can make
debugging challenging.

With `async...await`, we use `try...catch` statements for error
handling. By using this syntax, not only are we able to handle errors in
the same way we do with synchronous code, but we can also catch both
synchronous and asynchronous errors. This makes for easier debugging!

``` js
async function usingTryCatch() {
 try {
   let resolveValue = await asyncFunction('thing that will fail');
   let secondValue = await secondAsyncFunction(resolveValue);
 } catch (err) {
   // Catches any errors in the try block
   console.log(err);
 }
}
 
usingTryCatch();
```

Remember, since `async` functions return promises we can still use
native promise’s `.catch()` with an `async` function

``` js
async function usingPromiseCatch() {
   let resolveValue = await asyncFunction('thing that will fail');
}
 
let rejectedPromise = usingPromiseCatch();
rejectedPromise.catch((rejectValue) => {
console.log(rejectValue);
})
```

This is sometimes used in the global scope to catch final errors in
complex code.

### Instructions

**1.**

For convenience, we’ve been working with a lot of promises that never
reject, but this isn’t very realistic!

This time we’ve required in a function, `cookBeanSouffle()` which
returns a promise that resolves or rejects randomly. When it resolves,
the promise resolves with a value of `'Bean Souffle'` and, when it
rejects, it rejects with a value of `'Dinner is ruined!'`. If you’re
interested, you can see how the function works by looking in the
**library.js** file.

Press “Check Work” when you’re ready to move on to the next step.

**2.**

Declare an `async` function, `hostDinnerParty()`. Inside your function,
create a `try...catch` statement. The `catch` statement should specify
an identifier, `error`. You can leave both the `try` and `catch` blocks
empty.

**3.**

Inside your `try` block, log a string in the following format:
`'[resolved value of cookBeanSouffle() promise] is served!'` ie.
`'Bean Souffle is served!'`. Make sure to `await` the
`cookBeanSouffle()` promise. For more guidance, check out the hint.

**4.**

Now let’s fill in the `catch` block! First log the error to the console,
and then log the string: `'Ordering a pizza!'` to the console.

**5.**

Awesome! Beneath your function declaration, invoke `hostDinnerParty()`.

**6.**

Let’s see your function in action. In the terminal type `node app.js`
and press <span class="kbd">enter</span> to run the code. If you keep
executing **app.js** you’ll see the results of the promise resolving or
rejecting.

### Solution

``` javascript
const cookBeanSouffle = require('./library.js');

// Write your code below:

async function hostDinnerParty() {
 try {
   let dinner = await cookBeanSouffle();
   console.log(`${dinner} is served!`);
 }
 catch(error){
   console.log(error);
   console.log('Ordering a pizza!');
 }
}

hostDinnerParty();
```

## Handling Independent Promises

Remember that `await` halts the execution of our `async` function. This
allows us to conveniently write synchronous-style code to handle
dependent promises. But what if our `async` function contains multiple
promises which are not dependent on the results of one another to
execute?

``` js
async function waiting() {
 const firstValue = await firstAsyncThing();
 const secondValue = await secondAsyncThing();
 console.log(firstValue, secondValue);
}
 
async function concurrent() {
 const firstPromise = firstAsyncThing();
 const secondPromise = secondAsyncThing();
console.log(await firstPromise, await secondPromise);
}
```

In the `waiting()` function, we pause our function until the first
promise resolves, then we construct the second promise. Once that
resolves, we print both resolved values to the console.

In our `concurrent()` function, both promises are constructed without
using `await`. We then `await` each of their resolutions to print them
to the console.

With our `concurrent()` function both promises’ asynchronous operations
can be run simultaneously. If possible, we want to get started on each
asynchronous operation as soon as possible! Within our `async` functions
we should still take advantage of *concurrency*, the ability to perform
asynchronous actions at the same time.

Note: if we have multiple truly independent promises that we would like
to execute fully in parallel, we must use individual `.then()` functions
and avoid halting our execution with `await`.

### Instructions

**1.**

Take a look at the provided code. We require in four functions:
`cookBeans()`, `steamBroccoli()`, `cookRice()`, and `bakeChicken()`.
These functions each return a promise which will resolve to a string
representing a part of a meal.

If you’d like, look at the **library.js** file to see how these
functions work. Press “Check Work” when you’re ready to move on.

**2.**

Declare an `async` function, `serveDinner()`. Create four variables:

- `vegetablePromise` which should be assigned the return value of
  `steamBroccoli()`
- `starchPromise` which should be assigned the return value of
  `cookRice()`
- `proteinPromise` which should be assigned the return value of
  `bakeChicken()`
- and `sidePromise` which should be assigned the return value of
  `cookBeans()`

These variables should be assigned the promise objects themselves not
their resolved values.

**3.**

Next `console.log()` a string in the following format: Dinner is served.
We’re having $$resolved value of the `vegetablePromise`$$, $$resolved
value of the `starchPromise`$$, $$resolved value of the
`proteinPromise`$$, and $$resolved value of the `sidePromise`$$. ie.
‘Dinner is served. We’re having broccoli, rice, chicken, and beans.’

You’ll need to `await` each promise, but there are a few different ways
you can accomplish the desired functionality. Check out the hint if you
want some guidance.

**4.**

Awesome! Let’s see your function in action. Beneath your function
declaration, invoke `serveDinner()`.

**5.**

In the terminal type `node app.js` and press
<span class="kbd">enter</span> to run the code.

### Solution

``` javascript
let {cookBeans, steamBroccoli, cookRice, bakeChicken} = require('./library.js')

// Write your code below:

async function serveDinner() {
 const vegetablePromise = steamBroccoli();
 const starchPromise = cookRice();
 const proteinPromise = bakeChicken();
 const sidePromise = cookBeans();
 console.log(`Dinner is served. We're having ${await vegetablePromise}, ${await starchPromise}, ${await proteinPromise}, and ${await sidePromise}.`);
}

serveDinner();
```

## Await Promise.all()

Another way to take advantage of concurrency when we have multiple
promises which can be executed simultaneously is to `await` a
`Promise.all()`.

We can pass an array of promises as the argument to `Promise.all()`, and
it will return a single promise. This promise will resolve when all of
the promises in the argument array have resolved. This promise’s resolve
value will be an array containing the resolved values of each promise
from the argument array.

``` js
async function asyncPromAll() {
  const resultArray = await Promise.all([asyncTask1(), asyncTask2(), asyncTask3(), asyncTask4()]);
  for (let i = 0; i<resultArray.length; i++){
    console.log(resultArray[i]); 
  }
}
```

In our above example, we `await` the resolution of a `Promise.all()`.
This `Promise.all()` was invoked with an argument array containing four
promises (returned from required-in functions). Next, we loop through
our `resultArray`, and log each item to the console. The first element
in `resultArray` is the resolved value of the `asyncTask1()` promise,
the second is the value of the `asyncTask2()` promise, and so on.

`Promise.all()` allows us to take advantage of asynchronicity— each of
the four asynchronous tasks can process concurrently. `Promise.all()`
also has the benefit of *failing fast*, meaning it won’t wait for the
rest of the asynchronous actions to complete once any one has rejected.
As soon as the first promise in the array rejects, the promise returned
from `Promise.all()` will reject with that reason. As it was when
working with native promises, `Promise.all()` is a good choice if
multiple asynchronous tasks are all required, but none must wait for any
other before executing.

### Instructions

**1.**

In this exercise, we require in the same four functions as in the last
exercise: `cookBeans()`, `steamBroccoli()`, `cookRice()`, and
`bakeChicken()`.

These functions each return a promise which will resolve to a string
representing a part of a meal. You can check them out in the
**library.js** file. Press “Check Work” to move on to the next step.

**2.**

You’re going to create a very similar function to the `serveDinner()`
function you created in the last exercise. This time, you’ll use
`Promise.all()`!

Create an `async` function `serveDinnerAgain()`. Inside your function,
declare a variable `foodArray` and assign it the resolved value of the
promise returned from `Promise.all()`.

Remember that `Promise.all()` takes in an array of promises. Pass in an
array containing the `steamBroccoli()`, `cookRice()`, `bakeChicken()`,
and `cookBeans()` functions in that order.

**3.**

Next `console.log()` a string in the following format: Dinner is served.
We’re having $$first item in `foodArray` $$, $$second item in
`foodArray` $$, $$third item in `foodArray`$$, and $$fourth item in
`foodArray` $$. eg. ‘Dinner is served. We’re having broccoli, rice,
chicken, and beans.’

There are a few different ways you can accomplish the desired
functionality. Check out the hint if you want some guidance.

**4.**

Ok great! Now let’s see your function in action. Beneath your function
declaration, invoke `serveDinnerAgain()`.

**5.**

In the terminal type `node app.js` and press
<span class="kbd">enter</span> to run the code.

Make sure to click “Check Work” to complete this step.

### Solution

``` javascript
let {cookBeans, steamBroccoli, cookRice, bakeChicken} = require('./library.js')

// Write your code below:
async function serveDinnerAgain(){
  let foodArray = await Promise.all([steamBroccoli(), cookRice(), bakeChicken(), cookBeans()]); 
  
  console.log(`Dinner is served. We're having ${foodArray[0]}, ${foodArray[1]}, ${foodArray[2]}, and ${foodArray[3]}.`);
}

serveDinnerAgain();
```

## Review

Awesome work getting the hang of the `async...await` syntax! Let’s
review what you’ve learned:

- `async...await` is syntactic sugar built on native JavaScript promises
  and generators.
- We declare an async function with the keyword `async`.
- Inside an `async` function we use the `await` operator to pause
  execution of our function until an asynchronous action completes and
  the awaited promise is no longer pending .
- `await` returns the resolved value of the awaited promise.
- We can write multiple `await` statements to produce code that reads
  like synchronous code.
- We use `try...catch` statements within our `async` functions for error
  handling.
- We should still take advantage of concurrency by writing `async`
  functions that allow asynchronous actions to happen in concurrently
  whenever possible.

# HTTP Requests

Understand the basics of how your web browser communicates with the
internet.

## Background:

This page is generated by a web of HTML, CSS, and Javascript, sent to
you by Codecademy via the internet. The internet is made up of a bunch
of resources hosted on different servers. The term “resource”
corresponds to any entity on the web, including HTML files, stylesheets,
images, videos, and scripts. To access content on the internet, your
browser must ask these servers for the resources it wants and then
display these resources to you. This protocol of requests and responses
enables you to view *this* page in your browser.

This article focuses on one fundamental part of how the internet
functions: HTTP.

## What is HTTP?

HTTP stands for Hypertext Transfer Protocol and is used to structure
requests and responses over the internet. HTTP requires data to be
transferred from one point to another over the network.

The transfer of resources happens using TCP (Transmission Control
Protocol). In viewing this webpage, TCP manages the channels between
your browser and the server (in this case, codecademy.com). TCP is used
to manage many types of internet connections in which one computer or
device wants to send something to another. HTTP is the command language
that the devices on both sides of the connection must follow in order to
communicate.

## HTTP & TCP: How it Works

When you type an address such as <a href="https://codecademy.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">www.codecademy.com</a> into your browser,
you are commanding it to open a TCP channel to the server that responds
to that URL (or Uniform Resource Locator, which you can read more about
on <a href="https://en.wikipedia.org/wiki/Uniform_Resource_Locator"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Wikipedia</a>). A URL is like your home
address or phone number because it describes how to reach you.

In this situation, your computer, which is making the request, is called
the client. The URL you are requesting is the address that belongs to
the server.

Once the TCP connection is established, the client sends a HTTP *GET*
request to the server to retrieve the webpage it should display. After
the server has sent the response, it closes the TCP connection. If you
open the website in your browser again, or if your browser automatically
requests something from the server, a new connection is opened which
follows the same process described above. GET requests are one kind of
HTTP method a client can call. You can learn more about the other common
ones (*POST*, *PUT* and *DELETE*) in
<a href="https://www.codecademy.com/articles/what-is-rest"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">this article</a>.

Let’s explore an example of how GET requests (the most common type of
request) are used to help your computer (the client) access resources on
the web.

Suppose you want to check out the latest course offerings from
<a href="http://codecademy.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://codecademy.com</a>. After you type
the URL into your browser, your browser will extract the `http` part and
recognize that it is the name of the network protocol to use. Then, it
takes the domain name from the URL, in this case “codecademy.com”, and
asks the internet Domain Name Server to return an Internet Protocol (IP)
address.

Now the client knows the destination’s IP address. It then opens a
connection to the server at that address, using the `http` protocol as
specified. It will initiate a GET request to the server which contains
the IP address of the host and optionally a data payload. The GET
request contains the following text:

    GET / HTTP/1.1
    Host: www.codecademy.com

This identifies the type of request, the path on
<a href="https://codecademy.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">www.codecademy.com</a> (in this case,
“/“) and the protocol “HTTP/1.1.” HTTP/1.1 is a revision of the first
HTTP, which is now called HTTP/1.0. In HTTP/1.0, every resource request
requires a separate connection to the server. HTTP/1.1 uses one
connection more than once, so that additional content (like images or
stylesheets) is retrieved even after the page has been retrieved. As a
result, requests using HTTP/1.1 have less delay than those using
HTTP/1.0.

The second line of the request contains the address of the server which
is `"www.codecademy.com"`. There may be additional lines as well
depending on what data your browser chooses to send.

If the server is able to locate the path requested, the server might
respond with the header:

    HTTP/1.1 200 OK
    Content-Type: text/html

This header is followed by the content requested, which in this case is
the information needed to render <a href="https://codecademy.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">www.codecademy.com</a>.

The first line of the header, `HTTP/1.1 200 OK`, is confirmation that
the server understands the protocol that the client wants to communicate
with (`HTTP/1.1`), and an
<a href="https://en.wikipedia.org/wiki/List_of_HTTP_status_codes"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">HTTP status code</a> signifying that the
resource was found on the server. The second line,
`Content-Type: text/html`, shows the type of content that it will be
sending to the client.

If the server is not able to locate the path requested by the client, it
will respond with the header:

    HTTP/1.1 404 NOT FOUND

In this case, the server identifies that it understands the HTTP
protocol, but the `404 NOT FOUND` status code signifies that the
specific piece of content requested was not found. This might happen if
the content was moved or if you typed in the URL path incorrectly or if
the page was removed. You can read more about the 404 status code,
commonly called a 404 error,
<a href="https://www.codecademy.com/articles/http-errors-404"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">here</a>.

## An Analogy:

It can be tricky to understand how HTTP functions because it’s difficult
to examine what your browser is actually doing. (And perhaps also
because we explained it using acronyms that may be new to you.) Let’s
review what we learned by using an analogy that could be more familiar
to you.

Imagine the internet is a town. You are a client and your address
determines where you can be reached. Businesses in town, such as
Codecademy.com, serve requests that are sent to them. The other houses
are filled with other clients like you that are making requests and
expecting responses from these businesses in town. This town also has a
crazy fast mail service, an army of mail delivery staff that can travel
on trains that move at the speed of light.

Suppose you want to read the morning newspaper. In order to retrieve it,
you write down what you need in a language called HTTP and ask your
local mail delivery staff agent to retrieve it from a specific business.
The mail delivery person agrees and builds a railroad track (connection)
between your house and the business nearly instantly, and rides the
train car labeled “TCP” to the address of the business you provided.

Upon arriving at the business, she asks the first of several free
employees ready to fulfill the request. The employee searches for the
page of the newspaper that you requested but cannot find it and
communicates that back to the mail delivery person.

The mail delivery person returns on the light speed train, ripping up
the tracks on the way back, and tells you that there was a problem “404
Not Found.” After you check the spelling of what you had written, you
realize that you misspelled the newspaper title. You correct it and
provide the corrected title to the mail delivery person.

This time the mail delivery person is able to retrieve it from the
business. You can now read your newspaper in peace until you decide you
want to read the next page, at which point, you would make another
request and give it to the mail delivery person.

## What is HTTPS?

Since your HTTP request can be read by anyone at certain network
junctures, it might not be a good idea to deliver information such as
your credit card or password using this protocol. Fortunately, many
servers support HTTPS, short for HTTP Secure, which allows you to
encrypt data that you send and receive. You can read more about HTTPS on
<a href="https://en.wikipedia.org/wiki/HTTPS#Difference_from_HTTP"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Wikipedia</a>.

HTTPS is important to use when passing sensitive or personal information
to and from websites. However, it is up to the businesses maintaining
the servers to set it up. In order to support HTTPS, the business must
apply for a certificate from a
<a href="https://en.wikipedia.org/wiki/Certificate_authority"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Certificate Authority</a>.

# Introduction to Web APIs

Learn what APIs are and how they’re useful tools for web development.

## What are APIs?

An *Application Programming Interface* (*API*) is a software tool that
makes it easier for developers to interact with another application to
use some of that application’s functionality. Like tools in the physical
world, APIs are built to solve specific, repeated, and potentially
complex problems.

Imagine we needed to twist a screw into a piece of wood. We could try to
take the screw and twist it in with our fingers, but that would be
difficult and inefficient. Twisting one screw would be hard enough —
having to do it multiple times would be near impossible! Instead, we
could make the task much easier by using a tool that someone else
created, in this case, a screwdriver! When used properly, the
screwdriver can be used for one specific type of screw and can be reused
for the same job over and over again!

Relating this analogy back to APIs, we probably don’t want to have to
write up the same code for the same problems over and over again. If the
right API exists to solve our problem, we could make it easier on
ourselves and use the API instead. But, before we fully commit to using
an API, we should go over some important considerations!

## Types of APIs

There are two main categories of web APIs: browser APIs and 3rd party
APIs.

*Browser APIs* are specific to writing code related to browsers and give
developers access to information that the browser can also access. One
example is the <a
href="https://developer.mozilla.org/en-US/docs/Web/API/Geolocation_API"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">geolocation API</a> which allows the
program to know where a user is when accessing our app. This specific
API requires that the user grant permissions to the browser to access
their geolocation information. There are also browser APIs for audio,
cryptography, VR, and much more. To see a comprehensive list of browser
APIs and how to interact with them, check out
<a href="https://developer.mozilla.org/en-US/docs/Web/API"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN’s documentation of web APIs</a>.

*Third-party APIs* are apps that provide some type of functionality or
information from a third-party, usually a company. For example, we could
use the <a href="https://openweathermap.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">OpenWeather API</a> to get in-depth
information about the weather in an area, forecasts, historical weather
data, and more! On our own, we wouldn’t even have access to this data
and we would certainly not want to write up this code ourselves just for
one app!

## Requesting Information from a Third-party API

Each API has a specific structure and protocol that we have to follow in
order to gain access to its functionality.

### Rules and Requirements

Organizations that maintain third-party APIs often set rules and
requirements for how developers can interact with their APIs. For
OpenWeather, we need to sign up for an account and generate a special
token called an *API key* that grants our account the ability to make
API requests. These API keys are unique to individual accounts and
should be kept secret. OpenWeather provides some free functionality and
some paid functionality. So before committing to a third-party API,
check out their specifications which can often be found in the API
documentation. Here’s <a href="https://openweathermap.org/api"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">OpenWeather’s documentation</a> to look
over as an example.

### Making Requests

Some of an API’s specifications relate to making a *request* for data.
These specifications could include more parameters for specific
information or the inclusion of an API key. For example, when using the
OpenWeather API, we need to provide more information to search for
weather information — such information could include: the name of a
city, time of day, the type of forecast, etc. These specifications for
making a request can also be found in the API documentation.

### Response Data

After we make a successful API request, the API sends back data. Many
APIs format their data using
<a href="https://www.codecademy.com/article/what-is-json"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>JavaScript Object Notation</em> (<em>JSON</em>)</a>
which looks like a JavaScript object. Here’s a quick example of what
JSON data might look like:

    { 
      "temperature" : { 
         "celcius" : 25,
      },
      "city": "chicago", 
    }

It’s then up to us how to determine how to *consume*, or use, this
information in our apps. If we got back that sample JSON above, we could
parse out the temperature information and display it on our app.

## Review

Congrats, we’ve now gone through the basics of web APIs! Here’s a quick
recap of what we covered:

- With web APIs, we have a tool that we can use to access the
  functionality and data of another application.
- There are two main types of APIs: browser and third-party.
  - Browser APIs require specific syntax and permissions.
  - Third-party APIs have their own rules and requirements set by the
    organizations that maintain them.
- When making a request to API, we might have to supply more details
  about what information we want.
- If we get a successful response, we still have to decide how to
  consume the response data.

That’s a lot to take in, but knowing that these tools exist opens up
more possibilities for what we can do with our apps!

# What is REST?

Learn about the REST (Representational State Transfer) paradigm and how
rest architecture streamlines communication between web components.

<img
src="https://raw.githubusercontent.com/Codecademy/articles/0b631b51723fbb3cc652ef5f009082aa71916e63/images/rest_api.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="REST API Model" />

## REpresentational State Transfer

REST, or REpresentational State Transfer, is an architectural style for
providing standards between computer systems on the web, making it
easier for systems to communicate with each other. REST-compliant
systems, often called RESTful systems, are characterized by how they are
stateless and separate the concerns of client and server. We will go
into what these terms mean and why they are beneficial characteristics
for services on the Web. Pay close attention: If you’re looking for a
career in tech, you may be asked to define rest during an interview.

### Separation of Client and Server

In the REST architectural style, the implementation of the client and
the implementation of the server can be done independently without each
knowing about the other. This means that the code on the client side can
be changed at any time without affecting the operation of the server,
and the code on the server side can be changed without affecting the
operation of the client.

As long as each side knows what format of messages to send to the other,
they can be kept modular and separate. Separating the user interface
concerns from the data storage concerns, we improve the flexibility of
the interface across platforms and improve scalability by simplifying
the server components. Additionally, the separation allows each
component the ability to evolve independently.

By using a REST interface, different clients hit the same REST
endpoints, perform the same actions, and receive the same responses.

### Statelessness

Systems that follow the REST paradigm are stateless, meaning that the
server does not need to know anything about what state the client is in
and vice versa. In this way, both the server and the client can
understand any message received, even without seeing previous messages.
This constraint of statelessness is enforced through the use of
*resources*, rather than *commands*. Resources are the nouns of the
Web - they describe any object, document, or *thing* that you may need
to store or send to other services.

Because REST systems interact through standard operations on resources,
they do not rely on the implementation of interfaces.

These constraints help RESTful applications achieve reliability, quick
performance, and scalability, as components that can be managed,
updated, and reused without affecting the system as a whole, even during
operation of the system.

Now, we’ll explore how the communication between the client and server
actually happens when we are implementing a RESTful interface.

## Communication between Client and Server

In the REST architecture, clients send requests to retrieve or modify
resources, and servers send responses to these requests. Let’s take a
look at the standard ways to make requests and send responses.

### Making Requests

REST requires that a client make a request to the server in order to
retrieve or modify data on the server. A request generally consists of:

- an HTTP verb, which defines what kind of operation to perform
- a *header*, which allows the client to pass along information about
  the request
- a path to a resource
- an optional message body containing data

#### HTTP Verbs

There are 4 basic HTTP verbs we use in requests to interact with
resources in a REST system:

- GET — retrieve a specific resource (by id) or a collection of
  resources
- POST — create a new resource
- PUT — update a specific resource (by id)
- DELETE — remove a specific resource by id

You can learn more about these HTTP verbs in the following Codecademy
article:

- <a href="https://www.codecademy.com/articles/what-is-crud"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">What is CRUD?</a>

#### Headers and Accept parameters

In the header of the request, the client sends the type of content that
it is able to receive from the server. This is called the `Accept`
field, and it ensures that the server does not send data that cannot be
understood or processed by the client. The options for types of content
are MIME Types (or Multipurpose Internet Mail Extensions, which you can
read more about in the <a
href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN Web Docs</a>.

MIME Types, used to specify the content types in the `Accept` field,
consist of a `type` and a `subtype`. They are separated by a slash (/).

For example, a text file containing HTML would be specified with the
type `text/html`. If this text file contained CSS instead, it would be
specified as `text/css`. A generic text file would be denoted as
`text/plain`. This default value, `text/plain`, is not a catch-all,
however. If a client is expecting `text/css` and receives `text/plain`,
it will not be able to recognize the content.

Other types and commonly used subtypes:

- `image` — `image/png`, `image/jpeg`, `image/gif`
- `audio` — `audio/wav`, `audio/mpeg`
- `video` — `video/mp4`, `video/ogg`
- `application` — `application/json`, `application/pdf`,
  `application/xml`, `application/octet-stream`

For example, a client accessing a resource with `id` 23 in an `articles`
resource on a server might send a GET request like this:

    GET /articles/23
    Accept: text/html, application/xhtml

The `Accept` header field in this case is saying that the client will
accept the content in `text/html` or `application/xhtml`.

#### Paths

Requests must contain a path to a resource that the operation should be
performed on. In RESTful APIs, paths should be designed to help the
client know what is going on.

Conventionally, the first part of the path should be the plural form of
the resource. This keeps nested paths simple to read and easy to
understand.

A path like `fashionboutique.com/customers/223/orders/12` is clear in
what it points to, even if you’ve never seen this specific path before,
because it is hierarchical and descriptive. We can see that we are
accessing the order with `id` 12 for the customer with `id` 223.

Paths should contain the information necessary to locate a resource with
the degree of specificity needed. When referring to a list or collection
of resources, it is not always necessary to add an `id`. For example, a
POST request to the `fashionboutique.com/customers` path would not need
an extra identifier, as the server will generate an `id` for the new
object.

If we are trying to access a single resource, we would need to append an
`id` to the path. For example: `GET fashionboutique.com/customers/:id` —
retrieves the item in the `customers` resource with the `id` specified.
`DELETE fashionboutique.com/customers/:id` — deletes the item in the
`customers` resource with the `id` specified.

### Sending Responses

#### Content Types

In cases where the server is sending a data payload to the client, the
server must include a `content-type` in the header of the response. This
`content-type` header field alerts the client to the type of data it is
sending in the response body. These content types are MIME Types, just
as they are in the `accept` field of the request header. The
`content-type` that the server sends back in the response should be one
of the options that the client specified in the `accept` field of the
request.

For example, when a client is accessing a resource with `id` 23 in an
`articles` resource with this GET Request:

    GET /articles/23 HTTP/1.1
    Accept: text/html, application/xhtml

The server might send back the content with the response header:

    HTTP/1.1 200 (OK)
    Content-Type: text/html

This would signify that the content requested is being returned in the
response body with a `content-type` of `text/html`, which the client
said it would be able to accept.

#### Response Codes

Responses from the server contain status codes to alert the client to
information about the success of the operation. As a developer, you do
not need to know every status code (there are
<a href="http://www.restapitutorial.com/httpstatuscodes.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">many</a> of them), but you should know
the most common ones and how they are used:

| Status code                 | Meaning                                                                                                           |
|-----------------------------|-------------------------------------------------------------------------------------------------------------------|
| 200 (OK)                    | This is the standard response for successful HTTP requests.                                                       |
| 201 (CREATED)               | This is the standard response for an HTTP request that resulted in an item being successfully created.            |
| 204 (NO CONTENT)            | This is the standard response for successful HTTP requests, where nothing is being returned in the response body. |
| 400 (BAD REQUEST)           | The request cannot be processed because of bad request syntax, excessive size, or another client error.           |
| 403 (FORBIDDEN)             | The client does not have permission to access this resource.                                                      |
| 404 (NOT FOUND)             | The resource could not be found at this time. It is possible it was deleted, or does not exist yet.               |
| 500 (INTERNAL SERVER ERROR) | The generic answer for an unexpected failure if there is no more specific information available.                  |

For each HTTP verb, there are expected status codes a server should
return upon success:

- GET — return 200 (OK)
- POST — return 201 (CREATED)
- PUT — return 200 (OK)
- DELETE — return 204 (NO CONTENT) If the operation fails, return the
  most specific status code possible corresponding to the problem that
  was encountered.

#### Examples of Requests and Responses

Let’s say we have an application that allows you to view, create, edit,
and delete customers and orders for a small clothing store hosted at
`fashionboutique.com`. We could create an HTTP API that allows a client
to perform these functions:

If we wanted to view all customers, the request would look like this:

    GET http://fashionboutique.com/customers
    Accept: application/json

A possible response header would look like:

    Status Code: 200 (OK)
    Content-type: application/json

followed by the `customers` data requested in `application/json` format.

Create a new customer by posting the data:

    POST http://fashionboutique.com/customers
    Body:
    {
      “customer”: {
        “name” = “Scylla Buss”,
        “email” = “scylla.buss@codecademy.org”
      }
    }

The server then generates an `id` for that object and returns it back to
the client, with a header like:

    201 (CREATED)
    Content-type: application/json

To view a single customer we *GET* it by specifying that customer’s id:

    GET http://fashionboutique.com/customers/123
    Accept: application/json

A possible response header would look like:

    Status Code: 200 (OK)
    Content-type: application/json

followed by the data for the `customer` resource with `id` 23 in
`application/json` format.

We can update that customer by *PUT* ting the new data:

    PUT http://fashionboutique.com/customers/123
    Body:
    {
      “customer”: {
        “name” = “Scylla Buss”,
        “email” = “scyllabuss1@codecademy.com”
      }
    }

A possible response header would have `Status Code: 200 (OK)`, to notify
the client that the item with `id` 123 has been modified.

We can also *DELETE* that customer by specifying its `id`:

    DELETE http://fashionboutique.com/customers/123

The response would have a header containing
`Status Code: 204 (NO CONTENT)`, notifying the client that the item with
`id` 123 has been deleted, and nothing in the body.

## Practice with REST

Let’s imagine we are building a photo-collection site. We want to make
an API to keep track of users, venues, and photos of those venues. This
site has an `index.html` and a `style.css`. Each user has a username and
a password. Each photo has a venue and an owner (i.e. the user who took
the picture). Each venue has a name and street address. Can you design a
REST system that would accommodate:

- storing users, photos, and venues
- accessing venues and accessing certain photos of a certain venue

Start by writing out:

- what kinds of requests we would want to make
- what responses the server should return
- what the `content-type` of each response should be

## Possible Solution - Models

    {
      “user”: {
        "id": <Integer>,
        “username”: <String>,
        “password”:  <String>
      }
    }

    {
      “photo”: {
        "id": <Integer>,
        “venue_id”: <Integer>,
        “author_id”: <Integer>
      }
    }

    {
      “venue”: {
        "id": <Integer>,
        “name”: <String>,
        “address”: <String>
      }
    }

## Possible Solution - Requests/Responses

#### GET Requests

Request- `GET /index.html` Accept: `text/html` Response- 200 (OK)
Content-type: `text/html`

Request- `GET /style.css` Accept: `text/css` Response- 200 (OK)
Content-type: `text/css`

Request- `GET /venues` Accept:`application/json` Response- 200 (OK)
Content-type: `application/json`

Request- `GET /venues/:id` Accept: `application/json` Response- 200 (OK)
Content-type: `application/json`

Request- `GET /venues/:id/photos/:id` Accept: `application/json`
Response- 200 (OK) Content-type: `image/png`

#### POST Requests

Request- `POST /users` Response- 201 (CREATED) Content-type:
`application/json`

Request- `POST /venues` Response- 201 (CREATED) Content-type:
`application/json`

Request- `POST /venues/:id/photos` Response- 201 (CREATED) Content-type:
`application/json`

#### PUT Requests

Request- `PUT /users/:id` Response- 200 (OK)

Request- `PUT /venues/:id` Response- 200 (OK)

Request- `PUT /venues/:id/photos/:id` Response- 200 (OK)

#### DELETE Requests

Request- `DELETE /venues/:id` Response- 204 (NO CONTENT)

Request- `DELETE /venues/:id/photos/:id` Response- 204 (NO CONTENT)

# What Is JSON?

A brief guide to understanding JSON and its use cases.

## Introduction

In a world inundated with data, it is becoming more important to know
how to work with a variety of data. As programmers, we need to be able
to transfer our populated data structures from any language we choose to
a format that is recognizable and readable by other languages and
platforms. Fortunately for us, there exists such a data-exchange format.

## What is JSON?

JSON, or JavaScript Object Notation, is a popular, language-independent,
standard format for storing and exchanging data. Adopted by
<a href="http://ecma-international.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">ECMA International</a>, an industry
association founded in 1961 to standardize information and communication
systems, <a
href="http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">JSON</a> has become the de facto standard
that facilitates storing and sending data between all <a
href="https://www.codecademy.com/resources/blog/programming-languages/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">programming languages</a>.

## Common Uses of JSON

JSON is heavily used to facilitate data transfer in web applications
between a client, such as a web browser, and a server. A typical example
where such data transfer occurs is when you fill out a web form. The
form data is converted from HTML to JavaScript objects to JSON objects
and sent to a remote web server for processing. These transactions could
be as simple as entering a search engine query to a multi-page job
application.

When companies make their data public for other applications, like
Spotify sharing its music library or Google sharing its map data, the
information is formatted in JSON. This way, any application, regardless
of language, can collect and parse the data.

Some of the popular web APIs that utilize JSON in data exchanges are:

- <a
  href="https://developers.google.com/maps/documentation/geocoding/start"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Google Maps</a>
- <a
  href="https://developers.google.com/identity/protocols/oauth2/service-account"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Google Auth 2.0 Authentication</a>
- <a
  href="https://developers.facebook.com/docs/messenger-platform/reference/send-api"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Facebook Social Graph API</a>
- <a href="https://developer.spotify.com/documentation/web-api/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Spotify Music Web API</a>
- <a
  href="https://docs.microsoft.com/en-us/linkedin/shared/integrations/people/profile-api"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">LinkedIn Profile API</a>

## JSON Syntax

Since JSON is derived from the JavaScript programming language, its
appearance is similar to that of JavaScript objects.

A sample JSON object is represented as follows:

    {
      "student": {
        "name": "Rumaisa Mahoney",
        "age": 30,
        "fullTime": true,
        "languages": [ "JavaScript", "HTML", "CSS" ],
        "GPA": 3.9,
        "favoriteSubject": null
      }
    }

Note the following syntax rules for JSON:

- The curly braces, `{..}`, hold objects.
- The square brackets, `[..]`, hold arrays.
- Data is stored in name-value pairs separated by a colon, `:`.
- Every name-value pair is separated from another pair by a comma, `,`.
  Similarly, every item in an array is delimited by a comma as well. <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Trailing_commas"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Trailing commas</a> are forbidden.
- JSON property names must be in double-quoted `(" ")` text even though
  JavaScript names do not hold by this stringency.

## JSON Data Types

A JSON data type must be one of the following:

- string (double-quoted)
- number (integer or floating point)
- object (name-value pair)
- array (comma-delimited)
- boolean (true or false)
- null

Try to find all the data types in this JSON example:

    {
      "student": {
        "name": "Rumaisa Mahoney",
        "age": 30,
        "fullTime": true,
        "languages": [ "JavaScript", "HTML", "CSS" ],
        "GPA": 3.9,
        "favoriteSubject": null
      }
    }

Notably, JSON doesn’t cover every data type. Types that are not
represented in JSON such as dates can be stored as a string and
converted to a language-specific data structure. Here’s an acceptable
internationally-recognized date format in
<a href="https://www.iso.org/iso-8601-date-and-time-format.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">ISO 8601</a>:

    "2014-01-01T23:28:56.782Z"

This above format contains parts which resemble a date and time.
However, as a string, it is hard for a programming language to use as
is. Conveniently, every programming language has built-in JSON
facilities to convert this string into a more readable and usable
format, such as:

    Wed Jan 01 2014 13:28:56 GMT-1000 (Hawaiian Standard Time)

This pretty much covers the basic description of JSON, its popularity,
and its syntax. Congratulations on reaching this milestone!

# Working with JSON in JavaScript

A user guide on how to work with JSON in Javascript.

## Introduction

JSON, short for JavaScript Object Notation, is a language-independent
data format that has been accepted as an industry standard. Because it
is based on the JavaScript programming language, JSON’s syntax looks
similar to a JavaScript object with
<a href="https://www.codecademy.com/articles/what-is-json"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">minor differences</a>. We’ll take a look at the subtle
difference between them. Later on, we’ll learn how to parse JSON and
extract its content as JavaScript. Lastly, we’ll learn how to write a
JSON object with JavaScript. So, let’s begin.

## JSON Object vs. JavaScript Object

Here is an example JSON object of a person named Kate, who is 30 years
old, and whose hobbies include reading, writing, cooking, and playing
tennis:

    {
      "person": {  
        "name": "Kate",  
        "age": 30,  
        "hobbies": [ "reading", "writing", "cooking", "tennis" ] 
      }
    }

Represented as a JavaScript object literal, the same information would
appear as:

    {  
      person: {
        name: 'Kate',  
        age: 30,  
        hobbies: [ 'reading', 'writing', 'cooking', 'tennis' ] 
      }
    }

Notice a slight difference between the two formats.

- The name portion in each JSON name-value pair and all string values
  must be enclosed in double-quotes while this is optional in
  JavaScript.
- JavaScript accepts string values that are single or double-quoted,
  however, there exists JavaScript
  <a href="https://en.wikipedia.org/wiki/Programming_style"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">coding guidelines</a> that prefer one
  style over another.

## Reading a JSON String

In a typical web application, the JSON data that we receive from a web
request comes in the form of a string. At other times, JSON data is
stored in a file that is used for authentication, configuration, or
database storage. These files typically have a **.json** extension, and
they have to be opened in order to retrieve the JSON string in it. In
either case, we will need to convert the string to a format that we can
use in order to access its parts. Each programming language has its own
mechanism to handle this conversion. In JavaScript, for example, we have
a built-in JSON class with a method called <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/parse"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.parse()</code></a> that takes a
JSON string as a parameter and returns a JavaScript object.

The following code converts a JSON string object, `jsonData`, into a
JavaScript object, `jsObject`, and logs `jsObject` on the console.

    const jsonData = '{ "book": { "name": "JSON Primer", "price": 29.99, "inStock": true, "rating": null } }';
     
    const jsObject = JSON.parse(jsonData);
     
    console.log(jsObject);

This will print out `jsObject` as follows:

    {
      book: { name: 'JSON Primer', price: 29.99, inStock: true, rating: null }
    }

Once we have converted a JSON object to a JavaScript object, we can
access the individual properties inside the JavaScript object. To access
a value inside a JavaScript object based on its property name, we can
either use dot notation, (`.propertyName`), or bracket notation,
(`['propertyName']`).

For instance, to retrieve the `book` property of `jsObject` we could do
the following:

    // Using the dot notation
    const book = jsObject.book;    
    console.log(book);
    console.log(book.name, book.price, book.inStock);
     
    // Using the bracket notation
    const book2 = jsObject['book'];
    console.log(book2);
    console.log(book2["name"], book2["price"], book2["inStock"]);

Both ways of accessing the book property return the same output:

    { name: 'JSON Primer', price: 29.99, inStock: true, rating: null }
    JSON Primer 29.99 true

As you can see, after parsing `jsonData` into a JavaScript object that’s
stored in the variable, `book`, you can treat `book` like any other
object! That means you can access property values, as shown above, edit
existing values, iterate over the keys and values, etc…

## Exercise: Reading a JSON String

Now that we’ve shown you how to read a JSON string, let’s practice with
a code challenge by writing some code yourself.

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

## Writing a JSON String

Before we can send off our data across the web, we need to convert them
to a JSON string. In JavaScript, we would use the built-in `JSON` class
method, <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.stringify()</code></a> to
transform our JavaScript object to a JSON string.

The following code converts a JavaScript object, `jsObject`, into a JSON
string, `jsonData`.

    const jsObject = { book: 'JSON Primer', price: 29.99, inStock: true, rating: null };
    const jsonData = JSON.stringify(jsObject);
    console.log(jsonData);

This will display the following output:

    { "book": "JSON Primer", "price": 29.99, "inStock": true, "rating": null }

## Exercise: Writing a JSON String

Now that we’ve learned how to convert our JavaScript object to a JSON
string, let’s practice with another code challenge by you writing some
code.

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

## Review

In this article, you have learned how to do the following:

- Compare JSON with JavaScript’s Object literal syntax.
- Convert a JSON string into a JavaScript Object.
- Convert a JavaScript Object into a JSON string.

Congratulations on reaching this milestone! With a little more practice,
you will soon handle JSON in Javascript with ease.

# Requests with Fetch API

## Introduction to Requests with ES6

Have you ever wondered what happens after you click a “Submit” button on
a web page? For instance, if you are submitting information, where does
the information go? How is the information processed? The answer to the
previous questions revolves around
<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">HTTP requests</a>.

There are many types of HTTP requests. The four most commonly used types
of HTTP requests are GET, POST, PUT, and DELETE. In this lesson, we’ll
cover GET and POST requests.

With a GET request, we’re retrieving, or *getting*, information from
some source (usually a website). For a POST request, we’re *posting*
information to a source that will process the information and send it
back.

JavaScript uses an <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/EventLoop"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">event loop</a> to handle asynchronous
function calls. When a program is run, function calls are made and added
to a stack. The functions that make requests that need to wait for
servers to respond then get sent to a separate queue. Once the stack has
cleared, then the functions in the queue are executed.

Web developers use the event loop to create a smoother browsing
experience by deciding when to call functions and how to handle
asynchronous events. We will go into event loops in more detail in the
<a
href="https://www.codecademy.com/courses/learn-intermediate-javascript/articles/javascript-concurrency-model-and-event-loop"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Concurrency Model and Event Loop in JavaScript</a>
article.

To make asynchronous event handling easier,
<a href="https://www.codecademy.com/resources/docs/javascript/promise"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">promises</a> were introduced in ES6 JavaScript.

In this lesson, we will explain how to use `fetch()` and promises to
handle requests. Then, we will simplify requests using `async` and
`await`.

### Instructions

Click the button on the web page to see what the code in **main.js**
does. Notice the usage of `fetch()`, `async`, and `await`.

We’ll also be working with JSON, so study the structure of the response
on the web page!

Go to the next exercise to learn more about requests.

### Solution

``` javascript
// Element selectors
const jsonButton = document.querySelector('#generate');
const buttonContainer = document.querySelector('#buttonContainer');
const display = document.querySelector('#displayContainer');

// Text to populate button text on click
const collection = ["Another", "More", "Next", "Continue", "Keep going", "Click me", "A new one"];

// Asynchronous function
const generateJson = async () => {
  try {
    const response = await fetch('https://jsonplaceholder.typicode.com/users');
    if(response.ok){
      const jsonResponse = await response.json();
      renderResponse(jsonResponse);
      changeButton();
    }
  } catch(error) {
    console.log(error);
  }
};
    
// Format returned promise data
const formatJson = (resJson) => {
  resJson = JSON.stringify(resJson);
  let counter = 0;
  return resJson.split('')
  .map(char => {
    switch (char) {
      case ',':
        return `,\n${' '.repeat(counter * 2)}`;
      case '{':
        counter += 1;
        return `{\n${' '.repeat(counter * 2)}`;
      case '}':
        counter -= 1;
        return `\n${' '.repeat(counter * 2)}}`;
      default:
        return char;
    }
  })
  .join('');
};

// Display formatted data
const renderResponse = (jsonResponse) => {
  const jsonSelection = Math.floor(Math.random() * 10);
  display.innerHTML = `<pre>${formatJson(jsonResponse[jsonSelection])}</pre>`;
};

// Change button text
const changeButton = () => {
  const newText = Math.floor(Math.random() * 7);
  jsonButton.innerHTML = `${collection[newText]}!`;
};

// Listen for click on button
jsonButton.addEventListener('click', generateJson);
```

## Intro to GET Requests using Fetch

The first type of requests we’re going to tackle is GET requests using
<a href="https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">fetch()</code></a>.

The `fetch()` function:

- Creates a request object that contains relevant information that an
  API needs.
- Sends that request object to the API endpoint provided.
- Returns a promise that ultimately resolves to a response object, which
  contains the status of the promise with information the API sent back.

Let’s walk through the boilerplate code to the right for using `fetch()`
to create a GET request step by step.

First, call the `fetch()` function and pass it a URL as a string for the
first argument, determining the endpoint of the request.

    fetch('https://api-to-call.com/endpoint')

The`.then()` method is chained at the end of the `fetch()` function and
in its first argument, the response of the GET request is passed to the
callback arrow function. The `.then()` method will fire only after the
promise status of `fetch()` has been resolved.

Inside the callback function, the `ok` property of the `response` object
returns a Boolean value. If there are no errors, `response.ok` will be
`true` and the code will return `response.json()`.

If `response.ok` is a falsy value, our code will `throw` an error.

    throw new Error('Request failed!');

A second argument passed to `.then()` will be another arrow function
that will be triggered when the promise is rejected. It takes a single
parameter, `networkError`. This object logs the `networkError` if we
could not reach the endpoint at all (e.g., the server is down).

A second `.then()` method will run after the previous `.then()` method
has finished running without error. It takes `jsonResponse`, which
contains the returned `response.json()` object from the previous
`.then()` method, as its parameter and can now be handled, however we
may choose.

### Instructions

In the next exercise, we will apply what we have learned to making a GET
request using `fetch()` and `.then()`. Move on to the next exercise when
you’re ready!

### Solution

<img src="https://content.codecademy.com/courses/intermediate-javascript-requests/diagrams/fetch%20GET%20transparent.svg" alt="Diagram containing boilerplate syntax needed to make a GET request using the `fetch` API. " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Making a GET Request

In the previous exercise, we went over the boilerplate code for a GET
request using `fetch()` and `.then()`. In this exercise, we’re going to
apply that code to access the <a href="https://www.datamuse.com/api/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Datamuse API</a> and render the fetched
information in the browser.

The Datamuse API is a word-finding query engine for developers. It can
be used in apps to find words that match a given set of constraints that
are likely in a given context.

If the request is successful, we’ll get back an array of words that
sound like the word we typed into the input field.

We may get some errors as we complete each step. This is because
sometimes we’ve split a single step into one or more steps to make it
easier to follow. By the end, we should be getting no errors.

### Instructions

**1.**

At the top of **main.js**, create a `const` variable called `url`.
Assign `url` to the following URL as a string:

    https://api.datamuse.com/words?sl=

The `?sl=` portion of the string will be the start of your
<a href="https://en.wikipedia.org/wiki/Query_string"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">query string</a>, which will be used to
pass parameters to the Datamuse API. The query string will be used by
the engine to narrow the search to words that sound like your word.

**2.**

Inside the `getSuggestions()` function, create a `const` variable called
`wordQuery` and assign it `inputField.value`.

We’ll need `wordQuery` to store the value of what is being typed into
the input field.

Create another `const` variable called `endpoint` and assign it the
value of a string that is `url`, and `wordQuery` concatenated in that
order.

We will be working inside `getSuggestions()` function for the remainder
of this exercise.

**3.**

Inside the `getSuggestions()` function, call the `fetch()` function and
pass in `endpoint` as an argument. For this API to work within the
Codecademy browser, add `{cache: 'no-cache'}` as the second argument.

**4.**

Chain a `.then()` method to the `fetch()` function. Pass an arrow
callback function as its argument. The callback function should take
`response` as its single parameter.

**5.**

Inside the success callback function, create a conditional statement
that checks if the `ok` property of the `response` object evaluates to a
truthy value.

If so, `return response.json()`.

By returning `response.json()`, the next `.then()` method chained to it
will receive a Promise with JSON data.

**6.**

Below the condition’s code block, `throw` an `Error` stating
`'Request failed!'` to raise an exception if the request failed.

**7.**

Next, we will add a second argument to the `.then()` method to add
another callback function to handle errors. Create an arrow function
that takes one parameter, `networkError`.

In the code block of the arrow function, log `networkError.message` to
the console.

Note that we will continue to add to this code in the next exercise to
manipulate the webpage to see the word suggestions from Datamuse. The
submit button will not return anything yet.

### Solution

``` javascript
// Information to reach API
const url = 'https://api.datamuse.com/words?sl=';

// Selects page elements
const inputField = document.querySelector('#input');
const submit = document.querySelector('#submit');
const responseField = document.querySelector('#responseField');

// Asynchronous function
const getSuggestions = () => {
  const wordQuery = inputField.value;
  const endpoint = `${url}${wordQuery}`;
  
  fetch(endpoint, {cache: 'no-cache'}).then(response => {
    if (response.ok) {
      return response.json();
    }
    throw new Error('Request failed!');
  }, networkError => {
    console.log(networkError.message)
  })
}

// Clears previous results and display results to webpage
const displaySuggestions = (event) => {
  event.preventDefault();
  while(responseField.firstChild){
    responseField.removeChild(responseField.firstChild);
  }
  getSuggestions();
};

submit.addEventListener('click', displaySuggestions);
```

## Handling a GET Request

Great job making it this far!

In the previous exercise, we called the `fetch()` function to make a GET
request to the Datamuse API endpoint. Then, you chained a `.then()`
method and passed two callback functions as arguments — one to handle
the promise if it resolves, and one to handle network errors if the
promise is rejected.

In this exercise, we will chain another `.then()` method, which will
allow us to take the information that was returned with the promise and
manipulate the webpage! Note that if there is an error returned in the
first `.then()` method, the second `.then()` method will not execute.

### Instructions

**1.**

At the end of the `.then()` method, chain another `.then()` method.

As the first argument of our second `.then()` method, pass an anonymous
arrow callback function that takes `jsonResponse` as its single
parameter.

**2.**

Inside the callback function we just created, call the
`renderRawResponse()` function and pass in `jsonResponse` as its
argument. Run the code.

In the input field, type in a word and click the submit button.

If all went well, we should see an array of words that the Datamuse API
responded with!

Note that you can find the `renderRawResponse()` function declaration in
**public/helperFunctions.js**.

**3.**

Let’s format our response from the Datamuse API to look presentable on
the webpage. To do this, we will use the `renderResponse()` function
that’s been defined in **public/helperFunctions.js**.

Comment out `renderRawResponse(jsonResponse)`. Then below, call
`renderResponse(jsonResponse)`.

Run your code.

Try the webpage again with another word!

### Solution

``` javascript
// Information to reach API
const url = 'https://api.datamuse.com/words?sl=';

// Selects page elements
const inputField = document.querySelector('#input');
const submit = document.querySelector('#submit');
const responseField = document.querySelector('#responseField');

// Asynchronous function
const getSuggestions = () => {
  const wordQuery = inputField.value;
  const endpoint = `${url}${wordQuery}`;
  
  fetch(endpoint, {cache: 'no-cache'}).then(response => {
    if (response.ok) {
      return response.json();
    }
    throw new Error('Request failed!');
  }, networkError => {
    console.log(networkError.message)
  }).then(jsonResponse => {
    // renderRawResponse(jsonResponse);
    renderResponse(jsonResponse);
  })
}

// Clears previous results and display results to webpage
const displaySuggestions = (event) => {
  event.preventDefault();
  while(responseField.firstChild){
    responseField.removeChild(responseField.firstChild);
  }
  getSuggestions();
};

submit.addEventListener('click', displaySuggestions);
```

``` javascript
// Formats response to look presentable on webpage
const renderResponse = (res) => {
  // Handles if res is falsey
  if(!res){
    console.log(res.status);
  }
  // In case res comes back as a blank array
  if(!res.length){
    responseField.innerHTML = "<p>Try again!</p><p>There were no suggestions found!</p>";
    return;
  }

  // Creates an empty array to contain the HTML strings
  let wordList = [];
  // Loops through the response and caps off at 10
  for(let i = 0; i < Math.min(res.length, 10); i++){
    // creating a list of words
    wordList.push(`<li>${res[i].word}</li>`);
  }
  // Joins the array of HTML strings into one string
  wordList = wordList.join("");

  // Manipulates responseField to render the modified response
  responseField.innerHTML = `<p>You might be interested in:</p><ol>${wordList}</ol>`;
  return
}

// Renders response before it is modified
const renderRawResponse = (res) => {
  // Takes the first 10 words from res
  let trimmedResponse = res.slice(0, 10);
  // Manipulates responseField to render the unformatted response
  responseField.innerHTML = `<text>${JSON.stringify(trimmedResponse)}</text>`;
}

// Renders the JSON that was returned when the Promise from fetch resolves.
const renderJsonResponse = (res) => {
  // Creates an empty object to store the JSON in key-value pairs
  let rawJson = {};
  for(let key in res){
    rawJson[key] = res[key];
  }
  // Converts JSON into a string and adding line breaks to make it easier to read
  rawJson = JSON.stringify(rawJson).replace(/,/g, ", \n");
  // Manipulates responseField to show the returned JSON.
  responseField.innerHTML = `<pre>${rawJson}</pre>`;
}
```

## Intro to POST Requests using Fetch

In the previous exercise, we successfully wrote a GET request using the
fetch API and handled Promises to get word suggestions from Datamuse.
Give yourself a pat on the back (or two to treat yourself)!

Now, we’re going to learn how to use `fetch()` to construct POST
requests!

Take a look at the diagram to the right. It has the boilerplate code for
a POST request using `fetch()`.

Notice that the `fetch()` call takes two arguments: an endpoint and an
object that contains information needed for the POST request.

The object passed to the `fetch()` function as its second argument
contains two properties: `method`, with a value of `'POST'`, and `body`,
with a value of `JSON.stringify({id: '200'});`. This second argument
determines that this request is a POST request and what information will
be sent to the API.

A successful POST request will return a response body, which will vary
depending on how the API is set up.

The rest of the request is identical to the GET request. A `.then()`
method is chained to the `fetch()` function to check and return the
`response` as well as throw an exception when a network error is
encountered. A second `.then()` method is added on so that we can use
the response however we may choose.

### Instructions

Move on to the next exercise when you’re ready!

### Solution

<img src="https://content.codecademy.com/courses/intermediate-javascript-requests/diagrams/fetch%20POST%20transparent.svg" alt="Diagram depicting the boilerplate needed to make POST requests using the `fetch` API. " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Making a POST Request

In the previous **exercise**, we walked through the boilerplate code for
making a POST request using `fetch()` and `.then()`. In this exercise,
we’re going to use that boilerplate code to shorten a URL using the
<a href="https://developers.rebrandly.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Rebrandly URL Shortener API</a>.

We will need a Rebrandly API key. To do this, read through
<a href="https://www.codecademy.com/articles/rebrandly-signup"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">the Rebrandly sign up guide</a> to set up your API.

Keep in mind, while it’s ok to use your API key in these exercises, you
should **not** share your key with anyone (not even to ask a question in
the forums)! Also, if you reset the exercise at any point, you will have
to paste in your API key again at the top.

### Instructions

**1.**

Set the value of the `apiKey` variable to your Rebrandly API key as a
string.

If a correct key is not assigned, proper results will not be seen in the
steps afterwards.

**2.**

We will make our POST request inside the `shortenUrl() function.` Inside
the code block of `shortenUrl()`, create a `const` variable named
`urlToShorten` and assign it `inputField.value`. `urlToShorten` will
keep the value of what is being typed into the input field.

Note that we will be working inside `shortenUrl()` for the remainder of
this exercise.

**3.**

Underneath the `urlToShorten` declaration, create another `const`
variable named `data` and assign it to the stringified version of
`{destination: urlToShorten}`. We can use the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">JSON.stringify()</code> method</a>
to do this.

The `data` variable will be used to send the information, which needs to
be in string format, to the request body.

**4.**

Below our `data` variable declaration, call the `fetch()` function. Pass
`url` as its first argument and an empty object as its second argument.

**5.**

Now it’s time to add some properties to the empty object that you just
created. Add a property with the key `method` and the value `'POST'`.

**6.**

In the same object, add another property. The key for this property is
`headers` and the value will be the following object:

``` js
{
  'Content-type': 'application/json',
  'apikey': apiKey
}
```

We will use this to connect to the API.

**7.**

In that same object that has the properties `method` and `headers`, add
another property. The key is named `body` and the value will be `data`.

We’ve now created an object containing all the information we need for
our POST request!

### Solution

``` javascript
// Information to reach API
const apiKey = '<Your API Key>';
const url = 'https://api.rebrandly.com/v1/links';

// Some page elements
const inputField = document.querySelector('#input');
const shortenButton = document.querySelector('#shorten');
const responseField = document.querySelector('#responseField');

// Asynchronous functions
const shortenUrl = () => {
  const urlToShorten = inputField.value;
  const data = JSON.stringify({destination: urlToShorten});
  
    fetch(url, {
    method: 'POST',
    headers: {
      'Content-type': 'application/json',
      'apikey': apiKey
    },
    body: data
  })
}

// Clear page and call AJAX functions
const displayShortUrl = (event) => {
  event.preventDefault();
  while(responseField.firstChild){
    responseField.removeChild(responseField.firstChild);
  }
  shortenUrl();
}

shortenButton.addEventListener('click', displayShortUrl);
```

## Handling a POST Request

In the previous exercise, we set up the POST request by providing the
endpoint and the object containing all the necessary information. In
this exercise, we’ll handle the response.

The request returns a Promise which will either be resolved or rejected.
If the promise resolves, we can check and return that response. We will
chain another `.then()` method and handle the returned JSON object and
display the information to our webpage.

Let’s implement this knowledge into our code!

Remember that if you reset the exercise at any point, you will have to
paste in your API key again at the top!

### Instructions

**1.**

Chain a `.then()` method at the end of the `fetch()` function we wrote
in the previous exercise. As its first argument, pass an arrow function
as a callback that takes `response` as its single parameter.

**2.**

Inside the callback function of the `.then()` method, use a conditional
statement to check the value of the `ok` property of `response`. If it
evaluates to a truthy value, return `response.json()`.

Run the code.

**3.**

Below the curly braces of the conditional statement, `throw` a new
`Error` in case `response.ok` is falsy.

The error message should be `'Request failed!'`.

**4.**

As the second argument of the `.then()` method, add another arrow
callback function that takes `networkError` as a single parameter.

Log the `networkError.message` inside of the callback function.

By adding this second callback, you’re safeguarding yourself in the rare
event that the network returns an error!

**5.**

Chain another `.then()` method to the end of the previous `.then()`
method.

**6.**

Pass in an anonymous arrow function as an argument for our second
`.then()`. This callback function will take `jsonResponse` as its single
parameter.

Inside the callback function, call `renderResponse()` and pass in
`jsonResponse`.

The `renderResponse()` helper function can be viewed at
**public/helperFunctions.js**.

Run the code.

Put in any URL in the text field, and then click the shorten button on
the webpage. Make sure you include the entire link, including
`'http://'` or `'https://'`.

### Solution

``` javascript
// Information to reach API
const apiKey = '<Your API Key>';
const url = 'https://api.rebrandly.com/v1/links';

// Some page elements
const inputField = document.querySelector('#input');
const shortenButton = document.querySelector('#shorten');
const responseField = document.querySelector('#responseField');

// Asynchronous functions
const shortenUrl = () => {
  const urlToShorten = inputField.value;
  const data = JSON.stringify({destination: urlToShorten});
  
    fetch(url, {
    method: 'POST',
    headers: {
      'Content-type': 'application/json',
      'apikey': apiKey
    },
    body: data
  }).then(response => {
    if (response.ok) {
      return response.json();
    }
    throw new Error('Request failed!');
  }, networkError => {
    console.log(networkError.message);
  }).then(jsonResponse => {
    renderResponse(jsonResponse);
  })
}

// Clear page and call Asynchronous functions
const displayShortUrl = (event) => {
  event.preventDefault();
  while(responseField.firstChild){
    responseField.removeChild(responseField.firstChild);
  }
  shortenUrl();
}

shortenButton.addEventListener('click', displayShortUrl);
```

## Intro to async GET Requests

In the following exercises, we’re going to take what we’ve learned about
chaining Promises and make it simpler using functionality introduced in
ES8: <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">async</code></a> and <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/await"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">await</code></a>. You read that
right, you did the hard part already. Now it’s time to make it easier.

The structure for this request will be slightly different. We will use
the new keywords `async` and `await`, as well as the `try` and `catch`
statements.

Take a look at the diagram on the right.

Here are some key points to keep in mind as we walk through the code:

- The `async` keyword is used to declare an `async` function that
  returns a promise.
- The `await` keyword can only be used within an `async` function.
  `await` suspends the program while waiting for a promise to resolve.
- In a <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/try...catch"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">try…catch</code> statement</a>,
  code in the `try` block will be run and in the event of an exception,
  the code in the `catch` statement will run.

Study the `async` `getData()` function to the right to see how the
request can be written using `async` and `await`.

### Instructions

Move on to the next exercise when you’re ready!

### Solution

<img src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/requests/async-get-request.svg" alt="Diagram containing the boilerplate needed to create an `async` function. " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Making an async GET Request

In the previous exercise, we walked through the boilerplate code for
making a GET request using `async` and `await`.

In this exercise, we’re going to apply the code to get nouns that
describe the inputted word using the
<a href="https://www.datamuse.com/api/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Datamuse API</a>.

### Instructions

**1.**

Under the comment “Asynchronous function”, create a `const` variable
called `getSuggestions` and set it to a new arrow function using the
`async` keyword.

You’ll be coding inside the `getSuggestions()` function for the
remainder of this exercise.

**2.**

Inside the `getSuggestions()` function, create a `const` variable named
`wordQuery` and assign it `inputField.value`.

**3.**

Create another `const` variable called `endpoint` and assign it the
value of a string that is `url`, `queryParams`, and `wordQuery`
concatenated in that order.

**4.**

Add a `try` statement with an empty code block. Outside the code block
for `try`, add a `catch(error)` statement with a code block that logs
`error` to the console.

**5.**

Inside the `try` code block, create a `const` variable named `response`
and assign it to `await` the result of calling `fetch()` with `endpoint`
as the first argument. For this API to work within the Codecademy
browser, add `{cache: 'no-cache'}` as the second argument.

**6.**

Below the `response` variable declaration from the previous step, create
a conditional statement that checks if the `ok` property of the
`response` evaluates to a truthy value.

Inside the code block of the conditional statement, `await`
`response.json()` and save it to a new `const` variable called
`jsonResponse`.

**7.**

Still inside the conditional statement, call the function
`renderResponse()` and pass in `jsonResponse`. Then, run the code.

In the input field, type in a word and click the submit button on the
web page.

Great, now we have an organized list of words from the GET request!

The declaration of the `renderResponse()` function can be found at
**public/helperFunctions.js**.

### Solution

``` javascript
// Information to reach API
const url = 'https://api.datamuse.com/words?';
const queryParams = 'rel_jja=';

// Selecting page elements
const inputField = document.querySelector('#input');
const submit = document.querySelector('#submit');
const responseField = document.querySelector('#responseField');

// Asynchronous function
// Code goes here
const getSuggestions = async () => {
  const wordQuery = inputField.value;
  const endpoint = `${url}${queryParams}${wordQuery}`;
  try {
    const response = await fetch(endpoint, {cache: 'no-cache'});
    if(response.ok){
      const jsonResponse = await response.json();
      renderResponse(jsonResponse);
    }
  } catch (error) {
    console.log(error);
  }
}

// Clear previous results and display results to webpage
const displaySuggestions = (event) => {
  event.preventDefault();
  while(responseField.firstChild){
    responseField.removeChild(responseField.firstChild);
  }
  getSuggestions();
}

submit.addEventListener('click', displaySuggestions);
```

``` javascript
// Formats response to look presentable on webpage
const renderResponse = (res) => {
  // Handles if res is falsey
  if(!res){
    console.log(res.status);
  }
  // In case res comes back as a blank array
  if(!res.length){
    responseField.innerHTML = "<p>Try again!</p><p>There were no suggestions found!</p>";
    return;
  }

  // Creates an empty array to contain the HTML strings
  let wordList = [];
  // Loops through the response and caps off at 10
  for(let i = 0; i < Math.min(res.length, 10); i++){
    // creating a list of words
    wordList.push(`<li>${res[i].word}</li>`);
  }
  // Joins the array of HTML strings into one string
  wordList = wordList.join("");

  // Manipulates responseField to render the modified response
  responseField.innerHTML = `<p>You might be interested in:</p><ol>${wordList}</ol>`;
  return
}

// Renders response before it is modified
const renderRawResponse = (res) => {
  // Takes the first 10 words from res
  let trimmedResponse = res.slice(0, 10);
  // Manipulates responseField to render the unformatted response
  responseField.innerHTML = `<text>${JSON.stringify(trimmedResponse)}</text>`;
}

// Renders the JSON that was returned when the Promise from fetch resolves.
const renderJsonResponse = (res) => {
  // Creates an empty object to store the JSON in key-value pairs
  let rawJson = {};
  for(let key in res){
    rawJson[key] = res[key];
  }
  // Converts JSON into a string and adding line breaks to make it easier to read
  rawJson = JSON.stringify(rawJson).replace(/,/g, ", \n");
  // Manipulates responseField to show the returned JSON.
  responseField.innerHTML = `<pre>${rawJson}</pre>`;
}
```

## Intro to async POST Requests

Now that you’ve made an `async` GET request, let’s start getting
familiar with the `async` POST request.

As we’ve seen before, a POST request requires more information. Take a
look at the diagram to the right.

We still have the same structure of using `try` and `catch` as the
`async` GET request we just learned about. But, in the `fetch()` call,
we now have to include an additional argument that contains more
information like `method` and `body`.

The `method` property value is set to `'POST'` to specify the type of
request we are making. Then we have to include a `body` property with
the value of `JSON.stringify({id: 200})`.

### Instructions

Move on to the next exercise when you’re ready!

### Solution

<img src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/requests/async-post-request-fixed.svg" alt="Diagram containing the boilerplate needed to make an async function for a POST request. " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Making an async POST Request

Since we’ve reviewed the boilerplate code for an `async` POST request,
the next step is to incorporate that logic into making a real request.

In this exercise, we’ll need to retrieve our Rebrandly API key to access
the <a href="https://app.rebrandly.com/account/api-keys"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Rebrandly API</a>.

We will then pass in the endpoint and the request object into the
`fetch()` method to make our POST request.

If you reset the exercise at any point, you will have to paste in your
API key again at the top!

### Instructions

**1.**

At the top of **main.js**, assign `apiKey` to your Rebrandly API key.

**2.**

The `fetch()` function should be inside the `try{}` statement, which
should be inside the `shortenUrl()` function. In the `fetch()` function,
pass in `url` as the first argument and an empty object as the second
argument.

In that empty object you just created, add the following three
properties:

- `method` with a value of `'POST'`
- `body` with a value of `data`
- `headers` with a value of the object below:

<!-- -->

    {
      'Content-type': 'application/json',
      'apikey': apiKey
    }

Run the code. Then paste in the URL again and click the shorten button.

Great job using Rebrandly to shorten your URL!

### Solution

``` javascript
// information to reach API
const apiKey = '<Your API Key>';
const url = 'https://api.rebrandly.com/v1/links';

// Some page elements
const inputField = document.querySelector('#input');
const shortenButton = document.querySelector('#shorten');
const responseField = document.querySelector('#responseField');

// Asynchronous functions
// Code goes here
const shortenUrl = async () => {
    const urlToShorten = inputField.value;
  const data = JSON.stringify({destination: urlToShorten});
  try {
    const response = await fetch(url, {
            method: 'POST',
      body: data,
      headers: {
        'Content-type': 'application/json',
                'apikey': apiKey
      }
    });
        if(response.ok){
      const jsonResponse = await response.json();
      renderResponse(jsonResponse);
    }
  } catch (error) {
    console.log(error);
  }
}

// Clear page and call Asynchronous functions
const displayShortUrl = (event) => {
  event.preventDefault();
  while(responseField.firstChild){
    responseField.removeChild(responseField.firstChild);
  }
  shortenUrl();
}

shortenButton.addEventListener('click', displayShortUrl);
```

## Review

In this lesson, we learned how to make GET and POST requests using the
Fetch API and `async`/`await` keywords. Let’s recap on the concepts
covered in the previous exercises:

- GET and POST requests can be created in a variety of ways.
- We can use `fetch()` and `async`/`await` to asynchronous request data
  from APIs.
- Promises are a type of JavaScript object that represents data that
  will eventually be returned from a request.
- The `fetch()` function can be used to create requests and will return
  promises.
- We can chain `.then()` methods to handle promises returned by the
  `fetch()` function.
- The `async` keyword is used to create asynchronous functions that will
  return promises.
- The `await` keyword can only be used with functions declared with the
  `async` keyword.
- The `await` keyword suspends the program while waiting for a promise
  to resolve.

Congratulations on learning all about asynchronous requests using
`fetch()`, `async`, and `await`! These concepts are fundamental to
helping you develop more robust web apps!

### Instructions

Play around with the browser and code to make GET and POST requests. To
make POST requests to the Rebrandly API, make sure you assign `apiKey`
your Rebrandly API key and run the code!

If you want to challenge yourself:

- Rewrite the requests from scratch.
- Replace the helper functions (`renderResponse()` in
  **public/helperFunctions.js**) with your own code.
- Use different APIs to make GET/POST requests using `async`/`await`.

### Solution

``` javascript
// NOTE: wordSmith functions from lines 4 - 41
// NOTE: byteSize functions from lines 43 - 85 (remember to add your API key!)

/*
wordSmith
*/
// Information to reach API
const dataMuseUrl = 'https://api.datamuse.com/words?';
const queryParams = 'rel_jja=';

// Selecting page elements
const inputField = document.querySelector('#input');
const submit = document.querySelector('#submit');
const responseField = document.querySelector('#responseField');

// Asynchronous function
// Code goes here
const getSuggestions = async () => {
  const wordQuery = inputField.value;
  const endpoint = `${dataMuseUrl}${queryParams}${wordQuery}`;
  try {
    const response = await fetch(endpoint, {cache: 'no-cache'});
    if(response.ok){
      const jsonResponse = await response.json();
      renderWordResponse(jsonResponse);
    }
  } catch (error) {
    console.log(error);
  }
}

// Clear previous results and display results to webpage
const displaySuggestions = (event) => {
  event.preventDefault();
  while(responseField.firstChild){
    responseField.removeChild(responseField.firstChild);
  }
  getSuggestions();
}

submit.addEventListener('click', displaySuggestions);

/*
byteSize
*/
// information to reach API
const apiKey = '<Your API Key>';
const rebrandlyEndpoint = 'https://api.rebrandly.com/v1/links';

// Some page elements
const shortenButton = document.querySelector('#shorten');

// Asynchronous functions
// Code goes here
const shortenUrl = async () => {
    const urlToShorten = inputField.value;
  const data = JSON.stringify({destination: urlToShorten});
  try {
    const response = await fetch(rebrandlyEndpoint, {
            method: 'POST',
      body: data,
      headers: {
        'Content-type': 'application/json',
                'apikey': apiKey
      }
    });
        if(response.ok){
      const jsonResponse = await response.json();
      renderByteResponse(jsonResponse);
    }
  } catch (error) {
    console.log(error);
  }
}

// Clear page and call Asynchronous functions
const displayShortUrl = (event) => {
  event.preventDefault();
  while(responseField.firstChild){
    responseField.removeChild(responseField.firstChild);
  }
  shortenUrl();
}

shortenButton.addEventListener('click', displayShortUrl);
```

``` javascript
// wordSmith helperFunctions are on lines 4 - 50
// byteSize helperFunctions are on lines 52 - 76

// Formats Response to look presentable on webpage
const renderWordResponse = (res) => {
  // Handles if res is falsey
  if(!res){
    console.log(res.status);
  }
  // In case res comes back as a blank array
  if(!res.length){
    responseField.innerHTML = "<p>Try again!</p><p>There were no suggestions found!</p>";
    return;
  }

  // Creates an array to contain the HTML strings
  let wordList = []
  // Loops through the response and maxxing out at 10
  for(let i = 0; i < Math.min(res.length, 10); i++){
    // Creates a list of words
    wordList.push(`<li>${res[i].word}</li>`);
  }
  // Joins the array of HTML strings into one string
  wordList = wordList.join("");

  // Manipulates responseField to render the modified response
  responseField.innerHTML = `<p>You might be interested in:</p><ol>${wordList}</ol>`;
  return;
}

// Renders response before it is modified
const renderRawWordResponse = (res) => {
  // Takes the first 10 words from res
  let trimmedResponse = res.slice(0, 10);
  // Manipulates responseField to render the unformatted response
  responseField.innerHTML = `<text>${JSON.stringify(trimmedResponse)}</text>`;
}

// Renders the JSON that was returned when the Promise from fetch resolves.
const renderJsonWordResponse = (res) => {
  // Creating an empty object to store the JSON in key-value pairs
  let rawJson = {};
  for(let key in response){
    rawJson[key] = response[key];
  }
  // Converting JSON into a string and adding line breaks to make it easier to read
  rawJson = JSON.stringify(rawJson).replace(/,/g, ", \n");
  // Manipulates responseField to show the returned JSON.
  responseField.innerHTML = `<pre>${rawJson}</pre>`;
}

// Manipulates responseField to render a formatted and appropriate message
const renderByteResponse = (res) => {
  if(res.errors){
    // Will change the HTML to show this error message if the response had an error
    responseField.innerHTML = "<p>Sorry, couldn't format your URL.</p><p>Try again.</p>";
  } else {
    // If there was no error, then the HTML will show this message
    responseField.innerHTML = `<p>Your shortened url is: </p><p> ${res.shortUrl} </p>`;
  }
}

// Manipulates responseField to render an unformatted response
const renderRawByteResponse = (res) => {
  if(res.errors){
    // Changes the HTML to show this error message if the response had an error
    responseField.innerHTML = "<p>Sorry, couldn't format your URL.</p><p>Try again.</p>";
  } else {
    // Changes the HTML to show this raw response if there was no error
    // Formats the response into a more organized structure
    let structuredRes = JSON.stringify(res).replace(/,/g, ", \n");
    structuredRes = `<pre>${structuredRes}</pre>`;

    responseField.innerHTML = `${structuredRes}`;
  }
}
```

# Film Finder

You’ve caught up on your list of TV shows and movies and want to get
recommendations for what to watch next, but aren’t sure where to look.
In this project, you’ll use your knowledge of HTTP requests and
asynchronous JavaScript to create a movie discovery app that will
recommend random movies by genre. You’ll be able to choose from several
genres, and like or dislike a movie to get another suggestion.

Before you begin, you’ll need to
<a href="https://www.themoviedb.org/signup"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">create an account</a> on The Movie
Database website. After you create your account and verify your email
address, click on your user icon at the top right corner and navigate to
the Settings page.

<img
src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/requests/TMDB-Settings.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the settings page on the Movie Database website" />

On the Settings page, navigate to the API section and click on the link
to Request an API Key to register as a Developer.

You’ll be asked to enter some personal information like your address and
phone number. This is pretty common. Many APIs use this information to
keep track of how their data is being used. As a part of your
registration, you will also be asked to provide a URL for the site where
you will be using this API. Here, you can list
`"https://codecademy.com"`. Check out these <a
href="https://developers.themoviedb.org/3/getting-started/introduction"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">instructions</a> if you need further
assistance with registering for an API key.

After you finish this project, feel free to challenge yourself to
continue building it out. For example, you might recommend TV shows
instead of movies, or change the information you present about the
recommended movies. The possibilities are endless. Next time you find
yourself needing new content recommendations, you’ll know where to turn!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Populate Drop-down Menu with Genres

1\.

Save the API key you obtained from the TMDB API to the `tmdbKey`
variable. We’ll be making multiple calls to the TMDB API and will
reference this key in the upcoming steps.

Remember not to share this API key with others!

2\.

Check the <a
href="https://developers.themoviedb.org/3/getting-started/introduction"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">TMDB documentation</a> to find the API’s
base URL, and save it to the `tmdbBaseUrl` variable.

We will append specific endpoints to this URL for each of our requests
to the TMDB API.

3\.

For the next several steps we’ll be working inside the `getGenres()`
function to fetch a list of genres from the API.

Check the
<a href="https://developers.themoviedb.org/3/genres/get-movie-list"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">TMDB documentation</a> to find the
“Genres” API endpoint. Create a variable called `genreRequestEndpoint`
inside `getGenres()` and set it to the “Genres” API endpoint.

4\.

We will use query parameters to add more specificity to our request.
Still inside the `getGenres()` function, create a variable called
`requestParams` and set it to a query string where the key is `api_key`
and the value is `tmdbKey`.

5\.

Let’s put together the URL where we’ll send our `fetch` request. Create
a variable called `urlToFetch` and set it to a string that consists of
`tmdbBaseUrl`, followed by `genreRequestEndpoint`, followed by
`requestParams`.

6\.

Turn `getGenres()` into an asynchronous function that returns a promise.
We’ll include our `fetch()` request in this function, and making it
asynchronous will simplify handling the promise our API call returns.

7\.

We need a straightforward way to catch and handle errors if our
`fetch()` request fails. Underneath our variable declarations inside the
`getGenres()` function, add a `try/catch` statement. Leave the `try`
block empty for now. In the `catch` block, log caught errors to the
console.

8\.

In the `try` block, use `fetch()` to send a `GET` request to
`urlToFetch`. Await the response and save it to a variable called
`response`. We need to await the resolution of our `fetch()` call so
that we can do something with the data we get back.

9\.

Still inside the `try` block, create a conditional statement that checks
if the `.ok` property of the `response` object evaluates to a truthy
value.

10\.

Inside the `if` statement of our `try` block, we’ll capture the data
that we need to populate our dropdown menu. To get the requested data,
convert the response object to a JSON object. Await the resolution of
this method and save it to a variable called `jsonResponse`.

11\.

To make sure your code is working, log `jsonResponse` to the console
inside our `if` statement. You should see a single object with a single
key, `genres`. The value of `genres` is an array that lists TMDB’s
genres.

Save the `genres` property of `jsonResponse` in a variable called
`genres`. Log this variable to the console to confirm that it contains
the correct information.

12\.

Return `genres` as the very last line of the `if` statement inside our
`try` block of the `getGenres()` function.

When you run your program, you should now be able to see your dropdown
menu populated with genres!

## Get a Random Movie

13\.

For the next several steps we’ll be working inside `getMovies()` to
fetch a list of movies based on the genre selected from the list of
genres we returned in `getGenres()`.

Check the
<a href="https://developers.themoviedb.org/3/discover/movie-discover"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">TMDB documentation</a> to find the “Movie
Discover” API endpoint. Below the `selectedGenre` variable declaration,
save this endpoint to a variable called `discoverMovieEndpoint`.

14\.

Like we did for `getGenres()`, we’ll create a variable called
`requestParams`. Set it equal to a query string with two parameters. The
first will be our `api_key` with the value, `tmdbKey`. The second
parameter will have the `with_genres` key with its value set to the
`selectedGenre` variable.

`selectedGenre` stores the returned value from a helper function (the
`getSelectedGenre()` function in **helpers.js**) that captures the
user’s selected genre.

Let’s also put together the URL where we’ll send our fetch request.
Create a variable called `urlToFetch`. Set it to a string that consists
of `tmdbBaseUrl`, followed by `discoverMovieEndpoint`, then
`requestParams`.

15\.

Turn `getMovies()` into an asynchronous function that returns a promise.
This will simplify handling the promise that our `fetch()` request will
return.

Add `try/catch` blocks inside `getMovies()`, after our variable
declarations.

In the `catch` block, log any errors to the console. In the `try` block,
use `fetch()` to send a `GET` request to `urlToFetch`. Await the
response and save it to a variable called `response`.

16\.

Still inside the `try` block, create an `if` statement that checks if
the `.ok` property of the `response` object evaluates to a truthy value.

Inside the `if` statement, convert the response to a JSON object. Await
the resolution of this method, and save it to a variable called
`jsonResponse`.

Log the `jsonResponse` object to the console. To see your output in the
console, you will need to call `getMovies()` after the function
declaration. In the console, you’ll see a key called `results` that
holds an array of all the movies in the first page of results.

17\.

Below our `jsonResponse` variable declaration in the `if` statement,
store the `results` property of `jsonResponse` in a variable called
`movies`. Log this variable to the console to confirm that it contains
the correct information.

Return `movies` as the last line of the `if` statement. Later on, we’ll
use this list to select a random movie as a suggestion.

After you check what `movies` logs to the console, remove the
`getMovies()` function call. Otherwise, it will automatically execute
every time you run your program, causing unexpected behavior later.

## Get Movie Info

18\.

For the next several steps, we’ll be working inside the `getMovieInfo()`
function to fetch the details of a random movie from the list of movies
we returned in `getMovies()`.

Modify `getMovieInfo()` by having it accept a parameter, `movie`. Then,
inside the function, create a variable called `movieId` that is set to
the `id` property of the `movie` parameter. We will be using the `id`
property to make another call to the TMDB API.

19\.

Reference the
<a href="https://developers.themoviedb.org/3/movies/get-movie-details"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">TMDB documentation</a> to find the movie
“Details” endpoint. Save it to a variable called `movieEndpoint` and
replace `{movie_id}` in the endpoint with our `movieId` variable.

20\.

Let’s create our query params and the URL where we’ll send our `fetch()`
request. Create a variable called `requestParams` and set it to be a
query string with one parameter with `api_key` set to `tmdbKey`.

Create a variable called `urlToFetch`. Set it equal to a string that
consists of `tmdbBaseUrl`, followed by `movieEndpoint`, then
`requestParams`.

21\.

Turn `getMovieInfo()` into an asynchronous function that returns a
promise. Add a `try/catch` block inside `getMovieInfo()`, after our
variable declarations.

In the `catch` block, log any errors to the console. In the `try` block,
use `fetch()` to send a `GET` request to `urlToFetch`. Await the
response and save it to a variable called `response`.

22\.

Still inside the `try` block, create an `if` statement that checks if
the `.ok` property of the `response` object evaluates to a truthy value.

Our response contains a single object with details about the given
movie. Inside the `if` statement, convert this response to a JSON
object. Await the resolution of this method, and save it to a variable
called `movieInfo`.

23\.

Return `movieInfo` as the last line of the `if` block.

## Display Movie

24\.

For this next set of tasks, we’ll be working inside the
`showRandomMovie()` function to piece together our functionality and
render a random movie’s info to the page.

Turn `showRandomMovie()` into an asynchronous function. Then, on the
last line of the function, call `getMovies()`, await its return, and
save it to a variable called `movies`. Since `getMovies()` returns a
promise, we need to await its resolution so that we can do something
with its return value in upcoming steps.

25\.

Below our `movies` declaration, call `getRandomMovie()`, passing
`movies` as the argument. Store the returned value in a variable called
`randomMovie`.

26\.

Below our `randomMovie` declaration, call `getMovieInfo()`, passing
`randomMovie` as the argument. Await its return and save it to a
variable called `info`.

27\.

Finally, as the last line of the `showRandomMovie()` function, call
`displayMovie()`, passing `info` as the argument.

Run your program to see movie suggestions. Like or dislike each movie to
be shown another random suggestion. Change genres to get different
suggestions based on your interests.

28\.

Congratulations! You’ve finished building the Film Finder project! If
you’re looking for additional ways to challenge yourself, consider the
following:

- Checkout the `displayMovie()` function in **helpers.js** to use the
  DOM to rearrange the layout of information on the page. Try displaying
  different types of information like cast, or release date.
- Create a way to store a user’s liked and disliked movies and display
  this list on the page.
- Our API call inside of `getMovies()` returns many pages of results,
  but currently our program only randomizes results from the first page.
  To randomize our results even more, update `getMovies()` so that
  `movies` contains results from a random page instead of the first
  page.

### [Solution](js-film-finder)

[Learn JavaScript Film
Finder](https://www.youtube.com/watch?v=W6El1fjUaJI)

# Review: Async JavaScript and HTTP Requests

In this Unit, you learned about asynchronous JavaScript and how to use
it to make HTTP requests to APIs.

Congratulations! The goal of this unit was to understand APIs and
introduce asynchronous JavaScript and the concepts behind HTTP requests.

Having completed this unit, you are now able to:

- Write asynchronous JavaScript with async-await and promises syntax
- Explain the different types of HTTP requests
- Describe REST protocol
- Work with JSON data
- Make HTTP requests to external web APIs

If you are interested in learning more about these topics, here are some
additional resources:

- Documentation:
  <a href="https://developer.mozilla.org/en-US/docs/Web/Guide/AJAX"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Ajax</a>
- Video: <a
  href="https://www.youtube.com/watch?v=8aGhZQkoFbQ&amp;feature=emb_title"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">What the Heck is the Event Loop
  Anyways</a>
- Resource: <a
  href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous/Promises"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN’s Guide to Graceful asynchronous
  Programming with Promises</a>
- Resource: <a
  href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous/Choosing_the_right_approach"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN’s Guide to Choosing the Right
  Approach</a>
- Article: <a
  href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Introduction"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN’s Introduction to web APIs</a>
- Article:
  <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN’s Overview of HTTP</a>
- Resource: <a
  href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Fetching_data"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN’s Guide to Fetching Data From the
  Server</a>
- Documentation: <a
  href="https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN: Using the Fetch API</a>
- Resource: <a
  href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Third_party_APIs"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN’s Guide to Third-party APIs</a>

Remember, you will put all of this knowledge into practice with an
upcoming Portfolio Project. If you ever get stuck while working on the
project, you can come back to this Unit and review what you have
learned.

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
