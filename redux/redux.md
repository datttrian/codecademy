# Introduction: Redux

In this unit, you will be introduced to Redux.

The goal of this unit is to introduce you to the Redux library. Redux is
most commonly used with React to manage application state, but can also
be used with other libraries and frameworks, such as Angular. Redux is
good for when your application becomes very large and has lots of moving
parts. You may not always need Redux in an application, but it is
helpful to learn and a good thing to have on your resume.

After this unit, you will be able to:

- Use the Redux library
- Understand why and when to use Redux in a React app
- Know how to use Redux as middleware logic

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

# Core Concepts in Redux

## Introduction to Redux

Imagine a calendar app. One part of the app lists all of the events.
Another part of the app sets filters on which types of events are shown.
A third part of the app sets the current time zone and a fourth part
creates new events. Whew, that’s a lot to keep track of!

In React, each of these “parts” would be a component and data would need
to be shared and updated by these components. Developers call this
shared data the *state* of the application. Meanwhile, the process of
sharing and updating this *state* is called *state management*.
Depending on the size and complexity of your state, state management can
be a complicated process in plain React.

That’s where <a href="https://redux.js.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Redux</a> comes in. Redux is a state
management library that follows a pattern known as the
<a href="https://facebook.github.io/flux/docs/in-depth-overview"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Flux architecture</a>. In the Flux
pattern, and in Redux, shared information is not stored in components
but in a single object. Components are just given data to render and can
request changes using events called *actions*. The state is available
throughout the application and updates are made in a predictable manner:
components are “notified” whenever a change is made to the state.

To put it another way, <a
href="https://redux.js.org/tutorials/fundamentals/part-1-overview#why-should-i-use-redux"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here’s the description from the Redux
documentation</a>: “The patterns and tools provided by Redux make it
easier to understand when, where, why, and how the state in your
application is being updated, and how your application logic will behave
when those changes occur. Redux guides you towards writing code that is
predictable and testable, which helps give you confidence that your
application will work as expected.”

There are similar tools like <a href="https://recoiljs.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Recoil</a>,
<a href="https://mobx.js.org/README.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MobX</a>, and
<a href="https://www.apollographql.com/docs/react/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Apollo Client</a>, but Redux is the
tried-and-true tool for state management in React applications. It’s
more popular in the developer community and it’s well supported with
documentation and online tutorials.

This lesson will cover the core concepts of Redux: how Redux works and
the basic terminology used to describe a Redux app. It assumes you know
JavaScript functions, arrays, and objects. If you need to review these,
check out the corresponding units in
<a href="https://www.codecademy.com/learn/introduction-to-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">our Learn JavaScript course</a>.



This diagram shows an imaginary calendar application and all of the
data, or state, informing its display.



<img src="https://static-assets.codecademy.com/Courses/Learn-Redux/lesson-assets/redux-calendar-app_v2-transparent-bg.png" alt="Calendar application with home, travel, and work filters. The two calendar events are Pizza Night and Ask for a raise. Code snippet shows a JavaScript object representing the underlying information." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## One-Way Data Flow

In most applications, there are three parts:

- State – the current data used in the app
- View – the user interface displayed to users
- Actions – events that a user can take to change the state

The flow of information would go like this:

- The state holds the current data used by the app’s components.
- The view components display that state data.
- When a user interacts with the view, like clicking a button, the state
  will be updated in some way.
- The view is updated to display the new state.

With plain React, these three parts overlap quite a bit. Components not
only render the user interface, but they also may manage their own
state. When actions that may change the state occur, components need to
directly communicate these changes to each other.

Redux helps separate the state, the view, and actions by requiring that
the state be managed by a single source. Requests to change the state
are sent to this single source by view components in the form of an
action. Any components of the view that would be affected by these
changes are informed by this single source. By imposing this structure,
Redux makes our code more readable, reliable, and maintainable.



This diagram represents the one-way data flow in Redux: from state to
view to action to state and so on. With Redux, data ALWAYS flows in this
direction.



<img src="https://static-assets.codecademy.com/Courses/Learn-Redux/lesson-assets/One-way-data-flow-v2-transparent-bg.png" alt="Circular diagram with three nodes: Actions points to State. State points to View. View points to Actions." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## State

*State* is the current information behind a web application.

For a calendar application it includes the events (name, date, label,
etc.), the current timezone, and the display filters. For a todo app it
includes the todo items (description, completed/not completed), the
current order of the items, and display filters. For a word editor, it
includes the contents of the document, the print settings, and comments.

With Redux, state can be any JavaScript type, including: number, string,
boolean, array, and object.

Here’s an example state for a todo app:

``` jsx
const state = [ 'Print trail map', 'Pack snacks', 'Summit the mountain' ];
```

Each piece of information in this state—an array in this case—would
inform some part of the user interface.



**1.**

Define the state of a playlist application in a `state` array. It should
represent this playlist:

1.  Take Five
2.  Claire de Lune
3.  Respect



``` jsx
const state = [ 'Take Five', 'Claire de Lune', 'Respect' ];
```

## Actions

Most well-designed applications will have separate components that need
to communicate and share data with each other.

A todo list might have an input field where the user can type in a new
todo item. The application might transfer this data from the input
field, add it to an array of all todos, and then render them as text on
the screen. This entire interaction can be defined as an *action*. In
Redux, actions are represented as plain JS objects.

Here’s what that action might look like:

``` jsx
const action = {
  type: 'todos/addTodo',
  payload: 'Take selfies'
};
```

- Every action must have a `type` property with a string value. This
  describes the action.
- Typically, an action has a `payload` property with an object value.
  This includes any information related to the action. In this case, the
  payload is the todo text.
- When an action is generated and notifies other parts of the
  application, we say that the action is *dispatched*.

Here are two more example actions:

“Remove all todos”. This requires no `payload` because no additional
information is needed:

``` jsx
const action = {
  type: 'todos/removeAll'
}
```

“Remove the ‘Pack snacks’ todo”:

``` jsx
const action = {
  type: 'todos/removeTodo',
  payload: 'Pack snacks'
}
```



**1.**

Define an action object named `addNewSong` that represents adding a new
song to the playlist.

It should have the following information:

- A `type` of `'songs/addSong'`
- A `payload` of `'Halo'`, the title of the song to add

**2.**

Define an action named `removeSong` that represents removing a song from
the playlist.

It should have the following information:

- A `type` of `'songs/removeSong'`
- A `payload` of `'Take Five'`, the title of the song to remove

**3.**

Define an action named `removeAll` that represents removing all songs
from the playlist.

It should have the following information:

- A `type` of `'songs/removeAll'`



``` jsx
const state = [ 'Take Five', 'Claire de Lune', 'Respect' ];

const addNewSong = {
  type: 'songs/addSong',
  payload: 'Halo'
};

const removeSong = {
  type: 'songs/removeSong',
  payload: 'Take Five'
};

const removeAll = {
  type: 'songs/removeAll'
}
```

## Reducers

So far, we’ve defined the state of our application and the actions
representing requests to change that state, but we haven’t seen how
these changes are carried out in JavaScript. The answer is a *reducer*.

A *reducer*, or reducer function, is a plain JavaScript function that
defines how the current state and an action are used in combination to
create the new state.

Here’s an example of a reducer function for a todo app:

``` jsx
const initialState = [ 'Print trail map', 'Pack snacks', 'Summit the mountain' ];
 
const todoReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'todos/addTodo': {
      return [ ...state, action.payload];
    }
    case 'todos/removeAll': {
      return [];
    }
    default: {
      return state;
    }
  }
}
```

There a few things about this reducer that are true for all reducers:

- It’s a plain JavaScript function
- It defines the application’s next state given a current state and a
  specific action
- It returns a default initial state if no action is provided
- It returns the current state if the action is not recognized

There are two intermediate JavaScript syntaxes used here:

1.  We use the equals sign `=` to <a
    href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Default_parameters"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">supply a default value</a> for the
    `state` parameter.
2.  We use <a
    href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">the spread operator (<code
    class="code__2rdF32qjRVp7mMVBHuPwDS">…</code>)</a> to copy the
    current state and any changed values into a new object, not the
    existing `state` argument. We’ll explain why in the next exercise.



**1.**

Let’s start building a reducer for our playlist application. For this
first checkpoint, it should:

- Be named `reducer`
- Accept `state` and `action` arguments
- Default `state` to `initialState` if no value is provided
- Use a switch statement on the `action.type` property
- Always return `state` as the `default` case

**2.**

Add a `case` for the `'songs/addSong'` action type.

If the `action.type` is `'songs/addSong'`, return a copy of the state
object with the new song added.

You can expect an action like this:

``` jsx
{ 
  type: 'songs/addSong', 
  payload: 'Take Five'
}
```

**3.**

Add a `case` for the `'songs/removeSong'` action type.

If the `action.type` is `'songs/removeSong'`, return a copy of the state
object with the specified song removed. Use the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">array <code
class="code__2rdF32qjRVp7mMVBHuPwDS">filter()</code> method</a>.

You can expect an action like this:

``` jsx
{ 
  type: 'songs/removeSong', 
  payload: 'Respect'
}
```



``` jsx
// Define reducer here
const reducer = (state = initialState, action) => {
  switch (action.type) {
    case 'songs/addSong': {
      return [...state, action.payload]
    }
    case 'songs/removeSong': {
      return state.filter(song => song !== action.payload);
    }
    default: {
      return state;
    }
  }
}


const initialState = [ 'Take Five', 'Claire de Lune', 'Respect' ];

const addNewSong = {
  type: 'songs/addSong',
  payload: 'Halo'
};

const removeSong = {
  type: 'songs/removeSong',
  payload: 'Take Five'
};

const removeAll = {
  type: 'songs/removeAll'
}
```

## Rules of Reducers

In the previous exercise, we wrote reducers that returned a new copy of
the state rather than editing it directly. We did this to adhere to the
<a
href="https://redux.js.org/tutorials/fundamentals/part-3-state-actions-reducers#rules-of-reducers"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">rules of reducers provided by the Redux
documentation</a>:

1.  They should only calculate the new state value based on the `state`
    and `action` arguments.
2.  They are not allowed to modify the existing state. Instead, they
    must copy the existing state and make changes to the copied values.
3.  They must not do any asynchronous logic or have other “side
    effects”.

By asynchronous logic or “side effects”, we mean anything that the
function does aside from returning a value, e.g. logging to the console,
saving a file, setting a timer, making an HTTP request, generating
random numbers.

These rules make Redux code predictable and easy to debug: tests run
reliably and other developers know what to expect from your code.



**1.**

We have some reducers here that are breaking the rules!

The reducer in **app1.js** violates the first rule of reducers: it
calculates the new state based on something other than the current state
and action arguments.

Fix this by assuming that the song being added will be passed into the
reducer as the `payload` of the `action` object.

**2.**

The reducer in **app2.js** violates the second rule of reducers: it
modifies the existing state.

Fix this by using the spread operator `...` within a new array instead
of using `push()` on the existing `state`.

**3.**

The reducer in **app3.js** violates the third rule of reducers: it has a
side effect. The initial state will not be the same every time you call
the reducer.

Fix this by assuming that the random value will be provided as the
`payload` of the `action` object.

> Note that this reducer is called with `undefined`. In this case, the
> default parameter will be used to set `state`.



``` jsx
// Reducer violates rule 1: 
// They should only calculate the new state value based on the state and action arguments.
 
const globalSong = 'We are the World';

const playlistReducer = (state = [], action) => {
 switch (action.type) {
   case 'songs/addGlobalSong': {
     return [...state, action.payload];
   }
   default:
     return state;
 }
}
 
// Example call to reducer
const state = [ 'Take Five', 'Claire de Lune', 'Respect' ];
const addAction = { type: 'songs/addGlobalSong', payload: 'We are the World' };
const newState = playlistReducer(state, addAction);
```

## Immutable Updates and Pure Functions

In programming, there is a more general way to describe the three rules
of reducers in Redux: reducers must make *immutable updates* and be
*pure functions*.

If a function makes *immutable updates* to its arguments, it does not
change the argument but instead makes a copy and changes that copy.
(Sounds similar to rule 2, no?) It’s called updating *immutably* because
the function doesn’t change, or *mutate*, the arguments.

This function mutates its argument:

``` jsx
const mutableUpdater = (obj) => {
  obj.completed = !obj.completed;
  return obj;
}
 
const task = { text: 'do dishes', completed: false };
const updatedTask = mutableUpdater(task);
console.log(updatedTask); 
// Prints { text: 'do dishes', completed: true };
 
console.log(task); 
// Prints { text: 'do dishes', completed: true };
```

Meanwhile, this function “immutably updates” its argument:

``` jsx
const immutableUpdater = (obj) => {
  return {
    ...obj,
    completed: !obj.completed
  }
}
 
const task = { text: 'iron clothes', completed: false };
const updatedTask = immutableUpdater(task);
console.log(updatedTask); 
// Prints { text: 'iron clothes', completed: true };
 
console.log(task); 
// Prints { text: 'iron clothes', completed: false };
```

By copying the contents of the argument `obj` into a new object
(`{...obj}`) and updating the `completed` property of the copy, the
argument `obj` will remain unchanged.

Note that, plain strings, numbers, and booleans are immutable in
JavaScript so we can just return them without making a copy:

``` jsx
const immutator = (num) => num + 1;
const x = 5;
const updatedX = immutator(x);
 
console.log(x, updatedX); // Prints 5, 6
```

If a function is *pure*, then it will always have the same outputs given
the same inputs.

This is a combination of rules 1 and 3:

- Reducers should only calculate the new state value based on the state
  and action arguments.
- Reducers must not do any asynchronous logic or other “side effects”.

In this example, the function is not a pure function because its
returned value depends on the status of a remote endpoint.

``` jsx
const addItemToList = (list) => {
  let item;
  fetch('https://anything.com/endpoint')
    .then(response => {
      if (!response.ok) {
        item = {};
      }
 
      item = response.json();
   });
 
   return [...list, item];  
};
```

The function can be made pure by pulling the `fetch()` statement outside
of the function.

``` jsx
let item;
  fetch('https://anything.com/endpoint')
    .then(response => {
      if (!response.ok) {
        item = {};
      }
 
      item = response.json();
   });
 
const addItemToList = (list, item) => {
    return [...list, item];
};
```



**1.**

The function in **immutable.js** mutates its arguments because it uses
the array `splice()` function. Rewrite it using the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">slice()</code> method</a> and the
<a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">spread operator</a>.

If done correctly, the output should still be:

``` jsx
[ 'a', 'c', 'd' ]
```

**2.**

The function `capitalizeMessage()` in **pure.js** is impure because it
depends on an external file. Re-write it so that it is pure.

You will need to read the file outside of the function and pass in the
resulting data.



``` jsx
const removeItemAtIndex = (list, index) => {
 return [
   ...list.slice(0,index),
   ...list.slice(index+1, list.length)
 ]
};

console.log(removeItemAtIndex(['a', 'b', 'c', 'd'], 1));
```

## Store

So far we have covered state, actions, reducers, and how they
participate in the one-way data flow. Where, in JavaScript, does all of
this take place?

Redux uses a special object called the *store*. The store acts as a
container for state, it provides a way to dispatch actions, and it calls
the reducer when actions are dispatched. In nearly every Redux
application, there will only be one store.

We can rephrase our data flow using the new term:

1.  The store initializes the state with a default value.
2.  The view displays that state.
3.  When a user interacts with the view, like clicking a button, an
    action is dispatched to the store.
4.  The dispatched action and the current state are combined in the
    store’s reducer to determine the next state.
5.  The view is updated to display the new state.

We won’t be writing any code for the store during this lesson, but it’s
important that you understand this term for future Redux lessons.



Follow the diagram’s one-way data flow. Notice how the store contains
the reducer and state. It receives actions and calls the reducer with
the action and current state.



[Store](https://static-assets.codecademy.com/Courses/Learn-Redux/lesson-assets/interactive-image-basic-data-flow/index.html)

## Review

Congratulations! In this lesson you’ve built a strong conceptual
foundation of Redux and built a state object, some actions, and a
reducer along the way. Here’s what else you learned:

- Redux is a library for managing and updating application state based
  on the Flux architecture

- Redux makes code more predictable, testable, and maintainable by
  consolidating state in a single object. Components are just given data
  to render and can request changes using events called actions.

- In a Redux application, *data flows in one direction*: from state to
  view to action back to state and so on.

- *State* is the current information behind a web application.

- An *action* is an object describing an event in the application. It
  must have a `type` property and it typically has a `payload` property
  as well.

- A *reducer* is a function that determines the application’s next state
  given a current state and a specific action. It returns a default
  initial state if none is provided and returns the current state if the
  action is not recognized

- A reducer must follow these three rules:

  1.  They should only calculate the new state value based on the
      existing state and action.
  2.  They are not allowed to modify the existing state. Instead, they
      must copy the existing state and make changes to the copied
      values.
  3.  They must not do any asynchronous logic or other “side effects”.

- In other words, a reducer must be a *pure* function and it must update
  the state *immutably*.

- The *store* is a container for state, it provides a way to dispatch
  actions, and it calls the reducer when actions are dispatched.
  Typically there is only one store in a Redux application.



Take another look at the diagram depicting data flow in a Redux
application. Make sure you can explain every part of this diagram before
moving on.



<img alt="User interface receives click event. Event is handled by event handler. Event handler dispatches an action. Action and current state are received by reducer. Reducer produces new state. User interface updates to show new state." src="https://redux.js.org/assets/images/ReduxDataFlowDiagram-49fa8c3968371d9ef6f2a1486bd40a26.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

# Redux Road

We’ve learned the core concepts of Redux. Now it’s game time.

In this project you will build an adventure game using reducers, state,
and actions. The state will represent, well, the state of the game. It
contains the player’s inventory, distance travelled, and time on the
road. Each event in the game is represented as an action. Players can
gather supplies, travel, and–if they play risky–sometimes tip over the
wagon carrying their supplies.

Let’s get started!



Mark the tasks as complete by checking them off

## Initial State and Reducer

1\.

First, define the starting point of our game. The player begins on day 0
at kilometer 0 with 100 units of supplies.

Define an `initialWagonState` with three properties:

- `supplies` starting at 100
- `distance` travelled, starting at 0
- `days` on the road, starting at 0

2\.

Define an empty reducer that will manage the state of the game. You can
give it any name you prefer.

Like any Redux reducer, it should be a function with `state` and
`action` parameters. It should set `state` to `initialWagonState` if no
value is provided.

3\.

Add a `switch` statement to your reducer. The `default` case should
return the `state`.

4\.

A player may gather supplies, which takes them a day and doesn’t cover
any distance.

If the `action.type` is `'gather'`, return a new state object with:

- 15 more supplies
- The same distance
- 1 more day

Make sure to return a new object to comply with the three rules of
reducers.

5\.

A player may travel for any number of days, which costs 20 supplies for
each day but adds 10 kilometers each day.

If the `action.type` is `'travel'`, assume that the `action.payload`
contains the number of days to travel. Return a new state object with:

- 20 less `supplies` for each day
- 10 more kilometers of `distance` traveled for each day
- The number of days added to `days`

6\.

If a player drives off-road or across deep rivers, the wagon may tip!
You’ll need to spend some supplies and a day to fix it.

If the `action.type` is `'tippedWagon'`, return a new state object with:

- 30 less `supplies`
- The same distance
- 1 more day

## Play!

7\.

Let’s try our game out.

Start a game by calling the reducer with an `undefined` state and empty
action object and storing the result in a new variable called `wagon`
(Initialize it with `let`). Then print the `wagon` value to the console.

Our initial `wagon` state should look like this:

``` jsx
{
  supplies: 100,
  distance: 0,
  days: 0
}
```

8\.

Our first day will be dedicated to travel.

- Call the reducer with the `wagon` state and an action with
  `type: 'travel'` and `payload: 1`.
- Store the returned new state back into `wagon`.
- Print the new state.

Our `wagon` state should look like this:

``` jsx
{
  supplies: 80,
  distance: 10,
  days: 1
}
```

9\.

On the second day, we stop to gather supplies.

- Call the reducer with the new `wagon` state and an action with
  `type: 'gather'` and no payload.
- Store the new state back into `wagon`.
- Print the new state.

Our `wagon` state should look like this:

``` jsx
{
  supplies: 95,
  distance: 10,
  days: 2
}
```

10\.

On the third day, we try to ford a rushing river…and our wagon tips
over, spilling some supplies.

- Call the reducer with the new `wagon` state and an action with
  `type: 'tippedWagon'`.
- Store the new state back into `wagon`
- Print the new state.

Our `wagon` state should look like this:

``` jsx
{
  supplies: 65,
  distance: 10,
  days: 3
}
```

11\.

On the following day, we set out for a long 3 days of travel.

- Call the reducer with the new `wagon` state and an action with
  `type: 'travel'` and a `payload: 3`.
- Store the new state back into `wagon`.
- Print the new state.

Our final `wagon` state should look like this:

``` jsx
{
  supplies: 5,
  distance: 40,
  days: 6
}
```

## Additions and Extra Credit

12\.

Currently, the player can continue traveling even if their supplies are
negative! Fix this in the `'travel'` case.

If there are not sufficient supplies to travel the given number of days,
return the current state.

13\.

Well done! You’ve taken great strides on the Redux Road. Watch your
supplies and watch out for snakes!

If you’d like to keep practicing, try implementing these features:

- Add a `cash` property, beginning with `200` for the initial state
- Add a `'sell'` case: Players can give away 20 supplies to gain 5 cash
- Add a `'buy'` case: Players can gain 25 supplies at the cost of 15
  cash
- Add a `'theft'` case: Outlaws steal half of the player’s cash

## [Solution](redux-road-core-concepts)

``` javascript
const initialWagonState = {
  supplies: 100,
  distance: 0,
  days: 0,
  cash: 200,
}

const useReducer = (state = initialWagonState, {type, payload}) => {
  let { supplies, distance, days, cash } = state;
  switch(type) {
    case "gather": { 
      supplies += 15;
      days ++;
      return { ...state, supplies, days }; 
      }
    case "travel": {
      supplies -= (20 * payload);
      distance += (10 * payload);
      days += payload;
      return supplies < 0 ? state : { ...state, supplies, distance, days };
    }
    case "tippedWagon": {  
      supplies = supplies - 30 < 0 ? 0: supplies - 30;
      days += 1;
      return { ...state, supplies, days }; 
    }
    case "sell": { 
      supplies -= 20;
      cash += 5;
      return supplies < 0 ? state : { ...state, supplies, cash }; 
    }
    case "buy": { 
      supplies += 25;
      cash -= 15;
      return cash < 0 ? state : { ...state, supplies, cash }; 
    }
    case "theft": { 
      cash /= 2;
      return { ...state, cash }; 
    }
    default: { return state; }  
  }
}

let wagon = useReducer(undefined, {});
console.log(wagon);
wagon = useReducer(wagon, { type: "travel", payload: 1 })
console.log(wagon);
wagon = useReducer(wagon, { type: "gather" })
console.log(wagon);
wagon = useReducer(wagon, { type: "tippedWagon" })
console.log(wagon)
wagon = useReducer(wagon, { type: "travel", payload: 3 })
console.log(wagon);
wagon = useReducer(wagon, { type: "buy" })
console.log(wagon);
wagon = useReducer(wagon, { type: "theft" })
console.log(wagon);
wagon = useReducer(wagon, { type: "sell" })
console.log(wagon);
```

    ## { supplies: 100, distance: 0, days: 0, cash: 200 }
    ## { supplies: 80, distance: 10, days: 1, cash: 200 }
    ## { supplies: 95, distance: 10, days: 2, cash: 200 }
    ## { supplies: 65, distance: 10, days: 3, cash: 200 }
    ## { supplies: 5, distance: 40, days: 6, cash: 200 }
    ## { supplies: 30, distance: 40, days: 6, cash: 185 }
    ## { supplies: 30, distance: 40, days: 6, cash: 92.5 }
    ## { supplies: 10, distance: 40, days: 6, cash: 97.5 }

# Intro to the Core Redux API

## What is the Redux API?

In this lesson, you will learn how to apply the core concepts of Redux
to a real Redux application.

Remember, Redux applications are built upon a one-way flow of data model
and are managed by the *store*:

- The *state* is the set of data values that describes the application.
  It is used to render the user interface (UI).
- Users interact with the UI which dispatch *actions* to the store. An
  action is an object that expresses a desired change to the state.
- The store generates its next state using a *reducer* function which
  receives the most recent action and the current state as inputs.
- Finally, the UI is re-rendered based on the new state of the store and
  the entire process can begin again.

Building an application that follows the core principles of Redux can be
done without external libraries. However, the dedicated
<a href="https://redux.js.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Redux library</a> provides some very
useful tools for handling the most common aspects of building a Redux
application and helps ensure that the core Redux principles are
enforced.

This lesson will focus on creating a basic Redux application with the
`createStore()` method from the Redux API and the following related
`store` methods:

- `store.getState()`
- `store.dispatch(action)`
- `store.subscribe(listener)`

*Note: The store method `store.replaceReducer(nextReducer)` is an
advanced method and will not be covered in this course.*



Before continuing on to the rest of the lesson, review the contents of
the <a href="https://redux.js.org/introduction/core-concepts"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Core Concepts page of the Redux
documentation</a> in the connected browser.

To get the most out of the docs, expand the browser window to full
screen.



[What is the Redux
API?](https://redux.js.org/introduction/core-concepts)

## Install the Redux Library

The core concepts of Redux are closely tied to a framework known as
<a href="https://facebook.github.io/flux/docs/in-depth-overview"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Flux</a>. Both share the same concept of
a one-way flow of data and a centralized store to reduce actions into
the application’s next state. While Flux was designed as a general
pattern which one could follow to build applications, Redux is a library
that provides concrete methods to help implement the framework.

To make use of the Redux package, it can be installed using the **N**ode
**P**ackage **M**anager (`npm`). Then, its methods can be imported.

Let’s start by installing the `redux` package and importing its
`createStore()` method. In the next exercise you’ll learn how to use
this method.



**1.**

In the bash terminal enter the following command for installing the
`redux` package using NPM.

``` jsx
npm install redux
```

**2.**

In the **store.js** file use <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">ES6 import</a> syntax and import the
`createStore` method from the `redux` package:

``` jsx
import { createStore } from 'redux';
```



``` jsx
import { createStore } from 'redux';
```

## Create a Redux Store

As you know, every Redux application uses a reducer function that
describes which actions can update the state and how those actions lead
to the next state.

For example, suppose you wanted to build an application for a light
switch. Its reducer might look like this:

``` jsx
const initialState = 'on';
const lightSwitchReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'toggle':
      return state === 'on' ? 'off' : 'on';
    default:
      return state;
  }
}
```

This reducer handles a single action type `'toggle'` and returns the
next state of the store: `'on'` if it had been `'off'` and vice-versa.
If an unrecognized action is received, the current state of the store is
returned.

The programmer could manually execute the reducer with the current state
of the store and the desired action to perform like so:

``` jsx
let state = 'on';
state = lightSwitchReducer(state, { type: 'toggle' });
console.log(state); // Prints 'off'
```

However, this is the main responsibility of the `store`. The `store` is
an object that enforces the one-way data flow model that Redux is built
upon. It holds the current state inside, receives action dispatches,
executes the reducer to get the next state, and provides access to the
current state for the UI to re-render.

Redux exports a valuable helper function for creating this `store`
object called `createStore()`. The `createStore()` helper function has a
single argument, a reducer function.

To create a `store` with `lightSwitchReducer`, you could write:

``` jsx
import { createStore } from 'redux'
 
const initialState = 'on';
const lightSwitchReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'toggle':
      return state === 'on' ? 'off' : 'on';
    default:
      return state;
  }
}
 
const store = createStore(lightSwitchReducer);
```

For the remainder of this lesson, you will be building a simple counter
application, whose state is a single number, using the Redux library.

In the code editor, you will find the `initialState` value as well as
`countReducer`, which describes how the state can be updated in response
to an `'increment'` action.



**1.**

First, import the `createStore` method from `redux`.

**2.**

Now, below the `countReducer` function, declare a variable called
`store`.

Then, call `createStore()` with `countReducer` as the argument. Assign
the returned value to `store`.



``` jsx
// Import createStore here
import { createStore } from 'redux';

const initialState = 0;
const countReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'increment':
      return state + 1;
    default:
      return state;
  }
}

// Create the store here
const store = createStore(countReducer);
```

## Dispatch Actions to the Store

The `store` object returned by `createStore()` provides a number of
useful methods for interacting with its state as well as the reducer
function it was created with.

The most commonly used method, `store.dispatch()`, can be used to
dispatch an action to the store, indicating that you wish to update the
state. Its only argument is an action object, which must have a `type`
property describing the desired state change.

``` jsx
const action = { type: 'actionDescriptor' }; 
store.dispatch(action);
```

Each time `store.dispatch()` is called with an `action` object, the
store’s reducer function will be executed with the same `action` object.
Assuming that the `action.type` is recognized by the reducer, the state
will be updated and returned.

Let’s see how this works in the lightswitch application from the last
exercise:

``` jsx
import { createStore } from 'redux';
 
const initialState = 'on';
const lightSwitchReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'toggle':
      return state === 'on' ? 'off' : 'on';
    default:
      return state;
  }
}
 
const store = createStore(lightSwitchReducer);
 
console.log(store.getState()); // Prints 'on'
 
store.dispatch({ type: 'toggle' }); 
console.log(store.getState()); // Prints 'off'
 
store.dispatch({ type: 'toggle' });
console.log(store.getState()); // Prints 'on'
```

In this example, you can also see another `store` method,
`store.getState()`, which returns the current value of the store’s
state. Printing its value between each dispatched action allows us to
see how the store’s state changes.

Internally, when the `store` executes its reducer, it uses
`store.getState()` as the `state` argument. Though you won’t see it, you
can imagine that, when an action is dispatched like this…

``` jsx
store.dispatch({ type: 'toggle'});
```

…the store calls the reducer like this:

``` jsx
lightSwitchReducer(store.getState(), { type: 'toggle' });
```



**1.**

Let’s get back to our counter application. The count starts at `0` and
we want to increment it up to `2`.

At the bottom of **store.js** dispatch two actions with a type of
`'increment'` using the `store.dispatch()` method.

**2.**

At the bottom of **store.js**, confirm that the current state of the
store is `2` by printing out the current value of the state to the
console.

**3.**

Let’s modify the `countReducer` function so that it can handle
`'decrement'` actions as well.

Add an additional case to the `countReducer` function that handles
`'decrement'` action types and returns `state - 1`.

**4.**

Now, let’s dispatch some `'decrement'` action to the store.

At the bottom of **store.js** , dispatch 3 actions with a type of
`'decrement'`.

**5.**

Finally, print to the console the final value of `store.getState()`. The
final state should be `-1`.



``` jsx
import { createStore } from 'redux';

const initialState = 0;
const countReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'increment':
      return state + 1;
    case 'decrement':
      return state - 1;
    default:
      return state;
  }
}

const store = createStore(countReducer);

// Dispatch your actions here.
store.dispatch({type:'increment'});
store.dispatch({type:'increment'});
console.log(store.getState());

store.dispatch({type:'decrement'});
store.dispatch({type:'decrement'});
store.dispatch({type:'decrement'});
console.log(store.getState());
```

## Action Creators

As you saw in the last exercise, you are likely to dispatch actions of
the same type multiple times or from multiple places. Typing out the
entire action object can be tedious and creates opportunities to make an
error.

For example, in the light switch application, whose reducer accepts
`'toggle'` actions to turn the light `'on'` or `'off'`, you might write:

``` jsx
store.dispatch({Type:'toggle'});
store.dispatch({type:'toggel'});
store.dispatch({typo:'toggle'});
```

Did you spot the errors?

In most Redux applications, *action creators* are used to reduce this
repetition and to provide consistency. An action creator is simply a
function that returns an action object with a `type` property. They are
typically called and passed directly to the `store.dispatch()` method
resulting in fewer errors and an easier-to-read dispatch statement.

The above code could be rewritten using an action creator called
`toggle()` like so:

``` jsx
const toggle = () => {
  return { type: "toggle" };
}
store.dispatch(toggle()); // Toggles the light to 'off'
store.dispatch(toggle()); // Toggles the light back to 'on'
store.dispatch(toggle()); // Toggles the light back to 'off'
```

Though not necessary in a Redux application, action creators save us the
time needed to type out the entire action object, reduce the chances you
make a typo, and improve the readability of our application.

Often, before the reducer of an application is even written, Redux
programmers will write action creators as a way of planning out which
actions will be available to dispatch to the store.



**1.**

Let’s add some action creators into the counter application. The two
actions that the `countReducer` can handle are `'increment'` and
`'decrement'`.

First, at the top of the **store.js** file, create an action creator
function called `increment()` that returns an object with a
`type: 'increment'` property.

**2.**

Well done! Now, after the `increment()` action creator and before the
`countReducer`, add in a second action creator named `decrement()` that
returns an action object with the `'decrement'` action type.

**3.**

In **store.js**, actions are being dispatched to the store like so:

``` jsx
store.dispatch({ type: 'increment' });
store.dispatch({ type: 'decrement' });
```

For each existing call to `store.dispatch()`, replace the typed-out
action objects with function calls to the appropriate action creator.



``` jsx
import { createStore } from 'redux';

// Create your action creators here.
const increment = () => {
  return { type: 'increment' };
}

const decrement = () => {
  return { type: 'decrement' };
}

const initialState = 0;
const countReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'increment':
      return state + 1;
    case 'decrement':
      return state - 1;
    default:
      return state;
  }
}

const store = createStore(countReducer);

// Modify the dispatches below.
store.dispatch(increment());
store.dispatch(increment());
console.log(store.getState());

store.dispatch(decrement());
store.dispatch(decrement());
store.dispatch(decrement());
console.log(store.getState());
```

## Respond to State Changes

In a typical web application, user interactions that trigger
<a href="https://developer.mozilla.org/en-US/docs/Web/Events"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">DOM events</a> (`"click"`, `"keydown"`,
etc…) can be listened for and responded to using an <a
href="https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">event listener</a>.

Similarly, in Redux, actions dispatched to the `store` can be listened
for and responded to using the `store.subscribe()` method. This method
accepts one argument: a function, often called a *listener*, that is
executed in response to changes to the `store`’s state.

``` jsx
const reactToChange = () => console.log('change detected!');
store.subscribe(reactToChange);
```

In this example, each time an action is dispatched to the `store`, and a
change to the state occurs, the subscribed listener, `reactToChange()`,
will be executed.

Sometimes it is useful to stop the listener from responding to changes
to the `store`, so `store.subscribe()` returns an `unsubscribe`
function.

We can see this in action in the light switch application:

``` jsx
// lightSwitchReducer(), toggle(), and store omitted...
 
const reactToChange = () => {
  console.log(`The light was switched ${store.getState()}!`);
}
const unsubscribe = store.subscribe(reactToChange);
 
store.dispatch(toggle());
// reactToChange() is called, printing:
// 'The light was switched off!'
 
store.dispatch(toggle());
// reactToChange() is called, printing:
// 'The light was switched on!'
 
unsubscribe(); 
// reactToChange() is now unsubscribed
 
store.dispatch(toggle());
// no print statement!
 
console.log(store.getState()); // Prints 'off'
```

- In this example, the listener function `reactToChange()` is subscribed
  to the `store`
- Each time an action is dispatched, `reactToChange()` is called and
  prints the current value of the light switch. It is common for
  callbacks subscribed to the `store` to use `store.getState()` inside
  them.
- After the first two dispatched actions, `unsubscribe()` is called
  causing `reactToChange()` to no longer be executed in response to
  further dispatches made to `store`.

> *Note: It is not always required to use the `unsubscribe()` function
> returned by `store.subscribe()`, though it is useful to know that it
> exists.*

Now, take a look at **store.js** in the code editor. You will see that a
few actions have been dispatched to the `store` of the counter
application. Suppose you wanted to print the current value of
`store.getState()` each time the state changes. While you could write
something like this…

``` jsx
store.dispatch(decrement());
console.log(`The count is ${store.getState()}`);
store.dispatch(increment());
console.log(`The count is ${store.getState()}`);
store.dispatch(increment());
console.log(`The count is ${store.getState()}`);
```

…we know that this approach is repetitive. Instead, you can subscribe a
change listener to print out the current state in response to state
changes automatically.



**1.**

The first thing to do is to define a state change listener.

Define a function called `printCountStatus()` with no arguments. It
should print to the console the following message:

``` jsx
console.log(`The count is ${REPLACE_WITH_CURRENT_STATE}`);
```

Make sure to replace `REPLACE_WITH_CURRENT_STATE` with the proper code
for getting the current state from the `store`.

**2.**

Now that you have a change listener function, subscribe it to the
`store` so that it is called each time the state changes.

If done correctly, you should see this in the console output:

``` jsx
The count is -1
The count is 0
The count is 1
```



``` jsx
import { createStore } from 'redux';

const increment = () => {
  return { type: 'increment' }
}

const decrement = () => {
  return { type: 'decrement' }
}

const initialState = 0;
const countReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'increment':
      return state + 1;
    case 'decrement':
      return state - 1;
    default:
      return state;
  }
}

const store = createStore(countReducer);

// Define your change listener function here.
function printCountStatus() {
  console.log(store.getState());
}

store.subscribe(printCountStatus);

store.dispatch(decrement()); // store.getState() === -1
store.dispatch(increment()); // store.getState() === 0
store.dispatch(increment()); // store.getState() === 1
```

## Connect the Redux Store to a UI

Up until now, you have built a working counting application using Redux
that lacks a proper user interface (UI). Let’s change that!

The UI for this application should display the current count number and
allow the user to increment or decrement this value using the buttons
provided. Take a look at the connected web browser window and you can
see that the elements for such an interface are present, but they
haven’t been connected to the Redux store yet.

Connecting a Redux store with any UI requires a few consistent steps,
regardless of how the UI is implemented:

- Create a Redux store
- Render the initial state of the application.
- Subscribe to updates. Inside the subscription callback:
  - Get the current store state
  - Select the data needed by this piece of UI
  - Update the UI with the data
- Respond to UI events by dispatching Redux actions

These same steps are followed when building an interface using React,
Angular, or jQuery. For now, we’ll create a very simple user interface
for the counting application using the
<a href="https://developer.mozilla.org/en-US/docs/Web/API/HTML_DOM_API"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">HTML DOM API</a>.

Open up the **index.html** file and you can see the three HTML elements
that are currently being rendered:

``` jsx
<p id='counter'>Waiting for current state.</p>
<button id='incrementer'>+</button>
<button id='decrementer'>-</button>
```

Now, open up **store.js** where you will find the pieces of Redux code
that you have built throughout this lesson: the action creators
`increment()` and `decrement()`, the reducer `countReducer`, and the
`store` that ties it all together. Additionally, the following values
have been added:

- `counterElement`, `incrementer`, and `decrementer`: references to the
  HTML elements in **index.html**
- `render`: A state-change listener for responding to changes to the
  `store`’s state.
- `incrementerClicked` and `decrementerClicked`: DOM event handlers for
  responding to the buttons being clicked by the user.

These new functions and elements will allow us to plug the Redux `store`
into the UI. Let’s begin.



**1.**

The `counterElement` should display the current value of the store, but
currently it is displaying the message “Waiting for current state.” You
can change this text by assigning a new value to
`counterElement.innerHTML` like so:

``` jsx
counterElement.innerHTML = "New text to display";
```

Within the `render()` function, reassign `counterElement.innerHTML` to
display the current state of the `store` in the UI.

Then, after the definition of `render()`, call it once to render the
initial state of the `store`.

**2.**

The `incrementerClicked()` function will be called each time the
`incrementer` button is clicked by the user. When this happens, the
`store` should be notified and the state should be incremented by `1`.

Inside `incrementerClicked()`, use `store.dispatch()` and the
appropriate action creator to tell the `store` to increase its state by
1.

*Note: completing this checkpoint will not cause the UI to change
(you’ll see why soon)*.

**3.**

Now, pressing the `incrementer` button will send a
`{ type: 'increment' }` action object to the `store` which increases the
value of the state to `1`. But, the UI doesn’t seem to be updating.

In order for the UI to react to changes to the state of the `store`, you
have to subscribe a change listener to the `store` using
`store.subscribe()`!

Below the declaration of the `render()` function, call
`store.subscribe()` and pass in `render` as the argument so that the UI
re-renders each time the state of the `store` changes. Then, try
clicking on the “+” button.

**4.**

Nicely done! Press the `incrementer` button and you should see the
counter increase in the UI! All that’s left to do is get the
`decrementer` button’s event handler to work.

Within `decrementerClicked()`, dispatch a `decrement()` action to the
`store`.



``` jsx
/* Note to learners: 
Normally, you would import redux like this:

  import { createStore } from 'redux';

Due to Codecademy's technical limitations 
for testing this exercise, we are using 
`require()`.
*/
const { createStore } = require('redux');

// Action Creators
function increment() { 
  return {type: 'increment'}
}

function decrement() { 
  return {type: 'decrement'}
}

// Reducer / Store
const initialState = 0;
const countReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'increment':
      return state + 1; 
    case 'decrement':
      return state - 1; 
    default:
      return state;
  }
};  
const store = createStore(countReducer);

// HTML Elements
const counterElement = document.getElementById('counter');
const incrementer = document.getElementById('incrementer');
const decrementer = document.getElementById('decrementer');

// Store State Change Listener

const render = () => {
  counterElement.innerHTML = store.getState();
}
store.subscribe(render);
render();


// DOM Event Handlers
const incrementerClicked = () => {
  store.dispatch(increment());
}
incrementer.addEventListener('click', incrementerClicked);
 
const decrementerClicked = () => {
  store.dispatch(decrement())
}
decrementer.addEventListener('click', decrementerClicked);
```

## React and Redux

As you saw in the last exercise, Redux can be used within the context of
any UI framework, though it is most commonly paired with React. This
makes sense considering that React and Redux were both developed by <a
href="https://en.wikipedia.org/wiki/Redux_(JavaScript_library)#History"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">engineers at Facebook</a>.

We can be more specific about the common steps involved in connecting
Redux to a React UI:

- A `render()` function will be subscribed to the `store` to re-render
  the top-level React Component.
- The top-level React component will receive the current value of
  `store.getState()` as a `prop` and use that data to render the UI.
- Event listeners attached to React components will dispatch actions to
  the `store`.

Take a look at **store.js** in the code editor. Here, you can see the
completed light switch application following this pattern.

- The `render()` function is subscribed to the `store`.
- `store.getState()` is passed as a `prop` called `state` to the
  `<LightSwitch />` component.
- The `LightSwitch` component displays the current state of the store,
  either `'on'` or `'off'`, and adjusts the background colors
  accordingly.
- The `LightSwitch` component declares a click handler that dispatches a
  `toggle()` action to the `store`.

> *Note 1: The prop name `state` isn’t a special React name and can be
> customized as the programmer sees fit. For example,
> `lightSwitchState={store.getState()}` would also be valid.*



In the next exercise, you will implement the Counter app using a React
UI. For now, take a moment and familiarize yourself with how the state
of the `store` is used by this application’s React components.

Observe that the same steps from the last exercise for connecting Redux
to a UI are followed:

- Create a Redux store
- Render the initial state of the application.
- Subscribe to updates. Inside the subscription callback:
  - Get the current store state
  - Select the data needed by this piece of UI
  - Update the UI with the data
- Respond to UI events by dispatching Redux actions



``` html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./index.css">
    <title>Learn ReactJS</title>
</head>

<body>
  <div id="root">
  </div>
</body>
<!-- Do Not Remove -->
<script src="https://content.codecademy.com/courses/React/react-16-redux-4-bundle.min.js"></script>
<script src="./store.compiled.js"></script>
</html>
```

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { createStore } from 'redux';

// REDUX CODE
///////////////////////////////////

const toggle = () => {
  return {type: 'toggle'} 
}
 
const initialState = 'off';
const lightSwitchReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'toggle':
      return state === 'on' ? 'off' : 'on';
    default:
      return state; 
  }
} 
 
const store = createStore(lightSwitchReducer);

// REACT CODE
///////////////////////////////////
 
// Pass the store's current state as a prop to the LightSwitch component.
const render = () => {
  ReactDOM.render(
    <LightSwitch 
      state={store.getState()}
    />,
    document.getElementById('root')
  )
}
 
render(); // Execute once to render with the initial state.
store.subscribe(render); // Re-render in response to state changes.

// Receive the store's state as a prop.
function LightSwitch(props) {
  const state = props.state; 

  // Adjust the UI based on the store's current state.
  const bgColor = state === 'on' ? 'white' : 'black';
  const textColor = state === 'on' ? 'black' : 'white';  
 
  // The click handler dispatches an action to the store.
  const handleLightSwitchClick = () => {
    store.dispatch(toggle());
  }
 
  return (  
    <div style={{background : bgColor, color: textColor}}>
      <button onClick={handleLightSwitchClick}>
        {state}
      </button>
    </div>
  )
}
 
```

## Implementing a React+Redux App

Now that you have implemented the counter app using the HTML DOM API,
and have seen a working React+Redux application, it is time to implement
it using React.

Take a look at the **store.js** file and you will find the following
functions and values have been defined for you:

- The action creators `increment()` and `decrement()`
- The `store` and its reducer `counterReducer()`
- A React component called `CounterApp` which declares two event
  handlers, `onIncrementButtonClicked` and `onDecrementButtonClicked`
- A `render()` function which renders `CounterApp` using
  `ReactDOM.render()`

The React component `CounterApp` and the `render()` function are
entirely disconnected from the Redux store. Let’s change that!



**1.**

At this point, you should be familiar with the desired functionality of
this UI. Notice that nothing is currently being rendered in the web
browser.

Below the `render()` function’s definition, call `render()` once to
render the UI with the initial state.

**2.**

The `CounterApp` component should display the current state of the
`store`. Before it can display the current state, it must be given the
current state value.

Within the `render()` function, pass a prop value to `CounterApp` called
`state`. Its value should be the current state of the store. Your
`render()` function should look something like this:

``` jsx
const render = () => {
  ReactDOM.render(
    <CounterApp 
      state={currentStateValueGoesHere} 
    />,
    document.getElementById('root')
  )
}
```

**3.**

Now that the current state of the `store` is being passed to the
`CounterApp` component, it can render that data in the UI.

First, at the top of the `CounterApp()` function, declare a variable
called `state`. It should be assigned the value of `props.state`.

Then, modify the `<h1>` element inside the `return` statement of
`CounterApp()` such that it displays the current `state`.

**4.**

At this point, your user interface should be displaying the current
state of the store, `0`. The next step is to update the state when
either of the buttons are pressed.

First, modify the `onIncrementButtonClicked` event handler such that it
dispatches an `increment()` action to the `store`.

Then, modify the `onDecrementButtonClicked` event handler such that it
dispatches a `decrement()` action to the `store`.

**5.**

Well done! So far we can display the current state and dispatch action
from the `<CounterApp />` - all that’s left is to re-render the
component every time the state changes.

At the bottom of **store.js**, subscribe the `render` function to the
`store`.



``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { createStore } from 'redux';

// REDUX CODE
///////////////////////////////////

const increment = () => {
  return {type: 'increment'} 
}

const decrement = () => { 
  return {type: 'decrement'}
}

const initialState = 0;
const counterReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'increment':
      return state + 1;
    case 'decrement':
      return state - 1;
    default:
      return state; 
  }
} 

const store = createStore(counterReducer);

// REACT CODE
///////////////////////////////////

const render = () => {
  ReactDOM.render(
    <CounterApp 
      state={store.getState()}
    />,
    document.getElementById('root')
  )
}
render();


// Render once with the initial state.
// Subscribe render to changes to the store's state.

function CounterApp(props) {
  const state = props.state

  const onIncrementButtonClicked = () => {
    store.dispatch(increment())
  }
 
  const onDecrementButtonClicked = () => {
    store.dispatch(decrement())
  }
  
  return (   
    <div id='counter-app'>
      <h1> {state} </h1>
      <button onClick={onIncrementButtonClicked}>+</button> 
      <button onClick={onDecrementButtonClicked}>-</button>
    </div>
  )
}

store.subscribe(render);
```

## Review

Congratulations! You were able to apply the core concepts of the Redux
framework by implementing an application using the Redux library.

By completing this lesson, you are now able to:

- Install the redux library into your project using `npm install redux`.
- Import the `createStore()` helper function from the `'redux'` library.
- Create a `store` object that holds the entire state of your Redux
  application using `createStore()`.
- Get the current state of the `store` using `store.getState()`.
- Dispatch actions to the `store` using `store.dispatch(action)`.
- Create action creators to reduce the repetitive creation of action
  objects.
- Register a change listener function to respond to changes to the store
  using `store.subscribe(listener)`.
- Recognize the pattern for connecting Redux to any user interface.
- Implement a Redux application using either the HTML DOM API or React.

Throughout this lesson, you may have thought to yourself that Redux adds
a lot of unnecessary complexity to these simple applications. We
implemented Redux in a very basic way, which is useful for learning but
not how it’s done in the real world.

Redux shines when it is used in applications with many features and a
lot of data where having a centralized store to keep it all organized is
advantageous. In the next lesson, you will learn how to build and
organize Redux applications with complex state.



``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { createStore } from 'redux';

// REDUX CODE
///////////////////////////////////

const increment = () => {
  return {type: 'increment'} 
}

const decrement = () => { 
  return {type: 'decrement'}
}

const initialState = 0;
const counterReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'increment':
      return state + 1;
    case 'decrement':
      return state - 1;
    default:
      return state; 
  }
} 

const store = createStore(counterReducer);

// REACT CODE
///////////////////////////////////

const render = () => {
  ReactDOM.render(
    <CounterApp 
      state={store.getState()}
    />,
    document.getElementById('root')
  )
}
render();
store.subscribe(render);

function CounterApp(props) {
  
  const state = props.state;

  const onIncrementButtonClicked = () => {
    store.dispatch(increment());
  }
 
  const onDecrementButtonClicked = () => {
    store.dispatch(decrement());
  }
  
  return (   
    <div>
      <h1> {state} </h1>
      <button onClick={onIncrementButtonClicked}>+</button> 
      <button onClick={onDecrementButtonClicked}>-</button>
    </div>
  )
}
```

# Strategies for Complex State

## Introduction to Strategies for Complex State

In the last lesson, you built a simple counter app whose store state was
just a single number. Though the counter app illustrates how Redux can
manage the state of an application, it isn’t a great example of an
application that needs Redux.

Redux really shines when used in applications with many features and a
lot of data where having a centralized store to keep it all organized is
advantageous. In this lesson, you will learn strategies for managing an
application with a more complex store state and, in the process, you
will begin to build an app that will grow throughout the rest of this
course.

In the browser, you can see the final product. This application, which
we will refer to as the “Recipes App”, does the following:

- displays a set of recipes which are pulled from a database.
- allows the user to add/remove their favorite recipes to/from a
  separate list.
- allows the user to enter a search term to filter the visible recipes.

Now, imagine you are working for the software development company whose
main product is this Recipes application. The product manager has
determined the desired features and functionality, the graphic designer
has defined its style, and the React engineer has created its
components. Now it is up to you, the Redux Engineer, to design the state
management system that can put it all together!

> In reality, the Front-End Engineer would implement both React and
> Redux.

Before continuing on, make sure that you are familiar with the following
terms and concepts relating to React and Redux:

- React
  - How to create components
  - How to render components using `ReactDOM.render()`
  - How to nest components and pass data through props
- Redux
  - One-way data flow model: State → View → Actions → State → View …
  - How to create a reducer function: `(state, action) => nextState`
  - How to write action objects and action creators
  - How to create a `store` using `createStore()`
  - How to use the `store` methods `getState()`, `dispatch()`, and
    `subscribe()`

> Note to learners: The slightly wordy nature of Redux means that the
> examples in this course can be quite large. It is recommended that you
> expand the “Learn” section while reading through this lesson’s
> materials. You can do so by clicking-and-dragging the dividing line
> that separates the “Learn” section from the code editor.



Spend a few moments getting familiar with the features of this
application. While you’re at it, consider the following:

- What React components exist in this application?
- What data does each component need from the store?
- What actions occur within this application?
- How do those actions update the store’s state?

Throughout the rest of this course you will be designing the store’s
state structure, creating action creators to describe state changes,
writing a reducer to execute state changes, and connecting the Redux
store to the existing React components. Let’s begin!



``` jsx
```

## Slices

Redux is best suited for complex applications with many features that
each have some state-related data to be managed. In these cases, objects
are the go-to data type to represent the entire store’s state.

For example, consider a todo app that allows a user to:

- add to a list of todos
- mark individual todos as complete or incomplete
- apply a filter to show only the completed todos, only the incomplete
  todos, or all of the todos

After adding a few todos and setting the filter to show incomplete
todos, the state might look like this:

``` jsx
state = {
  todos: [
    {
      id: 0, 
      text: 'Complete the Learn Redux course', 
      isCompleted: false
    },
    {
      id: 1, 
      text: 'Build a counter app', 
      isCompleted: true
    },
  ],
  visibilityFilter: 'SHOW_INCOMPLETE'
};
```

In a Redux application, the top-level `state` properties, `state.todos`
and `state.visibilityFilter`, are known as *slices*. Each slice
typically represents a different feature of the entire application.
Notice that a slice can be any data value, like an array of objects
(`state.todos`) or just a string (`state.visibilityFilter`).

As a best practice, most Redux applications begin with an `initialState`
that allows the programmer to do two key things:

1.  Plan out the general structure of the state
2.  Provide an initial state value to the reducer function

For the todo app, this may look like this:

``` jsx
const initialState = {
  todos: [],
  visibilityFilter: 'SHOW_ALL'
};
const todosReducer = (state = initialState, action) => {
  // rest of todosReducer logic omitted
};
```

The Recipes application will have the following three slices:

1.  `allRecipes`: an array of all recipe objects
2.  `favoriteRecipes`: an array of recipe objects chosen by the user
    from `state.allRecipes`
3.  `searchTerm`: a string that filters which recipes are displayed

An example of the store’s state may look like this:

``` jsx
state = {
  allRecipes: [
    {id: 0, name: 'Jjampong', img: 'img/jjampong.png' },
    {id: 2, name: 'Cheeseburger', img: 'img/cheeseburger.png' },
    //… more recipes omitted
  ],
  favoriteRecipes: [
    {id: 1, name: 'Doro Wat', img: 'img/doro-wat.png' },
  ],
  searchTerm: 'Doro'
};
```

Notice that each recipe is represented as an object with an `id`,
`name,` and `img` property.

Now that you know what the state structure looks like, the first step is
to create an `initialState` object.



**1.**

In the **store.js** file, begin by declaring a new variable called
`initialState` and assign to it an empty object.

**2.**

Now let’s add slices to the `initialState` object.

First, add an `allRecipes` property to the `initialState` object with an
initial value of an empty array.

This array will be filled once we fetch the data from a database.

**3.**

Next, add a `favoriteRecipes` property to the `initialState` object,
also with an initial value of an empty array.

The user will select which recipes to add to this slice as their
favorites.

**4.**

Finally, add a `searchTerm` property to the `initialState` object with
an initial value of an empty string.

The user will change this value by using a search input field.



``` jsx
const initialState = {
  allRecipes: [],
  favoriteRecipes: [],
  searchTerm: ''
};
```

## Actions and Payloads For Complex State

The `initialState` structure has been defined and you know that the
state of this application has 3 slices: `allRecipes`, `favoriteRecipes`,
and `searchTerm`. Now, you can begin thinking about how the user will
trigger changes to these slices of state through actions.

> Remember, actions in Redux are represented by plain JavaScript objects
> that have a `type` property and are dispatched to the store using the
> `store.dispatch()` method.

When an application state has multiple slices, individual actions
typically only change one slice at a time. Therefore, it is recommended
that each action’s `type` follows the pattern
`'sliceName/actionDescriptor'`, to clarify which slice of state should
be updated.

For example, in a todo application with a `state.todos` slice, the
action type for adding a new todo might be `'todos/addTodo'`.

For the Recipes application, what do you think some of the action `type`
strings might be? What user interactions might trigger them to be
dispatched?

Write some of your ideas down before revealing the actions you will be
using:

1.  `'allRecipes/loadData'`: This action will be dispatched to fetch the
    needed data from an API right when the application starts.

2.  `'favoriteRecipes/addRecipe'`: This action will be dispatched any
    time the user clicks on the ❤️ icon of a recipe from the full set of
    recipes.

3.  `'favoriteRecipes/removeRecipe'`: This action will be dispatched any
    time the user clicks on the 💔 icon of a recipe from their list of
    favorites.

4.  `'searchTerm/setSearchTerm'`: This action will be dispatched any
    time the user changes the text of the search input field to filter
    the full set of recipes.

5.  `'searchTerm/clearSearchTerm'`: This action will be dispatched any
    time the user clicks on the “X” button next to the search input
    field.

It’s also important to consider which of these actions will have a
`payload` — additional data passed to the reducer in order to carry out
the desired change-of-state. For example, consider the actions for the
`searchTerm` slice:

``` jsx
store.dispatch({ 
  type: 'searchTerm/setSearchTerm', 
  payload: 'Spaghetti' 
});
// The resulting state: { ..., searchTerm: 'Spaghetti' }
 
store.dispatch({ 
  type: 'searchTerm/clearSearchTerm' 
});
// The resulting state: { ..., searchTerm: '' }
```

- When the learner types in a search term, that data needs to be sent to
  the store so that the React components know which recipes to render
  and which to hide.
- When the user clears the search field, no additional data needs to be
  sent because the store can simply set the search term to be an empty
  string again.

Once you have a clear idea of the types of actions that will be
dispatched in your application, when they will be dispatched, and what
`payload` data they will carry, the next step is to make action
creators.

> Remember, action creators are functions that return a formatted action
> object.

Action creators enable Redux programmers to re-use action object
structures without typing them out by hand and they improve the
readability of their code, particularly when dealing with bulky
`payload`s.

Take a look at **store.js** where you will find that action creators for
the two actions above have been defined for you. Your job is to create
the remaining three: `loadData()`, `addRecipe()`, and `removeRecipe()`



**1.**

Open up **./data.js** and you will see an array of recipe objects called
`allRecipesData` is exported. Back in **store.js**, at the top of the
file, this array is imported (later on, you will fetch data from an API
rather than importing from a local file).

This array needs to be sent to the store so that it can populate the
`state.allRecipes` slice, which is initially empty. This can be done
using the `loadData()` action creator.

Complete the function `loadData()` such that it returns an action object
with the following properties:

- `type`: The slice being modified is `state.allRecipes` and the action
  name is `'loadData'`
- `payload`: The `allRecipesData` array.

*Remember to use the ‘sliceName/actionName’ pattern for `type`.*

**2.**

Next up is `addRecipe()` which should be dispatched when the user clicks
on the ❤️ icon of a particular recipe.

Notice that this function accepts a `recipe` parameter. The `recipe`
object then needs to be sent to the store to be added to the
`state.favoriteRecipes` slice. For example, this action might be
dispatched like so:

``` jsx
const exampleRecipe = { 
  id: 4, 
  name: 'Cheeseburger', 
  img: 'img/cheeseburger.jpg'
}
store.dispatch(addRecipe(exampleRecipe));
```

Complete the function called `addRecipe()` such that it returns an
action object with the following properties:

- `type`: The slice being modified is `state.favoriteRecipes` and the
  action name is `'addRecipe'`
- `payload`: The `recipe` object parameter.

**3.**

The last action creator is `removeRecipe()` which should be dispatched
when the user clicks on the 💔 icon of a favorited recipe.

`removeRecipe()` also accepts a `recipe` parameter. The `recipe` object
needs to be sent to the store so it knows which recipe to remove from
the `state.favoriteRecipes` slice.

Complete the function called `removeRecipe()` such that it returns an
action object with the following properties:

- `type`: The slice being modified is `state.favoriteRecipes` and the
  action name is `'removeRecipe'`
- `payload`: The `recipe` object parameter.



``` jsx
import allRecipesData from './data.js';

const initialState = {
  allRecipes: [],
  favoriteRecipes: [],
  searchTerm: ''
};

// Dispatched when the user types in the search input.
// Sends the search term to the store.
const setSearchTerm = (term) => {
  return { 
    type: 'searchTerm/setSearchTerm', 
    payload: term 
  };
}

// Dispatched when the user presses the clear search button.
const clearSearchTerm = () => {
  return { 
    type: 'searchTerm/clearSearchTerm' 
  };
}

// Dispatched when the user first opens the application.
// Sends the allRecipesData array to the store.
const loadData = () => {
  return {type:'allRecipes/loadData', payload: allRecipesData};
}

// Dispatched when the user clicks on the heart icon of 
// a recipe in the "All Recipes" section.
// Sends the recipe object to the store.
const addRecipe = (recipe) => {
  return {type: 'favoriteRecipes/addRecipe', payload: recipe};
}

// Dispatched when the user clicks on the broken heart 
// icon of a recipe in the "Favorite Recipes" section.
// Sends the recipe object to the store.
const removeRecipe = (recipe) => {
  return {type:'favoriteRecipes/removeRecipe', payload: recipe}
}
```

``` jsx
const allRecipesData = [
  { id: 0, name: 'Biscuits', img: 'img/biscuits.jpg'},
  { id: 1, name: 'Bulgogi', img: 'img/bulgogi.jpg'},
  { id: 2, name: 'Calamari', img: 'img/calamari.jpg'},
  { id: 3, name: 'Ceviche', img: 'img/ceviche.jpg'},
  { id: 4, name: 'Cheeseburger', img: 'img/cheeseburger.jpg'},
  { id: 5, name: 'Churrasco', img: 'img/churrasco.jpg'},
  { id: 6, name: 'Dumplings', img: 'img/dumplings.jpg'},
  { id: 7, name: 'Fish & Chips', img: 'img/fishnchips.jpg'},
  { id: 8, name: 'Hummus', img: 'img/hummus.jpg'},
  { id: 9, name: 'Masala Dosa', img: 'img/masaladosa.jpg'},
  { id: 10, name: 'Pad Thai', img: 'img/padthai.jpg'},
];

export default allRecipesData;
```

## Immutable Updates & Complex State

Now that you have defined which changes can occur to your application’s
state, you need a reducer to execute those changes.

> Remember, the `store`’s reducer function is called each time an action
> is dispatched. It is passed the `action` and the current `state` as
> arguments and returns the `store`’s next state.

The <a
href="https://redux.js.org/tutorials/fundamentals/part-3-state-actions-reducers#rules-of-reducers"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">second rule of reducers</a> states that
when the reducer is updating the `state`, it must make a copy and return
the copy rather than directly mutating the incoming `state`. When the
state is a mutable data type, like an array or object, this is typically
done using the spread operator (`...`).

Below, the `todosReducer` for a todo app demonstrates this in action:

``` jsx
const initialState = {
  filter: 'SHOW_INCOMPLETE',
  todos: [
    { id: 0, text: 'learn redux', completed: false },
    { id: 1, text: 'build a redux app', completed: true },
    { id: 2, text: 'do a dance', completed: false },
  ]
};
 
const todosReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'filter/setFilter':
      return {
        ...state,
        filter: action.payload
      };
    case 'todos/addTodo': 
      return {
        ...state,
        todos: [...state.todos, action.payload]
      } ;
    case 'todos/toggleTodo':
      return {
        ...state,
        todos: state.todos.map(todo => {
          return (todo.id === action.payload.id) ? 
            { ...todo, completed: !todo.completed } : 
            todo;
        })
      }
    default:
      return state;
  }
};
```

- The `todosReducer` uses the `initialState` as the default `state`
  value.
- When a `'filter/setFilter'` action is received, it spreads the old
  `state`’s contents (`...state`) into a new object before updating the
  `filter` property with the new filter from `action.payload`.
- When a `'todos/addTodo'` action is received, it does the same except
  this time, since `state.todos` is a mutable array, its contents are
  also spread into a new array, with the new todo from `action.payload`
  added to the end.
- When a `'todos/toggleTodo` action is received, it uses the `.map()`
  method to create a copy of the `state.todos` array. Additionally, the
  todo being toggled is found using `action.payload.id` and it is spread
  into a new object and updated.

> It should be clarified that the `state.todos.map()` method only makes
> a “shallow” copy of the array, meaning the objects inside share the
> same references as the originals. Therefore, mutations to the objects
> within the copy will affect the objects within the original. For now,
> we can make do with this solution, but you will learn how to bypass
> this issue in a later lesson on the
> <a href="https://redux-toolkit.js.org/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">Redux Toolkit</a>.

Now, let’s create a reducer for the Recipes app! In the **store.js**
file, after the `initialState` and your action creators, you can see
that this function has already been started for you. In the output
terminal, you will see the results of `printTests()` which dispatch some
actions to the `store`. Your task is to complete it such that it can
handle each of the five action creator types that you had created in the
last exercise.



**1.**

First up is the `searchTerm/setSearchTerm` action. This action will be
dispatched with a `payload` whose value is the `term` to be set as the
new value for `state.searchTerm`.

Within the `switch` statement of `recipesReducer()`, fix the `case` that
handles the `'searchTerm/setSearchTerm'` action type.

- For this case, the reducer should return a new state object with an
  updated `searchTerm` slice set to the new term provided by
  `action.payload`.

If done correctly, the second state printed to the console should show
the search term set to `"cheese"`.

**2.**

Now, let’s fix the `case` for the `favoriteRecipes/addRecipe` action
type. This action will be dispatched with a `payload` whose value is the
`recipe` object to be added to the `state.favoriteRecipes` array.

- For this action type, the reducer should return a new state object
  with an updated `favoriteRecipes` slice.
- The new value should be a new array that includes all the previously
  added values in addition to the new recipe (from `action.payload`)
  added to the end.

Remember, you must not mutate the incoming `state` object or the
original `state.favoriteRecipes` array!

**3.**

The final `case` to fix is for the `favoriteRecipes/removeRecipe` action
type. This action will be dispatched with a `payload` whose value is the
`recipe` object to be removed from the `state.favoriteRecipes` array.

- For this case, the reducer should return a new state object with an
  updated `favoriteRecipes` slice.
- The `favoriteRecipes` slice should be a new array that includes all
  the existing values from `state.favoriteRecipes` except for the recipe
  from `action.payload`.

We recommend that you use the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.filter()</code></a> array method
and filter out the element whose `'id'` matches the recipe from
`action.payload`.



``` jsx
import { createStore } from 'redux';
import allRecipesData from './data.js';

const initialState = {
  allRecipes: [],
  favoriteRecipes: [],
  searchTerm: ''
};

const setSearchTerm = (term) => {
  return {
    type: 'searchTerm/setSearchTerm',
    payload: term
  };
}

const clearSearchTerm = () => {
  return {
    type: 'searchTerm/clearSearchTerm'
  }; 
};

const loadData = () => {
  return { 
    type: 'allRecipes/loadData', 
    payload: allRecipesData
  };
};

const addRecipe = (recipe) => {
  return { 
    type: 'favoriteRecipes/addRecipe', 
    payload: recipe 
  };
};

const removeRecipe = (recipe) => {
  return { 
    type: 'favoriteRecipes/removeRecipe', 
    payload: recipe 
  };
};

/* Complete this reducer */
const recipesReducer = (state = initialState, action) => {
  switch(action.type) {
    case 'allRecipes/loadData':
      return { 
        ...state,
        allRecipes: action.payload
      }
    case 'searchTerm/clearSearchTerm':
      return {
        ...state,
        searchTerm: ''
      }
    
    case 'searchTerm/setSearchTerm':
      return {...state, searchTerm: action.payload};

    case 'favoriteRecipes/addRecipe':
      return {
        ...state,
        favoriteRecipes: [...state.favoriteRecipes, action.payload]
      };

    case 'favoriteRecipes/removeRecipe':
      return {
        ...state,
        favoriteRecipes: state.favoriteRecipes.filter(element => element.id !== action.payload.id)
      };

    default:
      return state;
  }
};

const store = createStore(recipesReducer);

/* DO NOT DELETE */
printTests();
function printTests() {
  store.dispatch(loadData());
  console.log('Initial State after loading data');
  console.log(store.getState());
  console.log();
  store.dispatch(addRecipe(allRecipesData[0]));
  store.dispatch(addRecipe(allRecipesData[1]));
  store.dispatch(setSearchTerm('cheese'));
  console.log("After favoriting Biscuits and Bulgogi and setting the search term to 'cheese'")
  console.log(store.getState());
  console.log();
  store.dispatch(removeRecipe(allRecipesData[1]));
  store.dispatch(clearSearchTerm());
  console.log("After un-favoriting Bulgogi and clearing the search term:")
  console.log(store.getState());
}
```

## Reducer Composition

In the last exercise, you saw how a single reducer was able to handle
the logic for updating every slice of the `store`’s state. Though this
approach does work for these relatively small examples, as the
application state becomes increasingly more complex, managing it all
with a single reducer will become impractical.

The solution is to follow a pattern called *reducer composition*. In
this pattern, individual *slice reducers* are responsible for updating
only one slice of the application’s state, and their results are
recombined by a `rootReducer` to form a single state object.

``` jsx
 
// Handles only `state.todos`.
const initialTodos = [
  { id: 0, text: 'learn redux', completed: false },
  { id: 1, text: 'build a redux app', completed: true },
  { id: 2, text: 'do a dance', completed: false },
];
const todosReducer = (todos = initialTodos, action) => {
  switch (action.type) {
    case 'todos/addTodo': 
      return [...todos, action.payload]
    case 'todos/toggleTodo':
      return todos.map(todo => {
        return (todo.id === action.payload.id) ? 
          { ...todo, completed: !todo.completed } : 
          {...todo};
      });
    default:
      return todos;
  }
};
 
// Handles only `state.filter`
const initialFilter = 'SHOW_INCOMPLETE',
const filterReducer = (filter = initialFilter, action) => {
  switch (action.type) {
    case 'filter/setFilter':
      return action.payload;
    default:
      return filter;
};
 
const rootReducer = (state = {}, action) => {
  const nextState = {
    todos: todosReducer(state.todos, action),
    filter: filterReducer(state.filter, action)
  };
  return nextState;
};
 
const store = createStore(rootReducer);
```

In the reducer composition pattern, when an `action` is dispatched to
the `store`:

- The `rootReducer` calls each slice reducer, regardless of the
  `action.type`, with the incoming `action` and the appropriate slice of
  the state as arguments.
- The slice reducers each determine if they need to update their slice
  of state, or simply return their slice of state unchanged.
- The `rootReducer` reassembles the updated slice values in a new state
  object.

One major advantage of this approach is that each slice reducer only
receives its slice of the entire application’s state. Therefore, each
slice reducer only needs to immutably update its own slice and doesn’t
care about the others. This removes the problem of copying potentially
deeply nested state objects.

Take a look at **store.js** where you will find that the reducer for the
Recipe app that you wrote in the last exercise (which can be found in
**reducer-old.js**) has been partially rewritten to follow the reducer
composition pattern:

- The `initialState` object has been replaced by individual
  `initialSliceName` variables which are used as default values for each
  slice reducer’s slice of state. This is another common feature of the
  reducer composition pattern.
- The `allRecipesReducer` and `searchTermReducer` slice reducers have
  been created for you. Notice that they each have a `default` case.
- Both slice reducers are called within the `rootReducer` to update
  their respective slices of state.

All that’s left is to complete the `favoriteRecipesReducer()` and
include it in the `rootReducer()`!



**1.**

Currently, the default `favoriteRecipes` value for
`favoriteRecipesReducer()` is the string `'REPLACE_ME'`. Let’s fix that.

First, declare a variable named `initialFavoriteRecipes` and assign it
to an empty array (`[]`).

Then, assign the default `favoriteRecipes` value for
`favoriteRecipesReducer()` to `initialFavoriteRecipes`.

**2.**

Next, complete the `favoriteRecipesReducer` such that it immutably
updates the `state.favoriteRecipes` slice in response to the following
`action.type` cases:

- `'favoriteRecipes/addRecipe'`: Return a new array with all of the
  prior values of `favoriteRecipes` with the `action.payload` value
  added to the end.
- `'favoriteRecipes/removeRecipe'`: Return a new array with all of the
  prior values of `favoriteRecipes` with the `action.payload` value
  removed.
- `default`: Return `favoriteRecipes` unchanged.

Refer to **reducer-old.js** for the solution code from the last
exercise.

**3.**

Well done! Now that you have the `favoriteRecipesReducer()` completed,
you can use it within the `rootReducer` to update the
`state.favoriteRecipes` slice.

Within `rootReducer()`, add a `favoriteRecipes` property to the
`nextState` object.

Then, call `favoriteRecipesReducer()`, passing its slice of `state` and
the `action` as arguments, and store the result as the value for
`nextState.favoriteRecipes`.



``` jsx
import { createStore } from 'redux';
import allRecipesData from './data.js';

// Action Creators
////////////////////////////////////////

const addRecipe = (recipe) => {
  return { 
    type: 'favoriteRecipes/addRecipe', 
    payload: recipe 
  };
}

const removeRecipe = (recipe) => {
  return { 
    type: 'favoriteRecipes/removeRecipe', 
    payload: recipe 
  };
}

const setSearchTerm = (term) => {
  return {
    type: 'searchTerm/setSearchTerm',
    payload: term
  }
}


const clearSearchTerm = () => {
  return {
    type: 'searchTerm/clearSearchTerm'
  }; 
}

const loadData = () => {
  return { 
    type: 'allRecipes/loadData', 
    payload: allRecipesData
  }; 
}

// Reducers
////////////////////////////////////////

const initialAllRecipes = [];
const allRecipesReducer = (allRecipes = initialAllRecipes, action) => {
  switch(action.type) {
    case 'allRecipes/loadData':
      return action.payload
    default:
      return allRecipes;
  }
}

const initialSearchTerm = '';
const searchTermReducer = (searchTerm = initialSearchTerm, action) => {
  switch(action.type) {
    case 'searchTerm/setSearchTerm':
      return action.payload;
    case 'searchTerm/clearSearchTerm':
      return '';
    default: 
      return searchTerm;
  }
}

// Create the initial state for this reducer.
var initialFavoriteRecipes = [];
const favoriteRecipesReducer = (favoriteRecipes = initialFavoriteRecipes, action) => {
  switch(action.type) {
    
    // Add action.type cases here.
    case 'favoriteRecipes/addRecipe':
      return [...favoriteRecipes, action.payload];
    case 'favoriteRecipes/removeRecipe':
      return favoriteRecipes.filter(element => element.id !== action.payload.id);
    default:
      return favoriteRecipes;

  }
}

const rootReducer = (state = {}, action) => {
  const nextState = {
    allRecipes: allRecipesReducer(state.allRecipes, action),
    searchTerm: searchTermReducer(state.searchTerm, action),
    favoriteRecipes: favoriteRecipesReducer(state.favoriteRecipes, action)
  } 
  return nextState;
}

const store = createStore(rootReducer);
```

## combineReducers

In the reducer composition pattern, the same steps are taken by the
`rootReducer` for each slice reducer:

1.  call the slice reducer with its slice of the `state` and the
    `action` as arguments
2.  store the returned slice of state in a new object that is ultimately
    returned by the `rootReducer()`.

``` jsx
import { createStore } from 'redux';
 
// todosReducer and filterReducer omitted
 
const rootReducer = (state = {}, action) => {
  const nextState = {
    todos: todosReducer(state.todos, action),
    filter: filterReducer(state.filter, action)
  };
  return nextState;
};
 
const store = createStore(rootReducer);
```

The Redux package helps facilitate this pattern by providing a utility
function called `combineReducers()` which handles this boilerplate for
us:

``` jsx
import { createStore, combineReducers } from 'redux'
 
// todosReducer and filterReducer omitted.
 
const reducers = {
    todos: todosReducer,
    filter: filterReducer
};
const rootReducer = combineReducers(reducers);
const store = createStore(rootReducer);
```

Let’s break this code down:

- The `reducers` object contains the slice reducers for the application.
  The keys of the object correspond to the name of the slice being
  managed by the reducer value.
- The `combineReducers()` function accepts this `reducers` object and
  returns a `rootReducer` function.
- The returned `rootReducer` is passed to `createStore()` to create a
  `store` object.

Just as before, when an action is dispatched to the `store`, the
`rootReducer()` is executed which then calls each slice reducer, passing
along the `action` and the appropriate slice of `state`.

The last 6 lines of this example can be rewritten inline:

``` jsx
const store = createStore(combineReducers({
    todos: todosReducer,
    filter: filterReducer
}));
```

Take a look at **store.js** where you will find the slice reducers that
you created in the last exercise. Now, however, the `rootReducer()` is
missing. Rather than creating this function by hand, you will use
`combineReducers()`.



**1.**

First, at the top of **store.js**, import `combineReducers` from the
`redux` library.

**2.**

`combineReducers()` accepts an object of reducers as its argument. Let’s
create one!

At the bottom of **store.js**, create a variable called `reducers`.
Assign to it an object with three properties: `allRecipes`,
`favoriteRecipes`, `searchTerm`. Each property should be assigned its
associated slice reducer.

**3.**

Now, declare another variable called `rootReducer`. Call
`combineReducers()` with the `reducers` object as an argument and assign
the returned value to `rootReducer`.

**4.**

Finally, pass the `rootReducer` to the `createStore()` function and save
the returned value in a new variable called `store`.



``` jsx
// Import combineReducers from redux here.
import { combineReducers, createStore } from 'redux';
import allRecipesData from './data.js';

// Action Creators
////////////////////////////////////////

const addRecipe = (recipe) => {
  return { 
    type: 'favoriteRecipes/addRecipe', 
    payload: recipe 
  };
}

const removeRecipe = (recipe) => {
  return { 
    type: 'favoriteRecipes/removeRecipe', 
    payload: recipe 
  };
}

const setSearchTerm = (term) => {
  return {
    type: 'searchTerm/setSearchTerm',
    payload: term
  }
}

const clearSearchTerm = () => {
  return {
    type: 'searchTerm/clearSearchTerm'
  }; 
}

const loadData = () => {
  return { 
    type: 'allRecipes/loadData', 
    payload: allRecipeData
  };
}

// Reducers
////////////////////////////////////////

const initialAllRecipes = [];
const allRecipesReducer = (allRecipes = initialAllRecipes, action) => {
  switch(action.type) {
    case 'allRecipes/loadData': 
      return action.payload
    default:
      return allRecipes;
  }
}

const initialSearchTerm = '';
const searchTermReducer = (searchTerm = initialSearchTerm, action) => {
  switch(action.type) {
    case 'searchTerm/setSearchTerm':
      return action.payload
    case 'searchTerm/clearSearchTerm':
      return ''
    default: 
      return searchTerm;
  }
}

const initialFavoriteRecipes = [];
const favoriteRecipesReducer = (favoriteRecipes = initialFavoriteRecipes, action) => {
  switch(action.type) {
    case 'favoriteRecipes/addRecipe':
      return [...favoriteRecipes, action.payload]
    case 'favoriteRecipes/removeRecipe':
      return favoriteRecipes.filter(recipe => {
        return recipe.id !== action.payload.id
      });
    default:
      return favoriteRecipes;
  }
}

// Create your `rootReducer` here using combineReducers().
const reducers = {
  allRecipes: allRecipesReducer,
  favoriteRecipes: favoriteRecipesReducer,
  searchTerm: searchTermReducer
};

const rootReducer = combineReducers(reducers);
const store = createStore(rootReducer);
```

## A File Structure for Redux

At this point, you may have begun thinking that **store.js** is getting
pretty long, and yet the Recipes app only has three slices! Imagine
trying to fit the logic for an application with a dozen or more slices
into one file. That would not be fun.

Instead, it is more common, and a better practice, to break up a Redux
application using the
<a href="https://github.com/erikras/ducks-modular-redux"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Redux Ducks pattern</a>, like so:

``` jsx
src/
|-- index.js
|-- app/
    |-- store.js
|-- features/
    |-- featureA/
        |-- featureASlice.js
    |-- featureB/
        |-- featureBSlice.js
```

As you can see in your coding workspace, this file structure has already
been set up for you.

All of the Redux logic lives within the top-level directory called
**src/**. It contains:

- The entry point for the entire application, **index.js** (we will
  return to this file in the next exercise).
- The sub-directories **app/** and **features/**.

The **src/app/** directory has only one file (for now), **store.js**. As
before, the ultimate purpose of this file is to create the `rootReducer`
and the Redux `store`. Now, however, you’ll notice that the file is
empty! So where did the reducers and action creators go?!

The **src/features/** directory, and its own **src/features/featureX/**
sub-directories, contain all of the code relating to each individual
slice of the `store`’s state. For example, for the
`state.favoriteRecipes` slice, its slice reducer and action creators can
be found in the file called
**src/features/favoriteRecipes/favoriteRecipesSlice.js**.

Lucky for you, we took care of much of the tedious work involved in
<a href="https://en.wikipedia.org/wiki/Code_refactoring"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">refactoring</a> this code. In addition to
creating new folders, new files, and copying over the relevant code,
this refactor involved exporting each of the slice reducers and action
creators, so that they could be imported back into **store.js**.

And that’s where you come in!



**1.**

The `reducers` object passed to `combineReducers()` should contain the
slice reducers responsible for updating the various slices of the
`store`’s state. In the prior lesson, those slice reducers all existed
in the same file. Now, you need to import them.

At the top of the **store.js** file, import the following values from
their respective files:

- `allRecipesReducer`
- `favoriteRecipesReducer`
- `searchTermReducer`

**2.**

Excellent! Now that you have imported the slice reducers, you use them
to construct the `reducers` object to be passed to `combineReducers()`.

Within the `reducers` object, add three `key:value` pairs where each
`key` is the name of a slice and each `value` is the slice reducer
responsible for managing that slice’s state.

**3.**

Now that you have the `reducers` object, you can create the `store`
using a combination of the `combineReducers()` and `createStore()` Redux
functions.

You are going to do this all in one line of code!

- First call `combineReducers()` with `reducers` as an argument.
- Then, pass the entire `combineReducers(reducers)` function call as an
  argument to `createStore()`.
- Finally, store the value returned by `createStore()` in a new variable
  called `store`.

**4.**

Well done! You’ve reconnected all of the slice reducers from separate
files back into the `store` within **src/app/store.js**. In the next
exercise, you’ll learn how to build on this application structure by
incorporating React components and dispatching actions from them. To do
this, the `store` needs to be available to other parts of the
application.

Export the `store` value from **src/app/store.js**.



``` jsx
import { createStore, combineReducers } from 'redux';

// Import the slice reducers here.
import { favoriteRecipesReducer } from '../features/favoriteRecipes/favoriteRecipesSlice.js';
import { allRecipesReducer } from '../features/allRecipes/allRecipesSlice.js';
import { searchTermReducer } from '../features/searchTerm/searchTermSlice.js';

const reducers = {
  // Add the slice properties here
  favoriteRecipes: favoriteRecipesReducer,
  allRecipes: allRecipesReducer,
  searchTerm: searchTermReducer,
}

// Declare the store here.
export const store = createStore(combineReducers(reducers))
```

``` jsx
export const addRecipe = (recipe) => {
  return { 
    type: 'favoriteRecipes/addRecipe', 
    payload: recipe 
  };
}

export const removeRecipe = (recipe) => {
  return { 
    type: 'favoriteRecipes/removeRecipe', 
    payload: recipe 
  };
}
 
const initialFavoriteRecipes = [];
export const favoriteRecipesReducer = (favoriteRecipes = initialFavoriteRecipes, action) => {
  switch(action.type) {
    case 'favoriteRecipes/addRecipe':
      return [...favoriteRecipes, action.payload]
    case 'favoriteRecipes/removeRecipe':
      return favoriteRecipes.filter(recipe => {
        return recipe.id !== action.payload.id
      });
    default:
      return favoriteRecipes;
  }
}
```

``` jsx
import allRecipesData from '../../../data.js';

export const loadData = () => {
  return { 
    type: 'allRecipes/loadData', 
    payload: allRecipeData
  };
}

const initialAllRecipes = [];
export const allRecipesReducer = (allRecipes = initialAllRecipes, action) => {
  switch(action.type) {
    case 'allRecipes/loadData': 
      return action.payload
    default:
      return allRecipes;
  }
}
```

``` jsx
export const setSearchTerm = (term) => {
  return {
    type: 'searchTerm/setSearchTerm',
    payload: term
  }
}

export const clearSearchTerm = () => {
  return {
    type: 'searchTerm/clearSearchTerm'
  }; 
}

const initialSearchTerm = '';
export const searchTermReducer = (searchTerm = initialSearchTerm, action) => {
  switch(action.type) {
    case 'searchTerm/setSearchTerm':
      return action.payload
    case 'searchTerm/clearSearchTerm':
      return ''
    default: 
      return searchTerm;
  }
}
```

## Passing Store Data Through the Top-Level React Component

The file structure that you helped implement in the last exercise works
nicely when we add in React components. Take a look at the **src**
folder in your workspace and you will find the following file structure
(new files have a `(+)` next to their name):

``` jsx
src/
|-- index.js
|-- app/
    |-- App.js (+)
    |-- store.js
|-- components/
    |-- FavoriteButton.js (+)
    |-- Recipe.js (+)
|-- features/
    |-- allRecipes/
        |-- AllRecipes.js (+)
        |-- allRecipesSlice.js
    |-- favoriteRecipes/
        |-- FavoriteRecipes.js (+)
        |-- favoriteRecipesSlice.js
    |-- searchTerm/
        |-- SearchTerm.js (+)
        |-- searchTermSlice.js
```

> If you look at the actual file structure in your code editor, you may
> notice a few unfamiliar files / directories not mentioned in the
> structure above. The **test/** directory and **index.compiled.js**
> file are used to test your code on Codecademy. You can ignore them.

The new components are:

- `<App />`: The top-level component for the entire application.
- `<AllRecipes />`: The component for rendering the recipes loaded from
  the “database”.
- `<FavoriteRecipes />`: The component for rendering the recipes
  favorited by the user.
- `<SearchTerm />`: The component for rendering the search bar that
  filters the visible recipes.
- `<Recipe />` and `<FavoriteButton />`: Generic components used by
  `<AllRecipes />` and `<FavoriteRecipes />`

Aside from the generic components, each feature-related React component
file is located in the same directory as the slice file that manages the
data rendered by that component. For example, **FavoriteRecipes.js** and
**favoriteRecipesSlice.js** are both in the
**src/features/favoriteRecipes/** directory.

Open the **src/app/App.js** file where the top-level component,
`<App />`, is stored. As in most React applications, this top-level
component will render each feature-component and pass any data needed by
those components as prop values. In Redux applications, the data passed
to each feature-component includes:

1.  The slice of the `store`’s state to be rendered. For example, the
    `state.searchTerm` slice is passed to the `<SearchTerm />`
    component.
2.  The `store.dispatch` method to trigger state changes through user
    interactions within the component. For example, the `<SearchTerm />`
    component will need to dispatch `setSearchTerm()` actions.

This distribution of the `store.dispatch` method and the slices of state
to all of the feature-components, via the `<App />` component, begins in
the **index.js** file. Open up the **src/index.js** file where you will
see some standard React code for rendering the top-level `<App />`
component. You’ll notice that the `store` is missing and the `<App />`
component isn’t receiving any props!



**1.**

In order to pass the `store`’s current state and its `dispatch` method
to the `<App />` component, the `store` must first be imported into the
**index.js** file.

At the top of **index.js**, import the `store` from **store.js**.

**2.**

Next, get the current state of the `store` and pass it to the `<App />`
component as a prop called `state`.

*Note: You won’t see anything rendered until the next checkpoint!*

**3.**

The `<App />` component isn’t rendering yet because it is expecting to
receive a `dispatch` method.

Pass the `store.dispatch` method to the `<App />` component as a prop
called `dispatch`.

If done correctly, you should see the `<FavoriteRecipes />` and
`<AllRecipes />` components rendered (without data, for now)!

**4.**

Why is the recipe data not being rendered? Remember that the
`state.allRecipes` slice begins as an empty array and the data is only
loaded AFTER the user opens the page. This data fetch is happening but
`render` isn’t subscribed to changes to the `store` yet!

At the bottom of **index.js**, use `store.subscribe()` to subscribe the
`render` function to the `store` such that each time the `store`’s state
changes, the entire `<App />` will be re-rendered.



``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

import { App } from './app/App.js';
// Import 'store' here.
import { store } from './app/store.js'

const render = () => {
  // Pass `state` and `dispatch` props to <App />
  ReactDOM.render(
    <App 
      state={store.getState()}
      dispatch={store.dispatch}
    />,
    document.getElementById('root')
  )
}
render();
store.subscribe(render)
// Subscribe render to changes to the `store`
```

``` jsx
import React from 'react';

import { AllRecipes } from '../features/allRecipes/AllRecipes.js';
import { SearchTerm } from '../features/searchTerm/SearchTerm.js';

export function App(props) {
  const {state, dispatch} = props;

  const visibleAllRecipes = getFilteredRecipes(state.allRecipes, state.searchTerm);
  const visibleFavoriteRecipes = getFilteredRecipes(state.favoriteRecipes, state.searchTerm);

// You'll add the <FavoriteRecipes /> component in the next exercise!
  return (
    <main>
      <section>
        <SearchTerm
          searchTerm={state.searchTerm}
          dispatch={dispatch}
        />
      </section>
      <section>
        <h2>Favorite Recipes</h2>
        
      </section>
      <hr />
      <section>
        <h2>All Recipes</h2>
        <AllRecipes
          allRecipes={visibleAllRecipes} 
          dispatch={dispatch}
        />
      </section>
    </main>
  )
}

/* Utility Helpers */

function getFilteredRecipes(recipes, searchTerm) {
  return recipes.filter(recipe => recipe.name.toLowerCase().includes(searchTerm.toLowerCase()));
}
```

## Using Store Data Within Feature Components

At the end of the last exercise, you were able to pass the current state
of the `store` and its `store.dispatch` method to the top-level
component, `<App />`. This allowed the `<App />` component to distribute
the `dispatch` method and the slices of the `store`’s state to each
feature-component.

So it looks like you’re done, right? Not quite. Try adding a favorite
recipe and you’ll see that it just disappears! Take a closer look at
**App.js** and you’ll notice that the `<FavoriteRecipes />` component is
missing. Then, open up **FavoriteRecipes.js** and you’ll see that it is
also incomplete. Let’s fix that.

Plugging in a feature-component to a Redux application involves the
following steps:

- Import the React feature-components into the top-level **App.js**
  file.
- Render each feature-component and pass along the slice of `state` and
  the `dispatch` method as props.
- Within each feature-component:
  - Extract the slice of `state` and `dispatch` from `props`.
  - Render the component using data from the slice of state.
  - Import any action creators from the associated slice file.
  - Dispatch actions in response to user inputs within the component.

This process is not different from how you implemented a React + Redux
application in the past. Now, however, you must consider that the slices
of the `store`’s state and the `dispatch` method must be passed through
props.



**1.**

Open up the **App.js** file.

First, import the `FavoriteRecipes` component from the
**FavoriteRecipes.js** file.

**2.**

Now, you can add in the `<FavoriteRecipes />` component to the `<App />`
component’s structure. Like the other two components, you will need to
pass the `dispatch` method to the component as a prop.

The slice data passed to `<FavoriteRecipes />` will need to be filtered
first based on the value of `state.searchTerm`. The filtered version of
`state.favoriteRecipes` has been created for you and stored in the
variable `visibleFavoriteRecipes`.

Within the return statement of the `<App />` component, in the space
below the `<h2>Favorite Recipes</h2>` element, add in a
`<FavoriteRecipes />` component. You should then pass along the
following props:

- `favoriteRecipes`: the `visibleFavoriteRecipes` value
- `dispatch`: the `dispatch` method from the `store`.

If you complete this step correctly, you should see a blank square
rendered under the “Favorite Recipes” header.

**3.**

Open up the **FavoriteRecipes.js** file. The job of any presentational
component in a Redux app is twofold:

1.  Render the data for their associated slice of state.
2.  Dispatch actions in response to user interaction within the
    component.

To do these two things, `<FavoriteRecipes />` was given two props:
`favoriteRecipes` and `dispatch`.

At the top of `FavoriteRecipes()`, extract these two values from the
`props` parameter.

**4.**

Now that the `FavoriteRecipes()` component has access to the
`favoriteRecipes` slice of state, you can render its data instead of the
blank box! Take a look at the `return` statement:

``` jsx
return (
  <div className="recipes-container">
    {['REPLACE_ME'].map(createRecipeComponent)}
  </div>
);
```

Replace the entire `['REPLACE_ME']` array with the `favoriteRecipes`
prop value.

If done correctly, every recipe object within `favoriteRecipes` will be
mapped to a `<Recipe />` component and be rendered (try it out!).

**5.**

The `<FavoriteRecipes />` component wants to dispatch an action to the
store within `onRemoveRecipeHandler()`, but where are the action
creators to help create those actions?

Remember, they have been moved to, and exported from, the
**favoriteRecipesSlice.js** file!

At the top of **FavoriteRecipes.js**, import the action creator
function, `removeRecipe`.

**6.**

Finally, the `removeRecipe()` action creator accepts a `recipe`
argument.

Within `onRemoveRecipeHandler()`, which receives a `recipe` parameter,
dispatch a `removeRecipe()` action with `recipe` as an argument.



``` jsx
import React from 'react';

import { AllRecipes } from '../features/allRecipes/AllRecipes.js';
import { SearchTerm } from '../features/searchTerm/SearchTerm.js';

// Import the FavoriteRecipes component here.
import {FavoriteRecipes} from '../features/favoriteRecipes/FavoriteRecipes.js'

export function App(props) {
  const {state, dispatch} = props;

  const visibleAllRecipes = getFilteredRecipes(state.allRecipes, state.searchTerm);
  const visibleFavoriteRecipes = getFilteredRecipes(state.favoriteRecipes, state.searchTerm);

  // Render the <FavoriteRecipes /> component.
  // Pass `dispatch` and `favoriteRecipes` props.
  return (
    <main>
      <section>
        <SearchTerm
          searchTerm={state.searchTerm}
          dispatch={dispatch}
        />
      </section>
      <section>
        <h2>Favorite Recipes</h2>
        <FavoriteRecipes
        dispatch={dispatch} 
          favoriteRecipes={visibleFavoriteRecipes}
        />
      </section>
      <hr />
      <section>
        <h2>All Recipes</h2>
        <AllRecipes
          allRecipes={visibleAllRecipes} 
          dispatch={dispatch}
        />
      </section>
    </main>
  )
}

/* Utility Helpers */

function getFilteredRecipes(recipes, searchTerm) {
  return recipes.filter(recipe => recipe.name.toLowerCase().includes(searchTerm.toLowerCase()));
}
```

``` jsx
import React from 'react';
import FavoriteButton from "../../components/FavoriteButton";
import Recipe from "../../components/Recipe";
const unfavoriteIconUrl = 'https://static-assets.codecademy.com/Courses/Learn-Redux/Recipes-App/icons/unfavorite.svg'

// Import removeRecipe from favoriteRecipesSlice.js
import {removeRecipe} from './favoriteRecipesSlice.js'

export const FavoriteRecipes = (props) =>{
  
  const favoriteRecipes = props.favoriteRecipes;
  const dispatch = props.dispatch;
  
  const onRemoveRecipeHandler = (recipe) => {
    // Dispatch a removeRecipe() action.
    dispatch(removeRecipe(recipe))
  };

  // Map the recipe objects in favoriteRecipes to render <Recipe /> components.
  return (
    <div id='favorite-recipes' className="recipes-container">
      {favoriteRecipes.map(createRecipeComponent)}
    </div>
  );

  // Helper Function
  function createRecipeComponent(recipe) {
    return (
      <Recipe recipe={recipe} key={recipe.id}>
        <FavoriteButton
          onClickHandler={() => onRemoveRecipeHandler(recipe)}
          icon={unfavoriteIconUrl}
        >
          Remove Favorite
        </FavoriteButton>
      </Recipe>
    )
  }
  
};
```

## Review

Congratulations! You’ve learned how to build and organize a React+Redux
application with multiple slices of state.

By completing this lesson you now know:.

- The `action.payload` property is used to hold additional data that the
  reducer might need to carry out a given action. The name `payload` is
  simply a convention and its value can be anything!
- The spread syntax (`...`) and array methods such as `.map()`,
  `.slice()`, and `.filter()` can be used to immutably update the state
  of a complex app.
- *Reducer composition* is a design pattern for managing a Redux store
  with multiple slices.
- The *root reducer* delegates actions to *slice reducers* that are
  responsible for updating only their assigned slice of the store’s
  state. The root reducer then reassembles the slices into a new state
  object.
- `combineReducers()` is a method provided by the `redux` library that
  accepts a collection of reducer functions and returns a `rootReducer`
  that implements the reducer composition pattern.
- In a Redux application, slice reducers are often written in separate
  files. This pattern is known as
  <a href="https://github.com/erikras/ducks-modular-redux"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Redux Ducks</a>.

In the Recipes application you completed in the final exercise, the
`store` is passed from the entry point (**index.js**) through the main
`<App />` component as a prop. The `<App />` component can then pass the
slices of the store’s state to its sub-components.

This approach is called “prop drilling” or “prop threading” because the
props are “threaded” through the top-level component in order to get
them to the presentational components. This isn’t ideal considering that
the top-level component doesn’t make use of those props. In the next
lesson, you’ll learn how you can use the `react-redux` library to avoid
“prop threading” and more tricks for building robust React+Redux
applications!



``` jsx
```

# Codecademy Store

In this project, you’ll build a program that mimics Codecademy’s own
online store! The application should display products from the
Codecademy store and allow the user to add them to their cart. In the
cart, the user can adjust the quantity of each item and the running
total will be displayed at the bottom. Lastly, the user can choose the
currency for the entire application.

<img
src="https://static-assets.codecademy.com/Courses/Learn-Redux/codecademy-store/shopping-cart-demo.gif"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="An animated gif showing a demo of the Codecademy store&#39;s features" />

This application has three slices of state:

- `inventory`: An array of objects representing the items that are
  available to purchase.
- `cart`: An object that maps the name of each item added to the cart to
  an object with the price and desired quantity for that item.
- `currencyFilter`: A string that represents the currency used to
  calculate the prices displayed to the user: `'USD'`, `'CAD'` or
  `'EUR'`.

An example of this application’s state might look like this:

``` jsx
state = {
  inventory: [
    { name: 'Hat', img: 'img/hat.png', price: 15.99 },
    { name: 'T-Shirt', img: 'img/t-shirt.png', price: 18.99 },
    { name: 'Hoodie', img: 'img/hoodie.png', price: 49.99 },
  ],
  cart: {
    'Hat': { price: 15.99, quantity: 0 },
    'T-Shirt': { price: 15.99, quantity: 2 },
    'Hoodie': { price: 18.99, quantity: 1 },
  },
  currencyFilter: 'CAD'
}
```

As you will see, the file structure has been organized using the
recommended feature-based pattern and most of the inventory and currency
features have been built for you. It will be up to you to:

- complete the cart’s action creators and reducer logic
- create the `store` using `createStore()` and `combineReducers()`
- pass the `store` resources to presentational components via the
  top-level `<App />` component
- render the `<Cart />` component using the current state data
- dispatch actions to the `store`

Let’s get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click **“Get Unstuck”** to **see a project
walkthrough video**.

> Note: the output terminal below the coding area is there to display
> syntax errors and can be used when debugging your code. Feel free to
> minimize it when not in use.



Mark the tasks as complete by checking them off

## Complete the Redux logic for the Cart slice

1\.

The first step towards completing the cart feature will be to define the
actions that can change the `state.cart` slice, and to handle them in
the reducer.

Open up **cartSlice.js** where you will find the `addItem()` action
creator as well as the reducer `cartReducer()` which can already handle
a `'cart/addItem'` action.

In addition to adding items to the cart, the user should be able to
modify the quantity of each item in their cart. First, you will need to
create an action creator for this kind of action object.

Below the `addItem()` function:

- Declare a new function called `changeItemQuantity`
- It should have two parameters: `name` (a string) and `newQuantity` (a
  number)
- It should return an object with two properties: `type` and `payload`
- The `payload` should be an object with a `.name` and `.newQuantity`
  property.
- Export this function.

2\.

``` jsx
// Example cart state
cart = {
  'Hat': { price: 15.99, quantity: 0 },
  'T-Shirt': { price: 15.99, quantity: 2 },
  'Hoodie': { price: 18.99, quantity: 1 },
},
```

Great! Now that you know what `changeItemQuantity()` actions will look
like, you can handle them in the `cartReducer()`. A `case` for this
action type has already been started for you. It first pulls out the
`name` and `newQuantity` from the payload and grabs the `itemToUpdate`
from the `cart`.

The first step is to update this item — but you must do it immutably!
Below the variable `itemToUpdate`…

- Declare a new variable called `updatedItem` and assign to it a new
  object.
- Copy the contents of `itemToUpdate` into `updatedItem` but set the
  `quantity` property to the value of `newQuantity`.

3\.

The final step is to return the new `cart` state with `updatedItem`
included.

## Create the Redux store from slice reducers.

4\.

With the reducers and action creators ready to go, it’s time to set up
the `store`.

Open up **store.js** and, at the top of the file, import the two
functions from the `'redux'` package used to create the `store` object:
`createStore` and `combineReducers`.

5\.

The `store` needs a `rootReducer` to operate but you currently have
three separate slice reducers.

For now, start by importing these reducers into the **store.js** file.

Add three import statements to **store.js**, one for each of the slice
reducers:

- `inventoryReducer`
- `cartReducer`
- `currencyFilterReducer`

6\.

Now that you have imported all of the resources, you can combine the
various slice reducers into a `rootReducer` using the `combineReducers`
method. Then that `rootReducer` can be used to create the `store`
object.

- First, call `combineReducers()` with an object as the argument.
- The object passed to `combineReducers()` should pair each slice name
  with the appropriate slice reducer
- Next, pass the entire `combineReducers({...})` function call as an
  argument to `createStore()`.
- Finally, assign the returned value from `createStore()` to a new
  variable called `store`.
- Make sure you export the `store`!

## Connect Redux to the top-level React component.

7\.

Open up the **index.js** file. This file is known as the “entry point”
for the application because it is directly loaded by the **index.html**
file and it is responsible for rendering the top-level `<App />`
component.

As you can see, the `<App />` component is already being rendered for
you, but it is missing the much-needed data from the `store`!

At the top of the file, import the `store` from **store.js**.

8\.

With the `store` imported into **index.js**, you can now pass its data
down to the presentational components via the `<App />` component.

The presentational components will need access to the current state of
the `store` to render the most up-to-date data. They will also need
access to the `store.dispatch` method in order to request new data when
the user interacts with the app’s various features.

- Pass the current state of the `store` as a prop called `state` to the
  `<App />` component
- Pass the `store.dispatch` method as a prop called `dispatch` to the
  `<App />` component
- Run your program and you should see the currency buttons rendered at
  the top of the screen and the text “Sorry, no products are currently
  available…”.

9\.

The products are not being rendered yet because the product data is only
fetched AFTER the page first loads. If you take a look at
**src/features/inventory/Inventory.js** you will see that this component
dispatches a `loadData()` action upon mounting.

You need to make sure that when any state changes occur, the components
are re-rendered with the most up-to-date data.

- At the bottom of **index.js** subscribe the `render` function to
  changes to the state of the `store`.
- Run your program and you should see the full inventory rendered to the
  screen!

## Render the Cart component with data from the store.

10\.

Open up **App.js** and you can see that the `<CurrencyFilter />` and
`<Inventory />` presentational components are being rendered with their
slice of state data and the dispatch method, but the `<Cart />`
component is missing!

Let’s add it in.

- At the top of **App.js**, import the `Cart` component from
  **Cart.js**.

11\.

Now, let’s add the `<Cart />` into the `<App />` component’s structure.
Like the other two components, the `<Cart />` will need access to its
slice of `state` and the `dispatch` method. It will also need access to
the `currencyFilter` slice of `state` to calculate the total cart price.

Inside the `App()` component’s `return` statement…

- Add in the `<Cart />` component below the `<Inventory />` component.
- The `<Cart />` component should have three prop values: `cart`,
  `currencyFilter`, and `dispatch`.

If done correctly, you should see the cart feature rendered to the
screen with a total of `0` and the text `'REPLACE_ME"` in the place of
the item list.

## Use store data in the Cart component.

12\.

Open up **Cart.js** and take a look at the `return` statement. Notice
that it is trying to render the variable `cartElements`, which is
currently holding the string `'REPLACE_ME'`.

Instead, `cartElements` should be an array of `<li>` elements created
using the `createCartItem()` helper function defined at the bottom of
the file.

Recall that the `cart` slice of state is an object where each key is the
name of an item in the cart. Do the following to make the desired
`cartElements` array:

- Initialize `cartElements` to an empty array.
- Iterate through the keys of the `cart` object
- For each key, which is the name of an item, call `createCartItem()`
  with that item name as an argument.
- Store the values returned by `createCartItem()` in `cartElements`.

``` jsx
// Example cart state
cart = {
  'Hat': { price: 15.99, quantity: 0 },
  'T-Shirt': { price: 15.99, quantity: 2 },
  'Hoodie': { price: 18.99, quantity: 1 },
}
 
// Desired outcome:
cartElements = [ 
  createCartItem('Hat'),
  createCartItem('T-Shirt'),
  createCartItem('Hoodie'),
]  
```

13\.

Try adding items to your cart. They now show up! However, there are a
few things wrong. Most obviously, the cart total is not showing up
properly.

At the top of the **Cart.js** file, the `calculateTotal` helper function
is imported from the **src/utilities/utilities.js** file. As the name
suggests, you can use this function to calculate the cart’s total!

- Call `calculateTotal()` with the `cart` and `currencyFilter` prop
  values as arguments and store the result in the variable `total`.

14\.

Wonderful! You can now add items to the cart and the total will
accurately reflect the cart. However, trying to change the quantity of
the items using the number picker doesn’t seem to update the state.

Within the `createCartItem()` function, take a look at the `onChange`
value. It’s using the `onInputChangeHandler()` function, passing along
the `name` of the item and the new value of the input field
(`e.target.value`).

Now, take a look at `onInputChangeHandler()`. After receiving the `name`
and `input` values and doing some data validation and normalization on
the `input`, it should dispatch a `changeItemQuantity()` action to the
`store` to update the data.

- At the top of **Cart.js**, import the `changeItemQuantity()` action
  creator that you made earlier in this project.

15\.

At the end of `onInputChangeHandler()`…

- Use the `dispatch` method from the `props` to dispatch a
  `changeItemQuantity()` action with `name` as the first argument and
  `newQuantity` as the second.
- After completing this step, try modifying the quantity using the
  number input field!

## Extra Challenges

16\.

Well done! You’ve gone through the entire process of making action
creators, setting up a slice reducer, creating the `store` object, and
plugging in the `store` data into React components. If you’d like to
keep working on this project, try implementing this bonus feature:

- Add a search feature (like in the Recipes app) to filter the products
  shown in the inventory.

## [Solution](codecademy-store)

# Implementing the Redux Store from Scratch

An article on how to implement the Redux store object using vanilla
JavaScript.

### Who is this article for?

Though the `redux` package provides the `createStore()` method for us,
examining how this powerful object can be created using vanilla
<a href="https://www.codecademy.com/resources/docs/javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">JavaScript</a> will help illuminate how Redux works
under the hood. This article is for learners who want to solidify their
understanding of the Redux store.

It is assumed that you have some familiarity with the following
Redux-related terms and concepts:

- The one-way data-flow model (state → view → actions → state)
- Reducer functions
- Action objects
- The `createStore()` function (by the `redux` package)
- The `store` object and <a href="https://redux.js.org/api/store"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">its three main methods</a>

Visit <a href="https://www.codecademy.com/learn/learn-redux"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">our course on Redux</a> to learn about or refresh
yourself with these terms and concepts.

### Part 1: What is the Redux store and how is it used?

<a href="https://redux.js.org"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Redux</a> is a state-management library
centered around a single, powerful object called the `store`. This one
object is responsible for holding the entire application’s state,
receiving *action objects* and then executing state changes based on the
type of the action received, and informing (executing) *listener
functions* when such changes occur.

To help create this `store` object, the Redux library provides the
`createStore()` function. This function accepts a reducer function as an
argument and returns a `store` object with three essential methods:

- `store.getState()`: for retrieving the current state value held by the
  `store`
- `store.dispatch(action)`: for triggering changes to the state, given
  an action object
- `store.subscribe(listener)`: for registering listener functions to be
  called when state changes occur

All of this can be seen in the example below which implements a simple
counting application:

``` jsx
import { createStore } from 'redux';
 
const countReducer = (state = 0, action) => {
  switch (action.type) {  
    case 'increment':  
      return state + 1;
    case 'decrement':  
      return state - 1;
    default:  
      return state;  
  }
}
const store = createStore(countReducer);
 
const render = () => {
  document.getElementById('count').text = store.getState(); // Display the current state.
}
render(); // Render once with the initial state of 0.
 
store.subscribe(render); // Re-render on state changes.
 
document.getElementById('plusButton').addEventListener('click', () => {  
  store.dispatch({ type: 'increment' }); // Request a state change.
});
```

With this working knowledge of how to use the `createStore()` function
and the `store` methods, we can begin to write the outline of this
function:

``` jsx
const createStore = (reducer) => {
  const getState = () => {};
  const dispatch = () => {};
  const subscribe = () => {};
  return { getState, dispatch, subscribe };
}
```

Above, we define `createStore()` simply as a function with a `reducer`
argument that returns an object containing three methods: `getState()`,
`dispatch()`, and `subscribe()`.

### Part 2: Holding the current state of the application

Let’s now turn our attention to the primary responsibility of the
`store`: to hold the current state of the application and to provide
access to this value via the `store.getState()` method. Implementing
this behavior is as simple as storing an encapsulated variable (we can
call it `state`) within the function and returning it with
`store.getState()`:

``` jsx
const createStore = (reducer) => {
  let state;
  const getState = () => state;
  const dispatch = () => {};
  const subscribe = () => {};
  return { getState, dispatch, subscribe };
}
```

Hiding the `state` behind the
<a href="https://www.codecademy.com/resources/docs/general/api"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">API</a> of the `store` avoids common dangers associated
with having global variables:

- Polluting the global namespace increases the chances of naming
  collisions.
- Granting variable access to parts of an application while limiting it
  to others is impossible.
- Debugging is difficult when a variable is referenced in many parts of
  the application.

Redux solves these problems by requiring the programmer to use only the
`store` methods to access the state.

### Part 3: Managing listener functions

The state of the `store` will likely change many times and the features
of the application must be notified when those changes occur. The
`store.subscribe()` method allows you to subscribe callback functions,
called *listeners*, to be executed when the state data changes. As in
the first example, functions that render the view-layer are often
subscribed to the `store` and use `store.getState()` to get the most
up-to-date state data.

Any number of listeners may be subscribed to the `store` at once so an
array is maintained by the `store` and the `subscribe()` method adds
provided listeners to that array.

``` jsx
const createStore = (reducer) => {
  let state;
  let listeners = [];
 
  const getState = () => state;
 
  const dispatch = () => {};
 
  const subscribe = (listener) => {
    listeners.push(listener);
    return () => {  
      listeners = listeners.filter(l => l !== listener)  
    }
  };
 
  return { getState, dispatch, subscribe };
}
```

Also notice that the `subscribe()` method returns a function. If you no
longer want the given listener to be executed in response to state
changes, this function can be saved and called to *unsubscribe* the
given listener. For example:

``` jsx
const unsubscribe = store.subscribe(render); // Subscribes `render` to the store.
 
// somewhere else in the program...
unsubscribe(); // Unsubscribes `render` from the store.
```

### Part 4: Handling incoming actions

Redux ensures that the state is maintained reliably by requiring the
programmer to dispatch actions to the store if they wish to update the
state. The `store.dispatch()` function accepts an `action` object as an
argument and calculates the next `state` value by calling the
`reducer()` with the current `state` and the `action`:

``` jsx
const createStore = (reducer) => {
  let state;
  let listeners = [];
 
  const getState = () => state;
 
  const dispatch = (action) => {
    state = reducer(state, action);
    listeners.forEach(listener => listener());
  };
 
  const subscribe = (listener) => {
    listeners.push(listener);
    return () => {  
      listeners = listeners.filter(l => l !== listener)  
    }
  };
 
  dispatch({});
  return { getState, dispatch, subscribe };
}
```

Each listener that has been subscribed to the `store` (stored in the
`listeners` array) is then executed. Notice that the state is not passed
directly to these listeners. It is up to each listener to use
`store.getState()` to get the most up-to-date data.

Finally, notice that before the `store` object is returned, the function
call `dispatch({})` is made. This initializes the `state` value with the
default initial state value of the `reducer`.

Apart from a few details and edge cases, this is the full implementation
of the `createStore()` method provided by the `redux` package. As you
can see, the technology behind the Redux `store` is not particularly
complicated, though the pattern it enforces is incredibly powerful.

# The React Redux Library

## Introduction

<a href="https://react-redux.js.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React Redux</a> is the official Redux-UI
binding package for React. This means React Redux handles the
interactions between React’s optimized UI rendering and Redux’s state
management. In this lesson, you will explore the benefits of using the
React Redux library and then incorporate the tools provided by the
library into a Redux application.

Throughout this lesson, you will be working with a recipe application
that uses React for the UI and Redux for state management. You should be
comfortable with React and how to create functional components, pass
data through props, and nest components to create a complete
application.

The recipe application also has a Redux implementation so you should be
familiar with creating and combining reducers, creating the store, and
dispatching actions.

Most importantly you should be familiar with Redux’s one-way data flow:

- Starting with the application state
- Rendering components based on that state
- Dispatching an action to trigger state changes
- Re-rendering any component affected by the new state

React Redux provides tools that will help you implement each stage of
the data flow with a React UI.



Before continuing you should note the application’s current
functionality that will be replaced in the following exercises:

1.  Calling `ReactDOM.render()` using `render()`.
2.  Passing `store.getState()` through `<App>` component props.
3.  Passing `store.dispatch` through `<App>` component props.
4.  Subscribing `render()` to the Redux store so it is called after
    state updates.
5.  Using the `props` parameter in **App.js** to pass data through the
    component, also known as *props drilling*.

Move to the next exercise to learn about each of these elements of the
current application and how React Redux can help improve on them.



``` jsx
import React from 'react';
import ReactDOM from 'react-dom';

import { App } from './app/App.js';
import { store } from './app/store.js';

const render = () => {
  ReactDOM.render(
    <App 
      state={store.getState()}
      dispatch={store.dispatch}
    />,
    document.getElementById('root')
  )
}
store.subscribe(render);
render();
```

## Why React Redux

The recipe application in the code editor works. Run it right now and
give it a try. React is handling the UI rendering through
`ReactDOM.render()` which is inside the `render()` function. Redux is
managing the state with the `store` and passing the `state` and
`dispatch` references through props. Redux also triggers the UI to
re-render with `store.subscribe(render)`. So why do you need to use
React Redux?

Even though the application works, this is not the best implementation,
especially if the application were to grow.

The first issue with this implementation is passing the `state` and
`dispatch` reference through props. Using props to access the `state` or
to dispatch actions adds unneeded complexity. Keeping track of errors in
this situation is unmanageable as the number of components increases.

Also, the `<App>` component uses *props drilling*, which means it is
passing props to child components without using them. This is something
React developers like to avoid in order to make components more
reusable.

The last issue is subscribing `render()` to changes in the state. This
creates more overhead by repeatedly calling `ReactDOM.render()`, which
is not the intended implementation for rendering React components.

With React Redux you will learn how to solve these issues by:

- Giving the entire application access to the Redux store without using
  props and props drilling.
- Subscribing individual components to specific pieces of the
  application state for optimized rendering.
- Easily dispatching actions within components.



Move to the next exercise to install the React Redux package.



``` jsx
```

## Installing react-redux

To take advantage of React Redux within your application, you must
install the `react-redux` package using `npm`, the Node Package Manager.
If you’re not familiar with `npm`, you can
<a href="https://docs.npmjs.com/about-npm"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">learn more in the documentation</a>. This
includes understanding the directory structure, confirming installation
and versions of your packages.

To install React Redux using `npm`, type the following command into your
terminal and hit the “enter” key:

``` jsx
npm install react-redux
```

After installation, your application will have access to the tools
provided by the React Redux package.



**1.**

Start your journey with React Redux.

In the terminal, enter the command to install the `react-redux` package
using `npm`.



``` bash
npm install react-redux
```

## The \<Provider\> Component

Now that the `react-redux` library is installed, it is time to start the
one-way data flow by giving the top-level `<App>` component access to
the Redux store.

The `<Provider>` component from the `react-redux` library gives the
components of an application access to the Redux store without the need
to pass the store directly to the React components through props. To
implement this, wrap the `<Provider>` component around the top-level
component and pass `store` through the `store` prop of the `<Provider>`:

``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
import { App } from './app/App.js';
import { store } from './app/store.js';
 
import { Provider } from 'react-redux'
 
ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById("root")
);
```

This example demonstrates:

- Importing `Provider` from `react-redux`.
- Wrapping the `<Provider>` component around the root `<App />`
  component.
- Passing the `store` through the `<Provider>` component’s `store` prop.

Before moving on to the instructions, it is important to note that
`ReactDOM.render()` is no longer inside a `render()` function and
therefore nothing is subscribed to changes in the Redux store. This is
something you will address in the next few exercises. Like many
improvements in the world, you sometimes have to break the process to
make it better.



**1.**

Before you can use the `<Provider>` component you must import it.

In the **index.js** file, create an import statement that retrieves the
`Provider` component from `react-redux`.

**2.**

The next step is to insert the `<Provider>` component into the recipe
application.

Inside `ReactDOM.render()`, wrap the top level component, `<App>` with
the `<Provider>` component.

**3.**

With the `<App>` component now nested inside the `<Provider>` component,
pass the imported Redux `store` through the `<Provider>` component
`store` prop.

This begins the process of accessing data throughout the application
components but you must do a couple more things to see any progress.



``` jsx
import React from 'react';
import ReactDOM from 'react-dom';
// Import Provider component below.
import { Provider } from 'react-redux';

import { App } from './app/App.js';
import { store } from './app/store.js';

ReactDOM.render(
  // Wrap root application with Provider component below.
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById('root')
);
```

## Selectors

The Redux store is provided to the React components of the application
using the `<Provider>`component. Now, for each React component, you need
to define which data from the store that component needs access to. This
can be done by creating *selector functions*. These are not provided by
the `react-redux` library but instead are user-defined.

A selector function, or *selector*, is a pure function that selects data
from the Redux store’s state. Each component in an application that
needs access to the state will have one or more selectors that extract
only the necessary data for that component.

As pure functions, selectors should output the same data given the same
input. This means that no randomness or side effects can occur inside
the function.

A selector:

- Takes `state` as an argument.
- Returns what is needed by the component from `state`.

``` jsx
/* 
Given a state with an array of objects, labeled 'todos', and a string, labeled 'filter':
 
state = {
  todos: [
    {id: 1, isComplete: true, text: 'Go shopping'}
    {id: 2, isComplete: false, text: 'Call home'}  
  ],
  filter: 'SHOW_ALL'
}
*/
 
// Select the current filter
export const selectFilter = state => state.filter;
 
// Select the `text` from each todo in an array.
export const selectTodoText = state => state.todos.map(
  todo => todo.text);
 
// Select the id values of completed todos in an array.
export const selectIsCompleteIDs = state => state.todos.filter(
  todo => todo.isComplete).map(todo => todo.id)
```

1.  The first selector `selectFilter` returns the string `state.filter`.
2.  `selectTodoText` returns an array of the `.text` value for each todo
    object .
3.  `selectIsCompleteIDs` returns an array of the `id` values from the
    todo objects where `isCompleted` is `true`.

It is a convention to give selectors a name that starts with `select`
and that represents the specific piece of data they retrieve.

Now, let’s implement some selectors for the Recipes app!

The `AllRecipes` component needs to display the entire set of recipes
loaded from the database. If a search term is supplied, however, it
needs to display only the recipes that match the search term. To
accomplish this task you will need the `allRecipes` array and the
`searchTerm` string from the Redux store.

Take a look at **searchTermSlice.js** where the `selectSearchTerm()`
selector function has been implemented and exported for you. In
**allRecipesSlice.js** the `selectSearchTerm()` function has been
imported and it will be up to you to use it to help implement the
selectors for the `allRecipes` slice.



**1.**

First, you need to implement the `selectAllRecipes` selector.

Towards the bottom of **allRecipesSlice.js**, implement
`selectAllRecipes` and test the code:

1.  Start with an `export` statement
2.  Define `selectAllRecipes` with `state` as the only argument
3.  Return the `allRecipes` piece of the `state`
4.  To test the selector, uncomment the call to `testSelectAllRecipes()`
    at the bottom of the file

**2.**

You can now implement a new selector that retrieves the recipes based on
the `searchTerm` in the state.

Below the `selectAllRecipes` selector:

1.  Start with an `export` statement
2.  Define `selectFilteredAllRecipes` with `state` as the only argument
3.  For now, leave the function body empty (`{}`)

**3.**

You will use the `selectAllRecipes` and `selectSearchTerm` to retrieve
data for `selectFilteredAllRecipes`.

Inside the function body of `selectFilteredAllRecipes`, create two
variables:

- `allRecipes` and assign the return value of `selectAllRecipes(state)`
- `searchTerm` and assign the return value of `selectSearchTerm(state)`

**4.**

Now you have an array of the recipes in `allrecipes` and the current
search term string in `searchTerm`. To get a filtered list of recipes
based on the search term you will use the JavaScript array <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">filter()</a> method.

Inside `selectFilteredAllRecipes`, call `allRecipes.filter()` with the
following callback function as the argument:

``` jsx
recipe => recipe.name.toLowerCase().includes(searchTerm.toLowerCase())
```

Then, return the result.

Uncomment the test function `testSelectFilteredAllRecipes()` to see the
filtered recipe names printed in the output console.

Selectors can be simple or complex. All are an important step to
accessing the Redux store data within components.



``` jsx
import allRecipesData from '../../../data.js'
import { selectSearchTerm } from '../searchTerm/searchTermSlice.js';

export const loadData = () => {
  return {
    type: 'allRecipes/loadData',
    payload: allRecipesData
  }
}

const initialState = [];
export const allRecipesReducer = (allRecipes = initialState, action) => {
  switch (action.type) {
    case 'allRecipes/loadData':
      return action.payload;
    case 'favoriteRecipes/addRecipe':
      return allRecipes.filter(recipe => recipe.id !== action.payload.id);
    case 'favoriteRecipes/removeRecipe':
      return [...allRecipes, action.payload]
    default:
      return allRecipes;
  }
}

// Implement the selectors below.
export const selectAllRecipes = state => state.allRecipes;

export const selectFilteredAllRecipes = state => {
  const allRecipes = selectAllRecipes(state);
  const searchTerm = selectSearchTerm(state);

  return allRecipes.filter(recipe => recipe.name.toLowerCase().includes(searchTerm.toLowerCase()))
};

// This code is for testing the selectors only.
const testState = {
  allRecipes: allRecipesData,
  searchTerm: 'ch'
}

const testSelectAllRecipes = () => {
  console.log('All Recipes')
  console.log(selectAllRecipes(testState));
}

const testSelectFilteredAllRecipes = () => {
  console.log('\nRecipes filtered by searchTerm')
  console.log(selectFilteredAllRecipes(testState));
}

// Uncomment these to test each selector.
testSelectAllRecipes();
testSelectFilteredAllRecipes(); 
```

## The useSelector() Hook

With selectors, you have given your application the instructions to
access data from the Redux store. To use these instructions the
`useSelector()` hook is provided by `react-redux`. `useSelector()`
accomplishes two things:

- It returns data from the Redux store using selectors
- It subscribes a child component of `<Provider />` to changes in the
  store. React, not Redux, will re-render the component if the data from
  the selector changes.

These tasks are both accomplished by calling `useSelector()` inside a
component definition and assigning its returned value to a variable.

``` jsx
// Todos.js
import { useSelector } from 'react-redux';
import { selectTodos } from 'todosSlice.js';
 
export const Todos = () => {
  const todos = useSelector(selectTodos);
 
  return (
    <p>{todos}</p>
  )
};
```

In the above example, `useSelector()` takes the imported selector
function `selectTodos` as an argument. The returned value is the
selected data from the Redux store and is assigned to `todos`.

Calling `useSelector()`inside the component definition also subscribes
the `Todos` component to re-render if any changes occur in the `todos`
portion of the Redux store. This optimizes the performance of the
application by only re-rendering components that have had their data
change and not the entire application.

`useSelector()` can also use an inline selector as an argument:

``` jsx
const todos = useSelector(state => state.todos);
```

Inline selectors can be useful if you need to use props for data
retrieval.

``` jsx
export const Todo = (props) => {
  const todo = useSelector(state => state.todos[props.id]);
 
```

This final example uses `props.id` to extract a single element from an
array or object in the Redux store.

`useSelector()` completes the 3 step process for accessing data from the
Redux store using `react-redux`.

1.  The `<Provider>` component is used to provide the Redux store to the
    nested application.
2.  Selectors are created to give instructions on retrieving data from
    the store.
3.  `useSelector()` is called within a child component of `<Provider>`
    for executing selector instructions to retrieve data and subscribe
    to re-rendering.



**1.**

To access Redux store data with `useSelector()`, you first need to
import it from `react-redux`.

In **AllRecipes.js** import `useSelector` from `react-redux`.

**2.**

Along with `useSelector()` you need access to the
`selectFilteredAllRecipes` selector defined in the previous exercise.

In **AllRecipes.js** add `selectFilteredAllRecipes` to the
**allRecipesSlice.js** import statement.

**3.**

With both import statements complete, you are now able to access the
data using the selector function and `useSelector()`.

Inside the `AllRecipes()` component function:

- Define a variable `allRecipes`.
- Assign it the value returned by `useSelector()`.
- Pass `selectFilteredAllRecipes` to `useSelector()`.

In this exercise, the data was initialized with recipes so when you run
the code you should see the recipe data rendered in the browser.



``` jsx

import React, { useEffect } from 'react';
// Implement the import statements below.
import{ useSelector } from'react-redux';

// Add the selector to the below import statement 
import { selectFilteredAllRecipes, loadData } from './allRecipesSlice.js';
import { addRecipe } from '../favoriteRecipes/favoriteRecipesSlice.js';
import FavoriteButton from "../../components/FavoriteButton";
import Recipe from "../../components/Recipe";
const favoriteIconURL = 'https://static-assets.codecademy.com/Courses/Learn-Redux/Recipes-App/icons/favorite.svg';

export const AllRecipes = () => {
  // Implement allRecipes variable below.
  const allRecipes = useSelector(selectFilteredAllRecipes);
  
  const onFirstRender = () => {
    // dispatch(loadData());
  }
  useEffect(onFirstRender, []);

  const onAddRecipeHandler = (recipe) => {
    // dispatch(addRecipe(recipe));
  };

  return (
    <div className="recipes-container">
      {allRecipes.map((recipe) => (
        <Recipe recipe={recipe} key={recipe.id}>
          <FavoriteButton
            onClickHandler={() => onAddRecipeHandler(recipe)}
            icon={favoriteIconURL}
          >
            Add to Favorites
          </FavoriteButton>
        </Recipe>
      ))}
    </div>
  );
};
```

## The useDispatch() Hook

With the `<Provider>` component, selectors, and `useSelector()`
implemented, you are now able to access the application state and
subscribe component rendering to data changes. In this exercise, you are
going to look at the final step: dispatching actions.

Without the `react-redux` library, you needed to create a reference to
`store.dispatch` and pass it through the application’s props. With
`react-redux` you can now access this reference from each component with
`useDispatch()`.

``` jsx
import { useDispatch } from 'react-redux';
 
// within component definition
const dispatch = useDispatch() 
dispatch({type: 'addTodo'});
```

The above example:

- Imports `useDispatch` from `react-redux`.
- Calls `useDispatch()` to obtain a reference to the Redux store
  `dispatch()` function and assigns it to `dispatch`.
- Dispatches an action using `dispatch()` with an action object as the
  argument.

Here is a complete example with action creators and a Component
definition:

``` jsx
import { useSelector, useDispatch } from 'react-redux';
import { selectTodo } from './todoSlice.js';
import { removeTodo } from './todoSlice.js';
 
const Todo = () => {
  const todo = useSelector(selectTodo);
  const dispatch = useDispatch();
 
  return (
    <button onClick={() => dispatch(removeTodo(todo))}>
      {todo}
    </button>
  )
}
```

This example demonstrates:

- Importing `useDispatch` (alongside `useSelector`).
- Importing the `removeTodo` action creator from `./todoSlice.js`
- Creating the `dispatch` variable that holds the reference to the Redux
  store dispatch function.
- Dispatching an action using `dispatch()` with `removeTodo`.

The `useDispatch` hook allows you to dispatch actions from any component
that is a descendent of the `<Provider>` component, therefore avoiding
passing a reference to `store.dispatch` through props. Both approaches
accomplish the same thing but `useDispatch()` avoids props drilling.

In **AllRecipes.js**, take a look at the functions `onFirstRender()` and
`onAddRecipeHandler()`. These handlers are still implemented from the
earlier version of the app when `dispatch` was made available through
props. You will now provide a new reference to the Redux store’s
`dispatch` function.



**1.**

In **AllRecipes.js**:

- Add `useDispatch` to the `react-redux` import statement.
- Create a variable `dispatch` inside the `AllRecipes` component and
  assign it the reference returned by `useDispatch()`.

**2.**

In **FavoriteRecipes.js**, `useDispatch` has been added to the import
statement and the `dispatch` reference has been defined. Use `dispatch`
to dispatch the action inside one of the handler functions.

Inside the `onRemoveRecipeHandler` function:

- Dispatch an action using `dispatch()`
- Pass the `removeRecipe()` action creator to `dispatch()`.
- Pass `recipe` to the action creator.

When you run the application you should be able to remove items from
your favorite list. The `SearchTerm` component action dispatching has
also been implemented so you can now filter both recipe lists using the
text box.



``` jsx

import React, { useEffect } from 'react';
// Add useDispatch to the import statement below.
import { useDispatch, useSelector } from 'react-redux';

import { addRecipe } from '../favoriteRecipes/favoriteRecipesSlice.js';
import { loadData, selectFilteredAllRecipes } from './allRecipesSlice.js';
import FavoriteButton from "../../components/FavoriteButton";
import Recipe from "../../components/Recipe";
const favoriteIconURL = 'https://static-assets.codecademy.com/Courses/Learn-Redux/Recipes-App/icons/favorite.svg';

export const AllRecipes = () => {
  const allRecipes = useSelector(selectFilteredAllRecipes);
  // Implement dispatch variable below.
  const dispatch = useDispatch();

  const onFirstRender = () => {
    dispatch(loadData());
  }
  useEffect(onFirstRender, []);
  
  const onAddRecipeHandler = (recipe) => {
    dispatch(addRecipe(recipe));
  };

  return (
    <div className="recipes-container">
      {allRecipes.map((recipe) => (
        <Recipe recipe={recipe} key={recipe.id}>
          <FavoriteButton
            onClickHandler={() => onAddRecipeHandler(recipe)}
            icon={favoriteIconURL}
          >
            Add to Favorites
          </FavoriteButton>
        </Recipe>
      ))}
    </div>
  );
};
```

``` jsx
import React from 'react';
import { useSelector, useDispatch } from 'react-redux';

import { removeRecipe, selectFilteredFavoriteRecipes } from './favoriteRecipesSlice.js';
import FavoriteButton from "../../components/FavoriteButton";
import Recipe from "../../components/Recipe";
const unfavoriteIconUrl = 'https://static-assets.codecademy.com/Courses/Learn-Redux/Recipes-App/icons/unfavorite.svg';

export const FavoriteRecipes = () =>{
  const favoriteRecipes = useSelector(selectFilteredFavoriteRecipes);
  const dispatch = useDispatch();

  const onRemoveRecipeHandler = (recipe) => {
    // Dispatch the action below.
    dispatch(removeRecipe(recipe));
  };

  return (
    <div className="recipes-container">
      {favoriteRecipes.map(createRecipeComponent)}
    </div>
  );

  // Helper Function
  function createRecipeComponent(recipe) {
    return (
      <Recipe recipe={recipe} key={recipe.id}>
        <FavoriteButton
          onClickHandler={() => onRemoveRecipeHandler(recipe)}
          icon={unfavoriteIconUrl}
        >
          Remove Favorite
        </FavoriteButton>
      </Recipe>
    )
  } 
};
```

## Review

Congratulations on finishing this lesson on the
<a href="https://react-redux.js.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">react-redux</code></a> library!
Let’s review what you’ve learned:

- React and Redux work well together but need more to support React’s UI
  optimization and Redux’s one-way data flow.
- The `react-redux` library provides React application components access
  to the Redux store
- The `<Provider>` component wraps around the root component to give its
  descendants access to the - Redux `store` without props drilling
- Selectors are pure functions used to access all or part of the `state`
  in the Redux `store`
- `useSelector()` retrieves the application `state` through selectors.
  It must be called from within a component
- `useSelector()` subscribes components to data retrieved from the
  selectors. React, not Redux, re-renders those components when the
  selected data changes
- `useDispatch()` returns a reference to Redux store `dispatch()`
  function



With all of this new knowledge to work with, explore the finished
application to observe how `react-redux` helped you implement the Redux
one-way data flow.

Have fun!



# Matching Memory

When introducing Redux to a React application, you transfer the
responsibility of state management over to Redux. This is great because
Redux is really good at state management, but this also hinders React’s
optimized UI rendering. That is why `react-redux` was created to bind
the UI rendering of React to the state management of Redux.

This project explores where `react-redux` fits into an application by
finishing off the implementation of a one-player matching game.

The application consists of 5 React components:

1.  `App`: The root component, `App` renders the `Score` and `Board`
    components.
2.  `Score`: Child of the `App` component, `Score` will display the
    number of matched cards.
3.  `Board`: Child of the `App` component, `Board` will create the card
    grid for gameplay.
4.  `CardRow`: Child of the `Board` component, `CardRow` renders a row
    of `Card` components.
5.  `Card`: Child of the `CardRow` component, `Card` displays the card
    content when flipped over.

One goal of this project will be to show that a nested component like
`Card` can access data and dispatch actions as easily as a higher-level
component like `App` or `Score`.

Most of the Redux store logic is implemented in **boardSlice.js**. This
includes initializing the `state`, the reducers, and the action
creators.

The application `state` is an array of 12 objects with each object
representing a card:

``` jsx
// card object
{
  id: uniqueID, 
  contents: wordString, 
  visible: visibleBoolean, 
  matched: matchedBoolean
}
```

There are 3 actions needed to run the game:

- `setGame`: randomize the card array and set `visible` and `matched` of
  all cards to `false`
- `flipCard`: set `visible` of the specified card `id` to `true`
- `resetCards` set `visible` to `false` on unmatched cards

To complete this project you will add a `<Provider />` component,
implement selectors, retrieve data from the `store` with
`useSelector()`, and dispatch actions with the help of `useDispatch()`.
With all of this ahead of you, explore the starting code of the
application and then move on to the first task to begin implementing the
matching game.



Mark the tasks as complete by checking them off

## Provide the Redux Store to Your Application

1\.

The start of the project involves 5 tasks that will add code to the
application but will result in no change to what is rendered in the
browser. The first step is to give the application access to the Redux
store using the `<Provider />` component. Start with the import
statement.

In **index.js**:

1.  Import the `Provider` component.

2\.

With the `Provider` component imported, implement it inside the
`ReactDOM.render()` function.

Inside `ReactDOM.render()`:

1.  Wrap the root application component with the `<Provider />`
    component. Be sure to keep `<Provider />` as the first parameter of
    the render function.
2.  Pass the `store` variable through the `store` props.

## Create the Board Layout

3\.

In order to create the grid of cards, the `Board` component will
retrieve the `id` and `contents` properties from the `state` card
objects. This will require a selector.

At the bottom of **boardSlice.js**:

1.  Create an `export` statement with a defined selector, `selectBoard`.
2.  The selector should return an array created by `state.board.map()`.
3.  The callback function for the `map()` function should return an
    object `{id: card.id, contents: card.contents}`, where `card` is the
    argument of the callback function.

4\.

Now go to **Board.js**. While most of the board creation logic exists,
you need to retrieve the array of card objects and incorporate the data
to complete the creation process.

Start with the necessary import statements.

1.  Import `useSelector` from `react-redux`.
2.  Import the selector you implemented in the previous step from
    `./boardSlice.js`.

5\.

With the imports complete you can retrieve the data from the store and
subscribe the `Board` component to changes in the selected pieces of
state.

1.  Inside the `Board` component define a variable named `currentBoard`
    and assign it the data retrieved from calling `useSelector()` with
    the `selectBoard` selector.

6\.

The logic in the `Board` component creates a grid of cards by rendering
a calculated number of `CardRow` components. To finish the
implementation you will use the data in `currentBoard` to help calculate
the number of `CardRow` components and then create an array of card
objects for each row.

1.  To update the row number calculation, reassign the variable
    `numberOfCards` to the length of the array of cards, `currentBoard`.
2.  Inside the utility function `getRowCards()`, replace the empty
    object inside `rowCards.push()` with `currentBoard[cardIndex]`.

## Show Your Cards

7\.

Each `Card` component renders a single card object using the `id` and
`content` values. The `Card` also uses the `visible` and `matched`
boolean values from the `state` to determine how to render. You will
begin by selecting the visible card objects from the `state` data.

In **boardSlice**, implement a selector:

1.  Create an export statement with a defined selector,
    `selectVisibleIDs`.
2.  The selector should return an array that filters the board array and
    then maps the filtered array. Use `state.board.filter().map()`
3.  The callback function for `filter()` should test `card.visible`,
    where `card` is the parameter of the callback function.
4.  The callback function for `map()` should return `card.id`, where
    `card` is the parameter of the callback function.

8\.

With the selector complete, open **Card.js** to begin implementing the
presentation behavior of the Card component.

In **Card.js**, start with the necessary imports:

1.  Import `useSelector` from `react-redux`.
2.  Import the selector you implemented in the previous step from
    `boardSlice.js`.

9\.

Now, retrieve the visible card data to know which card to display on the
board.

Inside the `Card` component definition:

1.  Define a variable named `visibleIDs` and assign it the data
    retrieved from calling `useSelector()` with the `selectVisibleIDs`
    selector.

10\.

By default each `Card` component displays the Codecademy logo which
means its `contents` are not visible. With the visible card IDs now
known by each `Card` component, each card can show its `contents` if it
is one of the visible cards or remain hidden otherwise. This logic is
handled by the first `if` statement in the `Card` component definition.

Inside the `Card` component definition:

1.  Remove the `false` in the first `if` statement. Instead, check that
    the `Card` component’s `id` prop is included in `visibleIDs` array.

You should now see all the cards in their initialized order.

## Start the Game

11\.

You have created the board and made it possible to see the visible
cards. Now, it’s time to randomize the starting positions of the cards!

In **boardSlice.js** there is an action creator called `setBoard()` and
a corresponding case in `boardReducer`that randomizes the card order in
the `state` array and sets the `visible` and `matched` properties of
every card to `false`. This action should be dispatched when the ‘Start
Game’ button is clicked.

Open **App.js** where you will find the function `startGameHandler()`.
You need to dispatch the action from this function.

In **App.js**, start with imports:

1.  Import `useDispatch`from `react-redux`.
2.  Import the `setBoard` action creator from `boardSlice.js`.

12\.

Now you can dispatch the action created by `setBoard()` within
`startGameHandler()`. The `setBoard()` action creator takes no
arguments.

Inside the `App` component:

1.  Define a new variable called `dispatch` and give it the reference to
    the Redux store `dispatch` function.
2.  Inside the `startGameHandler()` function, dispatch the action
    created by `setBoard()`.

It is important to remember that action creators don’t dispatch actions
but return the formatted action object with the appropriate payload. You
can confirm this behavior in **boardSlice.js**.

When you click the ‘New Game’ button all the cards will be hidden and
their order randomized.

## Flipping Cards

13\.

To show the `contents` of each card the `flipCard()` action can be
dispatched when a card is clicked.

In **Card.js**, start with the necessary imports:

1.  Add `useDispatch`to the `react-redux` import statement.
2.  Add `flipCard` to the `boardSlice.js` import statement.

14\.

The action creator `flipCard()` takes a card `id` as an argument and is
used in dispatching the action that shows a card’s`contents`.

Inside the `Card` component definition:

1.  Define a variable called `dispatch` and give it the reference to the
    Redux store `dispatch` function returned by `useDispatch()`.
2.  Inside the `flipHandler()` function, dispatch the action created by
    `flipCard(id)`.

When each card is clicked, it becomes ‘flipped’ because it’s `visible`
property is set to `true`. In fact, you can now flip over all the cards
if you want to check that they are random.

15\.

Now you need to limit the number of visible cards at a time to `2`.

Inside the `Card` component:

1.  Place the condition that the length of `visibleIDs` is equal to `2`
    in the third `if` statement.

This stops the action from dispatching when cards are clicked so there
can never be more than 2 cards visible at a time.

## Reset the Flipped Cards

16\.

You have now hidden the randomized cards and allowed for two cards to be
flipped over at a time. In order to continue the game you need to be
able to reset the flipped cards using the `Try New Pair` button and the
`resetCards()` action creator.

In `App.js`, import and dispatch the `resetCards()` action:

1.  Add `resetCards` to the **boardSlice.js** import statement.
2.  Inside the `tryAgainHandler()` function, dispatch the action created
    by `resetCards()`.

Confirm that you completed this step properly by revealing two cards,
and then pressing “Try New Pair”

## Matching Cards

17\.

The last step of the game behavior is to identify matched cards on the
board using the `matched` property of each card object in the `store`.
This will require a final selector.

In **boardSlice.js**:

1.  Create an export statement with a defined selector,
    `selectMatchedIDs`.
2.  This selector is the same as `selectVisibleIDs()` except you need to
    change the `filter()` callback function to test the `card.matched`
    value.

18\.

You can now use the `selectMatchedIDs` selector in the `Card` components
to control how matched cards are rendered.

In **Card.js**:

1.  Add `selectMatchedIDs` to the **boardSlice.js** import statement.
2.  Define a variable named `matchedIDs` and assign it the data
    retrieved from calling `useSelector()` with the `selectMatchedIDs`
    selector.

19\.

Using the `matchedIDs` data, you can now reveal the matched cards by
changing their `cardStyle` to `'matched'`.

Inside the `Card` component:

1.  Replace the `false` condition in the second `if` statement that only
    checks if the card `id` prop is included in `matchedIDs`.
2.  Both visible and matched cards should show their text. So, add a
    second condition to the first `if` statement that checks if the
    card’s `id` prop is included in `matchedIDs` OR it is included in
    `visibleIDs`.

When you match a pair of cards, the cards keep showing their text and
stop dispatching actions (first `if` statement) and the text will turn
green (second `if` statement).

You now have a fully functioning one player matching game! Now move on
to the last step, keeping score.

## Get the Score

20\.

The application can also use the number of the matched cards to keep
score. This is what the `Score` component is for.

Inside **Score.js**:

- Import `useSelector` from `react-redux`.
- Import the `selectMatchedIDs` selector from `boardSlice.js`.

21\.

Finally, with the `selectMatchedIDs()`selector, get the number of values
in the array of IDs and set the score.

Inside the `Score` component:

- Define a variable named `cardsMatched` and assign it the data
  retrieved from calling `useSelector()` with the `selectMatchedIDs`
  selector.
- Replace the `0` inside the returned `<div>` with the length of
  `cardsMatched`.

The game now displays the number of cards you matched!

## Extra Challenges

22\.

Great Job! In this project, you were given a full implementation of a
React UI and a Redux store. Using `react-redux` you were able to connect
the two while maintaining the benefits of both React and Redux. Here are
a couple of challenges to try on your own.

1.  Reset the unmatched cards by clicking any card. This involves making
    a new action handler in **Card.js** and assigning it to the Card
    component click in a specific scenario.

2.  In **index.css** there is a ‘no-match’ selector which makes text red
    and can be applied to the card style when two visible cards are not
    matching. The challenge here is to apply the style to the text of
    cards that are flipped over and not matched.

## [Solution](matching-memory-react-redux)

# The Redux Toolkit

## Intro to Redux Toolkit

You’ve seen how verbose working with Redux can be. If you think there
are a lot of moving parts and semantics to remember, you’re not alone.

Some common issues/complaints people have when using Redux include:

- “Configuring a Redux store is too complicated.”
- “I have to add a lot of packages to get Redux to do anything useful.”
- “Redux requires too much boilerplate code.”
- “Writing immutable updates is too error-prone.”

Fortunately, the Redux team created
<a href="https://redux-toolkit.js.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Redux Toolkit</a> to address these
concerns!

Redux Toolkit contains packages and functions that are essential for
building a Redux app. It builds in the best practices, simplifies most
Redux tasks, prevents common mistakes, and makes it easier to write
Redux applications.

Because of how effective it has proven to be at addressing the concerns
of the verbose “hand-written” logic of the past, Redux Toolkit has
become the preferred way to write Redux application logic.

In this lesson, we’ll be covering two essential methods: `createSlice()`
and `configureStore()`. If you want to learn more about the remaining
methods that Redux Toolkit has to offer, head over to the
<a href="https://redux-toolkit.js.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Redux Toolkit docs</a>!



In the code editor, take a moment to look at the contents of
**favoriteRecipesSlice.js** and **store.js** and familiarize yourself
with the reducer, action creators, selectors, and the `store` object.



``` jsx
import { selectSearchTerm } from '../searchTerm/searchTermSlice.js';

const initialState = [];
export const favoriteRecipesReducer = (favoriteRecipes = initialState, action) => {
  switch (action.type) {
    case 'favoriteRecipes/addRecipe':
      return [...favoriteRecipes, action.payload]
    case 'favoriteRecipes/removeRecipe':
      return favoriteRecipes.filter(recipe => recipe.id !== action.payload.id)
    default:
      return favoriteRecipes;
  }
}

export function addRecipe(recipe) {
  return {
    type: 'favoriteRecipes/addRecipe',
    payload: recipe
  }
}

export function removeRecipe(recipe) {
  return {
    type: 'favoriteRecipes/removeRecipe',
    payload: recipe
  }
}

export const selectFavoriteRecipes = (state) => state.favoriteRecipes;

export const selectFilteredFavoriteRecipes = (state) => {
  const favoriteRecipes = selectFavoriteRecipes(state);
  const searchTerm = selectSearchTerm(state);

  return favoriteRecipes.filter((recipe) =>
    recipe.name.toLowerCase().includes(searchTerm.toLowerCase())
  );
};
```

``` jsx
import { createStore, combineReducers } from 'redux';
import { favoriteRecipesReducer } from '../features/favoriteRecipes/favoriteRecipesSlice.js';
import { searchTermReducer } from '../features/searchTerm/searchTermSlice.js';
import { allRecipesReducer } from '../features/allRecipes/allRecipesSlice.js';

export const store = createStore(combineReducers({
  favoriteRecipes: favoriteRecipesReducer,
  searchTerm: searchTermReducer,
  allRecipes: allRecipesReducer
}));
```

## Installing Redux Toolkit

Before you can take advantage of the benefits of the Redux Toolkit, you
must first install the `@reduxjs/toolkit` package into your application.
You can do this with the Node Package Manager.

While in the root directory of the application, you’ll first need to
enter the following command:

``` jsx
npm install @reduxjs/toolkit
```

Installing this package will enable you to import the methods you’ll be
learning throughout this lesson.



**1.**

In the terminal, use the proper command to install the
`@reduxjs/toolkit` package.



``` bash
npm install @reduxjs/toolkit
```

    ## 
    ## up to date, audited 8 packages in 1s
    ## 
    ## 1 package is looking for funding
    ##   run `npm fund` for details
    ## 
    ## found 0 vulnerabilities

## “Slices” of State

Before we dive deeper into this lesson, let’s refresh our memory about
what we’re referring to when talking about a “slice” of state.

A normal Redux application has a JS object at the top of its state tree.
We refer to one key/value section of that object as a “slice”. In the
following example, `state.todos` and `state.visibilityFilter` are
slices.

``` jsx
const state = {
  todos: [
    {
      id: 0,
      text: "Learn Redux-React",
      completed: true,
    },
    {
      id: 1,
      text: "Learn Redux Toolkit",
      completed: false,
    }
  ], 
  visibilityFilter: "SHOW_ALL"
}
```

We typically define one reducer for each slice of the state. Those are
called “slice reducers”. Let’s take a look at the slice reducer for the
`state.todos` slice:

``` jsx
/* todosSlice.js  */
const addTodo = (todo) => {
  return {
    type: 'todos/addTodo',
    payload: todo
  }
}
 
const toggleTodo = (todo) => {
  return {
    type: 'todos/toggleTodo',
    payload: todo
  }
}
 
const todos = (state = [], action) => {
 switch (action.type) {
   case 'todos/addTodo':
     return [
       ...state,
       {
         id: action.payload.id,
         text: action.payload.text,
         completed: false
       }
     ]
   case 'todos/toggleTodo':
     return state.map(todo =>
       todo.id === action.payload.id ? { ...todo, completed: !todo.completed } : todo
     )
   default:
     return state
 }
}
```

Notice that this file only deals with the `state.todos` data and
completely ignores the `state.visibilityFilter` slice. Managing the
state one slice at a time allows us to more effectively manage the
distinct logic of each individual part of our application.

In the example above, the logic for the reducer and the action creators
is all written in the same file. However, in a larger application, this
logic would likely be split up even further, with the reducer logic in
one file and the action creators in another.

In the next exercise, we’ll take a closer look at how we can take
advantage of Redux Toolkit’s `createSlice()` function to further
simplify the logic for us. First, let’s import it.



**1.**

At the top of **favoriteRecipesSlice.js** in the code editor, import
`createSlice()` from the `'@reduxjs/toolkit'` library.



``` jsx
import { createSlice } from '@reduxjs/toolkit';
```

## Refactoring with createSlice()

In the last exercise, we looked at one way to define a slice reducer and
the associated action creators.

``` jsx
/* todosSlice.js  */
const addTodo = (todo) => {
 // logic omitted...
}
 
const toggleTodo = (todo) => {
  // logic omitted...
}
 
const todos = (state = [], action) => {
  // logic omitted...
}
```

We can do the same work, but more simply, with `createSlice()`!
`createSlice()` has one parameter, `options`, which is an object with
the following properties

- `name`: a string that is used as the prefix for generated action types
- `initialState`: the initial state value for the reducer
- `reducers`: an object of methods, where the keys determine the action
  `type` strings that can update the state, and whose methods are
  reducers that will be executed when that action type is dispatched.
  These are sometimes referred to as “case reducers”, because they’re
  similar to a case in a switch statement.

``` jsx
/* todosSlice.js */
const options = {
 name: 'todos',
 initialState: [],
 reducers: {
   addTodo: (state, action) => {
     return [
       ...state,
       {
         id: action.payload.id,
         text: action.payload.text,
         completed: false
       }
     ]
   },
   toggleTodo: (state, action) => {
     return state.map(todo =>
       (todo.id === action.payload.id) ? { ...todo, completed: !todo.completed } : todo
     )
   }
 }
}
 
const todosSlice = createSlice(options);
```

In the `options` object passed to `createSlice()` in the snippet above,
`name` is set to `'todos'`, `initialState` is set to an empty array, and
we have two *case reducers*: `addTodo` and `toggleTodo`. Note that the
names of the case reducer functions are conventionally written in
lowerCamelCase.

With `createSlice()`…

- We can write the case reducers as functions inside of an object,
  instead of having to write a switch/case statement.
- Action creators that correspond to each case reducer function we
  provide will be automatically generated, so we don’t need to worry
  about defining those ourselves.
- No default handler needs to be written. The reducer generated by
  `createSlice()` will automatically handle all other action types by
  returning the current state, so we don’t have to list that ourselves.

For now, let’s practice calling `createSlice()`. In the next exercise,
we’ll take a look at the object that is returned by `createSlice()`.



**1.**

Take a look at **oldFavoriteRecipesSlice.js** to see the old way of
creating a reducer and action creators for the `state.favoriteRecipes`
slice. Your job is to rewrite this code using `createSlice` within
**favoriteRecipesSlice.js**.

First, `createSlice()` will need an `options` object to be passed in as
an argument. At the top of the file and below the `import` statements,
declare a variable called `options`. For now, assign to it an empty
object.

**2.**

Next, add the following three properties and corresponding values to the
`options` object:

- `name`: `'favoriteRecipes'`
- `initialState`: an empty array
- `reducers`: an empty object (for now).

**3.**

The `options.reducers` property should hold an object containing the
case reducers for the slice.

- Each value in the `options.reducers` object should be a function whose
  name corresponds to an action type that the slice can handle.
- Each case reducer should have two parameters, `state` and `action`,
  and return the next state.

Using the logic defined in the **oldFavoriteRecipesSlice.js** file to
guide you, add the two methods below to the `options.reducers` object:

- `addRecipe`
- `removeRecipe`

**4.**

Well done! The final step is to call `createSlice()` with the `options`
object as an argument and export the result.

Below the `options` object,

- Declare a new variable called `favoriteRecipesSlice`
- Call `createSlice()` with `options` as the only argument and assign
  the result to `favoriteRecipesSlice`
- Export `favoriteRecipesSlice`



``` jsx
import { createSlice } from '@reduxjs/toolkit';
import { selectSearchTerm } from '../searchTerm/searchTermSlice.js';

/* Create your Slice object here. */
const options = {
  name: "favoriteRecipes",
  initialState: [],
  reducers: {
    addRecipe: (state, action) => {
      return [...state, action.payload]
    },
    removeRecipe: (state, action) => {
      return state.filter(recipe => recipe.id !== action.payload.id)
    },
  },
}

export const favoriteRecipesSlice = createSlice(options);

/* Do not delete the code below...*/

export const selectFavoriteRecipes = (state) => state.favoriteRecipes;

export const selectFilteredFavoriteRecipes = (state) => {
  const favoriteRecipes = selectFavoriteRecipes(state);
  const searchTerm = selectSearchTerm(state);

  return favoriteRecipes.filter((recipe) =>
    recipe.name.toLowerCase().includes(searchTerm.toLowerCase())
  );
};
```

``` jsx
import { selectSearchTerm } from '../searchTerm/searchTermSlice.js';

// Reducer
///////////////////////////////////////

const initialState = [];
export const favoriteRecipesReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'favoriteRecipes/addRecipe':
      return [...state, action.payload]
    case 'favoriteRecipes/removeRecipe':
      return state.filter(recipe => recipe.id !== action.payload.id)
    default:
      return state;
  }
}

// Action Creators
///////////////////////////////////////

export function addRecipe(recipe) {
  return {
    type: 'favoriteRecipes/addRecipe',
    payload: recipe
  }
}

export function removeRecipe(recipe) {
  return {
    type: 'favoriteRecipes/removeRecipe',
    payload: recipe
  }
}

// Selectors
///////////////////////////////////////

export const selectFavoriteRecipes = (state) => state.favoriteRecipes;

export const selectFilteredFavoriteRecipes = (state) => {
  const favoriteRecipes = selectFavoriteRecipes(state);
  const searchTerm = selectSearchTerm(state);

  return favoriteRecipes.filter((recipe) =>
    recipe.name.toLowerCase().includes(searchTerm.toLowerCase())
  );
};
```

## Writing “Mutable” Code with Immer

Because Redux reducers must never mutate state, we often write immutable
updates by using JavaScript’s array and object spread operators and
other functions that return copies of the original values. However,
accidentally mutating state in reducers is the single most common
mistake Redux users make!

While you still have the option of writing immutable updates the old
fashioned way, Redux Toolkit’s `createSlice()` function uses a library
called <a href="https://immerjs.github.io/immer/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Immer</a> inside of it which helps avoid
this mistake.

Immer uses a special JS object called a Proxy to wrap the data you
provide and lets you write code that “mutates” that wrapped data. Immer
does this by tracking all the changes you’ve made and then uses that
list of changes to return an immutably updated value as if you’d written
all the immutable update logic by hand.

So, instead of this:

``` jsx
const todosSlice = createSlice({
  name: 'todos',
  initialState: [],
  reducers: {
    addTodo: (state, action) => {
      return [
        ...state,
        {
          ...action.payload,
          completed: false
        }
      ]
    },
    toggleTodo: (state, action) => {
      return state.map(todo =>
        todo.id === action.payload.id ? { ...todo, completed: !todo.completed } : todo
      )
    }
  }
})
```

You can write code that looks like this:

``` jsx
const todosSlice = createSlice({
  name: 'todos',
  initialState: [],
  reducers: {
    addTodo: (state, action) => {
      state.push({ 
        ...action.payload, 
        completed: false 
      })
    },
    toggleTodo: (state, action) => {
      const todo = state.find(todo => todo.id === action.payload.id)
      if (todo) {
        todo.completed = !todo.completed
      }
    }
  }
})
```

`addTodo` is calling `state.push()` here, which is normally bad because
the `array.push()` function mutates the existing array. Similarly,
`toggleTodo` is simply finding the matching todo object, and then
mutating it by reassigning its value.

Thanks to Immer, however, this code will work just fine!

You don’t need to learn the Immer library. All you do need to know is
that `createSlice()` takes advantage of it, allowing us to safely
“mutate” our state. You may find it useful to look through some of the
common <a href="https://immerjs.github.io/immer/docs/update-patterns"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">update patterns used with Immer</a>.



**1.**

Inside of the `options` object, rewrite the logic for the `addRecipe`
case reducer so that it uses `.push()` instead of the spread operator to
add a new recipe.



``` jsx
import { createSlice } from '@reduxjs/toolkit';
import { selectSearchTerm } from '../searchTerm/searchTermSlice.js';

const options = {
  name: "favoriteRecipes",
  initialState: [],
  reducers: {
    addRecipe: (state, action) => {
      state.push(action.payload);
    },
    removeRecipe: (state, action) => {
      return state.filter(recipe => recipe.id !== action.payload.id)
    },
  },
}
export const favoriteRecipesSlice = createSlice(options);

export const selectFavoriteRecipes = (state) => state.favoriteRecipes;

export const selectFilteredFavoriteRecipes = (state) => {
  const favoriteRecipes = selectFavoriteRecipes(state);
  const searchTerm = selectSearchTerm(state);

  return favoriteRecipes.filter((recipe) =>
    recipe.name.toLowerCase().includes(searchTerm.toLowerCase())
  );
};
```

## Return Object - Actions

So far we’ve taken a look at the object that is passed to
`createSlice()`, but what exactly does it return?

Using `todosSlice` from the previous exercise as an example,
`createSlice()` would return an object that looks like this:

``` jsx
const todosSlice = createSlice({
 name: 'todos',
 initialState: [],
 reducers: {
   addTodo(state, action) {
     const { id, text } = action.payload
     state.push({ id, text, completed: false })
   },
   toggleTodo(state, action) {
     const todo = state.find(todo => todo.id === action.payload)
     if (todo) {
       todo.completed = !todo.completed
     }
   }
 }
})
 
/* Object returned by todosSlice */
{
 name: 'todos',
 reducer: (state, action) => newState,
 actions: {
   addTodo: (payload) => ({type: 'todos/addTodo', payload}),
   toggleTodo: (payload) => ({type: 'todos/toggleTodo', payload})
 },
 // case reducers field omitted
}
```

Let’s break this down:

- `name` holds the value of the string that is used as the prefix for
  the generated action types.
- `reducer` is the complete reducer function (we’ll take a closer look
  at this in the next exercise).
- `actions` holds the the auto-generated action creators.

So, what do these auto-generated action objects look like?

By default, the action creator accepts one argument, which it puts into
the action object as `action.payload`. The `action.type` string is
generated for us by combining the slice’s `name` field with the name of
the case reducer function.

``` jsx
console.log(todosSlice.actions.addTodo('walk dog'))
// {type: 'todos/addTodo', payload: 'walk dog'}
```

You’ll need to use the action creators in other files, so at a minimum
you could export the entire slice object returned by `createSlice()`.
However, we’ll use a Redux community code convention called the <a
href="https://redux.js.org/style-guide/style-guide#structure-files-as-feature-folders-or-ducks"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“ducks” pattern</a>, which suggests that
we use named exports for the action creators and export them separately
from the reducer.

``` jsx
export const { addTodo, toggleTodo } = todosSlice.actions
```



**1.**

In **favoriteRecipesSlice.js** in the code editor, print the name of the
slice to the console.

**2.**

Using a <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...in"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">for…in loop</a>, print out the actions in
the `actions` object.

**3.**

Export the actions. Remember to use named exports for these.



``` jsx
```

## Return Object - Reducers

Let’s now take a closer look at `reducer` in the return object of
`createSlice()`.

``` jsx
const options = {
  // options fields omitted.
}
const todosSlice = createSlice(options);
 
/* Object returned by todosSlice */
{
 name: 'todos',
 reducer: (state, action) => newState,
 actions: {
   addTodo: (payload) => ({type: 'todos/addTodo', payload}),
   toggleTodo: (payload) => ({type: 'todos/toggleTodo', payload})
 },
 // case reducers field omitted
}
```

`todosSlice.reducer` is the complete reducer function, a.k.a the “slice
reducer”.

When an action with the type `'todos/addTodo'` is dispatched,
`todosSlice` will execute `todosSlice.reducer()` to check if the
dispatched action’s `type` matches one of `todos.actions` case reducers.
If so, it will run the matching case reducer function and if not, it
will return the current state. This is exactly the same pattern that we
had previously implemented with `switch`/`case` statements!

Finally, `todosSlice.reducer` needs to be exported so that it can be
passed to the store and be used as the `todos` slice of state. While the
`todosSlice.actions` are exported as named exports, the
`todosSlice.reducer` value is used as the default export.

``` jsx
export const { addTodo, toggleTodo } = todosSlice.actions;
export default todosSlice.reducer
```



**1.**

In the code editor, print the entire object returned by createSlice().
Note how each action type corresponds to the name of a case reducer.

**2.**

At the bottom of **favoriteRecipesSlice.js**, export the reducer as the
default export.



``` jsx
import { createSlice } from '@reduxjs/toolkit';
import { selectSearchTerm } from './searchTermSlice.js';

export const favoriteRecipesSlice = createSlice({
  name: "favoriteRecipes",
  initialState: [],
  reducers: {
    addRecipe: (state, action) => {
      state.push(action.payload);
    },
    removeRecipe: (state, action) => {
      return state.filter(recipe => recipe.id !== action.payload.id)
    },
  },
});

export const selectFavoriteRecipes = (state) => state.favoriteRecipes;

export const selectFilteredFavoriteRecipes = (state) => {
  const favoriteRecipes = selectFavoriteRecipes(state);
  const searchTerm = selectSearchTerm(state);

  return favoriteRecipes.filter((recipe) =>
    recipe.name.toLowerCase().includes(searchTerm.toLowerCase())
  );
};

export const {addRecipe, removeRecipe} = favoriteRecipesSlice.actions;

// Begin coding here.
console.log(favoriteRecipesSlice);
export default favoriteRecipesSlice.reducer;
```

## Converting the Store to Use \`configureStore()\`

Redux Toolkit has a `configureStore()` method that simplifies the store
setup process. `configureStore()` wraps around the Redux library’s
`createStore()` method and the `combineReducers()` method, and handles
most of the store setup for us automatically.

For example, take a look at this file which creates and exports a
`rootReducer`…

``` jsx
// rootReducer.js
 
import { combineReducers } from 'redux'
 
import todosReducer from './features/todos/todosSlice'
import filtersReducer from './features/filters/filtersSlice'
 
const rootReducer = combineReducers({
 // Define a top-level state field named `todos`, handled by `todosReducer`
 todos: todosReducer,
 visibilityFilter: visibilityFilterReducer
})
 
export default rootReducer
```

… and this file which creates and exports the `store`.

``` jsx
// store.js
 
import { createStore, applyMiddleware } from 'redux'
import thunkMiddleware from 'redux-thunk'
import { composeWithDevTools } from 'redux-devtools-extension'
import rootReducer from './reducer'
 
const composedEnhancer = composeWithDevTools(applyMiddleware(thunkMiddleware))
 
const store = createStore(rootReducer, composedEnhancer)
export default store
```

Now, let’s take a look at how we can refactor these two files using
`configureStore()`. `configureStore()` accepts a single configuration
object parameter. The input object should have a `reducer` property that
defines either a function to be used as the root reducer, or an object
of slice reducers which will be combined to create a root reducer.

<a href="https://redux-toolkit.js.org/api/configureStore"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">There are many properties available in
this object</a>, but for the purposes of this lesson, just the `reducer`
property will be sufficient.

``` jsx
import { configureStore } from '@reduxjs/toolkit'
 
import todosReducer from './features/todos/todosSlice'
import filtersReducer from './features/filters/filtersSlice'
 
const store = configureStore({
 reducer: {
   // Define a top-level state field named `todos`, handled by `todosReducer`
   todos: todosReducer,
   filters: filtersReducer
 }
})
 
export default store
```

Note all the work that this one call to `configureStore()` does for us:

- It combines `todosReducer` and `filtersReducer` into the root reducer
  function, which will handle a root state that looks like
  `{todos, filters}`, removing the need to call `combineReducers()`
- It creates a Redux store using that root reducer, removing the need to
  call `createStore()`
- It automatically adds the thunk middleware (which you will learn about
  in the next lesson!)
- It automatically adds more middleware to check for common mistakes
  like accidentally mutating the state
- It automatically sets up the Redux DevTools Extension connection

Because of how much boilerplate code we’re able to bypass with
`configureStore()`, we can just import the individual slice reducers
straight into this file instead of creating a separate file for the root
reducer and having to export/import it.

Since this is as simple as switching out the store setup code, all of
the application’s existing feature code will work just fine!

Let’s confirm this in the instructions below.



**1.**

In the code editor, import `configureStore` at the top of **store.js**.

**2.**

Change the ‘favoriteRecipesReducer’ import so that it’s being imported
from **../features/favoriteRecipes/favoriteRecipesSlice.js**.

**3.**

Rewrite the default export so that it uses `configureStore()` instead of
`createStore()` to create the store with the given reducers.

When you’re done, save the file and click around the application in the
browser to confirm that everything still works!



``` jsx
import { configureStore } from "@reduxjs/toolkit";
import favoriteRecipesReducer from "../features/favoriteRecipes/favoriteRecipesSlice";
import searchTermReducer from "../features/searchTerm/searchTermSlice";
import allRecipesReducer from "../features/allRecipes/allRecipesSlice";

export default configureStore({
  reducer: {
    favoriteRecipes: favoriteRecipesReducer,
    searchTerm: searchTermReducer,
    allRecipes: allRecipesReducer
  },
});
```

## Review

Congratulations! You were able to apply a couple of Redux Toolkit’s
essential methods in order to refactor and simplify some existing Redux
logic.

- **R**edux **T**ool**k**it (RTK) contains packages and functions that
  build in suggested best practices, simplifies most Redux tasks,
  prevents common mistakes, and makes it easier to write Redux
  applications.
- RTK has a `createSlice()` function that will help us simplify our
  Redux reducer logic and actions.
- `createSlice()` has one parameter, `options`. In this lesson, we
  covered three of `option`’s properties: `name`, `initialState`, and
  `reducers`. `options` has more properties which will be covered in the
  next lessons.
- A case reducer is a method that can update the state, and will be
  executed when the corresponding action type is dispatched. This is
  similar to a case in a switch statement.
- You can write code that “mutates” the state inside the case reducers
  passed to `createSlice()`, and Immer will safely and accurately return
  an immutably updated state.
- `createSlice()` returns an object with the following properties:
  `name`, `reducer`, `actions`, and `caseReducers`.
- We typically use a Redux community code convention called the “ducks”
  pattern when exporting the action creators and the reducer.
- RTK has a `configureStore()` function that simplifies the store setup
  process. `configureStore()` wraps around the Redux core
  `createStore()` function and the `combineReducers()` function, and
  handles most of the store setup for us automatically.



Head over to the <a href="https://redux-toolkit.js.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Redux Toolkit documentation</a> if you
want to learn more!



# Expense Tracker

This project—a budgeting and expense tracking app—allows you to practice
refactoring with Redux Toolkit. The app allows you to set budgets for
various categories, such as food and transportation, and track
transactions in those categories. It then sums your spending in each
category to calculate the amount of money that remains to be spent.

To help you to understand how the data of the application works,
consider an example of the Redux store’s state:

``` jsx
{
  budgets: [ 
    { category: 'housing', amount: 400 },
    { category: 'food', amount: 100 },
    ...
  ],
  transactions: {
    housing: [ 
      { 
        category: 'housing', 
        description: 'rent', 
        amount: 400, 
        id: 123 
      }
    ],
    food: [ 
      { 
        category: 'food', 
        description: 'groceries on 1/12/2021', 
        amount: 50, 
        id: 456 
      },
      { 
        category: 'food', 
        description: 'dinner on 1/16/2021', 
        amount: 12, 
        id: 789 
      },
    ]
  }
 
 
}
```

You will work primarily in **budgetsSlice.js** and
**transactionsSlice.js** where reducers and action creators are
currently programmed by hand. Your task will be to refactor this project
using a slice-based approach to produce the app’s actions and reducers.

Before you get started, spend some time using the app in its current
implementation to ensure you understand how it’s supposed to work. Set a
budget of \$300 for food, create a \$20 food transaction, and then check
the food budget again to see how much you have left to spend. As you
progress through the project, take note of the ways that Redux Toolkit
simplifies your code.



Mark the tasks as complete by checking them off

## Create a Budgets Slice

1\.

Without Redux Toolkit, you have to write all your action creators and
reducers by hand. Redux Toolkit’s
<a href="https://redux-toolkit.js.org/api/createSlice"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">createSlice()</code></a> function
generates action creators and reducers for you based on the inputs you
give it.

Not only does `createSlice()` reduce the amount of code you have to
write by automatically generating action creators and reducers, it also
simplifies your reducers by allowing you to write mutating logic inside
your reducers.

At the top of **budgetsSlice.js**:

1.  Import `createSlice` from `@reduxjs/toolkit`.

2\.

Next, you are going to define a slice by calling `createSlice()` with a
configuration object containing the required `name`, `initialState`, and
`reducers` properties.

1.  Define a variable, `budgetsSlice`, and initialize it with a call to
    `createSlice()`, passing in an empty configuration object. Do this
    right after the line defining `initialState`.
2.  Slices are conventionally named for the resource whose state they
    manage. This slice manages budgets and should be named accordingly.
    To give the slice a name, add a `name` property to the configuration
    object and set it equal to `'budgets'`.
3.  Add an `initialState` property to the configuration object, and set
    it equal to the variable `initialState` that we’ve defined for you.
4.  Lastly, you’ll need to include a `reducers` property in the
    configurations object. For now, set it equal to an empty object.

3\.

In **budgetsSlice.js**, which we originally wrote without Redux Toolkit,
you’ll see an `editBudget()` action creator. Currently, the action
dispatched by that action creator will be processed in the
`'budgets/editBudget'` case of the `budgetsReducer()` we’ve provided.
Open **components/Budget.js** where you can see this action being
dispatched like so:

``` jsx
dispatch(editBudget({category: budget.category, amount: amount}))
```

`createSlice()` automatically generates action creators and action types
based on the case reducer functions we include in the `reducers`
property. Once we define an `editBudget` case reducer, we will be able
to delete our standalone action creators and reducers, and greatly
simplify our code in the process.

1.  Add an `editBudget` property to the `reducers` object passed to
    `createSlice()`.
2.  Set `editBudget` equal to a case reducer that receives two
    arguments—`state` and `action` . `action.payload` will have a
    `category` and `amount` property.
3.  `editBudget` should update the state by finding the budget object
    whose `.category` value matches `action.payload.category` and
    changing with the `.amount` value to `action.payload.amount`.

4\.

Now that you’ve implemented `budgetsSlice`, you’ll want to delete your
old code and clean up your exports.

1.  Delete the stand-alone `editBudget`. At the bottom of the file
    **budgetsSlice.js**, export the `editBudget` action creator
    generated by `createSlice()` and stored in `budgetsSlice`.
2.  Delete the stand-alone `budgetsReducer`, and update the
    `export default` statement to export the reducer generated by
    `createSlice()` and stored in `budgetsSlice`.

Once you’ve completed this task, you should be able to edit budgets and
see your changes reflected in the app.

## Create a Transactions Slice

5\.

Great work! Now that you’ve refactored the budgets slice with Redux
Toolkit, you should do the same to the transactions slice, which is
responsible for storing all of the user’s transactions organized by
category. The slice handles adding new transactions and deleting
existing transactions, and its state is an object structured like this:

``` jsx
transactions = {
  housing: [ 
    { 
      category: 'housing', 
      description: 'rent', 
      amount: 400, 
      id: 123 
    }
  ],
  food: [ 
    { 
      category: 'food', 
      description: 'groceries on 1/12/2021', 
      amount: 50, 
      id: 456 
    },
    { 
      category: 'food', 
      description: 'dinner on 1/16/2021', 
      amount: 12, 
      id: 789 
    },
  ]
}
```

In **transactionsSlice.js**:

1.  Import `createSlice` from `@reduxjs/toolkit`.

6\.

Next, you are going to define a slice by calling `createSlice()` with a
configuration object containing the required `name`, `initialState`, and
`reducers` properties.

1.  Define a variable, `transactionsSlice`, and initialize it with a
    call to `createSlice()`, passing in an empty configuration object.
2.  Add a `name` property to the configuration object and set it equal
    to `'transactions'`.
3.  Add an `initialState` property to the configuration object, and set
    it equal to the variable `initialState` that we’ve defined for you.
4.  Lastly, you’ll need to include a `reducers` property in the
    configurations object. For now, set it equal to an empty object.

7\.

Since we originally developed this project without Redux Toolkit, you’ll
see two stand-alone action creators: `addTransaction()` and
`deleteTransaction()`. Each of these action creators will receive an
`action.payload` value that is a transaction object like so:

``` jsx
transaction = {
  category: 'housing', 
  description: 'rent for January', 
  amount: 400, 
  id: 123
}
```

Open **components/TransactionForm.js** and **components/Transaction.js**
where you can see how `addTransaction()` and `deleteTransaction()` are
dispatched, respectively. Currently, the actions dispatched by these
action creators will be processed by the `transactionsReducer` we’ve
provided.

Your task is to replace these stand-alone action creators and the
reducer with case reducers defined in the object passed to
`createSlice()`.

1.  Add an `addTransaction` property to the `reducers` object passed to
    `createSlice()`.
2.  Set `addTransaction` equal to a case reducer that receives two
    arguments—`state` and `action`. It should add the new transaction
    object (`action.payload`) to the correct category’s transaction list
    in the transactions `state` object.
3.  Add a `deleteTransaction` property to the `reducers` object passed
    to `createSlice()`.
4.  Set `deleteTransaction` equal to a case reducer that receives two
    arguments—`state` and `action`. It should delete the old transaction
    (`action.payload`) from the correct category’s transaction list in
    the transactions `state` object.

8\.

Now that you’ve implemented `transactionsSlice`, you’ll want to delete
your old code and clean up your exports.

1.  Delete the stand-alone `addTransaction` and `deleteTransaction`, and
    export the `addTransaction` and `deleteTransaction` action creators
    generated by `createSlice()`and stored in `transactionsSlice`.
2.  Delete the stand-alone `transactionsReducer`, and update the
    `export default` statement to export the reducer generated by
    `createSlice()` and stored in `transactionsSlice`.

At this point, you should be able to add and delete transactions and see
your changes reflected in the transactions list as well as in the “Funds
Remaining” field for each budget.

## [Solution](redux-expense-tracker)

# Redux DevTools

[How to use Redux DevTools](https://www.youtube.com/watch?v=BYpuigD01Ew)

# Redux Middleware

## Introduction

At this point, we can write an app with Redux state management. But we
haven’t covered one of the most common challenges in app development:
making asynchronous requests. With a basic Redux store, we can only do
synchronous updates. When an action is dispatched, it is immediately
processed by a reducer, which updates the store accordingly. But when
developing applications, we often want to perform asynchronous
operations (such as making API calls) and update the state based on the
results.

In this lesson, you will gain the tools necessary to write asynchronous
logic that interacts with your Redux store.

1.  First, you will learn about two general concepts in computing:
    *middleware* and *thunks*, and the ways they relate to Redux.
2.  Next, you will learn about `redux-thunk`, a middleware that uses a
    thunk-based approach to writing asynchronous actions.
3.  Finally, you will practice using `redux-thunk` to add asynchronous
    functionality to your Redux apps.

> This lesson uses <a href="https://mswjs.io/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">Mock Service Worker</a> to replicate
> the functionality of an external API. To use MSW, you’ll want to use
> Google Chrome and <a
> href="https://support.google.com/chrome/answer/95647?co=GENIE.Platform%3DDesktop&amp;hl=en"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">enable third-party cookies</a>.



You’ll notice our familiar recipe app has undergone some exciting
changes. The structure of the app remains the same, but the app now
contains more and richer data. In addition to titles, the recipes now
have images attached. Refresh the browser, and note that this version
also displays a loading state before the recipes are displayed.



[Middleware in
Redux](https://static-assets.codecademy.com/Courses/Learn-Redux/lesson-assets/interactive-image-async-data-flow/index.html)

## Middleware in Redux

Out of the box, Redux may meet most of your app’s state management
needs. But every project is different, and so Redux provides some ways
to customize its behavior. One of the ways we can customize Redux is by
adding *middleware*.

You may be familiar with middleware from experiences working with other
frameworks. As the name suggests, middleware is the code that runs in
the middle—usually between a framework receiving a request and producing
a response. Middleware is a powerful tool for extending, modifying, or
customizing a framework or library’s default behavior to meet an
application’s specific needs.

In Redux, middleware runs between the moment when an action is
dispatched and the moment when that action is passed along to the
reducer. By this point you’re familiar with the way data flows through
Redux: actions are dispatched to the store, where they are processed by
reducers that produce new state; that new state becomes accessible to
all the components that reference it, causing those components update.
We’ve rendered that flow in the included diagram, and added middleware
to help you see where and how it comes into play.

Middleware intercepts actions after they are dispatched and before they
are passed along to the reducer. Some common tasks that middleware
perform include logging, caching, adding auth tokens to request headers,
crash reporting, routing, and making asynchronous requests for data. You
can add any of these functionalities to your apps by using popular
open-source middleware. Of course, you can also write your own
middleware to solve problems that are specific to your application and
its architecture.

To make asynchronous requests in our recipe app, we’re using
`redux-thunk`, a middleware for handling asynchronous requests. There
are several popular middleware that make asynchronous functionality
compatible with Redux; we chose this one because it’s one of the most
widely-employed, and it is included with Redux Toolkit by default. In
subsequent exercises, we will walk through how `redux-thunk` makes
asynchronous requests possible; for now, you should just understand
where it sits in Redux’s data flow.



Before moving on, make sure you understand how middleware fits into
Redux’s data flow, depicted here for you in an animated diagram. In a
project without middleware, Redux immediately passes dispatched actions
to the store’s reducer. But when we add middleware to a Redux project,
Redux passes dispatched actions to the middleware before passing them to
the reducers.

Here are some focusing questions to think about during this lesson: What
step in Redux’s data flow happens right before middleware runs? What
step in the Redux data flow happens right after middleware runs?



``` jsx
```

## Write Your Own Middleware

Before we get to `redux-thunk` specifically, we want to solidify our
understanding of how middleware fits into Redux’s data flow. Let’s
explore how middleware actually gets invoked in Redux, so that we know
how a middleware should be structured. After that, we’re going to write
a simple middleware from scratch.

But first, you’ll recall from the previous exercise that middleware runs
after an action is dispatched and before that action is passed along to
the reducer. How does this actually work?

To add a middleware to our project, we use Redux’s `applyMiddleware`
function like so.

``` jsx
import { createStore, applyMiddleware } from 'redux';
import { middleware1, middleware2, middleware3 } from './exampleMiddlewares';
import { exampleReducer } from './exampleReducer';
import { initialState} from './initialState';
 
const store = createStore(
  exampleReducer, 
  initialState, 
  applyMiddleware(
    middleware1, 
    middleware2, 
    middleware3
  )
);
```

The specifics of how `applyMiddleware` works are outside the scope of
this lesson. All you need to know is that once middleware has been added
to a Redux project, calls to `dispatch` are actually calls to the
middleware pipeline (the chain of all added middlewares). This means
that any actions we dispatch will be passed from middleware to
middleware before they hit an app’s reducers.

Middlewares must conform to a specific, nested function structure in
order to work as part of the pipeline (this nested structure is also
called a <a href="https://eloquentjavascript.net/05_higher_order.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">higher-order function</a>, if you’d like
to read more). That structure looks like this:

``` jsx
const exampleMiddleware = storeAPI => next => action => {
  // do stuff here
  return next(action);  // pass the action on to the next middleware in the pipeline
}
```

Each middleware has access to the `storeAPI` (which consists of the
`dispatch` and `getState` functions), as well as the `next` middleware
in the pipeline, and the `action` that is to be dispatched. The body of
the middleware function performs the middleware’s specific task before
calling the next middleware in the pipeline with the current action
(note that if the middleware is the last in the pipeline, then `next` is
`storeAPI.dispatch` so calling `next(action)` is the same as dispatching
the action to the store).

Now let’s write a custom middleware that logs the contents of our store
to the console.



**1.**

In the code editor, you’ll notice we’ve created a simple reducer for
you, and taken care of importing Redux’s `createStore` and
`applyMiddleware` functions. We’ve created a store by calling
`createStore` and passing it the reducer. Since all Redux middleware
have the same basic structure, you can start by copying this snippet:

``` jsx
const logger = storeAPI => next => action => {
  // do stuff here
 
  return next(action);
};
```

**2.**

Replace the comment `// do stuff here`, with a line of code that logs
the contents of the store to the console. Remember, you can access the
store’s state with `storeAPI.getState()`.

**3.**

Instead of returning `next(action)`, store the result of that function
call in a `const` called `nextState`. Next, log `nextState` to the
console. Finally, return `nextState`.

**4.**

Apply your custom middleware to your store by adding a third argument to
the call to `createStore`. This argument should be the result of calling
`applyMiddleware` with the `logger` middleware you’ve written.

**5.**

Dispatch the following action to your store:

``` jsx
{
  type: 'NEW_MESSAGE', 
  payload: 'I WROTE A MIDDLEWARE'
}
```

Note that the store’s new state was logged to the console. Congrats –
you just wrote your first middleware!



``` jsx
import { createStore, applyMiddleware } from 'redux';

const messageReducer = (state = '', action) => {
  if (action.type === 'NEW_MESSAGE') {
    return action.payload;
  } else {
    return state;
  }
}

const logger = storeAPI => next => action => {
    console.log(storeAPI.getState())
    const nextState = next(action);
    console.log(nextState)
    return nextState;  // pass the action on to the next middleware in the pipeline
};

const store = createStore(messageReducer, "", applyMiddleware(logger));

store.dispatch({
  type: "NEW_MESSAGE",
  payload: "I WROTE A MIDDLEWARE"
})
```

## Introduction to Thunks

Recall that our overarching goal in this lesson is to give you the tools
you need to add asynchronous functionality to your Redux apps. One of
the most flexible and popular ways to add asynchronous functionality to
Redux involves using thunks. A thunk is a higher-order function that
wraps the computation we want to perform later. For example, this
`add()` function returns a thunk that will perform `x+y` when called.

``` jsx
const add = (x,y) => {
  return () => {
    return x + y; 
  } 
}
```

Thunks are helpful because they allow us to bundle up bits of
computation we want to delay into packages that can be passed around in
code. Consider these two function calls, which rely on the `add()`
function above:

``` jsx
const delayedAddition = add(2,2)
delayedAddition() // => 4
```

Note that calling `add()` does not cause the addition to happen – it
merely returns a function that will perform the addition when called. To
perform the addition, we must call `delayedAddition()`.



**1.**

Consider the function `remindMeTo()`, which we’ve defined for you in the
code editor.

What do you think will happen if you run `remindMeTo('call mom')`? Call
`console.log(remindMeTo('call mom'))` in the code editor to test your
suspicion.

**2.**

Logging `remindMeTo('call mom')` caused “Remember to call mom!!!” to
appear in the console. Now write a function, `remindMeLater()`, that
takes a string, `task`, and returns a thunk that returns the result of
calling `remindMeTo()` with the argument `task`.

**3.**

Call `remindMeLater()` with a task you need to complete later and store
the result in a variable `reminder`.

**4.**

What do you think will happen when you call `reminder()`? Test your
hunch by calling `reminder()` in your code editor and logging the result
to the console.



``` jsx

const remindMeTo = task => {
  return `Remember to ${task}!!!`
}

console.log(remindMeTo('call mom'))

const remindMeLater = task => {
  return () => {
    return remindMeTo(task)
  }
}

const reminder = remindMeLater('buy groceries')

console.log(reminder())
```

## \`redux-thunk\`

To appreciate how thunks can help us integrate asynchronous actions into
our Redux apps, let’s review the barriers to performing asynchronous
operations that exist within traditional Redux. First, asynchronous
logic returns promises, and `store.dispatch` expects to receive a plain
object with a `type` property. Second, asynchronous operations create
side effects. And so including them in our reducers would violate a core
tenet of Redux, which is that <a
href="https://redux.js.org/tutorials/essentials/part-2-app-structure#rules-of-reducers"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">reducers must be pure functions</a>.

Redux recommends making code with side effects part of the action
creation process. It would be great if we could write action creators
that return thunks, which would handle our asynchronous operations, in
addition to the plain objects we’ve returned from our action creators
thus far.

As it turns out, `redux-thunk` is a middleware that lets you do exactly
that. `redux-thunk` makes it simple for you to write asynchronous logic
that interacts with the store by allowing you to write action creators
that return thunks instead of objects. These thunks can perform
asynchronous operations, and per
<a href="https://github.com/reduxjs/redux-thunk#motivation"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the redux-thunk documentation</a>, “can
be used to delay dispatching an action” (for example, until after an API
response is received), or “to dispatch an action only if certain
conditions are met”.

For example, imagine we’ve written a simple counter whose reducer
contains a single value, which is updated by a single reducer. Without
`redux-thunk` we are limited to writing synchronous action creators like
this one:

``` jsx
const increment = () => {
  return {
    type: 'counter/increment',
  }
}
```

When we call `dispatch(increment())`, the value in our store immediately
increases. With `redux-thunk`, we can extend our counter app to
accommodate asynchronous action creators, like `asyncIncrement`, in
addition to synchronous ones.

``` jsx
const incrementLater = async () => {
  setTimeout(() => {
    dispatch(increment())    
  }, 1000)    
};
 
const asyncIncrement = () => {
  return incrementLater;
}
```

*redux-thunk* is such a popular solution for handling asynchronous logic
that it is included in Redux Toolkit. It also exists as a standalone
package, but you won’t need to install `redux-thunk` separately if you
use Redux Toolkit. This is because Redux Toolkit’s `configureStore`
function, which you learned about in a previous lesson, will apply
`redux-thunk` to the store by default.



**1.**

Import the `configureStore` method from the `@reduxjs/toolkit` module.



``` jsx
import { configureStore } from '@reduxjs/toolkit'
```

## Writing Thunks in Redux

To better appreciate redux-thunk, let’s review the process of retrieving
data from a Redux store. For example, suppose we have a list of users’
data, and want to retrieve the data corresponding to the user with a
particular `id = 32`. Assuming we have that user’s data in the store, we
can access the user’s data by writing a selector to retrieve the
information we need.

``` jsx
useSelector((state) => state.users.byId[32]);
```

But what if we don’t have that particular user in the store? Say, for
example, that we need to fetch the user’s data from an API. Ideally, we
would like to be able to dispatch an action creator that would first
perform an asynchronous operation (fetching the data), and then dispatch
a synchronous action (adding the data to the store) after the
asynchronous operation completes.

This is where thunks come in handy. Up to this point, we’ve only written
action creators that returned plain objects. But `redux-thunk` allows us
to write action creators that return thunks, within which we can perform
any asynchronous operations we like. Consider the following asynchronous
action creator:

``` jsx
import { fetchUser } from './api'
const getUser = (id) => {
  return async (dispatch, getState) => {
    const payload = await fetchUser(id);
    dispatch({type: 'users/addUser', payload: payload});
  }
}
```

`getUser` has two key parts: the synchronous outer function (otherwise
known as the thunk action creator) which returns the inner, asynchronous
thunk. The thunk receives `dispatch` and `getState` as arguments, and
dispatches a synchronous action after the asynchronous operation
(`fetchUser`) completes.

To get the user with `id = 32`, we can call `dispatch(getUser(32))`.
Note that the argument to `dispatch` is not an object, but an
asynchronous function that will first fetch the user’s data and then
dispatch a synchronous action once the user’s information has been
retrieved.



**1.**

In your code editor, we’ve imported the function `fetchRecipes`, which
makes an asynchronous request to fetch all the recipes to be displayed
in our familiar app. Write a thunk action creator called `loadRecipes`
that asynchronously fetches the recipes and dispatches a synchronous
action with `type = allRecipes/addRecipes` and `payload` equal to the
payload you get when the asynchronous request completes.



``` jsx
import { fetchRecipes } from '../../app/api'
import { createSlice } from "@reduxjs/toolkit";

// TO DO: write loadRecipes here!
const loadRecipes = () => {
  return async (dispatch) => {
    const recipes = await fetchRecipes()
    dispatch({type: 'allRecipes/addRecipes', payload: recipes})
  }
};

export const allRecipesSlice = createSlice({
  name: "allRecipes",
  initialState: {
    recipes: [],
    isLoading: false,
    hasError: false,
  },
  reducers: {
    addRecipes(state, action) {
      state.recipes = action.payload
    }
  },  
});

export default allRecipesSlice.reducer;
```

## \`redux-thunk\` Source Code

At this point, you are ready to use thunks to define asynchronous
operations in Redux. But you may be curious about how `redux-thunk`
works. In order to allow us to write action creators that return thunks
in addition to plain objects, the `redux-thunk` middleware performs a
simple check to the argument passed to `dispatch`. If `dispatch`
receives a function, the middleware invokes it; if it receives a plain
object, then it passes that action along to reducers to trigger state
updates.

We’ve pasted the source code into your code editor so you can see it for
yourself. And <a
href="https://github.com/reduxjs/redux-thunk/blob/master/src/index.ts"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here’s a link to the project’s repo in
case you’d like to explore further</a>!

We won’t worry about the `extraArgument` option, so for our purposes, we
can focus on `thunk`, the default export, which is equal to the function
returned on line 2.

Recall `getUser`, the thunk action creator from the previous exercise:

``` jsx
const getUser = (id) => {
  return async (dispatch, getState) => {
    const payload = await fetchUser(id)
    dispatch({type: 'users/addUser', payload: payload})
  }
}
```

Suppose we were to call `dispatch(getUser(7))` with the thunk middleware
applied. We know that `getUser(7)` returns a thunk, so on line 3 of the
thunk middleware, `typeof action === 'function'` will evaluate to
`true`. On line 4, the middleware will then invoke `getUser(7)` with the
arguments `dispatch` and `getState`. This invocation will initiate the
asynchronous fetching performed by the thunk. When that asynchronous
fetching is complete, the thunk will dispatch the synchronous action
`{type: ‘users/addUser’, payload: payload}`.

For contrast, let’s walk through what happens when we dispatch that
synchronous action. Since the action is a plain object,
`typeof action === 'function'` will evaluate to `false`. The
`redux-thunk` middleware therefore skips to line 7, and invokes the next
middleware in the pipeline, passing the action along.



Make sure you understand how `redux-thunk` works by reviewing the code
editor’s provided `redux-thunk` source code. The key step happens where
the middleware checks whether or not the action is a function:

``` jsx
if (typeof action === 'function') {
  //...
}
```

If the action is a function (as happens when we dispatch thunks returned
by thunk action creators), then `redux-thunk` invokes that function. If
the action is not a function (as happens when we dispatch plain
objects), `redux-thunk` passes it through to the next step in the
middleware pipeline.



``` jsx
function createThunkMiddleware(extraArgument) {
  return ({ dispatch, getState }) => (next) => (action) => {
    if (typeof action === 'function') {
      return action(dispatch, getState, extraArgument);
    }

    return next(action);
  };
}

const thunk = createThunkMiddleware();
thunk.withExtraArgument = createThunkMiddleware;

export default thunk;
```

## Conclusion

In this lesson you:

- Learned about Redux middleware and wrote your own simple logging
  middleware
- Encountered thunks and learned about how valuable thunks are for
  deferring computation

``` jsx
const remindMeLater = task => { 
  return () => {
    remindMeTo(task)
  } 
} 
```

- Discovered `redux-thunk`, a middleware that allows you to write
  asynchronous action creators that return thunks instead of objects

- Automatically enabled `redux-thunk` by using `configureStore`

``` jsx
import { configureStore } from '@reduxjs/toolkit;
```

- Took a deep dive into the middleware’s source code, in order to
  understand how the middleware actually works
- Wrote your own asynchronous action creators in the format that
  `redux-thunk` expects

``` jsx
const getUser = (id) => {
  return async (dispatch, getState) => {
    const payload = await fetchUser(id)
    dispatch({type: 'users/addUser', payload: payload})
  }
}
```

If you’d like to learn more, you can read the
<a href="https://github.com/reduxjs/redux-thunk"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">redux-thunk</code>
documentation</a> and <a
href="https://redux-toolkit.js.org/api/getDefaultMiddleware#getdefaultmiddleware"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">visit the Redux Toolkit site to see how
<code class="code__2rdF32qjRVp7mMVBHuPwDS">configureStore</code>
includes <code class="code__2rdF32qjRVp7mMVBHuPwDS">redux-thunk</code>
by default</a>.



Adding `redux-thunk` to our projects enables us to write asynchronous
actions. In the case of our recipe app, `redux-thunk` has allowed us to
fetch all the recipes you see displayed here.



``` jsx
```

# Managing Promise Lifecycle Actions

## Introduction

At this point, you can write a Redux app that uses `redux-thunk`—a
middleware included in Redux toolkit—to permit asynchronous operations,
such as fetching data from an API. In this lesson, we will explore some
common patterns for managing asynchronous operations and the state
changes they cause. We will learn about two Redux toolkit
utilities—`createAsyncThunk` and the `extraReducers` option you can pass
to the `createSlice` function—that simplify the process of performing
asynchronous operations and reflecting their results in state.

> This lesson uses <a href="https://mswjs.io/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">Mock Service Worker</a> to replicate
> the functionality of an external API. To use MSW, you’ll want to use
> Google Chrome and <a
> href="https://support.google.com/chrome/answer/95647?co=GENIE.Platform%3DDesktop&amp;hl=en"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">enable third-party cookies</a>.



Review the diagram shown. In Redux, middleware intercepts actions after
dispatching and before passing them along to the reducer.



[Introduction](https://static-assets.codecademy.com/Courses/Learn-Redux/lesson-assets/interactive-image-async-data-flow/index.html)

## Promise Lifecycle Actions

In a perfect world, every network request we make would yield an
immediate and successful response. But network requests can be slow, and
sometimes fail. As developers, we need to account for these realities in
order to create the best possible experience for our users. If we know a
request is pending, we can make our application more user-friendly by
displaying a loading state. Similarly, if we know a request has failed,
we can display an appropriate error state.

In order to create these satisfying user experiences, we need to keep
track of the state our async requests are in at any given moment so that
we can reflect those states for the user. It is common to dispatch a
“pending” action right before performing an asynchronous operation, and
“fulfilled” or “rejected” actions depending on the results of the
completed operation. Take this simple thunk action creator,
`fetchUserById`.

``` jsx
import { fetchUser } from './api';
 
const fetchUserById = (id) => {
  return async (dispatch, getState) => {
    const payload = await fetchUser(id);
    dispatch({type: 'users/addUser', payload: payload});
  }
}
```

Rewritten to include pending and rejected actions, it might look like
this:

``` jsx
import { fetchUser } from './api'
const fetchUserById = (id) => {
  return async (dispatch, getState) => {
    dispatch({type: 'users/requestPending'})
    try {
      const payload = await fetchUser(id)
      dispatch({type: 'users/addUser', payload: payload})
    } catch(err) {
      dispatch({type: 'users/error', payload: err})
    }
  }
}
```

We call these pending/fulfilled/rejected actions *promise lifecycle
actions*. This pattern is so common that Redux Toolkit provides a neat
abstraction, `createAsyncThunk`, for including promise lifecycle actions
in your Redux apps. We’ll explore that method in the following
exercises.



The diagram shown depicts the lifecycle of a promise: it begins in a
pending state and becomes either fulfilled or rejected.



<img src="https://static-assets.codecademy.com/Courses/Learn-Redux/lesson-assets/Promises_transparent.png" alt="A promise begins in the pending state. If success, it moves to the fulfilled state and returns data. If failure, it moves to the rejected state and returns an error." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## createAsyncThunk()

`createAsyncThunk` is a function with two parameters—an action type
string and an asynchronous callback—that generates a thunk action
creator that will run the provided callback and automatically dispatch
promise lifecycle actions as appropriate so that you don’t have to
dispatch pending/fulfilled/rejected actions by hand.

To use `createAsyncThunk`, you’ll first need to import it from Redux
Toolkit like so:

``` jsx
import { createAsyncThunk } from '@reduxjs/toolkit';
```

Next, you’ll need to call `createAsyncThunk`, passing two arguments. The
first is a string representing the asynchronous action’s type.
Conventionally, type strings take the form `"resourceType/actionName"`.
In this case, since we are getting an individual user by their `id`, our
action type will be `users/fetchUserById`. The second argument to
`createAsyncThunk` is the payload creator: an asynchronous function that
returns a promise resolving to the result of an asynchronous operation.
Here is `fetchUserById` rewritten using `createAsyncThunk`:

``` jsx
import { createAsyncThunk } from '@reduxjs/toolkit'
import { fetchUser } from './api'
const fetchUserById = createAsyncThunk(
  'users/fetchUserById', // action type
  async (arg, thunkAPI) => { // payload creator
    const response = await fetchUser(arg);
    return response.json();
  }
)
```

There are a few things worth highlighting here. First, observe that the
payload creator receives two arguments—`arg` and `thunkAPI`. We will
elaborate on those in the next exercise. Second, note that the payload
creator we provided doesn’t dispatch any actions at all. It just returns
the result of an asynchronous operation.

As you can see, `createAsyncThunk` makes defining thunk action creators
more concise. All you have to write is an asynchronous thunk function;
`createAsyncThunk` takes care of the rest, returning an action creator
that will dispatch pending/fulfilled/rejected actions as appropriate.



**1.**

In the code editor, we’ve provided `loadRecipes`, the asynchronous
action creator you wrote in the last lesson. Now we’re going to refactor
it using `createAsyncThunk`. To start, import `createAsyncThunk` from
Redux toolkit (make sure you continue to import `createSlice` as well).

**2.**

Refactor `loadRecipes` using `createAsyncThunk`. Remember,
`createAsyncThunk` takes two arguments: an action type string, and a
payload creator function. Your action type string should be
`'allRecipes/loadRecipes'`. Your payload creator should retrieve the
recipes by calling `fetchRecipes`, which we’ve imported for you. Once
the recipes are fetched, you should return their json data, which you
can access by calling `.json()` on the response to your call to
`fetchRecipes`. Note: `.json()` is asynchronous, so you’ll want to
`await` the result of that call.



``` jsx
import { fetchRecipes } from '../../app/api'
import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';


const loadRecipes = createAsyncThunk(
  'allRecipes/loadRecipes',
  async (arg, thunkAPI) => {
    const data = await fetchRecipes()
    const json = await data.json()
    return json
  }
)

export const allRecipesSlice = createSlice({
  name: 'allRecipes',
  initialState: {
    recipes: [],
    isLoading: false,
    hasError: false,
  },
  reducers: {
    addRecipes(state, action) {
      state.recipes = action.payload
    }
  },  
});

export default allRecipesSlice.reducer;
```

## Passing Arguments to Thunks

In the last exercise, we promised to elaborate on the two arguments that
the payload creator (the asynchronous function we pass to
`createAsyncThunk`) receives: `arg` and `thunkAPI`. The first argument,
`arg`, will be equal to the first argument passed to the thunk action
creator itself. For example, if we call `fetchUserById(7)`, then inside
the payload creator, `arg` will be equal to 7.

But what if you need to pass multiple arguments to your thunk? Since the
payload creator only receives the first argument passed to the thunk
action creator, you’ll want to bundle multiple arguments into a single
object. For example, say we want to search our app’s users by first and
last name. If the thunk action creator is called `searchUsers`, we would
call it like this:
`searchUsers({firstName: 'Ada', lastName: 'Lovelace'})`.

If you need to access these variables individually, you can use ES6
destructuring assignment to unpack the object when you declare the
payload creator and pass it to `createAsyncThunk`, like this :

``` jsx
const searchUsers = createAsyncThunk(
    'users/searchUsers',
    async ({ firstName, lastName}, thunkAPI) => {
        // perform the asynchronous search request here    
    }
)
```

If your thunk requires no arguments, you can just call your thunk action
creator without, and the `arg` argument will be undefined. In the event
the thunk requires only one param (for example, fetching a specific
resource by `id`) you should name that first param semantically. Here’s
the `fetchUserById` example from the last exercise, with the `arg`
parameter semantically renamed to `userId`.

``` jsx
import { createAsyncThunk } from '@reduxjs/toolkit'
import { fetchUser } from './api'
const fetchUserById = createAsyncThunk(
    'users/fetchUserById', // action type
    async (userId, thunkAPI) => { // payload creator
        const response = await fetchUser(userId)
        return response.data
    }
)
```

The payload creator’s second argument, `thunkAPI`, is an object
containing several useful methods, including the store’s `dispatch` and
`getState`. <a
href="https://redux-toolkit.js.org/api/createAsyncThunk#payloadcreator"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">For an exhaustive list of methods
available in the <code
class="code__2rdF32qjRVp7mMVBHuPwDS">thunkAPI</code> object, you can
read the documentation</a>.



**1.**

In the code editor, we’ve defined a thunk action creator
`searchRecipesByName`. Rename `arg` to the semantically appropriate
variable name `recipeName`.



``` jsx
import { createAsyncThunk } from "@reduxjs/toolkit" 
import { searchRecipes } from './api'

const searchRecipesByName = createAsyncThunk(
  'recipes/searchRecipesByName',
  (recipeName, thunkAPI) => {
    const response = await searchRecipes(recipeName)
    return response.data
  }
)
```

## Actions Generated by createAsyncThunk

As you know, `createAsyncThunk` takes care of dispatching actions for
each of the promise lifecycle states: pending, fulfilled, and rejected.
But what exactly do these actions look like?

Building off the action type string you pass to it, `createAsyncThunk`
produces an action type for each promise lifecycle states. If you pass
the action type string `'resourceType/actionType'` to
`createAsyncThunk`, it will produce these three action types:

- `'resourceType/actionType/pending'`
- `'resourceType/actionType/fulfilled'`
- `'resourceType/actionType/rejected'`

To use our earlier example:

``` jsx
import { createAsyncThunk } from '@reduxjs/toolkit'
import { fetchUser } from './api'
 
const fetchUserById = createAsyncThunk(
  'users/fetchUserById', // action type
  async (userId, thunkAPI) => { // payload creator
    const response = await fetchUser(userId)
    return response.data
  }
)
```

When you pass `createAsyncThunk` the action type string
`'users/fetchUserById'`, `createAsyncThunk` produces these three action
types:

- `'users/fetchUserById/pending'`
- `'users/fetchUserById/fulfilled'`
- `'users/fetchUserById/rejected'`

If you need to access the individual pending/fulfilled/rejected action
creators, you can reference them like this:

- `fetchUserById.pending`
- `fetchUserById.fulfilled`
- `fetchUserById.rejected`

You will have to handle these action types in your reducers if you want
to reflect these promise lifecycle states in your app. In the next
exercise, we will show you how to do that.



**1.**

In the code editor, we’ve used `createAsyncThunk` to define a thunk
action creator, `loadRecipes`. What three action type strings are
generated by the call to createAsyncThunk? Write out the three strings
in your code editor in the comments below the call to `loadRecipes`.



``` jsx
import { fetchRecipes } from '../../app/api'
import { createAsyncThunk } from "@reduxjs/toolkit";

const loadRecipes = createAsyncThunk(
  'allRecipes/loadRecipes',
  (arg, thunkAPI) => {
    const response = await fetchRecipes();
    return response.data
  }
)

// The above call to createAsyncThunk will generate what three action types?
// 1. allRecipes/loadRecipes/pending
// 2. allRecipes/loadRecipes/fulfilled
// 3. allRecipes/loadRecipes/rejected
```

## Using createSlice() with Async Action Creators

In a previous lesson, you learned about `createSlice`. In this lesson,
you will learn about `extraReducers`, a property you can optionally pass
to `createSlice` that allows `createSlice` to respond to action types it
did not generate.

To refresh your memory, `createSlice` accepts a single argument,
`options`, which is an object containing configuration parameters
including a name, some initial state, and reducers. `createSlice` then
uses these configuration parameters to generate a slice of the store,
including action creators and action types for updating the state
contained in that slice. Consider the following example:

``` jsx
const usersSlice = createSlice({
  name: 'users',
  initialState: { users:  [] },
  reducers: {
    addUser: (state, action) => { 
      state.users.push(action.payload) 
    }        
  },
})
```

This call to `createSlice`, generates a slice of the store that responds
to the action creator `usersSlice.actions.addUser`. But what if we’ve
generated our action creators via calls to `createAsyncThunk`? Consider
`fetchUserById`, the asynchronous action creator from earlier in this
lesson:

``` jsx
const fetchUserById = createAsyncThunk(
  'users/fetchUserById', // action type
  async (userId, thunkAPI) => { // payload creator
    const response = await fetchUser(userId)
    return response.data
  }
)
```

This asynchronous action creator will generate three action types:
`'users/fetchUserById/pending'`, `'users/fetchUserById/fulfilled'`, and
`'users/fetchUserById/rejected'`. Currently, these action types have no
effect on our users slice, which only responds to the `users/addUser`
action type generated by `createSlice`.

How can we account for these promise lifecycle action types in our user
slice? This is exactly the problem that `extraReducers`, an optional
property on the configuration object passed to `createSlice`, was
designed to solve. `extraReducers` allows `createSlice` to respond to
action types generated elsewhere. To make the users slice respond to
promise lifecycle action types, we pass them to `createSlice` in the
`extraReducers` property.

Open `usersSlice.js` in your code editor to see an example of the
`extraReducers` property in context.

Note that in addition to using the `extraReducers` property, we also
added some extra fields to our state object: a boolean, `isLoading`,
which will be true when a request is pending, and otherwise false, and a
boolean `hasError`, which we will set to `true` if our request to fetch
a user is rejected. These additions allow us to track promise lifecycle
states so that we can create satisfying and informative user interfaces
when the promise is either `pending` or `rejected`. When the promise is
`fulfilled` these are set to `false` and the user data is added to the
state.



**1.**

In `allRecipesSlice.js`, we’ve used `createAsyncThunk` to define
`loadRecipes`, an asynchronous action creator that fetches all our app’s
recipes, and `createSlice` to define a slice of recipes in our app’s
store.

Add two booleans — `isLoading` and `hasError` — to the `initialState`
property passed to `createSlice`. What should their initial values be?

**2.**

Using the `extraReducers` property, add reducers for each of the promise
lifecycle action types generated by `createAsyncThunk`.

What about the app’s behavior has changed? While the recipes are being
fetched, the app displays a loading spinner. And if the recipes fail to
fetch, the app displays an error message.

Why does the app behave differently when you pass extra Reducers to
`createSlice`? Adding the extra reducers to the recipes slice causes the
store to update in response to each of the pending/fulfilled/rejected
actions dispatched by `loadRecipes`. These changes are reflected in the
app’s UI.



``` jsx
import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";
import {
  addFavoriteRecipe,
  removeFavoriteRecipe,
} from "../favoriteRecipes/favoriteRecipesSlice";
import { selectSearchTerm } from "../search/searchSlice";
export const loadRecipes = createAsyncThunk(
  "allRecipes/getAllRecipes",
  async () => {
    const data = await fetch("api/recipes?limit=10");
    const json = await data.json();
    return json;
  }
);

const sliceOptions = {
  name: "allRecipes",
  initialState: {
    recipes: [],
  },
  reducers: {},
}

export const allRecipesSlice = createSlice(sliceOptions);

export const selectAllRecipes = (state) => state.allRecipes.recipes;

export const selectFilteredAllRecipes = (state) => {
  const allRecipes = selectAllRecipes(state);
  const searchTerm = selectSearchTerm(state);

  return allRecipes.filter((recipe) =>
    recipe.name.toLowerCase().includes(searchTerm.toLowerCase())
  );
};

export default allRecipesSlice.reducer;
```

## Conclusion

Well done! In this lesson you:

- Learned the three *promise lifecycle actions*: pending, fulfilled, and
  rejected
- Learned how to use `createAsyncThunk`, which abstracts the process of
  handling promise lifecycle states according to best practices/common
  design paradigms
- Imported `createAsyncThunk` from the Redux Toolkit:

``` jsx
import { createAsyncThunk } from '@reduxjs/toolkit';
```

- Refactored existing asynchronous action creators using
  `createAsyncThunk`.
- Made your reducers respond to pending/fulfilled/rejected promise
  lifecycle actions by supplying the extraReducers property to
  `createSlice`.



For comparison we’ve included the “old” way of doing things–manually
handling the promise lifecycle actions–in **oldAllRecipesSlice.js** and
the “new” way of doing things–with `createAsyncThunk()` and the
`extraReducers` property in `createSlice()`–in **allRecipesSlice.js**.
Take a moment to review these two files and cement your understanding of
the difference between them.



``` jsx
```

# Redux News Reader

This project—a news reader in which users can view and comment on
various articles—gives you an opportunity to practice using Redux
Toolkit’s `createAsyncThunk` and `createSlice` utilities to add
asynchronous functionality to your Redux applications.

Currently, the app fetches and displays a list of all articles in their
preview form. It also fetches and displays the current article, which
can be selected and changed by the user. The code for these features is
accessible in the **features/articlePreviews** and
**features/currentArticle** directories respectively.

Your task will be to complete the comments feature. Whenever the
featured article changes, you will asynchronously fetch the comments for
that article and add them to your store so they display under the
article. Likewise, when a user submits a new comment, you will submit it
to the server via an asynchronous request and display it in the
article’s list of comments once it has been successfully created.

Before you get started, spend some time familiarizing yourself with the
project’s starting code. In particular, take note of the way the project
employs `createSlice` and `createAsyncThunk` in
**currentArticleSlice.js** and **articlePreviewsSlice.js**, as your work
on the comments slice will resemble these files.

> This lesson uses <a href="https://mswjs.io/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">Mock Service Worker</a> (MSW) to
> replicate the functionality of an external API. To use MSW, you’ll
> want to use Google Chrome and <a
> href="https://support.google.com/chrome/answer/95647?co=GENIE.Platform%3DDesktop&amp;hl=en"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">enable third-party cookies</a>.



Mark the tasks as complete by checking them off

## Write Your First Asynchronous Action Creator

1\.

We’re going to start by using `createAsyncThunk` to create an
asynchronous action creator, `loadCommentsForArticleId`, that fetches
all the comments for a particular article.

In **commentsSlice.js**, import `createAsyncThunk` and `createSlice`
from Redux Toolkit. You will use `createSlice` to generate a slice for
the comments.

2\.

Now that you’ve imported `createAsyncThunk`, let’s use it to define an
asynchronous action creator that fetches all the comments for a
particular article.

- Call `createAsyncThunk` with two arguments—an action type string, and
  an asynchronous callback that takes an article `id` as its first
  argument.
- Store the result in a constant called `loadCommentsForArticleId` and
  export it.

3\.

Now let’s implement the body of the asynchronous callback passed to
`createAsyncThunk()`. This callback should make an asynchronous request
to our news API for the comments associated with the given article `id`.

The route for fetching comments for an article by id is
`'api/articles/ID/comments'`. For example, to fetch the comments for an
article with an `id = 123` using the
<a href="https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Fetch API</a>, you could write

``` jsx
fetch('api/articles/123/comments')
```

Inside the asynchronous callback passed to `createAsyncThunk()`:

1.  Call `fetch()` with the proper route for fetching the comments of
    the given article `id` parameter.
2.  Since `fetch()` is asynchronous, you’ll want to `await` the result
    and store it in a variable called `response`.
3.  `fetch` returns a `Promise` containing the HTTP response to the
    request. To get the actual JSON data from the response body, call
    `.json()` on `response`. `.json()` is also asynchronous, so you’ll
    once again want to `await` the result and store it in a variable
    called `json`.
4.  Finally, return `json`.

## Add Extra Reducers to the Comments Slice

4\.

Now that you’ve written `loadCommentsForArticleId`, you should update
`commentsSlice` to store comments. There are several ways you could
choose to organize your slice, but we recommend storing comments in an
object keyed by article IDs, where each article id key corresponds to an
array of comments belonging to that article. For example:

``` jsx
{
  123: ['Great article!' , 'I disagree.']
  456: ['This is some great writing.'],
  ... 
}
```

Since comments always belong to articles and can only belong to a single
article, this approach will simplify the process of retrieving all the
comments for a particular article.

In **commentsSlice.js**, add a `byArticleId` property to `initialState`,
and set it equal to an empty object.

5\.

Your asynchronous action creator, `loadCommentsForArticleId`, will
dispatch an action for each of the pending/fulfilled/rejected promise
lifecycle states, and your slice should keep track of which state the
asynchronous request is in so that it can display loading and error
states as appropriate.

To make your slice track these promise lifecycle states, you should
first update your slice’s initial state to include two booleans:
`isLoadingComments` and `failedToLoadComments`, and initialize them
appropriately.

6\.

By default, slices produced by calls to `createSlice` only respond to
actions that were also created by `createSlice`. This means that the
`loadCommentsForArticleId` thunk you wrote won’t have any effect on the
store until you make the `commentsSlice` respond to it by using the
`extraReducers` property.

In **commentsSlice.js**

1.  Add an`extraReducers` property to the configurations options object
    passed to `createSlice`. You can use the <a
    href="https://redux-toolkit.js.org/api/createSlice#the-extrareducers-map-object-notation"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">map object notation</a> you learned
    in the lesson, or study the documentation for <a
    href="https://redux-toolkit.js.org/api/createSlice#the-extrareducers-builder-callback-notation"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">builder callback notation</a> and use
    that instead.
2.  For now, set the property to an empty object.

7\.

Now that you’ve added the `extraReducers` property to your slice
configurations, you’ll want to add a reducer for each of the three
actions dispatched by `loadCommentsForArticleId`:

1.  The pending promise lifecycle action
2.  The rejected promise lifecycle action
3.  The fulfilled promise lifecycle action. Note that in this case,
    `action.payload` is a comment object with an `articleId` property
    you can use to add the comment to the correct article’s comment list
    in state.

Each one should update the state accordingly.

## Display Comments for the Current Article

8\.

Now that you’ve written your comments slice, you’ll want to actually
display the comments for the current article. Navigate to
**Comments.js**, the component that will handle all the comment-related
logic. Note that we’ve already imported and used the
`selectCurrentArticle` selector from the **currentArticleSlice** to
define the current article in the constant `article`.

We’ve also defined two constants, `comments` and `commentsAreLoading`,
and initialized them with temporary values that you will overwrite using
the selectors imported from the comments slice.

- Replace the empty array currently assigned to `comments` with the
  comments currently in state
- Replace the `false` boolean currently assigned to `commentsAreLoading`
  with the state value representing whether or not there is currently a
  pending request to fetch comments.

9\.

In order to make sure the store includes all the comments associated
with the current article, we should fetch all the comments for the
current article any time the current article changes. Once we have the
comments for the current article, we’ll pass them to `CommentList` to
make them show up on the page.

In **Comments.js**:

1.  Using `useEffect`, dispatch `loadCommentsForArticleId` any time
    `article` changes and only if `article` is not `undefined`.
2.  Define a constant, `commentsForArticleId`, which should be an empty
    array when `article` is undefined and otherwise should be equal to
    `comments[article.id]`.
3.  Replace the empty array we’ve passed as the `CommentList`’s
    `comments` prop with `commentsForArticleId`.

10\.

Now that you’ve taken care of passing the comments to the `CommentList`
component, you need to make that component render the comments it
receives.

Inside the `<ul>` of the `CommentList` component’s return statement

- Map over the `comments` prop and render a `Comment` (we’ve imported
  this component for you) for each value.
- Each `Comment` component needs to be passed a `comment` prop.

If you refresh your browser now and click on an article, you should see
that article’s comments displayed below it!

## Write postCommentForArticleId

11\.

Now that you’ve implemented one asynchronous feature, you’ll go through
a similar process to add another—a form for creating new comments for
the current article.

First, back in **commentsSlice.js**, you’ll write another asynchronous
action creator, `postCommentForArticleId`, which will be called like so:

``` jsx
postCommentForArticleId({
  articleId: 1,
  comment: "This article is great!"
}}
```

Inside **commentsSlice.js**

- Declare a new exported variable called `postCommentForArticleId`.
- Call `createAsyncThunk` with two arguments—an action type string, and
  an asynchronous callback—and store the result in
  `postCommentForArticleId`.
- The asynchronous callback should accept an object with two
  properties–`articleId` and `comment`–as a parameter. You should
  destructure the object in your function definition so that you can
  refer to `articleId` and `comment` when you implement the function
  body.

12\.

Now let’s implement the body of the asynchronous callback to make an
asynchronous POST request to the news API.

To make a POST request, we can again use the `fetch()` method but we
must specify that we want to make a POST request. We must also pass
along the `comment` value included in the parameter object (formatted as
a stringified object).

Inside the asynchronous callback passed to `createAsyncThunk()`,

1.  Declare a new variable called `requestBody`. Then, call
    `JSON.stringify()` and pass in an object with a single property,
    `comment`, corresponding to the text of the new `comment` included
    in the parameter object. Assign the result to `requestBody`.
2.  Call the `fetch()` method to make a request to
    `'api/articles/ID/comments'`, replacing `'ID'` with the `articleId`
    value included in the parameter object.
3.  Pass an options object as the second argument to `fetch()` after the
    URL. This object should have a `method` key with the value equal to
    the string `'POST'`.
4.  Add a `body` key to the options object with the value equal
    `requestBody`.
5.  Since `fetch` is asynchronous, you’ll want to `await` the result and
    store it in a variable called `response`.
6.  To get the actual JSON data from the response body, call `.json()`
    on `response`. `.json()` is also asynchronous, so you’ll once again
    want to `await` the result and store it in a variable called `json`.
7.  Finally, return `json`.

13\.

Like all action creators generated by `createAsyncThunk`,
`postCommentForArticleId` will dispatch actions for each of the
pending/fulfilled/rejected promise lifecycle states. In order to make
our app reflect these changing states, we have to keep track of them in
the store.

In order to do that, add two booleans—`createCommentIsPending` and
`failedToCreateComment`—to `initialState`, and set their initial values
appropriately.

14\.

Now modify the `extraReducers` property of your slice configuration
options by adding a reducer for each of the three promise lifecyle
actions dispatched by `postCommentsForArticleId`:

1.  The pending promise lifecycle action
2.  The rejected promise lifecycle action
3.  The fulfilled promise lifecycle action. Note that in this case,
    `action.payload` will be a comment object including an `articleId`
    that you can use to add the comment object to correct article’s
    comment list in state.

Each one should update the state accordingly.

## Improve Comment Form UX

15\.

Well done! You’ve created two asynchronous actions—one for getting
comments and one for adding a posting new ones—and handled them using
`extraReducers` within `createSlice`’s configuration object. Just two
more steps to go.

First, you’re going to connect the `CommentForm` we’ve provided to your
new asynchronous action creator

In **CommentForm.js**:

1.  Import `postCommentForArticleId` from the comments slice.
2.  In `handleSubmit`, dispatch `postCommentForArticleId` passing in an
    object with `articleId` and `comment`.

At this point, you should be able to create new comments with the
comment form. Try it out to test your work!

16\.

Good job! Your last task is to improve the user experience slightly by
disabling the submit button when a request to create a new comment is
pending. This will prevent users from accidentally creating the same
comment twice.

In **CommentForm.js**:

1.  Define a constant, `isCreatePending`, using `useSelector` and the
    imported selector `createCommentIsPending`.
2.  Add a <a
    href="https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/disabled"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener"><code
    class="code__2rdF32qjRVp7mMVBHuPwDS">disabled</code></a> attribute
    to the form’s button and set it equal to `isCreatePending`. Refresh
    the browser and try to create the same comment twice by double
    clicking. You’ll see that it’s now impossible to do so.

## [Solution](redux-news-reader)

# Code Review: Redux

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
href="https://www.codecademy.com/paths/full-stack-engineer-career-path/tracks/fscp-22-redux/modules/wdcp-22-flashcards/projects/react-redux-flashcards"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Flashcards</a> challenge project, which will help you to
practice your Redux skills by applying everything you have learned in a
single project. Alternatively, have them review any previous project
that you have worked on or any personal projects you’re doing on the
side.

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

# Challenge Project: Flashcards

#### Overview

Instead of a step-by-step tutorial, this project contains a series of
open-ended requirements which describe the project you’ll be building.
There are many possible ways to correctly fulfill all of these
requirements, and you should expect to use the internet, Codecademy, and
other resources when you encounter a problem that you cannot easily
solve.

#### Project Goals

In this project, you will practice using Redux and Redux Toolkit to
manage the complex state of a flashcard-style quiz app. Users will be
able to create their own topics, quizzes for those topics, and
flashcards for those quizzes. Users will also be able to interact with
their quizzes by flipping flashcards over.

The following task descriptions will walk through implementing the app’s
Redux logic starting with topics, then quizzes, and then cards. If you
would like to implement it in a different order feel free to do what is
comfortable for you.

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



Mark the tasks as complete by checking them off

## Prerequisites

1\.

To complete this project, you should have completed Codecademy’s
<a href="https://www.codecademy.com/learn/react-101"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn React</a> and
<a href="https://www.codecademy.com/learn/learn-redux"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn Redux</a> courses.

2\.

This app uses `uuidv4()` function from the
<a href="https://www.npmjs.com/package/uuid"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">uuid</code></a> package to create
unique identifiers for topics/quizzes/cards. Below, you can see an
example of how this function is used:

``` jsx
import { v4 as uuidv4 } from 'uuid';
 
let uniqueId = uuidv4(); 
 
console.log(uniqueId); // Prints '1b9d6bcd-bbfd-4b2d-9b5d-ab8dfbbd4bed'
```

Though not required, if you would like to learn more about this
function, check out its
<a href="https://www.npmjs.com/package/uuid#uuidv4options-buffer-offset"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>.

3\.

This app uses `react-router` to handle routing between different pages.
Since `react-router` is outside the scope of this project, we’ve written
the routing code for you. Though not required, if you’re curious about
how it works, you can explore `App.js` (where the routes for this app
are defined), read the <a href="https://reactrouter.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">react-router</code> docs</a>, or
take our <a href="https://www.codecademy.com/learn/learn-react-router"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn React Router</a> course!

## Project Requirements

4\.

At a high level, your application will be able to handle the following
URL routes, each with their own functionality:

On the `'/topics/new'` page:

- Users can create topics

On the `'/topics'` page:

- Users can view all topics
- Users can click on an individual topic and be redirected to the page
  for that topic

On the `/topics/:topicId` page:

- Users can view an individual topic and all quizzes for that topic
- Users can click on a quiz associated with a topic and be redirected to
  that quiz’s page

On the `'quizzes/new'` page:

- Users can create quizzes that are associated with topics and contain
  lists of flashcards
- Users can add and remove card fields in the new quiz form

On the `'/quizzes'` page:

- Users can view all quizzes
- Users can click on an individual quiz and be redirected to that quiz’s
  page

On the `'/quizzes/:quizId'` page:

- Users can view an individual quiz and flip cards over

5\.

Before you start writing code, take a moment to review our recommended
state structure:

- Your app will include three slices: one for topics, one for quizzes,
  and one for cards.
- Each slice’s state should include an object storing all the
  topics/quizzes/cards keyed by their `id`. This will allow you to
  quickly retrieve an object’s information whenever you need to look it
  up.
- Each individual quiz will have a `topicId` value corresponding to an
  individual topic in state.
- Similarly, each topic which will have a `quizIds` array corresponding
  to the associated quizzes in state.

All together, your app state will look like this:

``` jsx
{
  topics: {
    topics: {
      '123': {
        id: '123',
        name: 'example topic',
        icon: 'icon url',
        quizIds: ['456']
      }
    }
  },
  quizzes: {
    quizzes: {
      '456': {
        id: '456',
        topicId: '123',
        name: 'quiz for example topic',
        cardIds: ['789', '101', '102']
      }
    }
  },
  cards: {
    cards: {
      '789': {
        id: '789',
        front: 'front text',
        back: 'back text'
      },
      '101': {
        id: '101',
        front: 'front text',
        back: 'back text'
      },
      '102': {
        id: '102',
        front: 'front text',
        back: 'back text'
      },
    }
  }
}
```

6\.

Your first task is to write code to manage the state associated with
topics. In the **src/features/topics** directory, create a new file
containing a slice that:

- Is named `topics`.
- Has initial state consisting of an object that includes one property,
  `topics`, which corresponds to an empty object. This inner `topics`
  object will eventually hold all topics keyed by `id`.
- Has an `addTopic` action. You can expect the payload for this action
  to look like
  `{id: '123456', name: 'name of topic', icon: 'icon url'}`. Store these
  values in the state as a new topic object.
- Each topic object added to the state should also have a `quizIds`
  property, which will correspond to an array containing the `id`s of
  each quiz associated with the topic. When a topic is first created, it
  won’t have any associated quizzes, but you should still create an
  empty `quizIds` array so that all topics in the state conform to the
  same shape.
- Create a selector that selects the `topics` object nested within
  `initialState`.
- Export the selector as well as the action creators and reducer that
  your slice generates.

7\.

Add `topics` to the app’s store.

8\.

In **src/features/topics/Topics.js**, import the selector defined in
your slice and use it to access all the topics in state, and replace the
empty object currently assigned to `topics` with the topics in state.

9\.

Next, you’ll need to hook the new topic form up to the action creators
your slice generates. In **src/components/NewTopicForm.js**, import
`addTopic` and dispatch it from the event handler that runs when the new
topic form is submitted.

Verify that your code is working by filling out the form and submitting
it. You should be redirected to the `/topics` page and should see your
newly created topic there.

10\.

Great work! Now that you can create topics, your next task is to build
out the necessary functionality to add quizzes to your app. This will
involve creating two new slices—one for the quizzes themselves and one
for the cards that comprise them—and adding an action to your topics
slice to associate quizzes with the topic to which they belong. To
start, create in the **src/features/quizzes** directory, create a new
file containing a slice for quizzes that:

- Is named `'quizzes'`
- Has initial state consisting of an object that includes one property,
  `quizzes`, which corresponds to an empty object. This inner `quizzes`
  object will eventually hold all quizzes keyed by `id`.
- Has an `addQuiz` action. This action will receive a payload of the
  form
  `{ id: '123', name: 'quiz name', topicId: '456', cardIds: ['1', '2', '3', ...]}`.
- Export the selector as well as the action creators and reducer that
  your slice generates.

11\.

Next, you should add an action to your topics slice that adds a quiz’s
`id` to the `quizIds` array of the topic with which the newly quiz is
associated. This action action will receive a payload of the form
`{quizId: '123', topicId: '456'}`. Make sure to export this action
creator for use elsewhere in the app.

12\.

Conceptually, the actions of creating a new quiz and associating it with
its topic are a part of a single process. Back in the quiz slice file,
write an action creator that returns a thunk that dispatches these two
actions one after the other. This new thunk action creator is the one
that you will dispatch when a user creates a new quiz.

13\.

To test your work, you’ll need to connect your action creator to
**src/components/NewQuizForm** and make that component work. First,
import your topics selector from your topics slice and replace assign a
call to that selector to the variable `topics` (which is currently
assigned an empty object).

14\.

Next, import the thunk action creator from your quiz slice and dispatch
it from the `handleSubmit()` event handler that fires when the new quiz
form is submitted.

- Remember, that action creator expects to receive a payload of the form
  `{ id: '123', name: 'quiz name', topicId: '456', cardIds: ['1', '2', '3', ...]}`.
  You’ll have to generate an `id` by calling `uuidv4`. For now, pass the
  empty `cardIds` array variable for the `cardIds` property (you’ll
  change that in a later task).
- Test that your action creator works by filling out the new quiz form.
  After your quiz is created you should be rerouted to the `/quizzes`
  page and should see your newly created quiz there.

> Note: If you are doing this project on Codecademy.com, the URL bar may
> not change (but the user interface should!)

15\.

Lastly, import your selector in **src/features/quizzes/Quizzes.js** and
**src/features/quizzes/Quiz.js** and make sure those components are
displaying the correct data:

- The `Quizzes` component should render a `Link` for each quiz value in
  the quizzes slice of state.
- The `Quiz` component uses the `react-router-dom` method `useParams()`
  to determine the `quizId` to render. Therefore, it needs the full set
  of quizzes to find the appropriate quiz object to render.

16\.

Great work! Next, in the **src/features/cards** directory, create a new
file containing slice for cards that:

- Is named `'cards'`
- Has initial state consisting of an object that includes one property,
  `cards`, which corresponds to an empty object. This inner `cards`
  object will eventually hold all cards keyed by `id`.
- Has an `addCard` action. This action will receive a payload of the
  form `{ id: '123', front: 'front of card', back: 'back of card'}`.

17\.

Lastly, connect your `addCard` action creator to the new quiz form. In
**src/components/NewQuizForm**, in the event handler that fires when the
quiz form is submitted, iterate through the `cards` in that form’s local
state, and for each one:

1.  `dispatch` your `addCard` action creator. You will have to generate
    an `id` for each card using `uuidv4`.
2.  Store the `id` you create for each card in the `cardIds` array we’ve
    provided for you.Remember, your action creator expects to receive a
    payload of the form
    `{ id: '123', front: 'front of card', back: 'back of card'}`. You
    want to collect all the `cardIds` in an array so that you can pass
    them to the action creator that generates new quizzes. To use
    `uuidv4` to create an `id`, call the function like so: `uuidv4()`.

18\.

You previously passed an empty array for `cardIds` to the action creator
that generates a new quiz. Now that you have written code to collect an
array of all the `cardIds` created whenever the new quiz form is
submitted, replace the empty array with this array of `cardIds`.

To test that your code is working, create a new quiz with some cards.
Navigate to that quiz from the `/quizzes` page, and verify that your
cards show up. Flip them over by clicking on them to make sure that
you’ve correctly captured all of the state belonging to each card.

19\.

Now that you can add new cards, you’ll need to display cards on the
individual quiz page. The `Quiz` component renders a list of `Card`
components, so in **src/features/cards/Card.js**, import your cards
selector and use it to access all the cards in state.

## Solution

20\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/flashcards-challenge-project-redux/576779"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

## [Solution](react-redux-flashcards)

# Review: Redux

In this unit, you learned about Redux.

Congratulations! The goal of this unit was to introduce you to the Redux
library. Redux is most commonly used with React to manage application
state, but can also be used with other libraries and frameworks, such as
Angular. Redux is good for when your application becomes very large and
has lots of moving parts. You may not always need Redux in an
application, but it is helpful to learn and a good thing to have on your
resume.

Having completed this unit, you are now able to:

- Use the Redux library
- Understand why and when to use Redux in a React app
- Know how to use Redux as middleware logic
- Write tests in Redux

If you are interested in learning more about these topics, here are some
additional resources:

- Documentation: <a href="https://react-redux.js.org/api/connect"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">React Redux</a>
- Resource: <a
  href="https://redux.js.org/introduction/learning-resources#basic-introductions"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Redux Learning Resources: Basic
  Introductions</a>
- Resource: <a
  href="https://redux.js.org/introduction/learning-resources#using-redux-with-react"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Using Redux with React</a>
- Article:
  <a href="http://blog.krawaller.se/posts/exploring-redux-middleware/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Exploring Redux Middleware</a>
- Documentation:
  <a href="https://redux-toolkit.js.org/introduction/quick-start"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Redux Toolkit: Quick Start</a>
- Tutorial:
  <a href="https://redux-toolkit.js.org/tutorials/basic-tutorial"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Introducing Redux Toolkit</a>
- Resource: <a href="https://github.com/xgrommx/awesome-redux"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Awesome Redux</a>
- Tutorial:
  <a href="https://react-redux.js.org/introduction/basic-tutorial"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">React-Redux: Basic Tutorial</a>
- Tutorial: <a
  href="https://redux.js.org/tutorials/essentials/part-6-performance-normalization"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Redux Essentials, Part 6: Performance
  and Normalizing Data</a>
- Tutorial: <a href="https://youtu.be/xsSnOQynTHs"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Live React: Hot Reloading</a>
- Tutorial: <a href="https://redux.js.org/usage/writing-tests"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Writing Tests in Redux</a>
- Tutorial: <a
  href="https://hackernoon.com/redux-testing-step-by-step-a-simple-methodology-for-testing-business-logic-8901670756ce"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Redux Testing Step by Step: A Simple
  Methodology for Testing Business Logic</a>
- Article: <a
  href="https://hacks.mozilla.org/2018/04/testing-strategies-for-react-and-redux/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Testing Strategies for React and
  Redux</a>
- Tutorial:
  <a href="https://www.robinwieruch.de/react-connected-component-test/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">How to test React-Redux connected
  Components</a>
- Video: <a href="https://www.youtube.com/watch?v=h7ukDItVN_o"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">How to test Redux</a>

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
