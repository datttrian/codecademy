# Introduction: JavaScript Syntax, Part II

In this unit, you will learn additional aspects of the JavaScript
language.

The goal of this unit is to learn additional aspects of the JavaScript
language and start writing more complex programs.

After this unit, you will be able to:

- Read and write JavaScript syntax for arrays, loops, objects, and
  iterators
- Debug JavaScript code and parse error messages
- Solve code challenges related to the newly learned syntax

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

# Arrays

## Arrays

Organizing and storing data is a foundational concept of programming.

One way we organize data in real life is by making lists. Let’s make one
here:

    New Year's Resolutions:

    1. Keep a journal 
    2. Take a falconry class
    3. Learn to juggle

Let’s now write this list in JavaScript, as an *array*:

``` js
let newYearsResolutions = ['Keep a journal', 'Take a falconry class', 'Learn to juggle'];
```

<a
href="https://www.codecademy.com/resources/docs/javascript/arrays?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Arrays</a> are JavaScript’s way of making lists. Arrays
can store any data types (including strings, numbers, and booleans).
Like lists, arrays are ordered, meaning each item has a numbered
position.

Here’s an array of the concepts we’ll cover:

``` js
let concepts = ['creating arrays', 'array structures', 'array manipulation'];
```

By the end of this lesson you’ll have another tool under your belt that
helps you manage chunks of data!

### Instructions

Run the code to see what is logged to the console.

### Solution

``` javascript
let newYearsResolutions = ['Keep a journal', 'Take a falconry class', 'Learn to juggle'];

console.log(newYearsResolutions);
```

    ## [ 'Keep a journal', 'Take a falconry class', 'Learn to juggle' ]

## Create an Array

One way we can create an array is to use an *array literal*. An array
literal creates an array by wrapping items in square brackets `[]`.
Remember from the previous exercise, arrays can store any data type — we
can have an array that holds all the same data types or an array that
holds different data types.

<img
src="https://content.codecademy.com/courses/learn-javascript-arrays/array%20literal.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Diagram outlining an array literal that has 3 separate elements, a comma separates each element (a string, a number, and a boolean) and the elements are wrapped with square brackets" />

Let’s take a closer look at the syntax in the array example:

- The array is represented by the square brackets `[]` and the content
  inside.
- Each content item inside an array is called an *element*.
- There are three different elements inside the array.
- Each element inside the array is a different data type.

We can also save an array to a variable. You may have noticed we did
this in the previous exercise:

``` js
let newYearsResolutions = ['Keep a journal', 'Take a falconry class', 'Learn to juggle'];
```

Let’s practice by making an array of our own.

### Instructions

**1.**

Declare a variable using `const` named `hobbies` and set it equal to an
array with three strings inside of it.

**2.**

Use `console.log()` to print `hobbies` to the console.

### Solution

``` javascript
const hobbies = ['kayaking', 'snowboarding', 'napping'];

console.log(hobbies);
```

    ## [ 'kayaking', 'snowboarding', 'napping' ]

## Accessing Elements

Each element in an array has a numbered position known as its *index*.
We can access individual items using their index, which is similar to
referencing an item in a list based on the item’s position.

Arrays in JavaScript are *zero-indexed*, meaning the positions start
counting from `0` rather than `1`. Therefore, the first item in an array
will be at position `0`. Let’s see how we could access an element in an
array:

<img
src="https://content.codecademy.com/courses/learn-javascript-arrays/array%20indices.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Diagram outlining how to access the property of an array using the index of the element" />

In the code snippet above:

- `cities` is an array that has three elements.
- We’re using bracket notation, `[]` with the index after the name of
  the array to access the element.
- `cities[0]` will access the element at index `0` in the array
  `cities`. You can think of `cities[0]` as accessing the space in
  memory that holds the string `'New York'`.

You can also access individual characters in a string using bracket
notation and the index. For instance, you can write:

``` js
const hello = 'Hello World';
console.log(hello[6]);
// Output: W
```

The console will display `W` since it is the character that is at index
`6`.

### Instructions

**1.**

Individual elements in arrays can also be stored to variables.

Create a variable named `listItem` and set it equal to the first item in
the `famousSayings` array using square bracket notation (`[]`).

Then use `console.log()` to print the `listItem` variable to the
console.

**2.**

Now, `console.log()` the third element in the `famousSayings` array
using bracket notation to access the element.

Do not save the element to a new variable before you log it.

**3.**

Awesome, you can access each element in an array using the index. But
what happens if you try to access an index that is beyond the last
element?

Try to log the item at index `[3]` of `famousSayings` to the console.
What is logged to the console?

### Solution

``` javascript
const famousSayings = ['Fortune favors the brave.', 'A joke is a very serious thing.', 'Where there is love there is life.'];

const listItem = famousSayings[0];

console.log(famousSayings[2]);

console.log(famousSayings[3]);
```

    ## Where there is love there is life.
    ## undefined

## Update Elements

In the previous exercise, you learned how to access elements inside an
array or a string by using an index. Once you have access to an element
in an array, you can update its value.

``` js
let seasons = ['Winter', 'Spring', 'Summer', 'Fall'];
 
seasons[3] = 'Autumn';
console.log(seasons); 
//Output: ['Winter', 'Spring', 'Summer', 'Autumn']
```

In the example above, the `seasons` array contained the names of the
four seasons.

However, we decided that we preferred to say `'Autumn'` instead of
`'Fall'`.

The line, `seasons[3] = 'Autumn';` tells our program to change the item
at index 3 of the `seasons` array to be `'Autumn'` instead of what is
already there.

### Instructions

**1.**

Change the second element of the array `groceryList` to `'avocados'`.

### Solution

``` javascript
let groceryList = ['bread', 'tomatoes', 'milk'];

groceryList[1] = 'avocados';
```

## Arrays with let and const

You may recall that you can declare <a
href="https://www.codecademy.com/resources/docs/javascript/variables?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">variables</a> with both the `let` and `const` keywords.
Variables declared with `let` can be reassigned.

Variables declared with the `const` keyword cannot be reassigned.
However, elements in an array declared with `const` remain mutable.
Meaning that we can change the contents of a `const` array, but cannot
reassign a new array or a different value.

The instructions below will illustrate this concept more clearly. Pay
close attention to the similarities and differences between the
`condiments` array and the `utensils` array as you complete the steps.

### Instructions

**1.**

Below the two existing arrays, re-assign the element in index `0` of
`condiments` to `'Mayo'`.

Log the updated array, `condiments`, to the console.

**2.**

Below your code from Step 1, reassign `condiments` to be a new array
that contains a single string `['Mayo']`

Log the result to the console.

Notice that you can re-assign elements in an array and re-assign an
entire new array to a variable declared using the `let` keyword.

**3.**

Below your code from Step 2, re-assign the last item from the `utensils`
array to `'Spoon'`.

Log the updated array to the console.

### Solution

``` javascript
let condiments = ['Ketchup', 'Mustard', 'Soy Sauce', 'Sriracha'];

const utensils = ['Fork', 'Knife', 'Chopsticks', 'Spork'];

condiments[0] = 'Mayo';

console.log(condiments);

condiments = ['Mayo'];

console.log(condiments);

utensils[3] = 'Spoon';

console.log(utensils);
```

    ## [ 'Mayo', 'Mustard', 'Soy Sauce', 'Sriracha' ]
    ## [ 'Mayo' ]
    ## [ 'Fork', 'Knife', 'Chopsticks', 'Spoon' ]

## The .length property

One of an array’s built-in properties is `length` and it returns the
number of items in the array. We access the <a
href="https://www.codecademy.com/resources/docs/javascript/strings/length?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.length</code></a> property just
like we do with strings. Check the example below:

``` js
const newYearsResolutions = ['Keep a journal', 'Take a falconry class'];
 
console.log(newYearsResolutions.length);
// Output: 2
```

In the example above, we log `newYearsResolutions.length` to the console
using the following steps:

- We use *dot notation*, chaining a period with the property name to the
  array, to access the `length` property of the `newYearsResolutions`
  array.
- Then we log the `length` of `newYearsResolution` to the console.
- Since `newYearsResolution` has two elements, `2` would be logged to
  the console.

When we want to know how many elements are in an array, we can access
the `.length` property.

### Instructions

**1.**

Find the `length` of the `objectives` array and log it to the console.

### Solution

``` javascript
const objectives = ['Learn a new language', 'Read 52 books', 'Run a marathon'];

console.log(objectives.length);
```

    ## 3

## The .push() Method

Let’s learn about some built-in JavaScript methods that make working
with arrays easier. These methods are specifically called on arrays to
make common tasks, like adding and removing elements, more
straightforward.

One method, <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/push?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.push()</code>,</a> allows us to
add items to the end of an array. Here is an example of how this is
used:

``` js
const itemTracker = ['item 0', 'item 1', 'item 2'];
 
itemTracker.push('item 3', 'item 4');
 
console.log(itemTracker); 
// Output: ['item 0', 'item 1', 'item 2', 'item 3', 'item 4'];
```

So, how does `.push()` work?

- We access the `push` method by using dot notation, connecting `push`
  to `itemTracker` with a period.
- Then we call it like a function. That’s because `.push()` is a
  function and one that JavaScript allows us to use right on an array.
- `.push()` can take a single argument or multiple arguments separated
  by commas. In this case, we’re adding two elements: `'item 3'` and
  `'item 4'` to `itemTracker`.
- Notice that `.push()` changes, or *mutates*, `itemTracker`. You might
  also see `.push()` referred to as a *destructive* array method since
  it changes the initial array.

If you’re looking for a method that will mutate an array by adding
elements to it, then `.push()` is the method for you!

### Instructions

**1.**

Add two elements to the `chores` array using `.push()`.

**2.**

Use `console.log` to print your `chores` array to make sure your items
were added.

### Solution

``` javascript
const chores = ['wash dishes', 'do laundry', 'take out trash'];

chores.push('cook dinner', 'mop floor');

console.log(chores);
```

    ## [
    ##   'wash dishes',
    ##   'do laundry',
    ##   'take out trash',
    ##   'cook dinner',
    ##   'mop floor'
    ## ]

## The .pop() Method

Another array method, <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/pop?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.pop()</code></a>, removes the last
item of an array.

``` js
const newItemTracker = ['item 0', 'item 1', 'item 2'];
 
const removed = newItemTracker.pop();
 
console.log(newItemTracker); 
// Output: [ 'item 0', 'item 1' ]
console.log(removed);
// Output: item 2
```

- In the example above, calling `.pop()` on the `newItemTracker` array
  removed `item 2` from the end.
- `.pop()` does not take any arguments, it simply removes the last
  element of `newItemTracker`.
- `.pop()` returns the value of the last element. In the example, we
  store the returned value in a variable `removed` to be used for later.
- `.pop()` is a method that mutates the initial array.

When you need to mutate an array by removing the last element, use
`.pop()`.

### Instructions

**1.**

Use the `.pop()` method to remove the last element from `chores`.

**2.**

In a line after you called `chores.pop()`, log `chores` to the console
to make sure it worked.

### Solution

``` javascript
const chores = ['wash dishes', 'do laundry', 'take out trash', 'cook dinner', 'mop floor'];

chores.pop();

console.log(chores)
```

    ## [ 'wash dishes', 'do laundry', 'take out trash', 'cook dinner' ]

## More Array Methods

There are many more array methods than just `.push()` and `.pop()`. You
can read about these array methods on the Docs entry for
<a href="https://www.codecademy.com/resources/docs/javascript/arrays"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">JavaScript Arrays</a>.

`.pop()` and `.push()` mutate the array on which they’re called.
However, there are times that we don’t want to mutate the original array
and we can use non-mutating array methods. Be sure to check the Docs to
understand the behavior of the method you are using.

Some arrays methods that are available to JavaScript developers include:
`.join()`, `.slice()`, `.splice()`, `.shift()`, `.unshift()`, and
`.concat()` amongst many others. Using these built-in methods makes it
easier to do some common tasks when working with arrays.

Below, we will explore some methods that we have not learned yet. We
will use these methods to edit a grocery list. As you complete the
steps, you can consult the
<a href="https://www.codecademy.com/resources/docs/javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Codecademy Docs</a> to learn what each method does!

### Instructions

**1.**

Use the `.shift()` method to remove the first item from the array
`groceryList`.

Log the new `groceryList` to the console.

Read about <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/shift"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.shift()</code> in Docs</a>.

**2.**

Under the code added in step 1, use the `.unshift()` method to add
`'popcorn'` to the beginning of your grocery list.

After calling `.unshift()` on `groceryList`, log `groceryList` to the
console.

You may wish to delete the `console.log()` statement from the previous
step.

Read about <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/unshift"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.unshift()</code> in Docs</a>.

**3.**

You’re in a hurry so you decide to ask a friend to help you with your
grocery shopping. You want him to pick up the `'bananas'`,
`'coffee beans'`, and `'brown rice'`.

Under the code you added for step 2, use `.slice()` to provide your
friend with a list of these three things.

Log this part of the list to the console. Unlike the two previous
checkpoints, you should do both of these steps in one line.

Read about <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/slice"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.slice()</code> in Docs</a>.

**4.**

After calling `.slice()` on `groceryList`, log the grocery list to the
console one more time.

Notice that the `groceryList` array still contains the same items it had
in Step 2. That means `.slice()` is non-mutating! You can confirm this
in the link in the previous step.

**5.**

Let’s find the index of a particular element in `groceryList` using
`.indexOf()`.

Call `.indexOf()` on `groceryList` to find the index of the element
`'pasta'` and save the returned value to a `const` variable named
`pastaIndex`.

Then log `pastaIndex` to the console. (You may remove the other
`console.log()` statements to declutter the terminal.)

Read about <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/indexOf"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.indexOf()</code> in Docs</a>.

### Solution

``` javascript
const groceryList = ['orange juice', 'bananas', 'coffee beans', 'brown rice', 'pasta', 'coconut oil', 'plantains'];

groceryList.shift();

console.log(groceryList);

groceryList.unshift('popcorn');

console.log(groceryList);

console.log(groceryList.slice(1, 4));

console.log(groceryList);

const pastaIndex = groceryList.indexOf('pasta');

console.log(pastaIndex);
```

    ## [
    ##   'bananas',
    ##   'coffee beans',
    ##   'brown rice',
    ##   'pasta',
    ##   'coconut oil',
    ##   'plantains'
    ## ]
    ## [
    ##   'popcorn',
    ##   'bananas',
    ##   'coffee beans',
    ##   'brown rice',
    ##   'pasta',
    ##   'coconut oil',
    ##   'plantains'
    ## ]
    ## [ 'bananas', 'coffee beans', 'brown rice' ]
    ## [
    ##   'popcorn',
    ##   'bananas',
    ##   'coffee beans',
    ##   'brown rice',
    ##   'pasta',
    ##   'coconut oil',
    ##   'plantains'
    ## ]
    ## 4

## Arrays and Functions

Throughout the lesson we went over arrays being mutable, or changeable.
Well what happens if we try to change an array inside a function? Does
the array keep the change after the function call or is it scoped to
inside the function?

Take a look at the following example where we call `.push()` on an array
inside a function. Recall, the `.push()` method mutates, or changes, an
array:

``` js
const flowers = ['peony', 'daffodil', 'marigold'];
 
function addFlower(arr) {
  arr.push('lily');
}
 
addFlower(flowers);
 
console.log(flowers); // Output: ['peony', 'daffodil', 'marigold', 'lily']
```

Let’s go over what happened in the example:

- The `flowers` array that has 3 elements.
- The function `addFlower()` has a parameter of `arr` uses `.push()` to
  add a `'lily'` element into `arr`.
- We call `addFlower()` with an argument of `flowers` which will execute
  the code inside `addFlower`.
- We check the value of `flowers` and it now includes the `'lily'`
  element! The array was mutated!

So when you pass an array into a function, if the array is mutated
inside the function, that change will be maintained outside the function
as well. You might also see this concept explained as
*pass-by-reference* since what we’re actually passing to the function is
a reference to where the variable memory is stored and changing the
memory.

### Instructions

**1.**

In **main.js**, there is an array `concept`. There is also a function
`changeArr` that will assign the element in index `3` of an array to
`'MUTATED'`. The function `changeArr` was called with an argument of
`concept`.

Underneath the function call, log `concept` to the console to check if
this reassignment mutated the array.

**2.**

Let’s double check what happens if we mutate an array using a built-in
method inside a function.

Under the `console.log()` statement, define another function named
`removeElement` that takes a parameter of `newArr`. Inside the function
body call `.pop()` on `newArr`.

**3.**

Call `removeElement()` with an argument of `concept`.

**4.**

After calling `removeElement(concept)`, check the value of `concept` by
logging it to console.

Notice that in both cases, the change to the array was maintained
outside of the function!

### Solution

``` javascript
const concept = ['arrays', 'can', 'be', 'mutated'];

function changeArr(arr){
  arr[3] = 'MUTATED';
}

changeArr(concept);

console.log(concept);

const removeElement = newArr => {
  newArr.pop()
}

removeElement(concept);

console.log(concept);
```

    ## [ 'arrays', 'can', 'be', 'MUTATED' ]
    ## [ 'arrays', 'can', 'be' ]

## Nested Arrays

Earlier we mentioned that arrays can store other arrays. When an array
contains another array it is known as a *nested array*. Examine the
example below:

``` js
const nestedArr = [[1], [2, 3]];
```

To access the nested arrays we can use bracket notation with the index
value, just like we did to access any other element:

``` js
const nestedArr = [[1], [2, 3]];
 
console.log(nestedArr[1]); // Output: [2, 3]
```

Notice that `nestedArr[1]` will grab the element in index 1 which is the
array `[2, 3]`. Then, if we wanted to access the elements within the
nested array we can *chain*, or add on, more bracket notation with index
values.

``` js
const nestedArr = [[1], [2, 3]];
 
console.log(nestedArr[1]); // Output: [2, 3]
console.log(nestedArr[1][0]); // Output: 2
```

In the second `console.log()` statement, we have two bracket notations
chained to `nestedArr`. We know that `nestedArr[1]` is the array
`[2, 3]`. Then to grab the first element from that array, we use
`nestedArr[1][0]` and we get the value of `2`.

### Instructions

**1.**

Let’s make a nested array! Create a variable `numberClusters`. Assign as
its value an array with three array elements.

- The first array element should hold the elements `1` and `2` in that
  order.
- The second array element should hold the elements `3` and `4` in that
  order.
- The third array element should hold the elements `5` and `6` in that
  order.

**2.**

Awesome, you made a nested array! Now declare a variable named `target`
using the `const` keyword and assign to access the element `6` inside
`numberClusters`.

### Solution

``` javascript
const numberClusters = [[1, 2], [3, 4], [5, 6]];

const target = numberClusters[2][1];
```

## Review Arrays

Nice work! In this lesson, we learned these concepts regarding arrays:

- Arrays are lists that store data in JavaScript.
- Arrays are created with brackets `[]`.
- Each item inside of an array is at a numbered position, or index,
  starting at `0`.
- We can access one item in an array using its index, with syntax like:
  `myArray[0]`.
- We can also change an item in an array using its index, with syntax
  like `myArray[0] = 'new string'`;
- Arrays have a `length` property, which allows you to see how many
  items are in an array.
- Arrays have their own methods, including `.push()` and `.pop()`, which
  add and remove items from an array, respectively.
- Arrays have many methods that perform different tasks, such as
  `.slice()` and `.shift()`, you can find documentation at the <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Mozilla Developer Network</a> website.
- Some built-in methods are mutating, meaning the method will change the
  array, while others are not mutating. You can always check the
  documentation.
- Variables that contain arrays can be declared with `let` or `const`.
  Even when declared with `const`, arrays are still mutable. However, a
  variable declared with `const` cannot be reassigned.
- Arrays mutated inside of a function will keep that change even outside
  the function.
- Arrays can be nested inside other arrays.
- To access elements in nested arrays chain indices using bracket
  notation.

Learning how to work with and manipulate arrays will help you work with
chunks of data!

### Instructions

Looking for more ways to practice? Consider trying these:

- Use the `.length` property to find the last element of an array.
- Use the other methods in <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN documentation</a> not mentioned in
  the lesson.
- Take all the elements in an array and make a string.
- Find the return value of calling `.push()` on an array.
- Nest an array within an array.
- Access an element in the nested array.

# Secret Message

Using array methods, you will transform an array of strings into a
secret message!

You should consult the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network (MDN)</a> for
reference on any method with which you are not familiar.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

1\.

Use an array method to remove the last string of the array
`secretMessage`.

2\.

Great! You can check your work by logging the `.length` of the array.

At this point, the length should be 1 less than the original length.

3\.

Use an array method to add the words `to` and `Program` as separate
strings to the end of the `secretMessage` array.

4\.

Change the word `easily` to the word `right` by accessing the index and
replacing it.

5\.

Use an array method to remove the first string of the array.

6\.

Use an array method to add the string `Programming` to the beginning of
the array.

7\.

Use an array method to remove the strings `get`, `right`, `the`,
`first`, `time,`, and replace them with the single string `know,`.

8\.

On one line, use `console.log()` and `.join()` to print the secret
message as a sentence.

### [Solution](secret-message)

``` javascript
let secretMessage = [
    "Learning",
    "is",
    "not",
    "about",
    "what",
    "you",
    "get",
    "easily",
    "the",
    "first",
    "time,",
    "it",
    "is",
    "about",
    "what",
    "you",
    "can",
    "figure",
    "out.",
    "-2015,",
    "Chris",
    "Pine,",
    "Learn",
    "JavaScript",
  ];
  
  secretMessage.pop();
  secretMessage.push("to", "Program");
  secretMessage[secretMessage.indexOf("easily")] = "right";
  secretMessage.shift();
  secretMessage.unshift("Programming");
  secretMessage.splice(secretMessage.indexOf("get"), 5, "know");
  console.log(secretMessage.join(" "));
```

    ## Programming is not about what you know it is about what you can figure out. -2015, Chris Pine, Learn to Program

# Loops

## Loops

A *loop* is a programming tool that repeats a set of instructions until
a specified condition, called a *stopping condition* is reached. As a
programmer, you’ll find that you rely on loops all the time! You’ll hear
the generic term *iterate* when referring to loops; iterate simply means
“to repeat”.

When we need to reuse a task in our code, we often bundle that action in
a function. Similarly, when we see that a process has to repeat multiple
times in a row, we write a loop. Loops allow us to create efficient code
that automates processes to make scalable, manageable programs.

As illustrated in the diagram, loops iterate or repeat an action until a
specific condition is met. When the condition is met, the loop stops and
the computer moves on to the next part of the program.

### Instructions

Check out the diagram to see how loops work in programming.

### Solution

<img src="https://content.codecademy.com/courses/learn-javascript-loops/loops_abatraction_v5.svg" alt="diagram representing the decision to eat based on whether or not you are hungry—conceptually similar to a conditional" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Repeating Tasks Manually

Before we write our own loops let’s take a moment to develop an
appreciation for loops. The best way to do that is by showing you how
cumbersome it would be if a repeated task required you to type out the
same code every single time.

### Instructions

**1.**

Create the variable `vacationSpots`, and assign its value to an array of
three strings naming places you’d like to visit.

**2.**

Next, `console.log()` each item in `vacationSpots`. Since we don’t know
loops yet, we have to `console.log()` each element in the array
separately.

**3.**

Nice work! Now imagine that the vacation list had 100 places on it—
logging each array element to the console by hand would be a tedious
task! In the next exercise, we will learn how to make things more
efficient with `for` loops.

### Solution

``` javascript
// Write your code below
const vacationSpots = ['Mozambique', 'Thailand', 'Bolivia'];

console.log(vacationSpots[0]);
console.log(vacationSpots[1]);
console.log(vacationSpots[2]);
```

    ## Mozambique
    ## Thailand
    ## Bolivia

## The For Loop

Instead of writing out the same code over and over, loops allow us to
tell computers to repeat a given block of code on its own. One way to
give computers these instructions is with a <a
href="https://www.codecademy.com/resources/docs/javascript/loops?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code class="code__2rdF32qjRVp7mMVBHuPwDS">for</code>
loop</a>.

The typical `for` loop includes an *iterator variable* that usually
appears in all three expressions. The iterator variable is initialized,
checked against the stopping condition, and assigned a new value on each
loop iteration. Iterator variables can have any name, but it’s best
practice to use a descriptive variable name.

A `for` loop contains three expressions separated by `;` inside the
parentheses:

1.  an *initialization* starts the loop and can also be used to declare
    the iterator variable.
2.  a *stopping condition* is the condition that the iterator variable
    is evaluated against— if the condition evaluates to `true` the code
    block will run, and if it evaluates to `false` the code will stop.
3.  an *iteration statement* is used to update the iterator variable on
    each loop.

The `for` loop syntax looks like this:

``` js
for (let counter = 0; counter < 4; counter++) {
  console.log(counter);
}
```

In this example, the output would be the following:

    0
    1
    2
    3

Let’s break down the example:

- The initialization is `let counter = 0`, so the loop will start
  counting at `0`.
- The stopping condition is `counter < 4`, meaning the loop will run as
  long as the iterator variable, `counter`, is less than 4.
- The iteration statement is `counter++`. This means after each loop,
  the value of `counter` will increase by 1. For the first iteration
  `counter` will equal `0`, for the second iteration `counter` will
  equal 1, and so on.
- The code block is inside of the curly braces, `console.log(counter)`,
  will execute until the condition evaluates to `false`. The condition
  will be false when `counter` is greater than or equal to 4 — the point
  that the condition becomes false is sometimes called the *stop
  condition*.

This `for` loop makes it possible to write `0`, `1`, `2`, and `3`
programmatically.

### Instructions

**1.**

Now, make your own! Create a program that loops from 5 to 10 and logs
each number to the console.

### Solution

``` javascript
// Write your code below
for (let counter = 5; counter < 11; counter++) {
  console.log(counter);
}
```

    ## 5
    ## 6
    ## 7
    ## 8
    ## 9
    ## 10

## Looping in Reverse

What if we want the `for` loop to log `3`, `2`, `1`, and then `0`? With
simple modifications to the expressions, we can make our loop run
backward!

To run a <a
href="https://www.codecademy.com/resources/docs/javascript/loops?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">backward <code
class="code__2rdF32qjRVp7mMVBHuPwDS">for</code> loop</a>, we must:

- Set the iterator variable to the highest desired value in the
  initialization expression.
- Set the stopping condition for when the iterator variable is less than
  the desired amount.
- The iterator should decrease in intervals after each iteration.

We’ll practice by changing the `for` we wrote previously to now go in
reverse. When writing/changing loops, there is a chance that our
stopping condition isn’t met and we get a dreaded *infinite loop* which
essentially stops our programming from running anything else! To exit
out of an infinite loop in an exercise, refresh the page - then fix the
code for your loop.

### Instructions

**1.**

Make a `for` loop that loops backwards printing `3` to `0` to the
console. Use the `>=` comparison operator in your stopping condition and
the `--` operator in your iteration statement.

### Solution

``` javascript
// The loop below loops from 0 to 3. Edit it to loop backwards from 3 to 0
for (let counter = 3; counter >= 0; counter--){
  console.log(counter);
}
```

    ## 3
    ## 2
    ## 1
    ## 0

## Looping through Arrays

`for` loops are very handy for iterating over data structures. For
example, we can use a `for` loop to perform the same operation on each
element on an array. <a
href="https://www.codecademy.com/resources/docs/javascript/arrays?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Arrays</a> hold lists of data, like customer names or
product information. Imagine we owned a store and wanted to increase the
price of every product in our catalog. That could be a lot of repeating
code, but by using a `for` loop to iterate through the array we could
accomplish this task easily.

To loop through each element in an array, a `for` loop should use the
array’s `.length` property in its condition.

Check out the example below to see how `for` loops iterate on arrays:

``` js
const animals = ['Grizzly Bear', 'Sloth', 'Sea Lion'];
for (let i = 0; i < animals.length; i++){
  console.log(animals[i]);
}
```

This example would give you the following output:

    Grizzly Bear
    Sloth
    Sea Lion

In the loop above, we’ve named our iterator variable `i`. This is a
variable naming convention you’ll see in a lot of loops. When we use `i`
to iterate through arrays we can think of it as being short-hand for the
word **i**ndex. Notice how our stopping condition checks that `i` is
less than `animals.length`. Remember that arrays are zero-indexed, the
index of the last element of an array is equivalent to the length of
that array minus 1. If we tried to access an element at the index of
`animals.length` we will have gone too far!

With `for` loops, it’s easier for us to work with elements in arrays.

### Instructions

**1.**

Write a `for` loop that iterates through our `vacationSpots` array using
`i` as the iterator variable.

Inside the block of the `for` loop, use `console.log()` to log each
element in the `vacationSpots` array after the string
`'I would love to visit '`. For example, the first round of the loop
should print `'I would love to visit Bali'` to the console.

### Solution

``` javascript
const vacationSpots = ['Bali', 'Paris', 'Tulum'];

// Write your code below
for (let i = 0; i < vacationSpots.length; i++ ){
  console.log('I would love to visit ' + vacationSpots[i]);
}
```

    ## I would love to visit Bali
    ## I would love to visit Paris
    ## I would love to visit Tulum

## Nested Loops

When we have a loop running inside another loop, we call that a *nested
loop*. One use for a nested `for` loop is to compare the elements in two
arrays. For each round of the outer `for` loop, the inner `for` loop
will run completely.

Let’s look at an example of a nested `for` loop:

``` js
const myArray = [6, 19, 20];
const yourArray = [19, 81, 2];
for (let i = 0; i < myArray.length; i++) {
  for (let j = 0; j < yourArray.length; j++) {
    if (myArray[i] === yourArray[j]) {
      console.log('Both arrays have the number: ' + yourArray[j]);
    }
  }
}
```

Let’s think about what’s happening in the nested loop in our example.
For each element in the outer loop array, `myArray`, the inner loop will
run in its entirety comparing the current element from the outer array,
`myArray[i]`, to each element in the inner array, `yourArray[j]`. When
it finds a match, it prints a string to the console.

Now it’s your turn to write a nested loop!

**Note:** To exit out of an infinite loop in an exercise, **refresh the
page** - then fix the code for your loop(s).

### Instructions

**1.**

Imagine you’re a big-wig programmer for a social media platform! You
have been tasked with building a prototype for a mutual followers
program. You’ll need two arrays of “friends” from two mock users so that
you can extract the names of the followers who exist in both lists. Make
a variable called `bobsFollowers` and set it equal to an array with four
strings representing the names of Bob’s friends.

**2.**

Make a variable called `tinasFollowers` and set it equal to an array
with three strings representing the names of Tina’s friends. Make
exactly two of these the same as two of the friends in the
`bobsFollowers` array.

**3.**

Create a third variable named `mutualFollowers` and set it to an empty
array.

**4.**

Create a nested loop that iterates through `bobsFollowers` as the array
for the outer loop and `tinasFollowers` as the array for the inner loop.
If the current element from the outer loop is the same as the current
element from the inner loop, push that element into the
`mutualFollowers` array.

### Solution

``` javascript
// Write your code below
let bobsFollowers = ['Joe', 'Marta', 'Sam', 'Erin'];
let tinasFollowers = ['Sam', 'Marta', 'Elle'];
let mutualFollowers = [];

for (let i = 0; i < bobsFollowers.length; i++) {
  for (let j = 0; j < tinasFollowers.length; j++) {
    if (bobsFollowers[i] === tinasFollowers[j]) {
      mutualFollowers.push(bobsFollowers[i]);
    }
  }
};
```

## The While Loop

You’re doing great! We’re going to teach you about a different type of
loop: the <a
href="https://www.codecademy.com/resources/docs/javascript/loops?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code class="code__2rdF32qjRVp7mMVBHuPwDS">while</code>
loop</a>. To start, let’s convert a `for` loop into a `while` loop:

``` js
// A for loop that prints 1, 2, and 3
for (let counterOne = 1; counterOne < 4; counterOne++){
  console.log(counterOne);
}
 
// A while loop that prints 1, 2, and 3
let counterTwo = 1;
while (counterTwo < 4) {
  console.log(counterTwo);
  counterTwo++;
}
```

Let’s break down what’s happening with our `while` loop syntax:

- The `counterTwo` variable is declared before the loop. We can access
  it inside our `while` loop since it’s in the global scope.
- We start our loop with the keyword `while` followed by our stopping
  condition, or *test condition*. This will be evaluated before each
  round of the loop. While the condition evaluates to `true`, the block
  will continue to run. Once it evaluates to `false` the loop will stop.
- Next, we have our loop’s code block which prints `counterTwo` to the
  console and increments `counterTwo`.

What would happen if we didn’t increment `counterTwo` inside our block?
If we didn’t include this, `counterTwo` would always have its initial
value, `1`. That would mean the testing condition `counterTwo < 4` would
always evaluate to `true` and our loop would never stop running!
Remember, this is called an *infinite loop* and it’s something we always
want to **avoid**. Infinite loops can take up all of your computer’s
processing power potentially freezing your computer.

So you may be wondering when to use a `while` loop! The syntax of a
`while` loop is ideal when we don’t know in advance how many times the
loop should run. Think of eating like a `while` loop: when you start
taking bites, you don’t know the exact number you’ll need to become
full. Rather you’ll eat `while` you’re hungry. In situations when we
want a loop to execute an undetermined number of times, `while` loops
are the best choice.

### Instructions

**1.**

Below the `cards` array, declare a variable, `currentCard`, with the
`let` keyword but don’t assign it a value.

**2.**

Create a `while` loop with a condition that checks if the `currentCard`
does not have that value `'spade'`.

Inside the block of your `while` loop, add the following line of code:

``` js
currentCard = cards[Math.floor(Math.random() * 4)];
```

`Math.floor(Math.random() * 4)` will give us a random number from `0` to
`3`. We’ll use this number to index the `cards` array, and assign the
value of `currentCard` to a random element from that array.

**3.**

Awesome! Your loop is running, but you can’t tell because it doesn’t
output anything. Let’s add a `console.log()` statement to our `while`
block. Inside the block, after you assign `currentCard` a new value, log
`currentCard` to the console.

For fun you can run your code a few times and see how the output
changes!

### Solution

``` javascript
const cards = ['diamond', 'spade', 'heart', 'club'];

// Write your code below
let currentCard;

while ( currentCard != 'spade') {
  currentCard = cards[Math.floor(Math.random() * 4)];
    console.log(currentCard);
}
```

    ## club
    ## spade

## Do…While Statements

In some cases, you want a piece of code to run at least once and then
loop based on a specific condition after its initial run. This is where
the `do...while` statement comes in.

A <a
href="https://www.codecademy.com/resources/docs/javascript/loops?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">do…while</code></a> statement says
to do a task once and then keep doing it until a specified condition is
no longer met. The syntax for a `do...while` statement looks like this:

``` js
let countString = '';
let i = 0;
 
do {
  countString = countString + i;
  i++;
} while (i < 5);
 
console.log(countString);
```

In this example, the code block makes changes to the `countString`
variable by appending the string form of the `i` variable to it. First,
the code block after the `do` keyword is executed once. Then the
condition is evaluated. If the condition evaluates to `true`, the block
will execute again. The looping stops when the condition evaluates to
`false`.

Note that the `while` and `do...while` loop are different! Unlike the
`while` loop, `do...while` will run at least once whether or not the
condition evaluates to `true`.

``` js
const firstMessage = 'I will print!';
const secondMessage = 'I will not print!'; 
 
// A do while with a stopping condition that evaluates to false
do {
 console.log(firstMessage)
} while (true === false);
 
// A while loop with a stopping condition that evaluates to false
while (true === false){
  console.log(secondMessage)
};
 
```

**Note:** To exit out of an infinite loop in an exercise, **refresh the
page** - then fix the code for your loop(s).

### Instructions

**1.**

We’d like a program to simulate part of the cake-baking process.
Depending on the recipe, a different number of cups of sugar is
required. Create the variable `cupsOfSugarNeeded`, and assign it a
number value of your choosing.

The cups of sugar must be added to the batter one at a time. Declare the
variable `cupsAdded` and assign it the value `0`.

**2.**

We have a sweet tooth, so we want to add at least one cup of sugar to
the batter even if the value of `cupsOfSugarNeeded` is `0`.

Create a `do...while` loop which increments `cupsAdded` by one while
`cupsAdded` is less than `cupsOfSugarNeeded`.

In order to help us visualize the output on each iteration of the loop,
add a `console.log` within the `do...while` block and log the value of
`cupsAdded`.

### Solution

``` javascript
// Write your code below
let cupsOfSugarNeeded = 3;
let cupsAdded = 0;

do {
 cupsAdded++
 console.log(cupsAdded + ' cup was added') 
} while (cupsAdded < cupsOfSugarNeeded);
```

    ## 1 cup was added
    ## 2 cup was added
    ## 3 cup was added

## The break Keyword

Imagine we’re looking to adopt a dog. We plan to go to the shelter every
day for a year and then give up. But what if we meet our dream dog on
day 65? We don’t want to keep going to the shelter for the next 300 days
just because our original plan was to go for a whole year. In our code,
when we want to stop a loop from continuing to execute even though the
original stopping condition we wrote for our loop hasn’t been met, we
can use the keyword `break`.

The <a
href="https://www.codecademy.com/resources/docs/javascript/loops?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code class="code__2rdF32qjRVp7mMVBHuPwDS">break</code>
keyword</a> allows programs to “break” out of the loop from within the
loop’s block.

Let’s check out the syntax of a `break` keyword:

``` js
for (let i = 0; i < 99; i++) {
  if (i > 2 ) {
     break;
  }
  console.log('Banana.');
}
 
console.log('Orange you glad I broke out the loop!');
```

This is the output for the above code:

    Banana.
    Banana.
    Banana.
    Orange you glad I broke out the loop!

`break` statements can be especially helpful when we’re looping through
large data structures! With breaks, we can add test conditions besides
the stopping condition, and exit the loop when they’re met.

### Instructions

**1.**

Log each element from `rapperArray` in a `for` loop with the iterator
variable `i`.

**2.**

After the `for` loop, log the string
`"And if you don't know, now you know."` to the console. Note: since
there’s a single quote character, `'`, in our string, we can use double
quotes around the string to make sure character prints.

**3.**

Add a `break` inside your loop’s block that breaks out of the loop if
the element at the current index in the `rapperArray` is
`'Notorious B.I.G.'`. Log the element before breaking out of the loop.

### Solution

``` javascript
const rapperArray = ["Lil' Kim", "Jay-Z", "Notorious B.I.G.", "Tupac"];

// Write your code below
for (let i = 0; i < rapperArray.length; i++){
  console.log(rapperArray[i]);
  if (rapperArray[i] === 'Notorious B.I.G.'){
    break;
  }
}

console.log("And if you don't know, now you know.");
```

    ## Lil' Kim
    ## Jay-Z
    ## Notorious B.I.G.
    ## And if you don't know, now you know.

## Review

Great job! In this lesson, we learned how to write cleaner code with
loops. You now know:

- Loops perform repetitive actions so we don’t have to code that process
  manually every time.
- How to write `for` loops with an iterator variable that increments or
  decrements
- How to use a `for` loop to iterate through an array
- A nested `for` loop is a loop inside another loop
- `while` loops allow for different types of stopping conditions
- Stopping conditions are crucial for avoiding infinite loops.
- `do...while` loops run code at least once— only checking the stopping
  condition after the first execution
- The `break` keyword allows programs to leave a loop during the
  execution of its block

### Solution

``` javascript
let groceryList = ['orange juice', 'bananas', 'coffee beans', 'brown rice', 'pasta', 'coconut oil', 'plantains'];
```

# Whale Talk

Take a phrase like ‘turpentine and turtles’ and translate it into its
“whale talk” equivalent: ‘UUEEIEEAUUEE’.

There are a few simple rules for translating text to whale language:

1.  There are no consonants. Only vowels excluding “y”.
2.  The `u`’s and `e`’s are extra long, so we must double them in our
    program.

Once we have converted text to the whale language, the result is sung
slowly, as is a custom in the ocean.

To accomplish this translation, we can use our knowledge of loops. Let’s
get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

1\.

Create a variable named `input` that is equal to any phrase you’d like.
This variable will contain the text you want to translate into “whale
talk”.

2\.

Whales only speak with the vowels, “a”, “e”, “i”, “o”, and “u”. Using
these lowercase letters, create an array named `vowels`. This array will
not be updated so be sure to choose the appropriate declaration keyword.

Note: The use of this array will be more apparent within the following
steps.

3\.

Create a variable named `resultArray` and set it equal to an empty
array: `[]`. This will serve as a place to store the vowels from the
`input` string.

4\.

Create a loop to iterate through each letter of the `input` variable
text. In a later step, we will compare each letter with our `vowels`
array.

5\.

To check your work, log the iterator numbered position inside the `for`
loop and run your code. This should count the number of characters in
your `input` string.

Comment out this code when you’re ready to move on.

6\.

Create a nested `for` loop inside of the `for` loop you just wrote. Make
the inner loop iterate through the `vowels` array each time the outer
loop runs.

This will enable you to check each letter of `input` against all the
`vowels` elements during each iteration.

7\.

To check your work, log the iterator number positions inside the inner
`for` loop and run your code. You should see `0` through `4` repeatedly
because `vowels` is 5 elements long.

8\.

Inside the second `for` loop, write a code block that compares the
`input` letter to every letter in the `vowels` array.

Note: To check that everything is working properly, log letter matches
to the console.

9\.

Now instead of just logging the letters, add them to the results array.

Note: To check your work use `console.log()` to print your
`resultArray`. The letters you logged to the console in step 8 should be
now included in your `resultArray`.

10\.

Whales double their `e`’s and the `u`’s in their language.

Write an `if` statement that checks if each letter in the `input` string
is equal to `'e'`. If so, use the `.push()` method to add `input[i]` to
the `resultArray`.

Note: This statement belongs before the inner `for` loop block inside
the outer `for` loop. This is because you only want to perform this
check once for every letter in the `input`.

11\.

Next, you want to double the letter `u`.

12\.

At the bottom of the program, log the `resultArray` to the console.

13\.

Currently, `resultArray` outputs an array of characters. To produce
proper whale language, we want to capitalize the array elements and put
them together as one string.

Declare a variable `resultString` that joins our `resultArray` into a
single string and capitalizes all of its letters.

14\.

Run the program and sing the output out loud — you officially speak
whale!

Note: To confirm, if you change the value of `input` to ‘turpentine and
turtles’, the whale version would read: `'UUEEIEEAUUEE'`.

### [Solution](whale-talk)

``` javascript
const input = "turpentine and turtles";
const vowels = ["a", "e", "i", "o", "u"];
let resultArray = [];

for (let i = 0; i < input.length; i++) {
  for (let j = 0; j < vowels.length; j++) {
    if (input[i] === vowels[j]) {
      resultArray.push(input[i]);
    }
  }
  if (input[i] === "e") {
    resultArray.push(input[i]);
  }
  if (input[i] === "u") {
    resultArray.push(input[i], input[i]);
  }
}

let resultString = resultArray.join("").toUpperCase();
console.log(resultString);
```

    ## UUUEEIEEAUUUEE

# The for…of Loop

A cleaner syntax for iterating through items, one by one.

## Introduction

A common task you will encounter when programming is iterating over
arrays or array-like objects. As a JavaScript programmer, you may
already be familiar with the `for` loop. This loop requires a counter,
an iteration statement, and a stopping condition to control looping.
While powerful, the `for` loop can be a bit cumbersome to set up,
introduces room for errors, and could lead to difficult-to-read code.

As a remedy to some of the `for` loop’s shortcomings, the
<a href="https://www.codecademy.com/articles/javascript-versions"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">ES6 version</a> of JavaScript introduced the shorter and
more concise `for...of` loop. This article will outline the benefits of
using `for...of` loops and walk through how to use a `for...of` loop to
iterate through arrays and strings.

## for loop vs for…of loop

Here is an example of iterating over each element in an array using a
traditional `for` loop with an index variable:

``` js
const hobbies = ['singing', 'eating', 'quidditch', 'writing'];
 
for (let i = 0; i < hobbies.length; i++) {
  console.log(`I enjoy ${hobbies[i]}.`);
}
```

And here is an example of iterating through the same array using a
`for...of` loop:

``` js
const hobbies = ['singing', 'eating', 'quidditch', 'writing'];
 
for (const hobby of hobbies) {
  console.log(`I enjoy ${hobby}.`);
}
```

Both examples print out the same thing:

``` js
I enjoy singing.
I enjoy eating.
I enjoy quidditch.
I enjoy writing.
```

Notice how the `for...of` loop has a simpler syntax which can be
beneficial for code readability, especially in larger and more complex
applications.

## Iterating Through an Array

One of the primary uses of the `for...of` loop is iterating through the
items of an array. Let’s breakdown the syntax with a new example:

``` js
const fruits = ['oranges', 'apples', 'grapes'];
 
for (const fruit of fruits) {
  console.log(fruit);
}
```

Which prints out:

``` js
oranges
apples
grapes
```

Let’s break down the example:

1.  In our code snippet, we have `fruits`, which is the array we want to
    iterate over.

2.  We set up our `for...of` loop: `for (const fruit of fruits)`. This
    specifies that we will iterate through the array (`fruits`) for each
    item (`fruit`) in the array.

3.  The variable `fruit` is assigned a different value on each iteration
    of the loop. The variable may be declared with the keywords:
    `const`, `let`, or `var`. You can name the variable anything but it
    is helpful to use a name related to the iterable object. In the
    example, notice the placeholder variable uses the singular form of a
    plural array, `fruit` of `fruits`. Here are some other examples:
    `person` of a `people` array, `puppy` of a `puppies` array, etc.

4.  For each item in the array, we print the value to the console.

5.  The loop will start with the first element of the array and stop on
    the last element.

There is no need to set up additional variables to store an index with a
`for...of` loop. The loop will iterate over each element in the iterable
object and terminate itself when it reaches the last item — so you don’t
need to track the number of items in the array. In our example, we used
an array, but `for...of` loops also work with strings, sets, and other
array-like objects.

Therefore, you should opt for a standard `for` loop if you need to
access the indices or need finer control to determine what elements you
want to loop over.

## Iterating Through a String

The `for...of` can also be used to iterate over strings. Here is an
example:

``` js
const username = 'joe';
 
for (const char of username) {
  console.log(char);
}
```

Which prints out:

``` js
j
o
e
```

Notice the similarities between iterating through a string and iterating
through an array. The `for...of` loop does not change in structure
regardless of the iterable object used.

## Break and Continue

`for...of` has the advantage of setting up most of your loop parameters
for you, but sometimes it is necessary to reclaim some control of how
iteration is managed. One way of doing this is using JavaScript’s
`break` and `continue` statements.

The `break` statement can be used to jump out of a loop. For example:

``` js
const strangeBirds = ['Shoebill', 'Cockatrice', 'Basan', 'Terrorbird','Parotia','Kakapo'];
 
for (const bird of strangeBirds) {
  if (bird === 'Basan'){ 
    break; 
  }
  console.log(bird);
}
```

Will iterate through the array until it encounters the great mythical
<a href="https://en.wikipedia.org/wiki/Basan_(legendary_bird)"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Basan</a>, then it will exit. This will
print out:

``` js
Shoebill
Cockatrice
```

The `continue` statement is used to skip one iteration of the loop. For
example:

``` js
const strangeBirds = ['Shoebill', 'Cockatrice', 'Basan', 'Cow', 'Terrorbird', 'Parotia', 'Kakapo'];
 
for (const bird of strangeBirds) {
  if  (bird === 'Cow'){
    continue;
  }
  console.log(bird);
}
```

Will iterate through the array and print out every value except the
suspected imposter:

``` js
Shoebill
Cockatrice
Basan
Terrorbird
Parotia
Kakapo
```

## Use Case: for loop vs for…of loop

You might now be wondering, why use a `for` loop at all if a `for...of`
loop is so much simpler? Well, the `for...of` loop is not a complete
replacement for the `for` loop. Take a look at the following code
snippet:

``` js
const nums = [1, 2, 3];
 
for (let i = nums.length - 1; i >= 0; i--) {
  console.log(nums[i]);
}
 
console.log('Time is up!');
```

Which prints:

``` js
3
2
1
Time is up! 
```

In the example above, we iterated through an array in reverse! You would
not be able to use a `for...of` loop to do the same thing. However, with
a regular `for` loop, you have access to indices of the elements,
determine a stopping condition, and the ability to set a counter. Keep
these factors in mind when deciding what loop is right for your
circumstance.

## Exercise: Spelling Wizard

Now that we’ve shown you how to set up and use a `for...of` loop, let’s
practice with a code challenge by writing some code yourself.

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

## Exercise: Pokemon Catcher

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

## Review

Congratulations! You have now been introduced to `for...of` and have
successfully used it. In this article, you have learned how to do the
following:

- Understand the benefits of `for...of`.
- Create a `for...of` loop from scratch.
- Use a `for...of` loop to iterate over characters in strings and
  elements in arrays.
- Use `break` and `continue` to control looping in a `for...of` loop.

There are other `for` type loops in JavaScript that exist for different
purposes, such as <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...in"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">for…in</code></a>. Be careful to
choose the correct type of loop for your situation. The next time you
need to iterate through an array, string, or array-like object and don’t
need to access the index, consider trying out `for...of` to keep your
code succinct and readable.

# Objects

## Introduction to Objects

It’s time to learn more about the basic structure that permeates nearly
every aspect of JavaScript programming: objects.

You’re probably already more comfortable with objects than you think,
because JavaScript loves objects! Many components of the language are
actually objects under the hood, and even the parts that aren’t— like
strings or numbers— can still act like objects in some instances.

There are only seven fundamental data types in JavaScript, and six of
those are the primitive data types: string, number, boolean, null,
undefined, and symbol. With the seventh type, objects, we open our code
to more complex possibilities. We can use JavaScript objects to model
real-world things, like a basketball, or we can use objects to build the
data structures that make the web possible.

At their core, JavaScript objects are containers storing related data
and functionality, but that deceptively simple task is extremely
powerful in practice. You’ve been using the power of objects all along,
but now it’s time to understand the mechanics of objects and start
making your own!

### Solution

<img src="https://content.codecademy.com/courses/learn-javascript-objects/javascript_illo.svg" alt="Apple, baby, table, and worm visualized as JavaScript Objects" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Creating Object Literals

Objects can be assigned to variables just like any JavaScript type. We
use curly braces, `{}`, to designate an *object literal*:

``` js
let spaceship = {}; // spaceship is an empty object
```

We fill an object with unordered data. This data is organized into
*key-value pairs*. A key is like a variable name that points to a
location in memory that holds a value.

<img
src="https://content.codecademy.com/courses/learn-javascript-objects/key%20value.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" />

A key’s value can be of any data type in the language including
functions or other objects.

We make a key-value pair by writing the key’s name, or *identifier*,
followed by a colon and then the value. We separate each key-value pair
in an object literal with a comma (`,`). Keys are strings, but when we
have a key that does not have any special characters in it, JavaScript
allows us to omit the quotation marks:

<img
src="https://static-assets.codecademy.com/Courses/learn-javascript-objects/javascript_object.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" />

``` js
// An object literal with two key-value pairs
let spaceship = {
  'Fuel Type': 'diesel',
  color: 'silver'
};
```

The `spaceship` object has two properties `Fuel Type` and `color`.
`'Fuel Type'` has quotation marks because it contains a space character.

Let’s make some objects!

### Instructions

**1.**

The `spaceship` we have so far looks good but, unfortunately, is not
very fast at hyperspace travel due to having an inferior fuel source.
Make a new spaceship object named `fasterShip` with the same `color` as
`spaceship` but with a `Fuel Type` equal to `'Turbo Fuel'`.

### Solution

``` javascript
// Write your fasterShip object literal below

let fasterShip = {
  'Fuel Type': 'Turbo Fuel',
  color: 'silver'
};
```

## Accessing Properties

There are two ways we can access an object’s property. Let’s explore the
first way— dot notation, `.`.

You’ve used dot notation to access the properties and methods of
built-in objects and data instances:

``` js
'hello'.length; // Returns 5
```

With property dot notation, we write the object’s name, followed by the
dot operator and then the property name (key):

``` js
let spaceship = {
  homePlanet: 'Earth',
  color: 'silver'
};
spaceship.homePlanet; // Returns 'Earth',
spaceship.color; // Returns 'silver',
```

<img
src="https://content.codecademy.com/courses/learn-javascript-objects/object%20dot%20notation.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" />

If we try to access a property that does not exist on that object,
`undefined` will be returned.

``` js
spaceship.favoriteIcecream; // Returns undefined
```

Let’s get some more practice using dot notation on an object!

### Instructions

**1.**

Let’s use the dot operator to access the value of `numCrew` from the
`spaceship` object in the code editor. Create a variable `crewCount` and
assign the `spaceship`’s `numCrew` property to it.

**2.**

Again using the dot operator, create a variable `planetArray` and assign
the `spaceship`’s `flightPath` property to it.

### Solution

``` javascript
let spaceship = {
  homePlanet: 'Earth',
  color: 'silver',
  'Fuel Type': 'Turbo Fuel',
  numCrew: 5,
  flightPath: ['Venus', 'Mars', 'Saturn']
};

// Write your code below

let crewCount = spaceship.numCrew;

let planetArray = spaceship.flightPath;
```

## Bracket Notation

The second way to access a key’s value is by using bracket notation,
`[ ]`.

You’ve used bracket notation when indexing an array:

``` js
['A', 'B', 'C'][0]; // Returns 'A'
```

To use bracket notation to access an object’s property, we pass in the
property name (key) as a string.

<img
src="https://content.codecademy.com/courses/learn-javascript-objects/object%20access%20bracket.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" />

We **must** use bracket notation when accessing keys that have numbers,
spaces, or special characters in them. Without bracket notation in these
situations, our code would throw an error.

``` js
let spaceship = {
  'Fuel Type': 'Turbo Fuel',
  'Active Duty': true,
  homePlanet: 'Earth',
  numCrew: 5
};
spaceship['Active Duty'];   // Returns true
spaceship['Fuel Type'];   // Returns  'Turbo Fuel'
spaceship['numCrew'];   // Returns 5
spaceship['!!!!!!!!!!!!!!!'];   // Returns undefined
```

With bracket notation you can also use a variable inside the brackets to
select the keys of an object. This can be especially helpful when
working with functions:

``` js
let returnAnyProp = (objectName, propName) => objectName[propName];
 
returnAnyProp(spaceship, 'homePlanet'); // Returns 'Earth'
```

If we tried to write our `returnAnyProp()` function with dot notation
(`objectName.propName`) the computer would look for a key of
`'propName'` on our object and not the value of the `propName`
parameter.

Let’s get some practice using bracket notation to access properties!

### Instructions

**1.**

Let’s use bracket notation to access the value of `'Active Mission'`
from the `spaceship` object in the code editor. Create a variable
`isActive` and assign the `spaceship`’s `'Active Mission'` property to
it.

**2.**

Using bracket notation and the `propName` variable provided,
`console.log()` the value of the `'Active Mission'` property.

### Solution

``` javascript
let spaceship = {
  'Fuel Type' : 'Turbo Fuel',
  'Active Mission' : true,
  homePlanet : 'Earth', 
  numCrew: 5
 };

let propName =  'Active Mission';

// Write your code below

let isActive = spaceship['Active Mission'];

console.log(spaceship[propName]);
```

    ## true

## Property Assignment

Once we’ve defined an object, we’re not stuck with all the properties we
wrote. Objects are *mutable* meaning we can update them after we create
them!

We can use either dot notation, `.`, or bracket notation, `[]`, and the
assignment operator, `=` to add new key-value pairs to an object or
change an existing property.

<img
src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/objects/object_property_assignment.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="diagram showing how an object followed by brackets ([]) with the property name as a string can be reassigned to a new value. This same idea applies for accessing a property using dot notation which has the object name, followed by a dot and the name of the property" />

One of two things can happen with property assignment:

- If the property already exists on the object, whatever value it held
  before will be replaced with the newly assigned value.
- If there was no property with that name, a new property will be added
  to the object.

It’s important to know that although we can’t reassign an object
declared with `const`, we can still mutate it, meaning we can add new
properties and change the properties that are there.

``` js
const spaceship = {type: 'shuttle'};
spaceship = {type: 'alien'}; // TypeError: Assignment to constant variable.
spaceship.type = 'alien'; // Changes the value of the type property
spaceship.speed = 'Mach 5'; // Creates a new key of 'speed' with a value of 'Mach 5'
```

You can delete a property from an object with the `delete` operator.

``` js
const spaceship = {
  'Fuel Type': 'Turbo Fuel',
  homePlanet: 'Earth',
  mission: 'Explore the universe' 
};
 
delete spaceship.mission;  // Removes the mission property
```

### Instructions

**1.**

Reassign the `color` property of the `spaceship` object to have a value
of `'glorious gold'`

**2.**

Without changing lines 1 - 6, add a `numEngines` property with a numeric
value between 1 and 10 to the `spaceship` object.

**3.**

Use the `delete` operator to remove the `'Secret Mission'` property from
the `spaceship` object.

### Solution

``` javascript
let spaceship = {
  'Fuel Type' : 'Turbo Fuel',
  homePlanet : 'Earth',
  color: 'silver',
  'Secret Mission' : 'Discover life outside of Earth.'
};

// Write your code below

spaceship.color = 'glorious gold';

spaceship.numEngines = 9;

delete spaceship['Secret Mission'];
```

## Methods

When the data stored on an object is a function we call that a <a
href="https://www.codecademy.com/resources/docs/javascript/methods?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>method</em></a>. A property is what an object has,
while a method is what an object does.

Do object methods seem familiar? That’s because you’ve been using them
all along! For example `console` is a global JavaScript object and
`.log()` is a method on that object. `Math` is also a global JavaScript
object and `.floor()` is a method on it.

We can include methods in our object literals by creating ordinary,
colon-separated key-value pairs. The key serves as our method’s name,
while the value is an anonymous function expression.

``` js
const alienShip = {
  invade: function () { 
    console.log('Hello! We have come to dominate your planet. Instead of Earth, it shall be called New Xaculon.')
  }
};
```

With the new method syntax introduced in ES6 we can omit the colon and
the `function` keyword.

``` js
const alienShip = {
  invade () { 
    console.log('Hello! We have come to dominate your planet. Instead of Earth, it shall be called New Xaculon.')
  }
};
```

Object methods are invoked by appending the object’s name with the dot
operator followed by the method name and parentheses:

``` js
alienShip.invade(); // Prints 'Hello! We have come to dominate your planet. Instead of Earth, it shall be called New Xaculon.'
```

### Instructions

**1.**

Below the `retreatMessage` variable in the code editor, create an
`alienShip` object. It should contain a method `retreat()` which will
`console.log()` the `retreatMessage`.

**2.**

Add another method to your object literal. This method, `takeOff()`,
should `console.log()` the string `'Spim... Borp... Glix... Blastoff!'`.

**3.**

Invoke your two methods: first `.retreat()` then `.takeOff()`.

### Solution

``` javascript
let retreatMessage = 'We no longer wish to conquer your planet. It is full of dogs, which we do not care for.';

// Write your code below

let alienShip = {
  retreat() {
    console.log(retreatMessage)
  },
  takeOff() {
    console.log('Spim... Borp... Glix... Blastoff!')
  }
};

alienShip.retreat();

alienShip.takeOff();
```

    ## We no longer wish to conquer your planet. It is full of dogs, which we do not care for.
    ## Spim... Borp... Glix... Blastoff!

## Nested Objects

In application code, objects are often nested— an object might have
another object as a property which in turn could have a property that’s
an array of even more objects!

In our `spaceship` object, we want a `crew` object. This will contain
all the crew members who do important work on the craft. Each of those
`crew` members are objects themselves. They have properties like `name`,
and `degree`, and they each have unique methods based on their roles. We
can also nest other objects in the `spaceship` such as a `telescope` or
nest details about the spaceship’s computers inside a parent
`nanoelectronics` object.

``` js
const spaceship = {
     telescope: {
        yearBuilt: 2018,
        model: '91031-XLT',
        focalLength: 2032 
     },
    crew: {
        captain: { 
            name: 'Sandra', 
            degree: 'Computer Engineering', 
            encourageTeam() { console.log('We got this!') } 
         }
    },
    engine: {
        model: 'Nimbus2000'
     },
     nanoelectronics: {
         computer: {
            terabytes: 100,
            monitors: 'HD'
         },
        'back-up': {
           battery: 'Lithium',
           terabytes: 50
         }
    }
}; 
```

We can chain operators to access nested properties. We’ll have to pay
attention to which operator makes sense to use in each layer. It can be
helpful to pretend you are the computer and evaluate each expression
from left to right so that each operation starts to feel a little more
manageable.

``` js
spaceship.nanoelectronics['back-up'].battery; // Returns 'Lithium'
```

In the preceding code:

- First the computer evaluates `spaceship.nanoelectronics`, which
  results in an object containing the `back-up` and `computer` objects.
- We accessed the `back-up` object by appending `['back-up']`.
- The `back-up` object has a `battery` property, accessed with
  `.battery` which returned the value stored there: `'Lithium'`

### Instructions

**1.**

Create a variable `capFave` and assign the `captain`’s favorite food
(the element in the 0th index of her `'favorite foods'` array) to it.
Make sure to use bracket and dot notation to get the value of the food
through nested access (don’t just copy the value into the variable!)

**2.**

Right now the `passengers` property has a value of `null`. Instead,
assign as its value an array of objects. These objects should represent
the `spaceship`’s passengers as individual objects. Make at least one
passenger object in the array that has at least one key-value pair on
it.

**3.**

Create a variable `firstPassenger` and assign the first passenger as its
value (the element in the 0th index of the `spaceship.passengers` array
you just made). Make sure to use bracket and dot notation to get the
passenger object through nested access (don’t just copy the object into
the variable!)

### Solution

``` javascript
let spaceship = {
  passengers: [{name: 'Space Dog'}], 
  telescope: {
    yearBuilt: 2018,
    model: "91031-XLT",
    focalLength: 2032 
  },
  crew: {
    captain: { 
      name: 'Sandra', 
      degree: 'Computer Engineering', 
      encourageTeam() { console.log('We got this!') },
     'favorite foods': ['cookies', 'cakes', 'candy', 'spinach'] }
  },
  engine: {
    model: "Nimbus2000"
  },
  nanoelectronics: {
    computer: {
      terabytes: 100,
      monitors: "HD"
    },
    'back-up': {
      battery: "Lithium",
      terabytes: 50
    }
  }
}; 

let capFave = spaceship.crew.captain['favorite foods'][0];

let firstPassenger = spaceship.passengers[0];
```

## Pass By Reference

Objects are *passed by reference*. This means when we pass a variable
assigned to an object into a function as an argument, the computer
interprets the parameter name as pointing to the space in memory holding
that object. As a result, functions which change object properties
actually mutate the object permanently (even when the object is assigned
to a `const` variable).

``` js
const spaceship = {
  homePlanet : 'Earth',
  color : 'silver'
};
 
let paintIt = obj => {
  obj.color = 'glorious gold'
};
 
paintIt(spaceship);
 
spaceship.color // Returns 'glorious gold'
 
```

Our function `paintIt()` permanently changed the color of our
`spaceship` object. However, reassignment of the `spaceship` variable
wouldn’t work in the same way:

``` js
let spaceship = {
  homePlanet : 'Earth',
  color : 'red'
};
let tryReassignment = obj => {
  obj = {
    identified : false, 
    'transport type' : 'flying'
  }
  console.log(obj) // Prints {'identified': false, 'transport type': 'flying'}
 
};
tryReassignment(spaceship) // The attempt at reassignment does not work.
spaceship // Still returns {homePlanet : 'Earth', color : 'red'};
 
spaceship = {
  identified : false, 
  'transport type': 'flying'
}; // Regular reassignment still works.
```

Let’s look at what happened in the code example:

- We declared this `spaceship` object with `let`. This allowed us to
  reassign it to a new object with `identified` and `'transport type'`
  properties with no problems.
- When we tried the same thing using a function designed to reassign the
  object passed into it, the reassignment didn’t stick (even though
  calling `console.log()` on the object produced the expected result).
- When we passed `spaceship` into that function, `obj` became a
  reference to the memory location of the `spaceship` object, but *not*
  to the `spaceship` variable. This is because the `obj` parameter of
  the `tryReassignment()` function is a variable in its own right. The
  body of `tryReassignment()` has no knowledge of the `spaceship`
  variable at all!
- When we did the reassignment in the body of `tryReassignment()`, the
  `obj` variable came to refer to the memory location of the object
  `{'identified' : false, 'transport type' : 'flying'}`, while the
  `spaceship` variable was completely unchanged from its earlier value.

### Instructions

**1.**

Write a function `greenEnergy()` that has an object as a parameter and
sets that object’s `'Fuel Type'` property to `'avocado oil'`.

**2.**

Write a function `remotelyDisable()` that has an object as a parameter
and sets (or reassigns) that object’s `disabled` property to `true`.

**3.**

Call your two functions with the `spaceship` object in the code editor,
then `console.log()` the `spaceship` object to confirm those properties
were changed/added.

### Solution

``` javascript
let spaceship = {
  'Fuel Type' : 'Turbo Fuel',
  homePlanet : 'Earth'
};

// Write your code below

let greenEnergy = obj => {
  obj['Fuel Type'] = 'avocado oil';
}

let remotelyDisable = obj => {
  obj.disabled = true;
}

greenEnergy(spaceship);

remotelyDisable(spaceship);

console.log(spaceship)
```

    ## { 'Fuel Type': 'avocado oil', homePlanet: 'Earth', disabled: true }

## Looping Through Objects

Loops are programming tools that repeat a block of code until a
condition is met. We learned how to iterate through arrays using their
numerical indexing, but the key-value pairs in objects aren’t ordered!
<a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...in"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">JavaScript has given us alternative
solution for iterating through objects with the <code
class="code__2rdF32qjRVp7mMVBHuPwDS">for…in</code> syntax</a> .

`for...in` will execute a given block of code for each property in an
object.

``` js
let spaceship = {
  crew: {
    captain: { 
      name: 'Lily', 
      degree: 'Computer Engineering', 
      cheerTeam() { console.log('You got this!') } 
    },
    'chief officer': { 
      name: 'Dan', 
      degree: 'Aerospace Engineering', 
      agree() { console.log('I agree, captain!') } 
    },
    medic: { 
      name: 'Clementine', 
      degree: 'Physics', 
      announce() { console.log(`Jets on!`) } },
    translator: {
      name: 'Shauna', 
      degree: 'Conservation Science', 
      powerFuel() { console.log('The tank is full!') } 
    }
  }
}; 
 
// for...in
for (let crewMember in spaceship.crew) {
  console.log(`${crewMember}: ${spaceship.crew[crewMember].name}`);
}
```

Our `for...in` will iterate through each element of the `spaceship.crew`
object. In each iteration, the variable `crewMember` is set to one of
`spaceship.crew`‘s keys, enabling us to log a list of crew members’ role
and `name`.

### Instructions

**1.**

Using `for...in`, iterate through the `spaceship.crew` object in the
code editor and `console.log()` a list of crew roles and names in the
following format: `'[crew member's role]: [crew member's name]'`,
e.g.,`'chief officer: Dan'`.

**2.**

Using `for...in`, iterate through the `spaceship.crew` object in the
code editor and `console.log()` a list of crew names and degrees in the
following format: `'[crew member's name]: [crew member's degree]'`,
i.e.,`'Lily: Computer Engineering'`.

### Solution

``` javascript
let spaceship = {
    crew: {
    captain: { 
        name: 'Lily', 
        degree: 'Computer Engineering', 
        cheerTeam() { console.log('You got this!') } 
        },
    'chief officer': { 
        name: 'Dan', 
        degree: 'Aerospace Engineering', 
        agree() { console.log('I agree, captain!') } 
        },
    medic: { 
        name: 'Clementine', 
        degree: 'Physics', 
        announce() { console.log(`Jets on!`) } },
    translator: {
        name: 'Shauna', 
        degree: 'Conservation Science', 
        powerFuel() { console.log('The tank is full!') } 
        }
    }
}; 

// Write your code below

for (let crewMember in spaceship.crew) {
  console.log(`${crewMember}: ${spaceship.crew[crewMember].name}`)
};

for (let crewMember in spaceship.crew) {
  console.log(`${spaceship.crew[crewMember].name}: ${spaceship.crew[crewMember].degree}`)
};
```

    ## captain: Lily
    ## chief officer: Dan
    ## medic: Clementine
    ## translator: Shauna
    ## Lily: Computer Engineering
    ## Dan: Aerospace Engineering
    ## Clementine: Physics
    ## Shauna: Conservation Science

## Review

Way to go! You’re well on your way to understanding the mechanics of
objects in JavaScript. By building your own objects, you will have a
better understanding of how JavaScript built-in objects work as well.
You can also start imagining organizing your code into objects and
modeling real world things in code.

Let’s review what we learned in this lesson:

- Objects store collections of *key-value* pairs.
- Each key-value pair is a property—when a property is a function it is
  known as a method.
- An object literal is composed of comma-separated key-value pairs
  surrounded by curly braces.
- You can access, add or edit a property within an object by using dot
  notation or bracket notation.
- We can add methods to our object literals using key-value syntax with
  anonymous function expressions as values or by using the new ES6
  method syntax.
- We can navigate complex, nested objects by chaining operators.
- Objects are mutable—we can change their properties even when they’re
  declared with `const`.
- Objects are passed by reference— when we make changes to an object
  passed into a function, those changes are permanent.
- We can iterate through objects using the `For...in` syntax.

# Advanced Objects

## Advanced Objects Introduction

Remember, objects in JavaScript are containers that store data and
functionality. In this lesson, we will build upon the fundamentals of
creating objects and explore some advanced concepts.

So if there are no objections, let’s learn more about objects!

In this lesson we will cover these topics:

- how to use the `this` keyword.
- conveying privacy in JavaScript methods.
- defining getters and setters in objects.
- creating factory functions.
- using destructuring techniques.

### Instructions

Look over the code in **main.js** to see examples of the object related
concept covered in the lesson. Then click next to get started on
learning these concepts!

### Solution

``` javascript
const robot = {
  model: 'B-4MI',
  mobile: true,
  greeting() {
    console.log(`I'm model ${this.model}, how may I be of service?`);
  }
}

const massProdRobot = (model, mobile) => {
  return {
    model,
    mobile,
    greeting() {
      console.log(`I'm model ${this.model}, how may I be of service?`);
    }
  }
}

const shinyNewRobot = massProdRobot('TrayHax', true)

const chargingStation = {
  _name: 'Electrons-R-Us',
  _robotCapacity: 120,
  _active: true,
  _chargingRooms: ['Low N Slow', 'Middle of the Road', 'In and Output'],

  set robotCapacity(newCapacity) {
    if (typeof newCapacity === 'number') {
      this._robotCapacity = newCapacity;
    } else {
      console.log(`Change ${newCapacity} to a number.`)
    }
  },
  get robotCapacity() {
    return this._robotCapacity;
  }
}
```

## The this Keyword

Objects are collections of related data and functionality. We store that
functionality in methods on our objects:

``` js
const goat = {
  dietType: 'herbivore',
  makeSound() {
    console.log('baaa');
  }
};
```

In our `goat` object we have a `.makeSound()` method. We can invoke the
`.makeSound()` method on `goat`.

``` js
goat.makeSound(); // Prints baaa
```

Nice, we have a `goat` object that can print `baaa` to the console.
Everything seems to be working fine. What if we wanted to add a new
method to our `goat` object called `.diet()` that prints the `goat`’s
`dietType`?

``` js
const goat = {
  dietType: 'herbivore',
  makeSound() {
    console.log('baaa');
  },
  diet() {
    console.log(dietType);
  }
};
goat.diet(); 
// Output will be "ReferenceError: dietType is not defined"
```

That’s strange, why is `dietType` not defined even though it’s a
property of `goat`? That’s because inside the scope of the `.diet()`
method, we don’t automatically have access to other properties of the
`goat` object.

Here’s where the <a
href="https://www.codecademy.com/resources/docs/javascript/this?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">this</code></a> keyword comes to
the rescue. If we change the `.diet()` method to use the `this`, the
`.diet()` works! :

``` js
const goat = {
  dietType: 'herbivore',
  makeSound() {
    console.log('baaa');
  },
  diet() {
    console.log(this.dietType);
  }
};
 
goat.diet(); 
// Output: herbivore
```

The `this` keyword references the *calling object* which provides access
to the calling object’s properties. In the example above, the calling
object is `goat` and by using `this` we’re accessing the `goat` object
itself, and then the `dietType` property of `goat` by using property dot
notation.

Let’s get comfortable using the `this` keyword in a method.

### Instructions

**1.**

Let’s create a new object to practice using `this`.

In **main.js** there is an object `robot`, add a property of `model` and
assign to it a value of `'1E78V2'`. Add another property, `energyLevel`
and assign to it a value of `100`.

**2.**

Inside the `robot` object, add a method named `provideInfo`. Inside the
body of `provideInfo()`, return the following string by using
interpolation:

    I am MODEL and my current energy level is ENERGYLEVEL.  

Replace ‘MODEL’ and ‘ENERGYLEVEL’ with the calling object’s `model` and
`energyLevel` property. Remember, to get the access to the calling
object’s properties inside a method, you have to use the `this` keyword!

**3.**

Now to check `.provideInfo()` has access to the internal properties of
`robot`. Log the result of calling `.provideInfo()` method on `robot` to
the console.

### Solution

``` javascript
const robot = {
  model: '1E78V2',
  energyLevel: 100,
  provideInfo() { 
    return `I am ${this.model} and my current energy level is ${this.energyLevel}.`
  }
};

console.log(robot.provideInfo());
```

    ## I am 1E78V2 and my current energy level is 100.

## Arrow Functions and this

We saw in the previous exercise that for a method, the calling object is
the object the method belongs to. If we use the <a
href="https://www.codecademy.com/resources/docs/javascript/this?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">this</code></a> keyword in a method
then the value of `this` is the calling object. However, it becomes a
bit more complicated when we start using arrow functions for methods.
Take a look at the example below:

``` js
const goat = {
  dietType: 'herbivore',
  makeSound() {
    console.log('baaa');
  },
  diet: () => {
    console.log(this.dietType);
  }
};
 
goat.diet(); // Prints undefined
```

In the comment, you can see that `goat.diet()` would log `undefined`. So
what happened? Notice that the `.diet()` method is defined using an
arrow function.

Arrow functions inherently *bind*, or tie, an already defined `this`
value to the function itself that is NOT the calling object. In the code
snippet above, the value of `this` is the *global object*, or an object
that exists in the global scope, which doesn’t have a `dietType`
property and therefore returns `undefined`.

To read more about either arrow functions or the global object check out
the MDN documentation of <a
href="https://developer.mozilla.org/en-US/docs/Glossary/Global_object"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the global object</a> and <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">arrow functions</a>.

The key takeaway from the example above is to *avoid* using arrow
functions when using `this` in a method!

### Instructions

**1.**

Currently the `.checkEnergy()` method is not producing the correct
output because it is using arrow function syntax.

Refactor, or change, the method to use a function expression. You can
write the function using either longhand or shorthand format.

After refactoring the method, notice that `.checkEnergy()` has access to
the other internal properties of the `robot` object.

### Solution

``` javascript
const robot = {
  energyLevel: 100,
  checkEnergy() {
    console.log(`Energy is currently at ${this.energyLevel}%.`)
  }
}

robot.checkEnergy();
```

    ## Energy is currently at 100%.

## Privacy

Accessing and updating properties is fundamental in working with
objects. However, there are cases in which we don’t want other code
simply accessing and updating an object’s properties. When discussing
*privacy* in objects, we define it as the idea that only certain
properties should be mutable or able to change in value.

Certain languages have privacy built-in for objects, but JavaScript does
not have this feature. Rather, JavaScript developers follow naming
conventions that signal to other developers how to interact with a
property. One common convention is to place an underscore `_` before the
name of a property to mean that the property should not be altered.
Here’s an example of using `_` to prepend a property.

``` js
const bankAccount = {
  _amount: 1000
}
```

In the example above, the `_amount` is not intended to be directly
manipulated.

Even so, it is still possible to reassign `_amount`:

``` js
bankAccount._amount = 1000000;
```

In later exercises, we’ll cover the use of methods called *getters* and
*setters*. Both methods are used to respect the intention of properties
prepended, or began, with `_`. Getters can return the value of internal
properties and setters can safely reassign property values. For now,
let’s see what happens if we can change properties that don’t have
setters or getters.

### Instructions

**1.**

Below the `robot` object, reassign the `_energyLevel` property to
`'high'`.

**2.**

Now take a look at the new `recharge` method in `robot`. `.recharge()`
will add `30` to `_energyLevel`.

What will happen now that `_energyLevel` isn’t a number?

Call `.recharge()` on `robot` to find out.

Notice that a funky string is printed to the console! This is known as a
side-effect of type-coercion. No need to worry about what this means for
now, but it’s important to understand that you can cause unwanted
side-effects when mutating objects and their properties.

### Solution

``` javascript
const robot = {
  _energyLevel: 100,
  recharge(){
    this._energyLevel += 30;
    console.log(`Recharged! Energy is currently at ${this._energyLevel}%.`)
  }
};

robot._energyLevel = 'high';
robot.recharge();
```

    ## Recharged! Energy is currently at high30%.

## Getters

*Getters* are methods that get and return the internal properties of an
object. But they can do more than just retrieve the value of a property!
Let’s take a look at a getter method:

``` js
const person = {
  _firstName: 'John',
  _lastName: 'Doe',
  get fullName() {
    if (this._firstName && this._lastName){
      return `${this._firstName} ${this._lastName}`;
    } else {
      return 'Missing a first name or a last name.';
    }
  }
}
 
// To call the getter method: 
person.fullName; // 'John Doe'
```

Notice that in the getter method above:

- We use the `get` keyword followed by a function.
- We use an `if...else` conditional to check if both `_firstName` and
  `_lastName` exist (by making sure they both return truthy values) and
  then return a different value depending on the result.
- We can access the calling object’s internal properties using `this`.
  In `fullName`, we’re accessing both `this._firstName` and
  `this._lastName`.
- In the last line we call `fullName` on `person`. In general, getter
  methods do not need to be called with a set of parentheses.
  Syntactically, it looks like we’re accessing a property.

Now that we’ve gone over syntax, let’s discuss some notable advantages
of using getter methods:

- Getters can perform an action on the data when getting a property.
- Getters can return different values using conditionals.
- In a getter, we can access the properties of the calling object using
  `this`.
- The functionality of our code is easier for other developers to
  understand.

Another thing to keep in mind when using getter (and setter) methods is
that properties cannot share the same name as the getter/setter
function. If we do so, then calling the method will result in an
infinite call stack error. One workaround is to add an underscore before
the property name like we did in the example above.

Great, let’s go getter!

### Instructions

**1.**

In `robot`, create a getter method named `energyLevel` using the `get`
keyword. Leave function body blank for now.

**2.**

Inside the getter method, add an `if` statement to check if
`this._energyLevel` is a number using the `typeof` operator. If that
condition is truthy, return `'My current energy level is ENERGYLEVEL'`.
Replace `ENERGYLEVEL` with the value of `this._energyLevel`.

Make sure you return the string and not logging it to the console.

**3.**

If `this._energyLevel` isn’t a number it could be that the
`_energyLevel` property was altered. Let’s add a default return
statement for when such a scenario arises.

Add an `else` statement that returns
`'System malfunction: cannot retrieve energy level'`.

**4.**

Log the result of calling the getter method `energyLevel` on `robot` to
the console.

Notice that the method will return a formatted response rather than just
accessing a property!

### Solution

``` javascript
const robot = {
  _model: '1E78V2',
  _energyLevel: 100,
  get energyLevel(){
    if(typeof this._energyLevel === 'number') {
      return 'My current energy level is ' + this._energyLevel
    } else {
      return "System malfunction: cannot retrieve energy level"
    }
  }
};

console.log(robot.energyLevel);
```

    ## My current energy level is 100

## Setters

Along with getter methods, we can also create *setter* methods which
reassign values of existing properties within an object. Let’s see an
example of a setter method:

``` js
const person = {
  _age: 37,
  set age(newAge){
    if (typeof newAge === 'number'){
      this._age = newAge;
    } else {
      console.log('You must assign a number to age');
    }
  }
};
```

Notice that in the example above:

- We can perform a check for what value is being assigned to
  `this._age`.
- When we use the setter method, only values that are numbers will
  reassign `this._age`
- There are different outputs depending on what values are used to
  reassign `this._age`.

Then to use the setter method:

``` js
person.age = 40;
console.log(person._age); // Logs: 40
person.age = '40'; // Logs: You must assign a number to age
```

Setter methods like `age` do not need to be called with a set of
parentheses. Syntactically, it looks like we’re reassigning the value of
a property.

Like getter methods, there are similar advantages to using setter
methods that include checking input, performing actions on properties,
and displaying a clear intention for how the object is supposed to be
used. Nonetheless, even with a setter method, it is still possible to
directly reassign properties. For example, in the example above, we can
still set `._age` directly:

``` js
person._age = 'forty-five'
console.log(person._age); // Prints forty-five
```

### Instructions

**1.**

Currently, in `robot` there is a getter method for `numOfSensors` but no
setter method! What if we need to add or remove some sensors? Let’s fix
that problem.

Add a setter method named `numOfSensors` using the `set` keyword.
Provide a parameter of `num`. Leave the function body empty for now.

**2.**

There are a couple of things we should do in the setter method:

- Add a check to see if `num` is a number using the `typeof` operator.
- `num` should also be greater than or equal to `0`.
- If both conditions are met, reassign `this._numOfSensors` to `num`.

**3.**

Now add an `else` that logs
`'Pass in a number that is greater than or equal to 0'` to the console.

**4.**

Use the `numOfSensors` setter method on `robot` to assign
`_numOfSensors` to `100`.

**5.**

To check that the setter method worked, `console.log()`
`robot.numOfSensors`.

### Solution

``` javascript
const robot = {
  _model: '1E78V2',
  _energyLevel: 100,
  _numOfSensors: 15,
  get numOfSensors(){
    if(typeof this._numOfSensors === 'number'){
      return this._numOfSensors;
    } else {
      return 'Sensors are currently down.'
    }
  },
  set numOfSensors(num) {
    if (typeof num === 'number' && num >= 0){
      this._numOfSensors = num;
    } else {
      console.log('Pass in a number that is greater than or equal to 0')
    }   
  } 
};

robot.numOfSensors = 100;
console.log(robot.numOfSensors);
```

    ## 100

## Factory Functions

So far we’ve been creating objects individually, but there are times
where we want to create many instances of an object quickly. Here’s
where *factory functions* come in. A real world factory manufactures
multiple copies of an item quickly and on a massive scale. A factory
function is a function that returns an object and can be reused to make
multiple object instances. Factory functions can also have parameters
allowing us to customize the object that gets returned.

Let’s say we wanted to create an object to represent monsters in
JavaScript. There are many different types of monsters and we could go
about making each monster individually but we can also use a factory
function to make our lives easier. To achieve this diabolical plan of
creating multiple monsters objects, we can use a factory function that
has parameters:

``` js
const monsterFactory = (name, age, energySource, catchPhrase) => {
  return { 
    name: name,
    age: age, 
    energySource: energySource,
    scare() {
      console.log(catchPhrase);
    } 
  }
};
```

In the `monsterFactory` function above, it has four parameters and
returns an object that has the properties: `name`, `age`,
`energySource`, and `scare()`. To make an object that represents a
specific monster like a ghost, we can call `monsterFactory` with the
necessary arguments and assign the return value to a variable:

``` js
const ghost = monsterFactory('Ghouly', 251, 'ectoplasm', 'BOO!');
ghost.scare(); // 'BOO!'
```

Now we have a `ghost` object as a result of calling `monsterFactory()`
with the needed arguments. With `monsterFactory` in place, we don’t have
to create an object literal every time we need a new monster. Instead,
we can invoke the `monsterFactory` function with the necessary arguments
to ~~take over the world~~ make a monster for us!

### Instructions

**1.**

Instead of making individual robots like we’ve been doing, let’s make a
factory function to make robots as we please!

Create a factory function named `robotFactory` that has two parameters
`model` and `mobile`. Make the function return an object. In the object,
add a key of `model` with the value of the `model` parameter. Add
another property that has a key of `mobile` with a value of the `mobile`
parameter.

Then add a method named `beep` without a parameter that will log
`'Beep Boop'` to the console.

**2.**

Use your factory function by declaring a `const` variable named
`tinCan`. Assign to `tinCan` the value of calling `robotFactory` with
the first argument of `'P-500'` and the second argument of `true`.

**3.**

Let’s now check what `tinCan` can do! Call `.beep()` on `tinCan`.

You should see `'Beep Boop'` printed to the console which means the
factory function produced a robot object! Play around with `tinCan` to
check the other properties!

### Solution

``` javascript
const robotFactory = (model, mobile) => {
  return {
    model : model,
        mobile: mobile,
        beep () { 
      console.log('Beep Boop'); 
    }
    };
};

const tinCan = robotFactory('P-500', true);
tinCan.beep();
```

    ## Beep Boop

## Property Value Shorthand

ES6 introduced some new shortcuts for assigning properties to variables
known as *destructuring*.

In the previous exercise, we created a factory function that helped us
create objects. We had to assign each property a key and value even
though the key name was the same as the parameter name we assigned to
it. To remind ourselves, here’s a truncated version of the factory
function:

``` js
const monsterFactory = (name, age) => {
  return { 
    name: name,
    age: age
  }
};
```

Imagine if we had to include more properties, that process would quickly
become tedious! But we can use a destructuring technique, called
*property value shorthand*, to save ourselves some keystrokes. The
example below works exactly like the example above:

``` js
const monsterFactory = (name, age) => {
  return { 
    name,
    age 
  }
};
```

Notice that we don’t have to repeat ourselves for property assignments!

### Instructions

**1.**

Use the property value shorthand and refactor the factory function in
**main.js**

### Solution

``` javascript
const robotFactory = (model, mobile) => {
  return {
    model,
    mobile,
    beep() {
      console.log('Beep Boop');
    }
  }
}


// To check that the property value shorthand technique worked:
const newRobot = robotFactory('P-501', false)
console.log(newRobot.model)
console.log(newRobot.mobile)
```

    ## P-501
    ## false

## Destructured Assignment

We often want to extract key-value pairs from objects and save them as
variables. Take for example the following object:

``` js
const vampire = {
  name: 'Dracula',
  residence: 'Transylvania',
  preferences: {
    day: 'stay inside',
    night: 'satisfy appetite'
  }
};
```

If we wanted to extract the `residence` property as a variable, we could
use the following code:

``` js
const residence = vampire.residence; 
console.log(residence); // Prints 'Transylvania' 
```

However, we can also take advantage of a destructuring technique called
*destructured assignment* to save ourselves some keystrokes. In
destructured assignment we create a variable with the name of an
object’s key that is wrapped in curly braces `{ }` and assign to it the
object. Take a look at the example below:

``` js
const { residence } = vampire; 
console.log(residence); // Prints 'Transylvania'
```

Look back at the `vampire` object’s properties in the first code
example. Then, in the example above, we declare a new variable
`residence` that extracts the value of the `residence` property of
`vampire`. When we log the value of `residence` to the console,
`'Transylvania'` is printed.

We can even use destructured assignment to grab nested properties of an
object:

``` js
const { day } = vampire.preferences; 
console.log(day); // Prints 'stay inside'
```

### Instructions

**1.**

Use destructured assignment to create a `const` variable named
`functionality` that extracts the `functionality` property of `robot`.

If you need a reminder on how to use destructured assignment, review the
example in the narrative or check the hint.

**2.**

Since `functionality` is referencing `robot.functionality` we can call
the methods available to `robot.functionality` simply through
`functionality`.

Take advantage of this shortcut and call the `.beep()` method on
`functionality`.

### Solution

``` javascript
const robot = {
  model: '1E78V2',
  energyLevel: 100,
  functionality: {
    beep() {
      console.log('Beep Boop');
    },
    fireLaser() {
      console.log('Pew Pew');
    },
  }
};

const { functionality } = robot;

functionality.beep();
```

    ## Beep Boop

## Built-in Object Methods

In the previous exercises we’ve been creating instances of objects that
have their own methods. But, we can also take advantage of built-in
methods for Objects!

For example, we have access to object instance methods like:
`.hasOwnProperty()`, `.valueOf()`, and many more! Practice your
documentation reading skills and check out: <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object#Methods"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN’s object instance documentation</a>.

There are also useful Object class methods such as `Object.assign()`,
`Object.entries()`, and `Object.keys()` just to name a few. For a
comprehensive list, browse: <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object#Methods_of_the_Object_constructor"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN’s object instance documentation</a>.

Let’s get acquainted with some of these methods and their documentation.

Note: You will see errors as you work through this exercise, but by the
end the errors will be fixed!

### Instructions

**1.**

In **main.js** there is an object, `robot`. We’d like to grab the
property names, otherwise known as keys, and save the keys in an array
which is assigned to `robotKeys`. However, there’s something missing in
the method call.

Find out what we have to include by reading <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN’s <code
class="code__2rdF32qjRVp7mMVBHuPwDS">Object.keys()</code>
documentation</a>.

**2.**

`Object.entries()` will also return an array, but the array will contain
more arrays that have both the key and value of the properties in an
object.

Declare a `const` variable named `robotEntries` and assign to it the
entries of `robot` by calling `Object.entries()`.

To find how to use `Object.entries()`, read <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/entries"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the documentation at MDN</a>.

**3.**

Now what if we want another object that has the properties of `robot`
but with a few additional properties. `Object.assign()` sounds like a
great method to use, but like the previous examples we should check <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/assign"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Object.assign() documentation at MDN</a>.

Declare a `const` variable named `newRobot`. `newRobot` will be a new
object that has all the properties of `robot` and the properties in the
following object: `{laserBlaster: true, voiceRecognition: true}`. Make
sure that you are **not** changing the `robot` object!

### Solution

``` javascript
const robot = {
    model: 'SAL-1000',
  mobile: true,
  sentient: false,
  armor: 'Steel-plated',
  energyLevel: 75
};

// What is missing in the following method call?
const robotKeys = Object.keys(robot);

console.log(robotKeys);

// Declare robotEntries below this line:
const robotEntries = Object.entries(robot)
console.log(robotEntries);

// Declare newRobot below this line:
const newRobot = Object.assign({laserBlaster: true, voiceRecognition: true}, robot);

console.log(newRobot);
```

    ## [ 'model', 'mobile', 'sentient', 'armor', 'energyLevel' ]
    ## [
    ##   [ 'model', 'SAL-1000' ],
    ##   [ 'mobile', true ],
    ##   [ 'sentient', false ],
    ##   [ 'armor', 'Steel-plated' ],
    ##   [ 'energyLevel', 75 ]
    ## ]
    ## {
    ##   laserBlaster: true,
    ##   voiceRecognition: true,
    ##   model: 'SAL-1000',
    ##   mobile: true,
    ##   sentient: false,
    ##   armor: 'Steel-plated',
    ##   energyLevel: 75
    ## }

## Review

Congratulations on finishing Advanced Objects!

Let’s review the concepts covered in this lesson:

- The object that a method belongs to is called the *calling object*.
- The `this` keyword refers to the calling object and can be used to
  access properties of the calling object.
- Methods do not automatically have access to other internal properties
  of the calling object.
- The value of `this` depends on where the `this` is being accessed
  from.
- We cannot use arrow functions as methods if we want to access other
  internal properties.
- JavaScript objects do not have built-in privacy, rather there are
  conventions to follow to notify other developers about the intent of
  the code.
- The usage of an underscore before a property name means that the
  original developer did not intend for that property to be directly
  changed.
- Setters and getter methods allow for more detailed ways of accessing
  and assigning properties.
- Factory functions allow us to create object instances quickly and
  repeatedly.
- There are different ways to use object destructuring: one way is the
  property value shorthand and another is destructured assignment.
- As with any concept, it is a good skill to learn how to use the
  documentation with objects!

You’re ready to start leveraging more elegant code for creating and
accessing objects in your code!

### Instructions

If you want to challenge yourself:

- Find the value of `this` in a function inside of a method.
- Learn the outcome of using a property that has the exact same name as
  a setter/getter method.
- Create a new factory function that can create object instances of your
  choice.
- Read documentation on other destructuring techniques and apply it to
  your code.
- Try out other built-in object methods and learn what they do.

# Meal Maker

A restaurant has hired you to create a function for their website that
allows them to set a meal and price each morning for Today’s Special.
Use your knowledge of getters and setters to make sure anyone who uses
the new function can generate a meal and a price for Today’s Special
without any embarrassing errors!

If you get stuck during this project or would like to see an experienced
developer work through it, click **“Get Unstuck”** to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Create the Menu Object

1\.

We’ll hold the meal, price, and their respective getters and setters in
an object named `menu`.

In **app.js**, create an empty `menu` object.

2\.

The `menu` object will hold the meal and price of Today’s Special as
properties and they shouldn’t be altered directly.

Within the `menu` object, create a `_meal` property with a value of an
empty string (`''`). This will eventually hold the name of the meal.

3\.

Next, add a `_price` property with a value of `0`. This will eventually
hold the price of the meal, and should also not be altered directly.

4\.

We know properties that begin with `_` should not be directly
manipulated. But just to validate this knowledge, let’s test it out!

Below the `menu` object, directly manipulate the two properties by
assigning `_meal` a number value and `_price` a string value.

Then, below the new assignments, `console.log()` the `menu` object to
see how not type checking these values could cause confusion for a
website visitor!

## Add Setter Methods

5\.

To safely reassign the two `menu` properties, we can add setters that
type check the values being assigned.

Below the properties, use the `set` keyword to create a `meal` setter
method with `mealToCheck` as a parameter. Leave the function body empty
for now.

6\.

In the body of the setter method, create an `if` statement that checks
if `mealToCheck` is a `string`. If it is, return the object’s `_meal`
property with `mealToCheck` assigned as the value.

7\.

Utilizing the same procedures as above, use the `set` keyword to create
a `price` setter with `priceToCheck` as a parameter. This method should
make sure the value associated with `_price` is always a `number`.

8\.

Below the `menu` object, set the values of `_meal` and `_price` using
the newly created setter methods. Then, `console.log()` the `menu`
object to check their functionality.

## Add a Getter Method

9\.

Now it’s time to safely return the values of the `_meal` and `_price`
properties in a readable form. Instead of directly accessing the
properties, we can use a getter method that proactively checks if a meal
and price have been properly set, before returning the values.

Below the setters, use the `get` keyword to create a `todaysSpecial`
method. Leave the function body empty for now.

10\.

In the body of the getter, create an `if…else` statement to check if
`_meal` and `_price` values exist (or are truthy values). If so, return
a string telling potential website visitors what Today’s Special is. For
example: “Today’s Special is Spaghetti for \$5!”

If `_meal` and `_price` values do not exist (or are falsy) return the
string `'Meal or price was not set correctly!'`.

## Get Today’s Special

11\.

Finally, use the getter method to `console.log()` Today’s Special.

Assuming you used the `meal` setter to assign a string, and the `price`
setter to assign a number in task 8, you should see Today’s Special
logged to the console.

If you want to extend your learning on this project, try adding an array
of meals and prices to randomly set and get Today’s Special!

### [Solution](meal-maker)

``` javascript
let menu = {
    _meal: "",
    _price: 0,
  
    set meal(mealToCheck) {
      if (typeof mealToCheck === "string") {
        this._meal = mealToCheck;
      }
    },
  
    set price(priceToCheck) {
      if (typeof priceToCheck === "number") {
        this._price = priceToCheck;
      }
    },
  
    get todaysSpecial() {
      if (this._meal && this._price) {
        return `Today's Special is ${this._meal} for $${this._price}!`;
      } else {
        return "Meal or price was not set correctly!";
      }
    },
  };
  
  menu.meal = "Spaghetti";
  menu.price = 5;
  console.log(menu.todaysSpecial);
```

    ## Today's Special is Spaghetti for $5!

# Team Stats

We want to create, retrieve, and add information about your favorite
sports team. Basketball, soccer, tennis, or water polo, you pick it.
It’s your job to create data using the JavaScript data structures at
your disposal: arrays and objects.

After we create these data structures in this project, feel free to
challenge yourself to gain insights from them. For example, you might
want to get the total number of games your team has played, or the
average score of all of their games.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Populating Data

1\.

Let’s make a data structure to store the information about our team.
Declare a `const` variable called `team` and set it to an empty object.

2\.

Our team has players and the games that they have played. Let’s
represent both of these by adding two properties to your `team` object.
Add a `_players` property and a `_games` property and initialize both to
empty arrays.

3\.

Next, populate the empty`_players` array with three players. Each player
should be an object containing three properties: `firstName`,
`lastName`, and `age`. Put each player on a new line to prevent the line
from getting too long.

4\.

Let’s do the same for our `_games` array. Populate the empty array with
three games. Each game should be an object containing three properties:
`opponent`, `teamPoints`, `opponentPoints`.

## Getting Data

5\.

Create a getter method called `players` to retrieve the `_players`
property. Inside the getter method, `return` the `_players` property.

For the scope of this project, we won’t need to create setter methods,
because we don’t want anyone to change the data saved to the properties.

6\.

Create another getter method called `games` to retrieve the `_games`
property. Inside the getter method, `return` the `_games` property.

## Adding Data

7\.

We want to add a new player to our team. Add a `.addPlayer()` method to
the `team` object. This method should take in three parameters:
`newFirstName`, `newLastName`, and `newAge`.

Inside the method, create a `player` object by setting the three
parameters to be the values for the object’s three properties:
`firstName`, `lastName`, `age`. Finally, add the `player` object to the
`team`’s `_players` array.

8\.

Below the `team` object, let’s try out our new `.addPlayer()` method to
add a new player: Bugs Bunny, age 76.

Log the `team`’s `_players` property to check that our new player was
added.

9\.

The scorekeeper has some new information for us! Create a method for
adding game results called `addGame` that takes three parameters:
`newOpponent`, `newTeamPoints`, `newOpponentPoints`.

Inside the `.addGame()` method, create a `game` object by setting the
three parameters to be the values for the object’s three properties:
`opponent`, `teamPoints`, `opponentPoints`. Add the `game` object to the
`team`’s `_games` array.

10\.

Finally, below our `team` object, use the `.addGame()` method to add a
record of a new game. Our team played against the `'Titans'` where we
scored 100 points and the opponent scored 98 points.

Log the `team`’s `_games` property to check that our new game record was
properly added.

### [Solution](team-stats)

``` javascript
const team = {
    _players: [
      { firstName: "Lebron", lastName: "James", age: 36 },
      { firstName: "Kobe", lastName: "Bryant", age: 41 },
      { firstName: "Michael", lastName: "Jordan", age: 57 },
    ],
    _games: [
      { opponent: "Warriors", teamPoints: 120, opponentPoints: 115 },
      { opponent: "Celtics", teamPoints: 108, opponentPoints: 102 },
      { opponent: "Lakers", teamPoints: 114, opponentPoints: 111 },
    ],
    get players() {
      return this._players;
    },
    get games() {
      return this._games;
    },
    addPlayer(newFirstName, newLastName, newAge) {
      let newPlayer = {
        firstName: newFirstName,
        lastName: newLastName,
        age: newAge,
      };
      this._players.push(newPlayer);
    },
    addGame(newOpponent, newTeamPoints, newOpponentPoints) {
      let newGame = {
        opponent: newOpponent,
        teamPoints: newTeamPoints,
        opponentPoints: newOpponentPoints,
      };
      this._games.push(newGame);
    },
  };
  
  team.addPlayer("Bugs", "Bunny", 76);
  console.log(team.players);
  
  team.addGame("Titans", 100, 98);
  console.log(team.games);
```

    ## [
    ##   { firstName: 'Lebron', lastName: 'James', age: 36 },
    ##   { firstName: 'Kobe', lastName: 'Bryant', age: 41 },
    ##   { firstName: 'Michael', lastName: 'Jordan', age: 57 },
    ##   { firstName: 'Bugs', lastName: 'Bunny', age: 76 }
    ## ]
    ## [
    ##   { opponent: 'Warriors', teamPoints: 120, opponentPoints: 115 },
    ##   { opponent: 'Celtics', teamPoints: 108, opponentPoints: 102 },
    ##   { opponent: 'Lakers', teamPoints: 114, opponentPoints: 111 },
    ##   { opponent: 'Titans', teamPoints: 100, opponentPoints: 98 }
    ## ]

# Documentation: JavaScript Objects

## [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object)

The provided link goes directly to the go-to documentation for
JavaScript Objects. This is helpful if you would like some further
guidance on how the `Object` class works, constructing objects, using
static methods, instance properties and methods, and some examples of
`Object` usage.

Instead of trying to remember it all, use the documentation as a readily
available resource for syntax or implementation help!

# Higher-Order Functions

## Introduction

We are often unaware of the number of assumptions we make when
communicating in our native languages. If we told you to “count to
three,” we would expect you to say the numbers “one”, “two”, and
“three”. We assumed you would know to start with “one” and end with
“three”. With programming, we need to be more explicit with our
directions to the computer. Here’s how we might tell the computer to
“count to three”:

``` js
for (let i = 1; i <= 3; i++) {
  console.log(i);
}
```

When we speak to other humans, we share a vocabulary that provides quick
ways to communicate complicated concepts. When we say the word “bake”,
it calls to mind a familiar subroutine— preheating an oven, putting
something into an oven for a set amount of time, and finally removing
it. This allows us to *abstract* away a lot of the details and
communicate key concepts more concisely. Instead of listing all those
details, we can say, “We baked a cake,” and still impart all that
meaning to you.

In this lesson, we’ll learn how to use “abstraction” in programming by
writing functions. In addition to allowing us to reuse our code,
functions help to make clear, readable programs. If you encounter
`countToThree()` in a program, you might be able to quickly guess what
the function does without having to stop and read the function’s body.

We’re also going to learn about a way to add another level of
abstraction to our programming: *higher-order functions*. *Higher-order
functions* are functions that accept other functions as arguments and/or
return functions as output. This enables us to build abstractions on
other abstractions, just like “We hosted a birthday party” is an
abstraction that may build on the abstraction “We made a cake.”

### Instructions

Using abstraction allows us to write more modular code, which is easier
to read and debug. Click *Next* to continue learning this new concept!

### Solution

<img src="https://content.codecademy.com/courses/higher-order-functions/birthday.svg" alt="a birthday cake at a birthday party" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Functions as Data

JavaScript functions behave like any other data type in the language; we
can assign functions to variables, and we can reassign them to new
variables.

Below, we have an annoyingly long function name that hurts the
readability of any code in which it’s used. Note: If the below
function’s syntax feels unfamiliar, revisit the <a
href="https://www.codecademy.com/courses/introduction-to-javascript/lessons/functions/exercises/arrow-functions"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">arrow functions exercise</a> to refresh your knowledge
on ES6 arrow notation.

``` js
const announceThatIAmDoingImportantWork = () => {
    console.log("I’m doing very important work!");
};
```

Let’s pretend this function does important work and needs to be called
repeatedly. To rename this function without sacrificing the source code,
we can re-assign the function to a variable with a suitably short name:

``` js
const busy = announceThatIAmDoingImportantWork;
 
busy(); // This function call barely takes any space!
```

`busy` is a variable that holds a *reference* to our original function.
If we could look up the address in memory of `busy` and the address in
memory of `announceThatIAmDoingImportantWork` they would point to the
same place. Our new `busy()` function can be invoked with parentheses as
if that was the name we originally gave our function.

Notice how we assign `announceThatIAmDoingImportantWork` without
parentheses as the value to the `busy` variable. We want to assign the
value of the function itself, not the value it returns when invoked.

In JavaScript, functions are *first class objects*. This means that,
like other objects you’ve encountered, JavaScript functions can have
properties and methods.

Since functions are a type of object, they have properties such as
`.length` and `.name`, and methods such as `.toString()`. You can see
more about the methods and properties of functions <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">in the documentation</a>.

Functions are special because we can invoke them, but we can still treat
them like any other type of data. Let’s get some practice doing that!

### Instructions

**1.**

We’ve defined a function with a very long name:
`checkThatTwoPlusTwoEqualsFourAMillionTimes()`. This function takes a
long time to execute. It checks whether 2 + 2 = 4, but it does it a
million times (just to be really sure)!

Using `const`, declare a shorter-named variable, `isTwoPlusTwo` that
will be easier to work with. Assign
`checkThatTwoPlusTwoEqualsFourAMillionTimes` as its value.

**2.**

Invoke your `isTwoPlusTwo()` function.

**3.**

Hmmm, if we forgot the original name of our function. Is there a way we
could figure it out?

Use `isTwoPlusTwo` to `console.log()` the `name` property of the
function we assigned to `isTwoPlusTwo`.

### Solution

``` javascript
const checkThatTwoPlusTwoEqualsFourAMillionTimes = () => {
  for(let i = 1; i <= 1000000; i++) {
    if ( (2 + 2) != 4) {
      console.log('Something has gone very wrong :( ');
    }
  }
};

// Write your code below
const isTwoPlusTwo = checkThatTwoPlusTwoEqualsFourAMillionTimes;
isTwoPlusTwo();
console.log(isTwoPlusTwo.name);
```

    ## checkThatTwoPlusTwoEqualsFourAMillionTimes

## Functions as Parameters

As you know, a <a
href="https://www.codecademy.com/courses/introduction-to-javascript/lessons/functions/exercises/parameters"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">parameter</a> is a placeholder for the data that gets
passed into a function. Since functions can behave like any other type
of data in JavaScript, it might not surprise you to learn that functions
can accept other functions as parameters. A *higher-order function* is a
function that either accepts functions as parameters, returns a
function, or both! We call functions that get passed in as parameters
*callback functions*. Callback functions get invoked during the
execution of the higher-order function.

When we invoke a higher-order function, and pass another function in as
an argument, we don’t invoke the argument function. Invoking it would
evaluate to passing in the return value of that function call. With
callback functions, we pass in the function itself by typing the
function name *without* the parentheses:

``` js
const higherOrderFunc = param => {
  param();
  return `I just invoked ${param.name} as a callback function!`
}
 
const anotherFunc = () => {
  return 'I\'m being invoked by the higher-order function!';
}
 
higherOrderFunc(anotherFunc);
```

We wrote a higher-order function `higherOrderFunc` that accepts a single
parameter, `param`. Inside the body, `param` gets invoked using
parentheses. And finally, a string is returned, telling us the name of
the callback function that was passed in.

Below the higher-order function, we have another function aptly named
`anotherFunc`. This function aspires to be called inside the
higher-order function.

Lastly, we invoke `higherOrderFunc()`, passing in `anotherFunc` as its
argument, thus fulfilling its dreams of being called by the higher-order
function.

``` js
higherOrderFunc(() => {
  for (let i = 0; i <= 10; i++){
    console.log(i);
  }
});
```

In this example, we invoked `higherOrderFunc()` with an <a
href="https://www.codecademy.com/courses/introduction-to-javascript/lessons/functions/exercises/function-expressions"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">anonymous function</a> (a function without a name) that
counts to 10. Anonymous functions can be arguments too!

Let’s get some practice writing higher-order functions.

### Instructions

**1.**

Here we have a function, `addTwo()`, that adds 2 to whatever is passed
into it. Below that, we’ve created what will be a higher-order function,
`checkConsistentOutput()`. The purpose of the higher-order function will
be to check the work of `addTwo()`. Let’s get started!

To begin, inside the body of `checkConsistentOutput()`, declare two
variables: `checkA` and `checkB`:

- `checkA` stores the sum `val` plus `2`.
- `checkB` stores the invocation of the `func` callback, with `val` as
  the argument.

**2.**

Next, below the variables, write a conditional statement that checks if
the value of `checkA` is equal to the value `checkB`. If true, return
the result of the callback function. If false, return the string
`'inconsistent results'`.

**3.**

Finally, using `console.log()`, log the invocation of
`checkConsistentOutput()` with two arguments: the `addTwo()` function
and any number.

### Solution

``` javascript
const addTwo = num => {
  return num + 2;
}

const checkConsistentOutput = (func, val) => {
  let checkA = val + 2;
  let checkB = func(val);
  return checkA === checkB ? func(val) : 'inconsistent results';  
}

console.log(checkConsistentOutput(addTwo, 10));
```

    ## 12

## Review

Great job! By thinking about functions as data, and learning about
higher-order functions, you’ve taken important steps in learning to
write clean, modular code that takes advantage of JavaScript’s
flexibility.

Let’s review what we learned in this lesson:

- Abstraction allows us to write complicated code in a way that’s easy
  to reuse, debug, and understand for human readers.

- We can work with functions the same way we work with any other type of
  data, including reassigning them to new variables.

- JavaScript functions are first-class objects, so they have properties
  and methods like any other object.

- Functions can be passed into other functions as parameters.

- A higher-order function is a function that either accepts functions as
  parameters, returns a function, or both.

### Instructions

Feel free to play around with the code in the workspace.

- What happens if you change the value of `2` in `checkA`?
- Which variable holds the callback function?
- What happens if you invoke the function’s argument?

In the following lesson, you’ll learn how higher-order functions are
used in some of the most important and widely-used JavaScript methods,
*iterators*!

# Iterators

## Introduction to Iterators

Imagine you had a grocery list and you wanted to know what each item on
the list was. You’d have to scan through each row and check for the
item. This common task is similar to what we have to do when we want to
iterate over, or loop through, an array. One tool at our disposal is the
`for` loop. However, we also have access to built-in array methods which
make looping easier.

The built-in JavaScript array methods that help us iterate are called
*iteration methods*, at times referred to as *iterators*. Iterators are
methods called on arrays to manipulate elements and return values.

In this lesson, you will learn the syntax for these methods, their
return values, how to use the documentation to understand them, and how
to choose the right iterator method for a given task.

### Instructions

Inspect the code in **main.js**. Notice the different methods being
called on the arrays:

- `.forEach()`
- `.map()`
- `.filter()`

Run the code to see the output!

### Solution

``` javascript
const artists = ['Picasso', 'Kahlo', 'Matisse', 'Utamaro'];

artists.forEach(artist => {
  console.log(artist + ' is one of my favorite artists.');
});

const numbers = [1, 2, 3, 4, 5];

const squareNumbers = numbers.map(number => {
  return number * number;
});

console.log(squareNumbers);

const things = ['desk', 'chair', 5, 'backpack', 3.14, 100];

const onlyNumbers = things.filter(thing => {
  return typeof thing === 'number';
});

console.log(onlyNumbers);
```

    ## Picasso is one of my favorite artists.
    ## Kahlo is one of my favorite artists.
    ## Matisse is one of my favorite artists.
    ## Utamaro is one of my favorite artists.
    ## [ 1, 4, 9, 16, 25 ]
    ## [ 5, 3.14, 100 ]

## The .forEach() Method

The first iteration method that we’re going to learn is <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/forEach?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.forEach()</code></a>. Aptly named,
`.forEach()` will execute the same code for each element of an array.  
<img
src="https://content.codecademy.com/courses/learn-javascript-iterators/iterator%20anatomy.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Diagram outlining the parts of an array iterator including the array identifier, the section that is the iterator, and the callback function" />

The code above will log a nicely formatted list of the groceries to the
console. Let’s explore the syntax of invoking `.forEach()`.

- `groceries.forEach()` calls the `forEach` method on the `groceries`
  array.
- `.forEach()` takes an argument of callback function. Remember, a
  callback function is a function passed as an argument into another
  function.
- `.forEach()` loops through the array and executes the callback
  function for each element. During each execution, the current element
  is passed as an argument to the callback function.
- The return value for `.forEach()` will always be `undefined`.

Another way to pass a callback for `.forEach()` is to use arrow function
syntax.

``` js
groceries.forEach(groceryItem => console.log(groceryItem));
```

We can also define a function beforehand to be used as the callback
function.

``` js
function printGrocery(element){
  console.log(element);
}
 
groceries.forEach(printGrocery);
```

The above example uses a function declaration but you can also use a
function expression or arrow function as well.

All three code snippets do the same thing. In each array iteration
method, we can use any of the three examples to supply a callback
function as an argument to the iterator. It’s good to be aware of the
different ways to pass in callback functions as arguments in iterators
because developers have different stylistic preferences. Nonetheless,
due to the strong adoption of ES6, we will be using arrow function
syntax in the later exercises.

### Instructions

**1.**

Iterate over the `fruits` array to log `I want to eat a` plus the name
of each fruit to the console. For example, `I want to eat a mango`.

You may use any form of callback you prefer.

### Solution

``` javascript
const fruits = ['mango', 'papaya', 'pineapple', 'apple'];

// Iterate over fruits below
fruits.forEach(fruit => console.log(`I want to eat a ${fruit}.`))
```

    ## I want to eat a mango.
    ## I want to eat a papaya.
    ## I want to eat a pineapple.
    ## I want to eat a apple.

## The .map() Method

The second iterator we’re going to cover is `.map()`. When <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/map?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.map()</code></a> is called on an
array, it takes an argument of a callback function and returns a new
array! Take a look at an example of calling `.map()`:

``` js
const numbers = [1, 2, 3, 4, 5]; 
 
const bigNumbers = numbers.map(number => {
  return number * 10;
});
```

`.map()` works in a similar manner to `.forEach()`— the major difference
is that `.map()` returns a new array.

In the example above:

- `numbers` is an array of numbers.
- `bigNumbers` will store the return value of calling `.map()` on
  `numbers`.
- `numbers.map` will iterate through each element in the `numbers` array
  and pass the element into the callback function.
- `return number * 10` is the code we wish to execute upon each element
  in the array. This will save each value from the `numbers` array,
  multiplied by `10`, to a new array.

If we take a look at `numbers` and `bigNumbers`:

``` js
console.log(numbers); // Output: [1, 2, 3, 4, 5]
console.log(bigNumbers); // Output: [10, 20, 30, 40, 50]
```

Notice that the elements in `numbers` were not altered and `bigNumbers`
is a new array.

### Instructions

**1.**

Add your code under the `animals` array and before the line
`console.log(secretMessage.join(''));`

Use `.map()` to create a new array that contains the first character of
each string in the `animals` array. Save the new array to a `const`
variable named `secretMessage`.

**2.**

Use `.map()` to divide all the numbers in `bigNumbers` by `100`. Save
the returned values to a variable declared with `const` called
`smallNumbers`.

### Solution

``` javascript
const animals = ['Hen', 'elephant', 'llama', 'leopard', 'ostrich', 'Whale', 'octopus', 'rabbit', 'lion', 'dog'];

// Create the secretMessage array below
const secretMessage = animals.map(animal => animal[0]);

console.log(secretMessage.join(''));

const bigNumbers = [100, 200, 300, 400, 500];

// Create the smallNumbers array below
const smallNumbers = bigNumbers.map(num => num/100);

console.log(smallNumbers)
```

    ## HelloWorld
    ## [ 1, 2, 3, 4, 5 ]

## The .filter() Method

Another useful iterator method is <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/filter?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.filter()</code></a>. Like
`.map()`, `.filter()` returns a new array. However, `.filter()` returns
an array of elements after filtering out certain elements from the
original array. The callback function for the `.filter()` method should
return `true` or `false` depending on the element that is passed to it.
The elements that cause the callback function to return `true` are added
to the new array. Take a look at the following example:

``` js
const words = ['chair', 'music', 'pillow', 'brick', 'pen', 'door']; 
 
const shortWords = words.filter(word => {
  return word.length < 6;
});
```

- `words` is an array that contains string elements.
- `const shortWords =` declares a new variable that will store the
  returned array from invoking `.filter()`.
- The callback function is an arrow function that has a single
  parameter, `word`. Each element in the `words` array will be passed to
  this function as an argument.
- `word.length < 6;` is the condition in the callback function. Any
  `word` from the `words` array that has fewer than `6` characters will
  be added to the `shortWords` array.

Let’s also check the values of `words` and `shortWords`:

``` js
console.log(words); // Output: ['chair', 'music', 'pillow', 'brick', 'pen', 'door']; 
console.log(shortWords); // Output: ['chair', 'music', 'brick', 'pen', 'door']
```

Observe how `words` was not mutated, i.e. changed, and `shortWords` is a
new array.

### Instructions

**1.**

Call the `.filter()` method on `randomNumbers` to return values that are
less than `250`. Save them to a new array called `smallNumbers`,
declared with `const`.

**2.**

Now let’s work with an array of strings. Invoke `.filter()` on the
`favoriteWords` array to return elements that have more than 7
characters. Save the returned array to a `const` variable named
`longFavoriteWords`.

### Solution

``` javascript
const randomNumbers = [375, 200, 3.14, 7, 13, 852];

// Call .filter() on randomNumbers below
const smallNumbers = randomNumbers.filter(num => {
  return num < 250;
})

const favoriteWords = ['nostalgia', 'hyperbole', 'fervent', 'esoteric', 'serene'];


// Call .filter() on favoriteWords below

const longFavoriteWords = favoriteWords.filter(word => {
  return word.length > 7;
})
```

## The .findIndex() Method

We sometimes want to find the location of an element in an array. That’s
where the `.findIndex()` method comes in! Calling <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/findIndex?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.findIndex()</code></a> on an array
will return the index of the first element that evaluates to `true` in
the callback function.

``` js
const jumbledNums = [123, 25, 78, 5, 9]; 
 
const lessThanTen = jumbledNums.findIndex(num => {
  return num < 10;
});
```

- `jumbledNums` is an array that contains elements that are numbers.
- `const lessThanTen =` declares a new variable that stores the returned
  index number from invoking `.findIndex()`.
- The callback function is an arrow function that has a single
  parameter, `num`. Each element in the `jumbledNums` array will be
  passed to this function as an argument.
- `num < 10;` is the condition that elements are checked against.
  `.findIndex()` will return the index of the first element which
  evaluates to `true` for that condition.

Let’s take a look at what `lessThanTen` evaluates to:

``` js
console.log(lessThanTen); // Output: 3 
```

If we check what element has index of 3:

``` js
console.log(jumbledNums[3]); // Output: 5
```

Great, the element in index `3` is the number `5`. This makes sense
since `5` is the first element that is less than 10.

If there isn’t a single element in the array that satisfies the
condition in the callback, then `.findIndex()` will return `-1`.

``` js
const greaterThan1000 = jumbledNums.findIndex(num => {
  return num > 1000;
});
 
console.log(greaterThan1000); // Output: -1
```

### Instructions

**1.**

Invoke `.findIndex()` on the `animals` array to find the index of the
element that has the value `'elephant'` and save the returned value to a
`const` variable named `foundAnimal`.

**2.**

Let’s see if we can find the index of the first animal that starts with
the letter `'s'`.

Call `.findIndex()` on the `animals` array and return the index of the
first element that starts with `'s'`. Assign the returned value to a
`const` variable named `startsWithS`.

### Solution

``` javascript
const animals = ['hippo', 'tiger', 'lion', 'seal', 'cheetah', 'monkey', 'salamander', 'elephant'];

const foundAnimal = animals.findIndex(animal => {
  return animal === 'elephant';
});

const startsWithS = animals.findIndex(animal => {
  return animal[0] === 's' ? true : false;
});
```

## The .reduce() Method

Another widely used iteration method is `.reduce()`. The <a
href="https://www.codecademy.com/resources/docs/javascript/arrays/reduce?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.reduce()</code></a> method returns
a single value after iterating through the elements of an array, thereby
*reducing* the array. Take a look at the example below:

``` js
const numbers = [1, 2, 4, 10];
 
const summedNums = numbers.reduce((accumulator, currentValue) => {
  return accumulator + currentValue
})
 
console.log(summedNums) // Output: 17
```

Here are the values of `accumulator` and `currentValue` as we iterate
through the `numbers` array:

| Iteration | `accumulator` | `currentValue` | return value |
|-----------|---------------|----------------|--------------|
| First     | 1             | 2              | 3            |
| Second    | 3             | 4              | 7            |
| Third     | 7             | 10             | 17           |

Now let’s go over the use of `.reduce()` from the example above:

- `numbers` is an array that contains numbers.
- `summedNums` is a variable that stores the returned value of invoking
  `.reduce()` on `numbers`.
- `numbers.reduce()` calls the `.reduce()` method on the `numbers` array
  and takes in a callback function as argument.
- The callback function has two parameters, `accumulator` and
  `currentValue`. The value of `accumulator` starts off as the value of
  the first element in the array and the `currentValue` starts as the
  second element. To see the value of `accumulator` and `currentValue`
  change, review the chart above.
- As `.reduce()` iterates through the array, the return value of the
  callback function becomes the `accumulator` value for the next
  iteration, `currentValue` takes on the value of the current element in
  the looping process.

The `.reduce()` method can also take an optional second parameter to set
an initial value for `accumulator` (remember, the first argument is the
callback function!). For instance:

``` js
const numbers = [1, 2, 4, 10];
 
const summedNums = numbers.reduce((accumulator, currentValue) => {
  return accumulator + currentValue
}, 100)  // <- Second argument for .reduce()
 
console.log(summedNums); // Output: 117
```

Here’s an updated chart that accounts for the second argument of `100`:

| Iteration \# | `accumulator` | `currentValue` | return value |
|--------------|---------------|----------------|--------------|
| First        | 100           | 1              | 101          |
| Second       | 101           | 2              | 103          |
| Third        | 103           | 4              | 107          |
| Fourth       | 107           | 10             | 117          |

### Instructions

**1.**

Let’s practice calling `.reduce()` and using `console.log()` to check
the values as `.reduce()` iterates through the array.

In **main.js**, there is an array of numbers, `newNumbers`.

To start, declare a new variable named `newSum` using the `const`
keyword. Assign to `newSum` the value of calling `.reduce()` on
`newNumbers`. You don’t need to provide any arguments to `.reduce()`
yet.

You’ll also see a `TypeError: undefined is not a function` but we’ll fix
that after we add our callback function in the next step!

**2.**

Provide `.reduce` with an argument of a callback function. The callback
function has two parameters. The first parameter is `accumulator` and
the second parameter is `currentValue`. Use either a function expression
or an arrow function.

**3.**

To check the value being used as we iterate through the array, add three
statements to the function body of the callback:

- `console.log('The value of accumulator: ', accumulator);`
- `console.log('The value of currentValue: ', currentValue);`
- a return statement that adds `accumulator` to `currentValue`.

**4.**

Log the value of `newSum` to the console to see the return value of
calling `.reduce()` on `newNumbers`.

**5.**

While we have this code set up, let’s also check what happens if you add
a second argument to `.reduce()`. The second argument acts as an initial
value for the `accumulator`.

Add a second argument of `10` to `.reduce()`.

### Solution

``` javascript
const newNumbers = [1, 3, 5, 7];

const newSum = newNumbers.reduce((accumulator, currentValue) => {
  console.log('The value of accumulator: ', accumulator);
  console.log('The value of currentValue: ', currentValue);
  return accumulator + currentValue;
}, 10);

console.log(newSum);
```

    ## The value of accumulator:  10
    ## The value of currentValue:  1
    ## The value of accumulator:  11
    ## The value of currentValue:  3
    ## The value of accumulator:  14
    ## The value of currentValue:  5
    ## The value of accumulator:  19
    ## The value of currentValue:  7
    ## 26

## Iterator Documentation

There are many additional built-in array methods, a complete list of
which is on the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array#Iteration_methods"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN’s Array iteration methods page</a>.

The documentation for each method contains several sections:

1.  A short definition.
2.  A block with the correct syntax for using the method.
3.  A list of parameters the method accepts or requires.
4.  The return value of the function.
5.  An extended description.
6.  Examples of the method’s use.
7.  Other additional information.

In the instructions below, there are some errors in the code. Use the
documentation for a given method to determine the error or fill in a
blank to make the code run correctly.

### Instructions

**1.**

In the code editor, there is an array called `words`. We want to create
a new array of interesting words. The first thing we want to do is check
if there are words that are fewer than `6` characters long. There is
something missing in the `words.some()` method call. Fix this method so
that `true` is printed to the console.

For more information browse <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN’s documentation on <code
class="code__2rdF32qjRVp7mMVBHuPwDS">.some()</code></a> .

**2.**

The `.some()` method returned `true`, which means there are some words
in the array that are shorter than six characters. Use the `.filter()`
method to save any words longer than `5` characters to a new variable
called `interestingWords`, declared with `const`.

We’ve used `.filter()` in a previous exercise, but, for more information
browse <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN’s documentation on <code
class="code__2rdF32qjRVp7mMVBHuPwDS">.filter()</code></a> .

**3.**

In the last line of **main.js**, there is this code:

``` js
// console.log(interestingWords.every(word =>        ));
```

Complete the code between the parentheses to check if every element has
more than 5 characters.

Make sure to uncomment (delete the `//` before) the last line of the
program before you run the code.

For more information browse <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN’s documentation on <code
class="code__2rdF32qjRVp7mMVBHuPwDS">.every()</code></a> .

### Solution

``` javascript
const words = ['unique', 'uncanny', 'pique', 'oxymoron', 'guise'];

// Something is missing in the method call below

console.log(words.some(word => {
  return word.length < 6;
}));

// Use filter to create a new array
const interestingWords = words.filter((word) => {return word.length > 5});


// Make sure to uncomment the code below and fix the incorrect code before running it

console.log(interestingWords.every((word) => {return word.length > 5}));
```

    ## true
    ## true

## Choose the Right Iterator

There are many iteration methods you can choose. In addition to learning
the correct syntax for the use of iteration methods, it is also
important to learn how to choose the correct method for different
scenarios. The exercises below will give you the opportunity to do just
that!

You’ll see errors pop up in the terminal as you work through this
exercise, but by the end the errors will be gone!

### Instructions

**1.**

Replace the word `method` in the first method call with a method that
will do something to each of the values in the array and return
`undefined`.

**2.**

In the second method call, replace the word `method` with a method that
will return a new array with only those elements longer than `7`
characters.

**3.**

In the third method call, replace the word `method` with a method that
accepts an array containing multiple values and returns a single value.

**4.**

In the fourth method call, replace the word `method` with a method that
will return a new array of numbers returned from the function.

**5.**

In the fifth method call, replace the word `method` with a method that
will return a boolean value.

### Solution

``` javascript
const cities = ['Orlando', 'Dubai', 'Edinburgh', 'Chennai', 'Accra', 'Denver', 'Eskisehir', 'Medellin', 'Yokohama'];

const nums = [1, 50, 75, 200, 350, 525, 1000];

//  Choose a method that will return undefined
cities.forEach(city => console.log('Have you visited ' + city + '?'));

// Choose a method that will return a new array
const longCities = cities.filter(city => city.length > 7);

// Choose a method that will return a single value
const word = cities.reduce((acc, currVal) => {
  return acc + currVal[0]
}, "C");

console.log(word)

// Choose a method that will return a new array
const smallerNums = nums.map(num => num - 5);

// Choose a method that will return a boolean value
nums.every(num => num < 0);
// OR nums.some(num => num < 0);
```

    ## Have you visited Orlando?
    ## Have you visited Dubai?
    ## Have you visited Edinburgh?
    ## Have you visited Chennai?
    ## Have you visited Accra?
    ## Have you visited Denver?
    ## Have you visited Eskisehir?
    ## Have you visited Medellin?
    ## Have you visited Yokohama?
    ## CODECADEMY

## Review

Awesome job on clearing the iterators lesson! You have learned a number
of useful methods in this lesson as well as how to use the JavaScript
documentation from the Mozilla Developer Network to discover and
understand additional methods. Let’s review!

- `.forEach()` is used to execute the same code on every element in an
  array but does not change the array and returns `undefined`.
- `.map()` executes the same code on every element in an array and
  returns a new array with the updated elements.
- `.filter()` checks every element in an array to see if it meets
  certain criteria and returns a new array with the elements that return
  truthy for the criteria.
- `.findIndex()` returns the index of the first element of an array that
  satisfies a condition in the callback function. It returns `-1` if
  none of the elements in the array satisfies the condition.
- `.reduce()` iterates through an array and takes the values of the
  elements and returns a single value.
- All iterator methods take a callback function, which can be a
  pre-defined function, a function expression, or an arrow function.
- You can visit the <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Mozilla Developer Network</a> to learn
  more about iterator methods (and all other parts of JavaScript!).

### Instructions

If you want to challenge yourself:

- Define a callback function before you use it in a iterator.
- Chain two iteration methods on the same array.
- Use the optional arguments in an iterator to include the index or the
  entire array. (Check out <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array#Iteration_methods"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN’s Array iteration methods page</a>
  for more information)
- Use `.reduce()` to take a multi-layered array and return a single
  layer array from scratch.

# Grammar Checker

In this project, you’ll use what you know about iterating over arrays to
gather information and improve the quality of a paragraph.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Getting Started

1\.

In **main.js**, the `story` variable holds the paragraph we’ll be
editing. In order to edit the story, we turn it into an array on line 3.
The <a
href="https://www.codecademy.com/resources/docs/javascript/strings/split"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.split()</code> method</a>
separates the `story` string by the space character (`' '`) and stores
each word as an element of the array.

To see the array we’ll be working with throughout the lesson, log
`storyWords` to the console.

After you’ve viewed the `storyWords` array, comment out the
`console.log()` statement before moving to the next task.

2\.

For a better visual comparison of the original and edited stories, we
want to view the edited `storyWords` array as a string. To change the
`storyWords` array back into a readable string, we can invoke the
`.join()` method on `storyWords`.

Give the `.join()` method an argument of an empty space character
(`' '`) to separate each array element with a space in the string.

Place the `.join()` method invocation as an argument of a
`console.log()` statement to log the final story to the console.

## Counting Words

3\.

Now it’s time to start editing the story by manipulating the
`storyWords` array. We want to be able to see the changes, so be sure
your `console.log()` of the joined story is the last line of code in
your editor.

First, above the `console.log()` statement that uses the `.join()`
method, create a variable named `count` that stores the number `0`.

Directly below `count`, use a `.forEach()` method to iterate over the
`storyWords` array. As an argument of the `forEach()` method, create an
empty function to be used as the callback function.

While ES6 arrow syntax is recommended for the callback function, feel
free to use any syntax you’re comfortable with.

4\.

For each word in the `storyWords` array, we want the `count` variable to
increment by one.

Add a parameter named `word` to the callback function of the
`.forEach()` method to be used to store the current element when
iterating over the `storyWords` array. Each time `storyWord` iterates,
increment `count` by one.

Below the `.forEach()` method, log `count` to see how many words are in
the story.

## Filtering Words

5\.

A word count of 181 is a bit long for this story. Let’s filter out all
instances of the word “literally” to shorten the story and remove the
unnecessary word. We will reassign the filtered story to the same
`storyWords` variable by applying the `.filter()` method! Throughout the
project, we’ll use this approach of reassigning the `storyWords`
variable for each revision of the story.

Below where you logged the `count` variable, reassign the `storyWords`
variable to equal the invocation of the `.filter()` method on the
`storyWords` array. Give the `.filter()` method a callback function with
a parameter of `word`.

6\.

Below the `storyWords` variable declaration, notice the variable
`unnecessaryWord` on line 4. We want to filter out the value of
`unnecessaryWord` from the story.

Within the `filter()` method’s callback function body, return `word`
only if it is **NOT** equal to `unnecessaryWord`.

Check the `story` string in the console to make sure it doesn’t include
the word “literally”. The first instance of “literally” was previously
in the first sentence.

## Replacing Words

7\.

Now that we’ve removed the unnecessary words, let’s take care of any
misspelled words in the story. We can reassign `storyWords` to a new
array of spell-checked words using the `.map()` method!

Reassign `storyWords` to equal the invocation of the `.map()` method on
the `storyWords` array.

Set`word` as a parameter of `.map()`’s callback function.

In the callback’s body, define a conditional statement to check if the
`word` argument is equal to the `misspelledWord` variable. If it is,
return the correct spelling of the string, “beautiful”. If not, return
`word`.

Take a look at the `story` string in the console to see the correct
spellings! You can see one instance of the spellchecked word in the
first sentence of the story.

8\.

Uh oh, your great grandmother is going to read the story and there’s a
“bad” word in it! Let’s apply the `.findIndex()` method to `storyWords`
to find the index of the bad word.

Start by declaring a variable called `badWordIndex` and setting it to
the invocation of `.findIndex()` on the `storyWords` array.

The `.findIndex()` callback function should check each `word` to see if
it equals the `badWord` variable declared on line 6, and return the
index of the found word.

Then, log `badWordIndex` to the console.

9\.

Now that we have the index of the bad word, we can easily replace it
with something more appropriate.

Access the element inside the `storyWords` array that has the index of
`badWordIndex` using bracket notation. Set the accessed element equal to
the more appropriate string, `'really'`.

Save the code and check that the bad word has been replaced.

10\.

Finally, let’s simplify the words in the story to appeal to a broader
audience. We can make sure every word in the story is 10 characters or
less using the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.every()</code> method</a>. The
`.every()` method uses a callback function to test if every element in
an array passes a specified condition. It returns `true` if all elements
pass, and `false` if there is an element that does not pass.

To start, define a variable called `lengthCheck` and set it to the
invocation of the `.every()` method on `storyWords`. In the callback
function, test whether every `word` has less than or equal to 10
characters.

Log `lengthCheck` to the console to see the result. If `true` is logged,
every word in the story has 10 characters or less. Otherwise, one or
more words are longer than 10 characters.

11\.

Hmm, it looks like there’s at least one word longer than 10 characters.

Use an iterator method of your choice to access the word (there is only
one) in the `storyWords` array that is greater than 10 characters. Then,
manually replace the word in the original `story` string with a shorter
word.

Some ideas for replacement words that can be used are: stunning,
dazzling, or glorious.

## Patting Yourself on the Back

12\.

Great work! You’ve vastly improved the story using some of the most
important iterator methods available to us to use as JavaScript
developers.

Feel free to continue using iterator methods to make further edits, or
click *Next* to continue your learning journey.

### [Solution](mini-linter)

``` javascript
let story =
  'Last weekend, I took literally the most beautifull bike ride of my life. The route is called "The 9W to Nyack" and it stretches all the way from Riverside Park in Manhattan to South Nyack, New Jersey. It\'s really an adventure from beginning to end! It is a 48 mile loop and it literally took me an entire day. I stopped at Riverbank State Park to take some artsy photos. It was a short stop, though, because I had a freaking long way to go. After a quick photo op at the very popular Little Red Lighthouse I began my trek across the George Washington Bridge into New Jersey. The GW is a breathtaking 4,760 feet long! I was already very tired by the time I got to the other side. An hour later, I reached Greenbrook Nature Sanctuary, an extremely beautifull park along the coast of the Hudson. Something that was very surprising to me was that near the end of the route you literally cross back into New York! At this point, you are very close to the end.';

let storyWords = story.split(" ");
let unnecessaryWord = "literally";
let misspelledWord = "beautifull";
let badWord = "freaking";

// log the storyWords array to the console
// console.log(storyWords);

// join the storyWords array back into a string
var storyString = storyWords.join(" ");

// log the story string
console.log(storyString);

// count the number of words in the story
var count = 0;
storyWords.forEach(function (word) {
  count++;
});
console.log(count);

// filter out the word "literally"
storyWords = storyWords.filter(function (word) {
  return word !== unnecessaryWord;
});
console.log(storyWords);

// replace misspelled words
storyWords = storyWords.map(function (word) {
  if (word === misspelledWord) {
    return "beautiful";
  }
  return word;
});
console.log(storyWords);

// find and replace a bad word
var badWordIndex = storyWords.findIndex(function (word) {
  return word === badWord;
});
console.log(badWordIndex);
storyWords[badWordIndex] = "really";
console.log(storyWords);

// find and replace a long word
const lengthCheck = storyWords.every((word) => word.length <= 10);
console.log(lengthCheck);

if (!lengthCheck) {
  const longWord = storyWords.find((word) => word.length > 10);
  const index = storyWords.indexOf(longWord);
  storyWords[index] = "stunning";
  const newStory = storyWords.join(" ");
  console.log(newStory);
}
```

    ## Last weekend, I took literally the most beautifull bike ride of my life. The route is called "The 9W to Nyack" and it stretches all the way from Riverside Park in Manhattan to South Nyack, New Jersey. It's really an adventure from beginning to end! It is a 48 mile loop and it literally took me an entire day. I stopped at Riverbank State Park to take some artsy photos. It was a short stop, though, because I had a freaking long way to go. After a quick photo op at the very popular Little Red Lighthouse I began my trek across the George Washington Bridge into New Jersey. The GW is a breathtaking 4,760 feet long! I was already very tired by the time I got to the other side. An hour later, I reached Greenbrook Nature Sanctuary, an extremely beautifull park along the coast of the Hudson. Something that was very surprising to me was that near the end of the route you literally cross back into New York! At this point, you are very close to the end.
    ## 181
    ## [
    ##   'Last',      'weekend,',   'I',         'took',     'the',
    ##   'most',      'beautifull', 'bike',      'ride',     'of',
    ##   'my',        'life.',      'The',       'route',    'is',
    ##   'called',    '"The',       '9W',        'to',       'Nyack"',
    ##   'and',       'it',         'stretches', 'all',      'the',
    ##   'way',       'from',       'Riverside', 'Park',     'in',
    ##   'Manhattan', 'to',         'South',     'Nyack,',   'New',
    ##   'Jersey.',   "It's",       'really',    'an',       'adventure',
    ##   'from',      'beginning',  'to',        'end!',     'It',
    ##   'is',        'a',          '48',        'mile',     'loop',
    ##   'and',       'it',         'took',      'me',       'an',
    ##   'entire',    'day.',       'I',         'stopped',  'at',
    ##   'Riverbank', 'State',      'Park',      'to',       'take',
    ##   'some',      'artsy',      'photos.',   'It',       'was',
    ##   'a',         'short',      'stop,',     'though,',  'because',
    ##   'I',         'had',        'a',         'freaking', 'long',
    ##   'way',       'to',         'go.',       'After',    'a',
    ##   'quick',     'photo',      'op',        'at',       'the',
    ##   'very',      'popular',    'Little',    'Red',      'Lighthouse',
    ##   'I',         'began',      'my',        'trek',     'across',
    ##   ... 78 more items
    ## ]
    ## [
    ##   'Last',      'weekend,',  'I',         'took',     'the',
    ##   'most',      'beautiful', 'bike',      'ride',     'of',
    ##   'my',        'life.',     'The',       'route',    'is',
    ##   'called',    '"The',      '9W',        'to',       'Nyack"',
    ##   'and',       'it',        'stretches', 'all',      'the',
    ##   'way',       'from',      'Riverside', 'Park',     'in',
    ##   'Manhattan', 'to',        'South',     'Nyack,',   'New',
    ##   'Jersey.',   "It's",      'really',    'an',       'adventure',
    ##   'from',      'beginning', 'to',        'end!',     'It',
    ##   'is',        'a',         '48',        'mile',     'loop',
    ##   'and',       'it',        'took',      'me',       'an',
    ##   'entire',    'day.',      'I',         'stopped',  'at',
    ##   'Riverbank', 'State',     'Park',      'to',       'take',
    ##   'some',      'artsy',     'photos.',   'It',       'was',
    ##   'a',         'short',     'stop,',     'though,',  'because',
    ##   'I',         'had',       'a',         'freaking', 'long',
    ##   'way',       'to',        'go.',       'After',    'a',
    ##   'quick',     'photo',     'op',        'at',       'the',
    ##   'very',      'popular',   'Little',    'Red',      'Lighthouse',
    ##   'I',         'began',     'my',        'trek',     'across',
    ##   ... 78 more items
    ## ]
    ## 78
    ## [
    ##   'Last',      'weekend,',  'I',         'took',    'the',
    ##   'most',      'beautiful', 'bike',      'ride',    'of',
    ##   'my',        'life.',     'The',       'route',   'is',
    ##   'called',    '"The',      '9W',        'to',      'Nyack"',
    ##   'and',       'it',        'stretches', 'all',     'the',
    ##   'way',       'from',      'Riverside', 'Park',    'in',
    ##   'Manhattan', 'to',        'South',     'Nyack,',  'New',
    ##   'Jersey.',   "It's",      'really',    'an',      'adventure',
    ##   'from',      'beginning', 'to',        'end!',    'It',
    ##   'is',        'a',         '48',        'mile',    'loop',
    ##   'and',       'it',        'took',      'me',      'an',
    ##   'entire',    'day.',      'I',         'stopped', 'at',
    ##   'Riverbank', 'State',     'Park',      'to',      'take',
    ##   'some',      'artsy',     'photos.',   'It',      'was',
    ##   'a',         'short',     'stop,',     'though,', 'because',
    ##   'I',         'had',       'a',         'really',  'long',
    ##   'way',       'to',        'go.',       'After',   'a',
    ##   'quick',     'photo',     'op',        'at',      'the',
    ##   'very',      'popular',   'Little',    'Red',     'Lighthouse',
    ##   'I',         'began',     'my',        'trek',    'across',
    ##   ... 78 more items
    ## ]
    ## false
    ## Last weekend, I took the most beautiful bike ride of my life. The route is called "The 9W to Nyack" and it stretches all the way from Riverside Park in Manhattan to South Nyack, New Jersey. It's really an adventure from beginning to end! It is a 48 mile loop and it took me an entire day. I stopped at Riverbank State Park to take some artsy photos. It was a short stop, though, because I had a really long way to go. After a quick photo op at the very popular Little Red Lighthouse I began my trek across the George Washington Bridge into New Jersey. The GW is a stunning 4,760 feet long! I was already very tired by the time I got to the other side. An hour later, I reached Greenbrook Nature Sanctuary, an extremely beautiful park along the coast of the Hudson. Something that was very surprising to me was that near the end of the route you cross back into New York! At this point, you are very close to the end.

# Documentation: JavaScript Arrays

## [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)

The provided link goes directly to the go-to documentation for
JavaScript Arrays. This is helpful if you would like a comprehensive
resource describing all JavaScript Array methods.

Instead of trying to remember it all, use the documentation as a readily
available resource for syntax or implementation help!

# Thinking About Errors in Your Code Differently

This article explains how errors in your code aren’t a bad thing, but
rather an opportunity to learn. Additionally, it provides several steps
to identify and fix these errors.

When you get started with coding, it’s inevitable that bugs will show up
in your code. You’ll get unintended behaviors and you even get a long,
possibly scary looking, error alongside your bug(s). Even when you’re a
seasoned coder you’ll continue to encounter bugs and errors — that’s a
good thing! It’s important to understand that making and debugging
errors is part of the process and you won’t always know the solution
right away. In this article, you learn how to find the bug that’s
causing your error, and how to think about the debugging process
differently.

### Red is a Beautiful Color

Red can be a dangerous color. STOP, DANGER, DO NOT ENTER, all loud red
signs telling us to turn around, don’t go in there, you’ll get hurt.
It’s easy to carry this mindset over to coding that many new programmers
get discouraged and distraught over the red error messages that appear
in the terminal.

They think, “oh no, I’ve done something wrong again” and “clearly coding
isn’t for me, even the computer knows,” but that’s the wrong way of
thinking! All programmers, even the most experienced ones, get errors
all the time. Believe it or not, experienced programmers likely face far
more errors than a new programmer ever will.

### Errors in Your Code Mean You’re Trying To Do Something Cool

Consider the totally made up graph below:

<img
src="https://news.codecademy.com/content/images/2018/07/image3-1.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="A chart depicting a linear correlation between the number of errors you&#39;ll encounter in your code and the complexity of your code." />

As your code increases in complexity, the number of errors you’ll
encounter rises at a similar rate. An error means you’re trying to do
something that might be a little complicated (or very complicated), and
it doesn’t quite work yet, but by no means is it a sign that you should
stop trying!

In fact, there are entire engineering roles built around finding and
fixing errors. A
<a href="https://en.wikipedia.org/wiki/Site_Reliability_Engineering"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">site reliability engineer</a> finds and
report errors in web platforms. A
<a href="https://en.wikipedia.org/wiki/Test_engineer"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">test engineer</a> builds automated tests
to discover errors in software and make sure that it meets a companies
standards.

Almost all major technology companies offer cash rewards to intrepid
programmers who can find bugs in their software.
<a href="https://www.google.com/about/appsecurity/reward-program/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google</a>,
<a href="https://aws.amazon.com/security/vulnerability-reporting/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Amazon</a>, and
<a href="https://technet.microsoft.com/en-us/library/dn425036.aspx"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Microsoft</a> all encourage users to seek
out bugs and report any they might find.

Why do they do this? Why would a major technology company want its users
to try to break their software? Because they understand that
encountering bugs is one of the best ways you can improve your code.
Bugs show you where the weaknesses are, make you really consider what
you want your code to accomplish, and then guide you towards building
more reliable and secure products.

### Tools to Tackle Code Errors

Okay, okay, that makes sense! Error messages shouldn’t be scary, but
tackling them and coming up with a solution is still a skill that must
be developed. Being willing to tackle an error is a great first step,
and having some tools at your disposal to debug is a great way to feel
comfortable tackling even the gnarliest of bugs in the future.

Let’s outline a few steps you can take to solve any compiler errors that
you might encounter – these types of errors print out to the console.

The following steps will guide you through a standard error that might
get thrown your way as you learn to code, and they’ll show you that
errors aren’t as scary as they seem. In fact, the steps are mostly a
combination of reading the error carefully and copying and pasting it in
a web search!

### 1. Dissect the Error.

When an error first appears on your screen, find the line in the error
specific to your code. Lots of error messages have tons of boilerplate
details that aren’t important to the actual error. You want to find the
part of the error message that gives you insight about what happened.
That line is generally at the top of the error stack trace.

Let’s take a look at a plausible error that you could encounter when
writing a program that finds students on the honor roll among a list of
students based on their GPA. Given the list, you might want to filter
for all of the honor roll students by looking at the `gpa` property.

``` js
const GPA_BENCHMARK = 3.5;
let students = {
  1: {
    name: 'Egill Vignission',
    gpa: 3.4
  },
  2: {
    name: 'Bianca Pargas',
    gpa: 3.8
  },
  3: {
    name: 'Aisling O\'Sullivan',
    gpa: 3.4
  },
  4: {
    name: 'Sameer Fares',
    gpa: 3.9
  }
}
 
let honorRoll = students.filter(student => {
 return student.gpa >= GPA_BENCHMARK;
});
 
console.log(honorRoll);
```

After running that code, a *stack trace* that contains a lot of error
information will appear:

    TypeError: students.filter is not a function
        at /home/runner/FearlessNewDev/index.js:21:26
        at Script.runInContext (vm.js:130:18)
        at Object.<anonymous> (/run_dir/interp.js:209:20)
        at Module._compile (internal/modules/cjs/loader.js:999:30)
        at Object.Module._extensions..js (internal/modules/cjs/loader.js:1027:10)
        at Module.load (internal/modules/cjs/loader.js:863:32)
        at Function.Module._load (internal/modules/cjs/loader.js:708:14)
        at Function.executeUserEntryPoint [as runMain] (internal/modules/run_main.js:60:12)
        at internal/main/run_main_module.js:17:47

So, which line has the most important information? The first two lines
seem pretty promising.

    TypeError: students.filter is not a function
        at /home/runner/FearlessNewDev/index.js:21:26

The first line says that the JavaScript engine doesn’t think that
`.filter()` is a function — but it should be, so there might be an issue
in how it’s being used. The second line points to the line of code that
is throwing the error, which is line 21 and at the 26th character:
`let honorRoll = students.filter(student => {...`.

The code is calling `.filter()` on the `students` variable. Checking
back in on the code, you can see that `students` is an object. This
seems like a good place to start.

### 2. Ask Yourself, Is the Solution In the Error?

Often, you’ll encounter syntax errors that will show exactly where the
error occurred and what the error was. When you get these types of
errors, you can go directly back to your code and fix them. Here’s an
example of code that will throw a syntax error:

``` js
for (let x = 0; x < 10, x++) {
  console.log(x)
}
```

Running this code will output:

``` js
/home/runner/FearlessNewDev/index.js:1
for (let x = 0; x < 10, x++) {
                           ^

SyntaxError: Unexpected token ')'
```

Notice that in this case, the compiler is pointing to the syntax issue
with the `^` symbol, which sometimes makes it easier to debug. However,
the issue is that there’s accidentally a comma (`,`) instead of a
semicolon (`;`). Error messages can help, but you still need to use your
developer knowledge to fix the error!

### 3. Search on the Web for Instances of This Error.

Sometimes, step 2 will not apply, and you’ll have to dive a little
deeper into the error. Let’s return to the honor roll error that came up
in step one. Since the solution isn’t immediately obvious, you’ll need
to do some research to understand why it flagged an error.

Copy and paste the important part of the error message into a search
engine and look through the results until you find someone else who has
also run into that issue. To get better search results, you can include
relevant keywords and modify the error message to be more generic.

In the error message `TypeError: students.filter is not a function`,
it’s highly unlikely that someone else is having a `.filter()` issue on
a `students` variable with the same data types, so that’s the type of
thing that could be more generic. Instead of searching for “TypeError:
students.filter is not a function”, you can try something like
“TypeError: object filter() is not a function” and add a keyword for the
language. The final search might be: “TypeError: object filter() is not
a function JavaScript”.

After searching, one of the first results looks promising: “filter is a
method on arrays. Since the code you posted contains an object, you’re
seeing this error. You may want to apply filter after…”

Aha! If you consult the `.filter()` documentation on <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN Web Docs</a> you can confirm that
`.filter()` is only for arrays. On the Stack Overflow page, it
recommends using `Object.keys(data)` to turn the object into an iterable
array so you can use the `.filter()` `Array` method on the new array.

Google is always a good place to check, but you can also reread
documentation on MDN Web Docs or search directly on Stack Overflow,
which is a wonderful community of programmers sharing knowledge and
building cool stuff.

### 4. Compare Different Use Cases to Yours.

Often you will not find someone who was trying to do the exact same
thing you were trying to do, but who still encountered the same error.
Read through their code a bit and see if it is comparable to yours. Even
if their code is wildly different, the one or two lines that threw the
error might be very similar to your code, so the solution may end up
being the same.

Consider the result found for the `TypeError`.

<img
src="https://static-assets.codecademy.com/Courses/errors-and-error-handling/typeerror_stackoverflow.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="The screenshot shows a suggested solution on the forum Stack Overflow and includes a code snippet with a possible solution for the error message." />

Even though the solution didn’t involve a `students` object, the answer
does provide a quick way to make an `Object` work with the `.filter()`
method. It’s worth a shot to try it!

### 5. Try to implement the solution.

Tweak the code a bit to match your use case and try it out! Worst case
is that the error doesn’t go away and then you can try again. Best case
is that it’s fixed and you’ve learned what was causing your error!

Every solution you implement is a new tool you can add to your
programmer’s toolbox, and another error you will know how to solve in
the future.

Thankfully, `31piy`’s solution was able to solve the issue using the
`Object.values()` method. Take a look at the updated code:

``` js
const GPA_BENCHMARK = 3.5;
let students = {
  1: {
    name: 'Egill Vignission',
    gpa: 3.4
  },
  2: {
    name: 'Bianca Pargas',
    gpa: 3.8
  },
  3: {
    name: 'Aisling O\'Sullivan',
    gpa: 3.4
  },
  4: {
    name: 'Sameer Fares',
    gpa: 3.9
  }
}
let honorRoll = Object.values(students).filter(student => {
  return student.gpa >= GPA_BENCHMARK;
});
console.log(honorRoll);
```

After reading through the documentation and a few more Stack Overflow
responses, it also seemed like a good idea to try changing my code in a
different way, by making the `students` object be an array instead of an
object in the first place. That way the `.filter()` method can be used
directly on the array instead of first turning an object into an array.

Take a look at the updated code to reflect that change:

``` js
const GPA_BENCHMARK = 3.5;
let students = [
  {
    name: 'Egill Vignission',
    gpa: 3.4
  },
  {
    name: 'Bianca Pargas',
    gpa: 3.8
  },
  {
    name: 'Aisling O\'Sullivan',
    gpa: 3.4
  },
  {
    name: 'Sameer Fares',
    gpa: 3.9
   }
]
let honorRoll = students.filter(student => {
  return student.gpa >= GPA_BENCHMARK;
});
console.log(honorRoll);
```

In the process of figuring out this compiler error, you were able to
learn how to use `Array` methods on objects, and how to think about your
use of data types. See, every error is an opportunity to learn!

### 6. If It Doesn’t Work, Repeat Steps 2-4.

Keep searching through Google and Stack Overflow. The answer will be
there! Sometimes it’s helpful to Google parts of the error message, use
`console.log()` to see the outputs, or to read about methods and data
types at the website
<a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN Web Docs</a>.

The solutions to your errors are out there, and the process of finding
them will make you a stronger and more confident programmer. As you grow
and learn, expect to encounter countless errors, and expect each one to
be its own unique learning opportunity.

### 7. Ask The Question Yourself.

Okay, maybe the answer isn’t out there… yet. There is a wealth of
information out on the web, but you might be the first one doing
something completely new and shiny. It’s ok to ask for help. On the same
sites and forums that you found help from, post a question. Ideally, you
supply all the background information and provide relevant code that
others can look at and do their best to help you out.

### Wrap up

Remember that bugs are a good thing: finding bugs gives you the
opportunity to make your code stronger and more secure. Debugging is a
learning opportunity, and other programmers have encountered similar
issues and had to ask a lot of the same questions before you. So don’t
reinvent the wheel; instead, tap into the pool of solved bugs and
learning opportunities available on sites like Stack Overflow, or other
resources that can turn up in a web search.

When debugging, remember that you can generalize your error messages or
use keywords to make searches more relevant. Don’t be afraid of reading
through the documentation either; MDN offers a great option for that.

Most importantly, as you continue growing your debugging tool belt,
remember that everyone who has learned before you has encountered a lot
of the same bugs, and has asked the same questions online, so don’t be
afraid to try a lot of new ideas and ask questions during the debugging
process!

#### Additional resources:

- <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Errors"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">List of errors</a>
- <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Mozilla documentation</a>
- <a href="https://stackoverflow.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Stack Overflow</a>

Take a moment to test your understanding! Below is an example of code
that will throw an error:

``` js
function setInstrument(instr) {    
  let instrument = instr; 
} 
console.log(instrument); 
```

The specific error being:

``` js
ReferenceError: instrument is not defined
```

What steps would you take to research a solution and try out your
solution?

Running the code results in the error
`ReferenceError: instrument is not defined`. Since `instrument` is not a
generic variable, you can search for something more generic like
`ReferenceError: x is not defined` or
`ReferenceError: variable is not defined`. When searching with the
search phrase “ReferenceError: x is not defined JavaScript”, one answer
is from a Mozilla documentation page. In the docs, it explains that the
error appears if the variable is not available in the current scope.
Their solution moves the variable to the global scope instead of the
function scope, so we can try that.

One possible code solution is:

``` js
let instrument;
function setInstrument(instr) {
   instrument = instr;
}
setInstrument("cello");
console.log(instrument);
```

# Debugging JavaScript Code

## Debugging Overview

Any programmer will tell you that it is incredibly common to be making
great progress working through a coding problem when all of a sudden an
error like this gets thrown at you:

    /home/ccuser/workspace/learn-javascript-debugging-code/app.js:1
    "my_name".capitalize();
              ^
     
    TypeError: "my_name".capitalize is not a function
    ...

Alternatively, you might have finally finished implementing a complex
function only to find it doesn’t work at all as you expected:

``` js
console.log('The square root of 4 is ' + squareRoot(4));
=> 'The square root of 4 is 1.87878787'
```

If any of these things happen to you, don’t fret! In our article
<a href="https://news.codecademy.com/errors-in-code-think-differently/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Thinking About Errors Differently in Your
Code</a>, you discovered that these experiences are normal for all
developers, no matter how experienced they are. A key skill developers
possess is knowing how to debug their code when issues occur.

This lesson will build on that article, demonstrating how to implement
those skills in real-life JavaScript situations. If you haven’t had a
chance to read the article yet, we highly encourage you to do so right
now.

Alright, are you ready to begin your transition from frustrated coder to
bug squasher extraordinaire? Let’s get started!

### Instructions

Click ‘Next’ to develop your JavaScript debugging skills.

## Error Stack Traces

We’ll start this lesson by taking a closer look at the most
straightforward way to know your code isn’t working as expected: errors!

You might recognize errors as the scary red text that appears on your
screen when you try to run broken code. A piece of software, called a
*compiler*, is trying to translate your code so that your computer can
understand and run it. However, the compiler is coming across a piece of
code that it can’t interpret. As a result, it throws an error back to
you to let you know that it has to stop and why.

This information is logged as an **error stack trace** — a printed
message containing information about where the error occurred, what type
of error was thrown, and a description of the error.

Take a look at the diagram to the right to see where you can find all of
this information.

As a new programmer, it’s easy to see an error and be overcome with a
sense of dread and self-doubt. However, you’ll soon realize, errors are
the best kind of bug you can hope for, since they tell you exactly what
went wrong and where.

### Instructions

Take a look at the diagram to the right. When you’re ready, move on to
the next exercise to read a real error stack trace using this
information.

### Solution

<img src="https://content.codecademy.com/courses/updated_images/JavaScript%2BError%2BDiagram_Updated_1.svg" alt="Diagram of a JavaScript error." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Reading Error Stack Traces

Now that we know what information we can get from an error stack trace,
let’s take a look at an example.

    /home/ccuser/workspace/learn-javascript-debugging-code/app.js:1
    myVariable;
    ^
     
    ReferenceError: myVariable is not defined
    ...

Using this stack trace, let’s answer three questions you should ask
yourself every time you want to debug an error:

1.  **In what line did the error occur?** You can almost always find
    this information on the first line of the stack trace in the
    following format `<file path>/<file name>:<line number>`. In this
    example, the location is `app.js:1`. This means that the error was
    thrown in the file named `app.js` on line `1`.
2.  **What type of error was thrown?** The first word on the fifth line
    of the stack trace is the type of error that was thrown. In this
    case, the type of error was `ReferenceError`. We will discuss this
    error type in the next exercise.
3.  **What is the error message?** The rest of the fifth line after the
    error type provides an error message, describing what went wrong. In
    this case, the description is `myVariable is not defined`.

You might notice in this example we skipped explaining a few lines in
the stack trace and only included the beginning of the stack trace. A
large part of debugging errors is recognizing which pieces of
information are useful and which ones aren’t. For now, you will succeed
by focusing on just the first and fifth lines of your error stack
traces.

### Instructions

**1.**

Near the beginning of the text file in the code editor, you will find an
example stack trace. On line 14 of the text file, fill in the name of
the file throwing the error in this stack trace.

If you are unsure how to fill in the answer, feel free to check out the
hint.

**2.**

On line 16 of the text file, fill in the line number throwing the error
in the example stack trace.

**3.**

On line 18 of the text file, fill in the type of the error being thrown
in the example stack trace.

**4.**

On line 20 of the text file, fill in the description of the error being
thrown in the example stack trace.

### Solution

    Based on the following error stack trace, fill in the answers to the questions below:

    ------------------------------------------------------------------

    /home/ccuser/workspace/learn-javascript-debugging-code/script.js:5
    if (numberSum > total;) {
                         ^
                
    SyntaxError: Unexpected token ;

    ------------------------------------------------------------------

    From what file was this error thrown?
    1 - Answer: script.js
    On what line of that file was this error thrown?
    2 - Answer: 5
    What type of error was thrown in this stack trace?
    3 - Answer: SyntaxError
    What is the description of the error in this stack trace?
    4 - Answer: Unexpected token ;

## JavaScript Error Types

Now that you can identify the type of error from an error stack trace,
you might be wondering what the different types of errors mean.

Here are three common error types:

- **SyntaxError**: This error will be thrown when a typo creates invalid
  code — code that cannot be interpreted by the compiler. When this
  error is thrown, scan your code to make sure you properly opened and
  closed all brackets, braces, and parentheses and that you didn’t
  include any invalid semicolons.
- **ReferenceError**: This error will be thrown if you try to use a
  variable that does not exist. When this error is thrown, make sure all
  variables are properly declared.
- **TypeError**: This error will be thrown if you attempt to perform an
  operation on a value of the wrong type. For example, if we tried to
  use a string method on a number, it would throw a TypeError.

There are seven types of built-in JavaScript errors in total. You can
find more information about all of them at the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN JavaScript Error documentation</a>.
Whenever you are confronted with an error you can’t comprehend,
consulting this documentation is a great place to start.

### Instructions

**1.**

Fill in the answer to the question on line 2.

**2.**

Fill in the answer to the question on line 6.

**3.**

Fill in the answer to the question on line 9.

### Solution

    myVariable++;
    // 1 - What type of error will be thrown on the line above: ReferenceError

    const myString = 42;
    myString.substring(0);
    // 2 - What type of error will be thrown on the line above: TypeError

    const myRandomNumber; = Math.random();
    // 3 - What type of error will be thrown on the line above: SyntaxError

## Debugging Errors

Here’s a process for efficiently working through your code’s errors one
by one:

1.  Run your code. Using the first error’s stack trace, identify the
    error’s type, description, and location.
2.  Go to the file name and line number indicated by the error stack
    trace. Using the error type and description, identify the bug in
    your code.
3.  Fix the bug and re-run your code.
4.  Repeat steps 1-3 until your code no longer throws any errors.

While these steps may seem simple, it can be easy to get overwhelmed by
errors in practice. Using these steps, you can tackle your errors one at
a time and soon will have your code running error-free.

### Instructions

**1.**

The code in the code editor currently contains three errors. Using the
above steps, locate and fix all three errors in the code. Don’t be
afraid of any error messages that appear, you are triggering them on
purpose! Just take your time locating them and fixing them one at a
time.

If you get stuck, feel free to consult the hint.

**Note**: The error messages in the terminal to the right may wrap to a
new line based on your screen size. As a result, what you think is the
end of a line might only be partway through it. Read through all of the
error stack trace to ensure you find the information you’re looking for.

### Solution

``` javascript
function isSumBigger(number1, number2, total) {
  const sum = number1 + number2;
  
  if (sum > total) {
    return true;
  } else {
    return false;
  }
}

// Should return true
console.log('isSumBigger(1, 3, 2) returns: ' + isSumBigger(1, 3, 2));

// Should return false
console.log('isSumBigger(1, 3, 5) returns: ' + isSumBigger(1, 3, 5));
```

    ## isSumBigger(1, 3, 2) returns: true
    ## isSumBigger(1, 3, 5) returns: false

## Locating Silent Bugs

Errors thrown by the computer are really useful because they identify
the bug type and location for you right away. However, even if your code
runs error-free, it is not necessarily bug-free.

You may find that your code is consistently returning incorrect values
without throwing any errors. A lack of thrown errors does not mean your
code logic is completely correct.

An incredibly powerful tool for locating bugs is a method you likely
learned very early on in your JavaScript journey: `console.log()`!

By adding print statements to our code, we can identify where things
have gone wrong.

Let’s try using `console.log()` to do some debugging.

### Instructions

**1.**

In the code editor, we’ve given you a function that is supposed to take
a string containing a single word as an argument and return the
capitalized version of that word. If the string contains multiple words
(contains a space character, `' '`), it should return `null`.

Currently, this code is not working as expected. Take a look at our
tests on lines 16-19. We expect the first function call to return
`'Hey'` and the second function call to return `null`. Run the code to
see that it is not working as expected but also not throwing any errors.

**2.**

Let’s use `console.log()` to debug this code! Start by adding a
`console.log()` statement to line 2 and printing out the `word` being
passed into the function. This will help us ensure our function is being
called properly and the `word` variable is set as we expect at the start
of the function.

**3.**

Looking at the console output, both `'hey'` and `'hey ho'` are being
printed as we expected. No bugs yet.

Comment out the `console.log()` statement from the beginning of the
function. Then add the following `console.log()` statement inside the
`if` statement to see if it is working properly:

``` js
console.log('Word value inside of if statement: ' + word);
```

The behavior we want is for `'hey ho'` to enter the `if` block and
return `null` and for `'hey'` to skip the `if` block and get
capitalized.

**4.**

Look at the console output. `'hey'` is being printed from inside the
`if` statement block and `'hey ho'` is not. This is the opposite
behavior we expected. We found a bug!

Looking at our `if` statement, we accidentally included a `!` that is
negating our condition. It is saying that if a word does not have
multiple words, go into the `if` block, and if it does, move past it.

Delete the `!` character from the beginning of the `if` statement
condition to fix the bug, then re-run our code.

Our function now appears to be working as expected, so there is no need
to continue stepping through the rest of the function.

### Solution

``` javascript
function capitalizeASingleWord(word) {
  // console.log(word);
  if (word.match(' ')) {
    console.log('Word value inside of if statement: ' + word);
    return null;
  }
  
  let firstLetter = word.charAt(0);
  const restOfWord = word.slice(1);
  
  firstLetter = firstLetter.toUpperCase();
  
  return firstLetter + restOfWord;
}

// Should return "Hey"
console.log("capitalizeASingleWord('hey') returns: " + capitalizeASingleWord('hey')); 

// Should return null
console.log("capitalizeASingleWord('hey ho') returns: " + capitalizeASingleWord('hey ho'));
```

    ## capitalizeASingleWord('hey') returns: Hey
    ## Word value inside of if statement: hey ho
    ## capitalizeASingleWord('hey ho') returns: null

## Debugging with console.log()

Let’s synthesize our workflow from the previous exercise into a reusable
set of debugging steps.

1.  Go to the beginning of the malfunctioning code. Print out all
    starting variables, existing values, and arguments using
    `console.log()`. If the values are what you expect, move on to the
    next piece of logic in the code. If not, you have identified a bug
    and should skip to step 3.
2.  After the next piece of logic in your code, add `console.log()`
    statements to ensure updated variables have the values that you now
    expect and that the block of code is being executed. If that logic
    is executing properly, continue repeating this step until you find a
    line not working as expected, then move to step 3.
3.  Fix the identified bug and run your code again. If it now works as
    expected, you’ve finished debugging! If not, continue stepping
    through your code using step 2 until it does.

This might seem like a lot of printing, but once you get into the
routine of it, it will be far faster than trying to stare at your code
until you find your bugs. Let’s try this debugging process again in
practice.

### Instructions

**1.**

In the code editor, we have included a broken function for you to debug.
This function is supposed to take two strings, compare the first letter
of each, and return the string which comes later alphabetically. If the
first letters of both strings are the same, it should return `null`.

At the bottom of the file, we’ve included three test cases and their
expected outputs. If you run the code, you will see that they are not
working as expected.

Using the `console.log()` debugging mindset laid out above, walk through
the code, locate the three bugs we have included for you, and fix them.

This is a big task, so feel free to consult the hint for suggestions on
where to place your `console.log()` statements and how to fix the code.

### Solution

``` javascript
// Returns the string whose first letter is later in the alphabet. If both first letters are equal, returns null.
function getLaterFirstLetter(string1, string2) {
  const firstLetter1 = string1.charAt(0);
  const firstLetter2 = string2.charAt(0);
  
  if (firstLetter1 === firstLetter2) {
    return null;
  } else if (firstLetter1 < firstLetter2) {
    return string2;
  } else {
    return string1;
  }
}

// Should return "blueberry"
console.log("getLaterFirstLetter('avocado', 'blueberry') returns: " + getLaterFirstLetter('avocado', 'blueberry'));

// Should return "zebra"
console.log("getLaterFirstLetter('zebra', 'aardvark') returns : " + getLaterFirstLetter('zebra', 'aardvark'));

// Should return null
console.log("getLaterFirstLetter('astro', 'afar') returns: " + getLaterFirstLetter('astro', 'afar'));
```

    ## getLaterFirstLetter('avocado', 'blueberry') returns: blueberry
    ## getLaterFirstLetter('zebra', 'aardvark') returns : zebra
    ## getLaterFirstLetter('astro', 'afar') returns: null

## Finding Documentation

Sometimes once you’ve tracked down a bug, you might still be confused on
how to fix it! Whenever you want to know more about how JavaScript works
and what it can do, the best place to go is **documentation**. You can
find the JavaScript documentation at the
<a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN JavaScript web docs</a>.

The MDN JavaScript web docs are a powerful resource, but they can be
overwhelming because they cover so much information. We encourage you to
explore the docs, but often the fastest way to access a specific part of
the docs you’re interested in is to Google it.

For example, if we wanted more information on the `Number` object’s
`.isNan()` method, we could Google “MDN isNan” and then click the link
to the MDN page. If we were looking to see a list of all of the `String`
built-in methods, we might Google “MDN String”, click the link to MDN,
and then scroll down to the “Methods” section of the documentation.

There are many ways to get to the documentation you are looking for.
Find the one that works best for your workflow.

### Instructions

**1.**

In the code editor, we’ve included a function that is supposed to take a
string and return a version of that string repeated twice. For example,
you can see in the test case at the bottom of the file, we expect
`doubleString('echo')` to return `'echoecho'`.

However currently, when we run our file, nothing happens. Clearly we are
using the `.repeat()` method incorrectly. Let’s find the MDN
documentation for `String.repeat()`.

Find the link to the documentation for `String.repeat()` and paste it to
the end of the comment on line 1.

**2.**

Now that we’ve found the documentation for `String.repeat()`, let’s read
the documentation to see what we’re doing wrong. Take a look at the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/repeat#Parameters"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">parameters section of the
documentation</a>. Can you see why our string isn’t getting repeated?

Using this information, fix the `.repeat()` call in our code.

### Solution

``` javascript
// Link to String.repeat() documentation: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/repeat
function doubleString(string) {
  return string.repeat(2);
}

// Should return 'echoecho'
console.log("doubleString('echo') returns: " + doubleString('echo'));
```

    ## doubleString('echo') returns: echoecho

## Stack Overflow

At this point, you might be thinking to yourself, documentation is good
and all, but there’s no way it will solve all of my issues! And we
totally agree. All programming languages have difficult problems and
strange edge cases that appear unexpectedly and are sometimes impossible
to solve alone.

If you are ever stuck trying to solve a coding problem, we strongly
encourage you to Google for a solution. One of the best sites you will
see appear in the search results is <a
href="https://stackoverflow.com/questions/51165/how-to-sort-strings-in-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Stack Overflow</a>.

Stack Overflow is a question and answer forum where frustrated
programmers post issues and other programmers discuss and vote for
solutions. Almost always if you have an issue, Stack Overflow has an
answer.

For example, say you are stumped trying to write an alphabetize
function. If you search “alphabetize string JavaScript” on Google, <a
href="https://stackoverflow.com/questions/51165/how-to-sort-strings-in-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this Stack Overflow search result</a>
will appear. You can quickly scan through the answers on it to see which
ones work for you.

If you are ever programming and a problem is becoming so insurmountable
that you want to quit, Stack Overflow is a great place to go to get
unstuck.

### Instructions

**1.**

In the code editor, we’ve included an unfinished function,
`containsCake()`. It takes a string and checks if that string contains
the substring `'cake'` inside of it. If so, it should return `true`. If
not, it should return `false`.

Using the information in <a
href="https://stackoverflow.com/questions/1789945/how-to-check-whether-a-string-contains-a-substring-in-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this Stack Overflow post</a>, implement
the functionality of this function.

If you’re stuck on how to translate the answer from this forum into
working code, check out the hint.

### Solution

``` javascript
// Returns whether or not the provided string contains a substring of "cake" in it.
function containsCake(string) {
  return string.includes('cake');
}

// Should return true
console.log("containsCake('I think cake is my soul mate.') returns: " + containsCake('I think cake is my soul mate.'));

// Should return false
console.log("containsCake('Pie is certainly the coolest dessert.') returns: " + containsCake('Pie is certainly the coolest dessert.'));
```

    ## containsCake('I think cake is my soul mate.') returns: true
    ## containsCake('Pie is certainly the coolest dessert.') returns: false

## Debugging Review

You just learned a lot of techniques for helping you get unstuck in all
debugging situations. Congratulations! Let’s synthesize everything you
learned into one debugging process.

1.  **Is your code throwing errors?** If so, read the error stack trace
    for the type, description, and location of the error. Go to the
    error’s location and try to fix.
2.  **Is your code broken but not throwing errors?** Walk through your
    code using `console.log()` statements. When unexpected results
    occur, isolate the bug and try to fix it.
3.  **Did you locate the bug using steps 1 and 2, but can’t fix the
    bug?** Consult documentation to make sure you are using all
    JavaScript functionality properly. If you are still stuck, Google
    your issue and consult Stack Overflow for help. Read solutions or
    post your own Stack Overflow question if none exist on the topic.

It may take some time and practice, but this is how all developers work
through their issues, so don’t give up, and you’ll be an expert in no
time.

Congratulations again on learning all of these new techniques. Let’s
give them one more round of practice so you can see how much progress
you’ve made!

### Instructions

**1.**

In the code editor, we have provided you a broken implementation of a
function called `isStringPerfectLength()`. This function takes a string
(`string`), a minimum string length (`minLength`), and a maximum string
length (`maxLength`). It should return whether the provided `string` is
within the range of the two lengths. More specifically, if it is longer
than the `minLength` and shorter than the `maxLength`.

We have provided three example test cases at the bottom of the file. The
first checks if the string `'Dog'` is in the length range of `2` and
`4`. In this case, the function should return `true` because the length
of the string is `3` which is between those two values. The next two
examples fail. The first fails because the string is too long. The
second fails because the string is too short.

Using the debugging process you learned in this lesson, outlined above,
find and fix all the bugs in this code.

The code will throw errors at you right off the bat, but remember, this
is a good thing! We believe you have all the skills now to debug this
code. Don’t give up and show us what you’ve learned! We know you can do
it.

### Solution

``` javascript
function isStringPerfectLength(string, minLength, maxLength) {
  const stringLength = string.length;
  
  if (stringLength < minLength) {
    return false;
  } else if (stringLength > maxLength) {
    return false;
  } else {
    return true;
  }
}

// Should return true
console.log("isStringPerfectLength('Dog', 2, 4) returns: " + isStringPerfectLength('Dog', 2, 4));

// Should return false
console.log("isStringPerfectLength('Mouse', 2, 4) returns: " + isStringPerfectLength('Mouse', 2, 4));

// Should return false
console.log("isStringPerfectLength('Cat', 4, 9) returns: " + isStringPerfectLength('Cat', 4, 9));
```

    ## isStringPerfectLength('Dog', 2, 4) returns: true
    ## isStringPerfectLength('Mouse', 2, 4) returns: false
    ## isStringPerfectLength('Cat', 4, 9) returns: false

# Code Challenges: Intermediate JavaScript

## Introduction

In the exercises that follow, you will practice and reinforce your
understanding of JavaScript <a
href="https://www.codecademy.com/courses/introduction-to-javascript/lessons/scope/exercises/scope"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">scope</a>, <a
href="https://www.codecademy.com/courses/introduction-to-javascript/lessons/arrays/exercises/arrays"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">arrays</a>, <a
href="https://www.codecademy.com/courses/introduction-to-javascript/lessons/loops/exercises/loops"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">loops</a>, <a
href="https://www.codecademy.com/courses/introduction-to-javascript/lessons/javascript-iterators/exercises/intro"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">iterators</a>, and <a
href="https://www.codecademy.com/courses/introduction-to-javascript/lessons/objects/exercises/intro"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">objects</a>. We encourage you to review the relevant
lessons, look things up in the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN documentation</a>, check out the
hints and solution code if you get stuck, and, most of all, have fun!

### Instructions

Continue on to the first problem!

### Solution

<img src="https://static-assets.codecademy.com/assets/presskit/logo_black.svg" alt="Codecademy logo in black and white. " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## reverseArray()

### Instructions

**1.**

Write a function, `reverseArray()`, that takes in an array as an
argument and returns a new array with the elements in the reverse order.

There’s a <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">built-in method</a> that does a lot of
this work for you, but here you’re not allowed to use it. Don’t worry
you’ll have plenty of opportunities to use built-in methods later on!

``` js
const sentence = ['sense.','make', 'all', 'will', 'This'];
 
reverseArray(sentence); 
// Should return ['This', 'will', 'all', 'make', 'sense.'];
```

### Solution

``` javascript
const reverseArray = arr => {
    let reversed = [];
    for (let i = arr.length - 1; i >= 0; i--) {
        reversed.push(arr[i]);
    }
    return reversed
}
/*
// Alternate solutions:

// Using the .unshift() method
const reverseArray = arr => {
    let reversed = [];
    for (let i = 0; i < arr.length; i++) {
        reversed.unshift(arr[i]);
    }
    return reversed
}

// As a function declaration:
function reverseArray(arr) {
    let reversed = [];
    for (let i = arr.length - 1; i >= 0; i--) {
        reversed.push(arr[i]);
    }
    return reversed
}
*/

const sentence = ['sense.','make', 'all', 'will', 'This'];

console.log(reverseArray(sentence)); 
```

    ## [ 'This', 'will', 'all', 'make', 'sense.' ]

## greetAliens()

### Instructions

**1.**

Write a function, `greetAliens()`, that takes in an array of strings and
uses a `for` loop to print a greeting with each string in the array.

The greeting should take the following format:  
“Oh powerful $$stringElement$$, we humans offer our unconditional
surrender!”

``` js
const aliens = ["Blorgous", "Glamyx", "Wegord", "SpaceKing"];
 
greetAliens(aliens);
// Should print:
// Oh powerful Blorgous, we humans offer our unconditional surrender! 
// Oh powerful Glamyx, we humans offer our unconditional surrender! 
// Oh powerful Wegord, we humans offer our unconditional surrender! 
// Oh powerful SpaceKing, we humans offer our unconditional surrender! 
```

Note: You may have noticed how convenient it would be to use <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/foreach"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.forEach()</code></a>, but you’re
not allowed to use it here. Don’t worry you’ll have plenty of
opportunities to use built-in methods later on!

### Solution

``` javascript
const greetAliens = arr => {
      for (let i = 0; i < arr.length; i++) {
            console.log('Oh powerful ' + arr[i] + ', we humans offer our unconditional surrender!');
      }
}

/*
// Alternate solutions:

// Using string interpolation
const greetAliens = arr
for (let i = 0; i<arr.length; i++){
    console.log(`Oh powerful ${arr[i]}, we humans offer our unconditional surrender!`);
}

// As a function declaration:
function greetAliens(arr) {
for (let i = 0; i<arr.length; i++){
    console.log(`Oh powerful ${arr[i]}, we humans offer our unconditional surrender!`);
}
}

*/

const aliens = ["Blorgous", "Glamyx", "Wegord", "SpaceKing"];

greetAliens(aliens)
```

    ## Oh powerful Blorgous, we humans offer our unconditional surrender!
    ## Oh powerful Glamyx, we humans offer our unconditional surrender!
    ## Oh powerful Wegord, we humans offer our unconditional surrender!
    ## Oh powerful SpaceKing, we humans offer our unconditional surrender!

## convertToBaby()

### Instructions

**1.**

Write a function, `convertToBaby()`, that takes in an array as an
argument and, using a loop, returns a new array with each string in the
array prepended with `'baby '`.

``` js
const animals = ['panda', 'turtle', 'giraffe', 'hippo', 'sloth', 'human'];
 
convertToBaby(animals); 
// Should return ['baby panda', 'baby turtle', 'baby giraffe', 'baby hippo', 'baby sloth', 'baby human'];
```

Note: You may have noticed how convenient it would be to use <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">map</code></a>, but you’re not
allowed to use it here. Don’t worry you’ll have plenty of opportunities
to use built-in methods later on!

### Solution

``` javascript
const convertToBaby = arr => {
      const babyArray = [];
      for (let i = 0; i < arr.length; i++) {
            babyArray.push('baby ' + arr[i]);
      }
      return babyArray
}

/*
// As a function declaration:
function convertToBaby(arr) {
      const babyArray = [];
      for (let i = 0; i < arr.length; i++) {
            babyArray.push('baby ' + arr[i]);
      }
      return babyArray
}
*/ 

const animals = ['panda', 'turtle', 'giraffe', 'hippo', 'sloth', 'human'];

console.log(convertToBaby(animals)) 
```

    ## [
    ##   'baby panda',
    ##   'baby turtle',
    ##   'baby giraffe',
    ##   'baby hippo',
    ##   'baby sloth',
    ##   'baby human'
    ## ]

## Fix The Broken Code!

### Instructions

**1.**

We wrote a function, `smallestPowerOfTwo()`, which takes in an array.

Within our function, we create a new array called `results`. We then
loop through the argument array and calculate the smallest power of two
which is greater than or equal to the current element before using
`.push()` to add it to `results`.

It’s not doing what we want. Can you fix our code, please?

### Solution

``` javascript
const numbers = [5, 3, 9, 30];

const smallestPowerOfTwo = arr => {
      let results = [];
      // The 'outer' for loop:
      for (let i = 0; i < arr.length; i++) {
            number = arr[i];

            // The 'inner' while loop:
            // We needed to create a new variable!
            let j = 1;
            while (j < number) {
                  j = j * 2;
            }
            results.push(j);
      }
      return results
}

console.log(smallestPowerOfTwo(numbers)) 
```

    ## [ 8, 4, 16, 32 ]

## declineEverything() and acceptEverything()

### Instructions

**1.**

Write a function `declineEverything()` that takes in an array of strings
and, using `.forEach()`, loops through each element in the array and
calls `politelyDecline()` with each of them.

The `.forEach()` function should apply `politelyDecline()` directly; it
should NOT merely receive an argument function that *uses*
`politelyDecline()`.

You can test your function when you’re ready by passing in the `veggies`
array or by making your own array!

**2.**

Now we need to get healthy! Write a function `acceptEverything()` that
takes in an array of strings and loops through each element in the array
and grudgingly accepts each of them, by logging to the console in the
following format: `'Ok, I guess I will eat some [element].'`

You can use any technique you want to accomplish this task. You can test
your function when you’re ready by passing in the `veggies` array or by
making your own array!

### Solution

``` javascript
const veggies = ['broccoli', 'spinach', 'cauliflower', 'broccoflower'];

const politelyDecline = (veg) => {
      console.log('No ' + veg + ' please. I will have pizza with extra cheese.');
}

// Checkpoint 1 solutions:
const declineEverything = arr => {
  arr.forEach(politelyDecline)
}

/*
// As a function declaration:
function declineEverything(arr) {
      arr.forEach(politelyDecline)
}
*/


// Checkpoint 2 solutions:
// Using an anonymous function and string interpolation:
const acceptEverything = arr => {
  arr.forEach(e => {
    console.log(`Ok, I guess I will eat some ${e}.`)
  })
}

/*
// Using a named function and string concatenation:
const grudginglyAccept = veg => {
      console.log('Ok, I guess I will eat some ' + veg + '.');
}
const acceptEverything = arr => {
      arr.forEach(grudginglyAccept)
}

// Using a loop:
const acceptEverything = arr => {
 for(let i = 0; i<arr.length; i++){
    console.log(`Ok, I guess I will eat some ${arr[i]}.`)
 }
}
*/
```

## squareNums()

### Instructions

**1.**

Write a function, `squareNums()`, that takes in an array of numbers and,
using `.map()`, returns an array with the square of each of the elements
of that array.

You can test your function when you’re ready by passing in the `numbers`
array or by making your own array!

### Solution

``` javascript
const numbers = [2, 7, 9, 171, 52, 33, 14];

const toSquare = num => num * num

const squareNums = arr => arr.map(toSquare) 

/*
// Using an anonymous function:
const squareNums = arr => arr.map(e => e * e)

// As a function declaration plus using our named function:
function squareNums(arr) {
    return arr.map(toSquare)
}
*/
```

## shoutGreetings()

### Instructions

**1.**

Write a function `shoutGreetings()` that takes in an array of strings
and returns a new array. This new array should contain all the strings
from the argument array but with capitalized letters and an exclamation
point appended to the end: `'heya'` will become `'HEYA!'`

You can use any technique you want to accomplish this task.

You can test your function when you’re ready by passing in the
`greetings` array or by making your own array!

### Solution

``` javascript
const shoutGreetings = arr => arr.map(word => word.toUpperCase() + '!');

/*
// As a function declaration AND using a loop:
function shoutGreetings(arr) {
    let shoutArray = []
    for(let i = 0; i<arr.length; i++){
        shoutArray.push(arr[i].toUpperCase() + '!')
    }
    return shoutArray
}
*/
const greetings = ['hello', 'hi', 'heya', 'oi', 'hey', 'yo']

console.log(shoutGreetings(greetings))
```

    ## [ 'HELLO!', 'HI!', 'HEYA!', 'OI!', 'HEY!', 'YO!' ]

## sortYears()

### Instructions

**1.**

Write a function `sortYears()` that takes in an array of years, and,
using <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the built-in <code
class="code__2rdF32qjRVp7mMVBHuPwDS">.sort()</code> method</a>, returns
that array with the years sorted in descending order.

You can test your function when you’re ready by passing in the `years`
array or by making your own array of years!

### Solution

``` javascript
const sortYears = arr => arr.sort((x, y) => y - x);

/*
// As a function declaration AND using a named function:
function sortYears(arr) {
      const checkYears = (year1, year2) => year2 - year1
      return arr.sort(checkYears)
}
*/

const years = [1970, 1999, 1951, 1982, 1963, 2011, 2018, 1922]

console.log(sortYears(years))
```

    ## [
    ##   2018, 2011, 1999,
    ##   1982, 1970, 1963,
    ##   1951, 1922
    ## ]

## justCoolStuff()

### Instructions

**1.**

Write a function `justCoolStuff()` that takes in two arrays of strings,
and, using <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the built-in <code
class="code__2rdF32qjRVp7mMVBHuPwDS">.filter()</code> method</a>,
returns an array with the items that are present in both arrays.

``` js
let arr1 = ['this', 'not this', 'nor this'];
let arr2 = ['thing 1', 'thing 2', 'this'];
 
justCoolStuff(arr1, arr2); // Should return ['this']
```

You can test your function when you’re ready by passing in the `myStuff`
and `coolStuff` arrays or by making arrays of your own!

### Solution

``` javascript
const justCoolStuff = (firstArray, secondArray) => firstArray.filter(item => secondArray.includes(item))

/*
// As a function declaration AND using named function w/ a loop:
function justCoolStuff(firstArray, secondArray) {
      function isInSecondArray(item){
            for(let i = 0; i<secondArray.length; i++){
                  if (secondArray[i] === item){
                        return true
                  }
            }
            return false 
      }
      return firstArray.filter(isInSecondArray)
}
*/

const coolStuff = ['gameboys', 'skateboards', 'backwards hats', 'fruit-by-the-foot', 'pogs', 'my room', 'temporary tattoos'];

const myStuff = [ 'rules', 'fruit-by-the-foot', 'wedgies', 'sweaters', 'skateboards', 'family-night', 'my room', 'braces', 'the information superhighway']; 

console.log(justCoolStuff(myStuff, coolStuff))
```

    ## [ 'fruit-by-the-foot', 'skateboards', 'my room' ]

## isTheDinnerVegan()

### Instructions

**1.**

Write a function `isTheDinnerVegan()` that takes in an array of food
objects in the format:

``` js
{name: 'cabbage', source: 'plant' }
```

and returns a boolean value based on whether or not every item in the
array has entirely `plant`-based origins.

``` js
const meal = [{name: 'arugula', source: 'plant'}, {name: 'tomatoes', source: 'plant'}, {name: 'lemon', source:'plant'}, {name: 'olive oil', source: 'plant'}];
 
isTheDinnerVegan(meal); // Should return true
```

You can test your function when you’re ready by passing in the `dinner`
array or by making your own!

### Solution

``` javascript
const isTheDinnerVegan = arr => arr.every(food => food.source === 'plant');

/*
// Alternate solution:
// Using a function declaration, loop, and helper function:
function isTheDinnerVegan(arr) {
      const isVegan = (food) => {
            if (food.source === 'plant') {
                  return true;
            }
            return false;
      }
      for(let i = 0; i<arr.length; i++){
            if (!isVegan(arr[i])){
                  return false 
            }
      }
      return true
}
*/

const dinner = [{name: 'hamburger', source: 'meat'}, {name: 'cheese', source: 'dairy'}, {name: 'ketchup', source:'plant'}, {name: 'bun', source: 'plant'}, {name: 'dessert twinkies', source:'unknown'}];

console.log(isTheDinnerVegan(dinner))
```

    ## false

## sortSpeciesByTeeth()

### Instructions

**1.**

Write a function `sortSpeciesByTeeth()` that takes in an array of
species objects in the format:

``` js
{speciesName: 'shark', numTeeth: 50 }
```

and sorts the array in ascending order based on the average number of
teeth that species possesses (`numTeeth`) .

You’ll need to access each object’s `.numTeeth` property. Feel free to
either write a named comparison function, or use an anonymous function
for your argument to `.sort()`.

You can test your function when you’re ready by passing in the
`speciesArray` array or by making your own!

### Solution

``` javascript
const speciesArray = [ {speciesName:'shark', numTeeth:50}, {speciesName:'dog', numTeeth:42}, {speciesName:'alligator', numTeeth:80}, {speciesName:'human', numTeeth:32}];

const sortSpeciesByTeeth = arr => arr.sort((speciesObj1, speciesObj2) => speciesObj1.numTeeth > speciesObj2.numTeeth)

/*
// As a function declaration AND using a named function:
function sortSpeciesByTeeth(arr) {
      const compareTeeth = (speciesObj1, speciesObj2) => speciesObj1.numTeeth > speciesObj2.numTeeth
      return arr.sort(compareTeeth)
}
*/

console.log(sortSpeciesByTeeth(speciesArray))
```

    ## [
    ##   { speciesName: 'shark', numTeeth: 50 },
    ##   { speciesName: 'dog', numTeeth: 42 },
    ##   { speciesName: 'alligator', numTeeth: 80 },
    ##   { speciesName: 'human', numTeeth: 32 }
    ## ]

## findMyKeys()

### Instructions

**1.**

Write a function, `findMyKeys()`, that takes in an array of strings
which may or may not contain `'keys'`. If the keys are in the array,
your function should return the index at which they can be found. If
they’re not in the array, your function should return `-1`.

``` js
const drawer = ['rubber bands', 'tape', 'old menus', 'batteries'];
findMyKeys(drawer);
// Should return -1
```

You can use any technique you want to accomplish this task. Though, <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array#Iteration_methods"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">if you look</a>, there’s a built-in
method that will make pretty quick work of it.

You can test your function when you’re ready by passing in the
`randomStuff` array or by making your own array!

### Solution

``` javascript
const findMyKeys = arr => arr.findIndex(item => item === 'keys')

/*
// Alternate solution:
// As a function declaration using a loop:
function findMyKeys(arr) {
      let index = -1;
      for (let i = 0; i < arr.length; i++) {
            if (arr[i] === 'keys') {
                  index = i
                  break
            }
      }
      return index
}
*/
const randomStuff = ['credit card', 'screwdriver', 'receipt', 'gum', 'keys', 'used gum', 'plastic spoon'];

console.log(findMyKeys(randomStuff))
```

    ## 4

## dogFactory()

### Instructions

**1.**

Write a function, `dogFactory()`. It should:

- have 3 parameters: `name`, `breed`, and `weight` (in that order)
- expect `name` and `breed` to be strings
- expect `weight` to be a number
- return an object
- have each of those parameters as keys on the returned object returned
  with the values of the arguments that were passed in

``` js
dogFactory('Joe', 'Pug', 27)
// Should return { name: 'Joe', breed: 'Pug', weight: 27 }
```

**2.**

Add getters and setters for each of the three properties and change the
property names to have an underscore prepended.

**3.**

Add two methods to your object: `.bark()` which returns ‘ruff! ruff!’
and `.eatTooManyTreats()` which should increment the `weight` property
by 1.

### Solution

``` javascript
// Final solution:
const dogFactory = (name, breed, weight) => {
    return {
        _name: name,
        _breed: breed,
        _weight: weight,
        get name() {
            return this._name;
        },
        set name(newName) {
            this._name = newName;
        },
        get breed() {
            return this._breed;
        },
        set breed(newBreed) {
            this._breed = newBreed;
        },
        get weight() {
            return this._weight;
        },
        set weight(newWeight) {
            this._weight = newWeight;
        },
        bark() {
            return 'ruff! ruff!'
        },
        eatTooManyTreats() {
            this._weight++
        }
    }
}

/*
// Solution to checkpoint 1:
const dogFactory = (name, breed, weight) => {
      return {
            name: name,
            breed: breed,
            weight: weight
      }
}

// Solution to checkpoint 2:
const dogFactory = (name, breed, weight) => {
      return {
            _name: name,
            _breed: breed,
            _weight: weight,
            get name() {
                  return this._name;
            },
            set name(newName) {
                  this._name = newName;
            },
            get breed() {
                  return this._breed;
            },
            set breed(newBreed) {
                  this._breed = newBreed;
            },
            get weight() {
                  return this._weight;
            },
            set weight(newWeight) {
                  this._weight = newWeight;
            }
      }
}

*/
```

# Challenge Project: Credit Card Checker

#### Overview

This project is slightly different than others you have encountered thus
far on Codecademy. Instead of a step-by-step tutorial, this project
contains a series of open-ended requirements which describe the project
you’ll be building. There are many possible ways to correctly fulfill
all of these requirements, and you should expect to use the internet,
Codecademy, and other resources when you encounter a problem that you
cannot easily solve.

#### Project Goals

Context: The company that you work for suspects that credit card
distributors have been mailing out cards that have invalid numbers. In
this project, you have the role of a clerk who checks if credit cards
are valid. Every other clerk currently checks using pencil and paper,
but you’ll be optimizing the verification process using your knowledge
of functions and loops to handle multiple credit cards at a time. Unlike
the other clerks, you can spend the rest of your time relaxing!

As you progress through the steps, use the terminal and `console.log()`
statements to check the output of your loops and functions.

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. You’ll need to open and work in **main.js** in a text editor. To
edit **main.js**, use your text editor of choice. If you need a
recommendation or help to install an editor, we recommend looking into
our <a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article about setting up a text editor for web
development</a> (Follow along until you get to the section: “Practice:
Let’s Make a Project”). To run **main.js** on your computer, you will
need to install Node.js. If you need help installing Node.js, read our
<a href="https://www.codecademy.com/articles/setting-up-node-locally"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article on installing Node</a>.

Download

### Instructions

Mark the tasks as complete by checking them off

## Prerequisites

1\.

In order to complete this project, you should have completed the first
few sections of
<a href="https://www.codecademy.com/courses/introduction-to-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Introduction to JavaScript</a> (through Learn
JavaScript: Loops).

## Project Requirements

2\.

Look over the starter code. There are 15 arrays that each contain the
digits of separate credit card numbers. They all have prefixes to
reflect their status, i.e. variables that start with `valid` contain a
valid number, whereas `invalid` do not, and `mystery` variables can be
either. There is also a `batch` array that stores all of the provided
credit cards in a single array.

You’ll use these arrays later to check if your functions are working
properly.

3\.

Create a function, `validateCred()` that has a parameter of an array.
The purpose of `validateCred()` is to return `true` when an array
contains digits of a valid credit card number and `false` when it is
invalid. This function should NOT mutate the values of the original
array.

To find out if a credit card number is valid or not, use the
<a href="https://en.wikipedia.org/wiki/Luhn_algorithm#Description"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Luhn algorithm</a>. Generally speaking,
an algorithm is a series of steps that solve a problem — the Luhn
algorithm is a series of mathematical calculations used to validate
certain identification numbers, e.g. credit card numbers. The
calculations in the Luhn algorithm can be broken down as the following
steps:

1.  Starting from the farthest digit to the right, AKA the check digit,
    iterate to the left.
2.  As you iterate to the left, every other digit is doubled (the check
    digit is not doubled). If the number is greater than `9` after
    doubling, subtract `9` from its value.
3.  Sum up all the digits in the credit card number.
4.  If the sum modulo `10` is `0` (if the sum divided by `10` has a
    remainder of `0`) then the number is valid, otherwise, it’s invalid.

Here’s a <a
href="https://content.codecademy.com/PRO/independent-practice-projects/credit-card-checker/diagrams/cc%20validator%20diagram%201.svg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">visual that outlines the steps</a>. Check
your function using both the provided valid and invalid numbers.

4\.

Create another function, `findInvalidCards()` that has one parameter for
a nested array of credit card numbers. The role of `findInvalidCards()`
is to check through the nested array for which numbers are invalid, and
return another nested array of invalid cards.

5\.

After finding all the invalid credit card numbers, it’s also necessary
to identify the credit card companies that have possibly issued these
faulty numbers. Create a function, `idInvalidCardCompanies()` that has
one parameter for a nested array of invalid numbers and returns an array
of companies.

Currently, there 4 accepted companies which each have unique first
digits. The following table shows which digit is unique to which
company:

| First Digit | Company                 |
|-------------|-------------------------|
| 3           | Amex (American Express) |
| 4           | Visa                    |
| 5           | Mastercard              |
| 6           | Discover                |

If the number doesn’t start with any of the numbers listed, print out a
message like: “Company not found”.

`idInvalidCardCompanies()` should return an array of companies that have
mailed out cards with invalid numbers. This array should NOT contain
duplicates, i.e. even if there are two invalid Visa cards, `"Visa"`
should only appear once in the array.

## Project Extensions & Solution

6\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/credit-card-checker-challenge-project-javascript/462375"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

7\.

If you’d like to challenge yourself further, you could consider the
following:

- Use different credit card numbers from <a
  href="https://www.freeformatter.com/credit-card-number-generator-validator.html"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">a credit card number generator and
  validator site</a> and test if your functions work for all types of
  credit cards.
- To make it easier to test credit card numbers, create a function that
  accepts a string and converts it into an array of numbers like the
  initially provided arrays. (Check the hint for a helpful function)
- Create a function that will convert invalid numbers into valid
  numbers.

### [Solution](credit-card-checker)

``` javascript
// All valid credit card numbers
const valid1 = [4, 5, 3, 9, 6, 7, 7, 9, 0, 8, 0, 1, 6, 8, 0, 8];
const valid2 = [5, 5, 3, 5, 7, 6, 6, 7, 6, 8, 7, 5, 1, 4, 3, 9];
const valid3 = [3, 7, 1, 6, 1, 2, 0, 1, 9, 9, 8, 5, 2, 3, 6];
const valid4 = [6, 0, 1, 1, 1, 4, 4, 3, 4, 0, 6, 8, 2, 9, 0, 5];
const valid5 = [4, 5, 3, 9, 4, 0, 4, 9, 6, 7, 8, 6, 9, 6, 6, 6];

// All invalid credit card numbers
const invalid1 = [4, 5, 3, 2, 7, 7, 8, 7, 7, 1, 0, 9, 1, 7, 9, 5];
const invalid2 = [5, 7, 9, 5, 5, 9, 3, 3, 9, 2, 1, 3, 4, 6, 4, 3];
const invalid3 = [3, 7, 5, 7, 9, 6, 0, 8, 4, 4, 5, 9, 9, 1, 4];
const invalid4 = [6, 0, 1, 1, 1, 2, 7, 9, 6, 1, 7, 7, 7, 9, 3, 5];
const invalid5 = [5, 3, 8, 2, 0, 1, 9, 7, 7, 2, 8, 8, 3, 8, 5, 4];

// Can be either valid or invalid
const mystery1 = [3, 4, 4, 8, 0, 1, 9, 6, 8, 3, 0, 5, 4, 1, 4];
const mystery2 = [5, 4, 6, 6, 1, 0, 0, 8, 6, 1, 6, 2, 0, 2, 3, 9];
const mystery3 = [6, 0, 1, 1, 3, 7, 7, 0, 2, 0, 9, 6, 2, 6, 5, 6, 2, 0, 3];
const mystery4 = [4, 9, 2, 9, 8, 7, 7, 1, 6, 9, 2, 1, 7, 0, 9, 3];
const mystery5 = [4, 9, 1, 3, 5, 4, 0, 4, 6, 3, 0, 7, 2, 5, 2, 3];

// An array of all the arrays above
const batch = [
  valid1,
  valid2,
  valid3,
  valid4,
  valid5,
  invalid1,
  invalid2,
  invalid3,
  invalid4,
  invalid5,
  mystery1,
  mystery2,
  mystery3,
  mystery4,
  mystery5,
];

// Add your functions below:
function validateCred(numArr) {
  let total = 0;
  for (let i = numArr.length - 1; i >= 0; i--) {
    let currValue = numArr[i];
    if ((numArr.length - 1 - i) % 2 === 1) {
      currValue *= 2;
      if (currValue > 9) {
        currValue -= 9;
      }
    }
    total += currValue;
  }

  return total % 10 === 0;
}

// Test functions:
console.log(validateCred(valid1)); // Should print true
console.log(validateCred(invalid1)); // Should print false

function findInvalidCards(cards) {
  const invalid = [];

  for (let i = 0; i < cards.length; i++) {
    let currCred = cards[i];
    if (!validateCred(currCred)) {
      invalid.push(currCred);
    }
  }

  return invalid;
}

// Test function
console.log(findInvalidCards([valid1, valid2, valid3, valid4, valid5])); // Shouldn't print anything
console.log(
  findInvalidCards([invalid1, invalid2, invalid3, invalid4, invalid5])
); // Should print all of the numbers

console.log(findInvalidCards(batch)); // Test what the mystery numbers are

function idInvalidCardCompanies(invalidBatch) {
  const companies = [];
  for (let i = 0; i < invalidBatch.length; i++) {
    switch (invalidBatch[i][0]) {
      case 3:
        if (companies.indexOf("Amex") === -1) {
          companies.push("Amex");
        }
        break;
      case 4:
        if (companies.indexOf("Visa") === -1) {
          companies.push("Visa");
        }
        break;
      case 5:
        if (companies.indexOf("Mastercard") === -1) {
          companies.push("Mastercard");
        }
        break;
      case 6:
        if (companies.indexOf("Discover") === -1) {
          companies.push("Discover");
        }
        break;
      default:
        console.log("Company not found");
    }
  }
  return companies;
}

console.log(idInvalidCardCompanies([invalid1])); // Should print['visa']
console.log(idInvalidCardCompanies([invalid2])); // Should print ['mastercard']
console.log(idInvalidCardCompanies(batch)); // Find out which companies have mailed out invalid cards
```

    ## true
    ## false
    ## []
    ## [
    ##   [
    ##     4, 5, 3, 2, 7, 7,
    ##     8, 7, 7, 1, 0, 9,
    ##     1, 7, 9, 5
    ##   ],
    ##   [
    ##     5, 7, 9, 5, 5, 9,
    ##     3, 3, 9, 2, 1, 3,
    ##     4, 6, 4, 3
    ##   ],
    ##   [
    ##     3, 7, 5, 7, 9, 6,
    ##     0, 8, 4, 4, 5, 9,
    ##     9, 1, 4
    ##   ],
    ##   [
    ##     6, 0, 1, 1, 1, 2,
    ##     7, 9, 6, 1, 7, 7,
    ##     7, 9, 3, 5
    ##   ],
    ##   [
    ##     5, 3, 8, 2, 0, 1,
    ##     9, 7, 7, 2, 8, 8,
    ##     3, 8, 5, 4
    ##   ]
    ## ]
    ## [
    ##   [
    ##     4, 5, 3, 2, 7, 7,
    ##     8, 7, 7, 1, 0, 9,
    ##     1, 7, 9, 5
    ##   ],
    ##   [
    ##     5, 7, 9, 5, 5, 9,
    ##     3, 3, 9, 2, 1, 3,
    ##     4, 6, 4, 3
    ##   ],
    ##   [
    ##     3, 7, 5, 7, 9, 6,
    ##     0, 8, 4, 4, 5, 9,
    ##     9, 1, 4
    ##   ],
    ##   [
    ##     6, 0, 1, 1, 1, 2,
    ##     7, 9, 6, 1, 7, 7,
    ##     7, 9, 3, 5
    ##   ],
    ##   [
    ##     5, 3, 8, 2, 0, 1,
    ##     9, 7, 7, 2, 8, 8,
    ##     3, 8, 5, 4
    ##   ],
    ##   [
    ##     3, 4, 4, 8, 0, 1,
    ##     9, 6, 8, 3, 0, 5,
    ##     4, 1, 4
    ##   ],
    ##   [
    ##     6, 0, 1, 1, 3, 7, 7,
    ##     0, 2, 0, 9, 6, 2, 6,
    ##     5, 6, 2, 0, 3
    ##   ],
    ##   [
    ##     4, 9, 2, 9, 8, 7,
    ##     7, 1, 6, 9, 2, 1,
    ##     7, 0, 9, 3
    ##   ]
    ## ]
    ## [ 'Visa' ]
    ## [ 'Mastercard' ]
    ## [ 'Visa', 'Mastercard', 'Amex', 'Discover' ]

# Challenge Project: Mysterious Organism

#### Overview

This project is slightly different than others you have encountered thus
far on Codecademy. Instead of a step-by-step tutorial, this project
contains a series of open-ended requirements which describe the project
you’ll be building. There are many possible ways to correctly fulfill
all of these requirements, and you should expect to use the internet,
Codecademy, and other resources when you encounter a problem that you
cannot easily solve.

#### Project Goals

Context: You’re part of a research team that has found a new mysterious
organism at the bottom of the ocean near hydrothermal vents. Your team
names the organism, *Pila aequor* (*P. aequor*), and finds that it is
only comprised of 15 DNA bases. The small DNA samples and frequency at
which it mutates due to the hydrothermal vents make *P. aequor* an
interesting specimen to study. However, *P. aequor* cannot survive above
sea level and locating *P. aequor* in the deep sea is difficult and
expensive. Your job is to create objects that simulate the DNA of *P.
aequor* for your research team to study.

As you progress through the steps, use the terminal and `console.log()`
statements to check the output of your loops and functions.

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. You’ll need to open and work in **main.js** in a text editor. To
edit **main.js**, use your text editor of choice. If you need a
recommendation or help to install an editor, we recommend looking into
our <a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article about setting up a text editor for web
development</a> (Follow along until you get to the section: “Practice:
Let’s Make a Project”). To run **main.js** on your computer, you will
need to install Node.js. If you need help installing Node.js, read our
<a href="https://www.codecademy.com/articles/setting-up-node-locally"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article on installing Node</a>.

Download

### Instructions

Mark the tasks as complete by checking them off

## Prerequisites

1\.

In order to complete this project, you should have completed the first
few sections of
<a href="https://www.codecademy.com/courses/introduction-to-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Introduction to JavaScript</a> (through Learn
JavaScript: Objects).

## Project Requirements

2\.

Look over the starter code. There are two helper functions:
`returnRandBase()` and `mockUpStrand()`.

DNA is comprised of four bases (**A**denine, **T**hymine, **C**ytosine,
and **G**uanine). When `returnRandBase()` is called, it will randomly
select a base and return the base (`'A'`,`'T'`,`'C'`, or `'G'`).

`mockUpStrand()` is used to generate an array containing 15 bases to
represent a single DNA strand with 15 bases.

You’ll use these helper functions later to create your objects that
represent *P. aequor*.

3\.

Since you need to create multiple objects, create a factory function
`pAequorFactory()` that has two parameters:

- The first parameter is a number (no two organisms should have the same
  number).
- The second parameter is an array of 15 DNA bases.

`pAequorFactory()` should return an object that contains the properties
`specimenNum` and `dna` that correspond to the parameters provided.

You’ll also add more methods to this returned object in the later steps.

4\.

Your team wants you to simulate *P. aequor*‘s high rate of mutation
(change in its DNA).

To simulate a mutation, in `pAequorFactory()`’s returned object, add the
method `.mutate()`.

`.mutate()` is responsible for randomly selecting a base in the object’s
`dna` property and changing the current base to a different base. Then
`.mutate()` will return the object’s `dna`.

For example, if the randomly selected base is the 1st base and it is
`'A'`, the base must be changed to `'T'`, `'C'`, or `'G'`. But it cannot
be `'A'` again.

5\.

Your research team wants to be able to compare the DNA sequences of
different *P. aequor*. You’ll have to add a new method (`.compareDNA()`)
to the returned object of the factory function.

`.compareDNA()` has one parameter, another `pAequor` object.

The behavior of `.compareDNA()` is to compare the current `pAequor`’s
`.dna` with the passed in `pAequor`’s `.dna` and compute how many bases
are identical and in the same locations. `.compareDNA()` does not return
anything, but prints a message that states the percentage of DNA the two
objects have in common — use the `.specimenNum` to identify which
`pAequor` objects are being compared.

For example:

``` js
ex1 = ['A', 'C', 'T', 'G']
ex2 = ['C', 'A', 'T', 'T']
```

`ex1` and `ex2` only have the 3rd element in common (`'T'`) and
therefore, have 25% (1/4) of their DNA in common. The resulting message
would read something along the lines of:
`specimen #1 and specimen #2 have 25% DNA in common`.

6\.

*P. aequor* have a likelier chance of survival if their DNA is made up
of at least 60% `'C'` or `'G'` bases.

In the returned object of `pAequorFactory()`, add another method
`.willLikelySurvive()`.

`.willLikelySurvive()` returns `true` if the object’s `.dna` array
contains at least 60% `'C'` or `'G'` bases. Otherwise,
`.willLikelySurvive()` returns false.

7\.

With the factory function set up, your team requests that you create 30
instances of `pAequor` that can survive in their natural environment.
Store these instances in an array for your team to study later.

## Project Extensions & Solution

8\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/mysterious-organism-challenge-project-javascript/462376"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

9\.

If you’d like to challenge yourself further, you could consider the
following:

- Create a `.complementStrand()` method to the factory function’s object
  that returns the <a
  href="http://discoveringthegenome.org/discovering-genome/dna-sequencing/dna-complementary-base-pairing"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">complementary DNA strand</a>. The rules
  are that `'A'`s match with `'T'`s and vice versa. Also, `'C'`s match
  with `'G'`s and vice versa. (Check the hint for more details)
- Use the `.compareDNA()` to find the two most related instances of
  `pAequor`.

### [Solution](mysterious-organism)

``` javascript
// Returns a random DNA base
const returnRandBase = () => {
    const dnaBases = ["A", "T", "C", "G"];
    return dnaBases[Math.floor(Math.random() * 4)];
  };
  
  // Returns a random single stand of DNA containing 15 bases
  const mockUpStrand = () => {
    const newStrand = [];
    for (let i = 0; i < 15; i++) {
      newStrand.push(returnRandBase());
    }
    return newStrand;
  };
  
  const pAequorFactory = (specimanNum, dna) => {
    return {
      specimanNum,
      dna,
      mutate() {
        const randIndex = Math.floor(Math.random() * this.dna.length);
        let newBase = returnRandBase();
        while (this.dna[randIndex] === newBase) {
          newBase = returnRandBase();
        }
        this.dna[randIndex] = newBase;
        return this.dna;
      },
      compareDNA(otherOrg) {
        const similarities = this.dna.reduce((acc, curr, idx, arr) => {
          if (arr[idx] === otherOrg.dna[idx]) {
            return acc + 1;
          } else {
            return acc;
          }
        }, 0);
        const percentOfDNAshared = (similarities / this.dna.length) * 100;
        const percentageTo2Deci = percentOfDNAshared.toFixed(2);
        console.log(
          `${this.specimanNum} and ${otherOrg.specimanNum} have ${percentageTo2Deci}% DNA in common.`
        );
      },
      willLikelySurvive() {
        const cOrG = this.dna.filter((el) => el === "C" || el === "G");
        return cOrG.length / this.dna.length >= 0.6;
      },
    };
  };
  
  const survivingSpecimen = [];
  let idCounter = 1;
  
  while (survivingSpecimen.length < 30) {
    let newOrg = pAequorFactory(idCounter, mockUpStrand());
    if (newOrg.willLikelySurvive()) {
      survivingSpecimen.push(newOrg);
    }
    idCounter++;
  }
  
  console.log(survivingSpecimen);
```

    ## [
    ##   {
    ##     specimanNum: 4,
    ##     dna: [
    ##       'C', 'C', 'C', 'G',
    ##       'A', 'A', 'A', 'C',
    ##       'T', 'A', 'G', 'G',
    ##       'G', 'C', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 15,
    ##     dna: [
    ##       'C', 'A', 'G', 'G',
    ##       'C', 'T', 'C', 'C',
    ##       'C', 'C', 'C', 'A',
    ##       'A', 'G', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 16,
    ##     dna: [
    ##       'T', 'G', 'G', 'G',
    ##       'T', 'T', 'A', 'G',
    ##       'C', 'G', 'C', 'A',
    ##       'C', 'G', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 21,
    ##     dna: [
    ##       'G', 'G', 'G', 'C',
    ##       'C', 'A', 'C', 'C',
    ##       'A', 'C', 'C', 'C',
    ##       'C', 'G', 'T'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 22,
    ##     dna: [
    ##       'C', 'C', 'T', 'C',
    ##       'G', 'G', 'G', 'T',
    ##       'A', 'T', 'G', 'T',
    ##       'G', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 25,
    ##     dna: [
    ##       'T', 'T', 'C', 'C',
    ##       'G', 'C', 'G', 'G',
    ##       'C', 'T', 'C', 'C',
    ##       'A', 'T', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 27,
    ##     dna: [
    ##       'A', 'T', 'T', 'G',
    ##       'C', 'G', 'T', 'G',
    ##       'C', 'C', 'G', 'T',
    ##       'C', 'C', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 29,
    ##     dna: [
    ##       'G', 'A', 'C', 'G',
    ##       'T', 'T', 'C', 'C',
    ##       'C', 'A', 'C', 'A',
    ##       'C', 'G', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 34,
    ##     dna: [
    ##       'C', 'C', 'G', 'G',
    ##       'G', 'A', 'T', 'T',
    ##       'C', 'C', 'T', 'T',
    ##       'A', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 46,
    ##     dna: [
    ##       'A', 'G', 'C', 'T',
    ##       'C', 'G', 'C', 'G',
    ##       'C', 'T', 'C', 'C',
    ##       'C', 'C', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 49,
    ##     dna: [
    ##       'C', 'A', 'T', 'A',
    ##       'C', 'G', 'C', 'C',
    ##       'A', 'C', 'C', 'G',
    ##       'G', 'A', 'T'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 53,
    ##     dna: [
    ##       'G', 'C', 'C', 'G',
    ##       'C', 'T', 'T', 'A',
    ##       'A', 'G', 'A', 'T',
    ##       'C', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 55,
    ##     dna: [
    ##       'G', 'G', 'A', 'C',
    ##       'G', 'A', 'C', 'A',
    ##       'G', 'G', 'T', 'A',
    ##       'T', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 57,
    ##     dna: [
    ##       'G', 'G', 'A', 'C',
    ##       'G', 'A', 'C', 'G',
    ##       'T', 'C', 'G', 'C',
    ##       'A', 'G', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 58,
    ##     dna: [
    ##       'G', 'G', 'T', 'G',
    ##       'C', 'G', 'G', 'G',
    ##       'T', 'G', 'A', 'T',
    ##       'A', 'T', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 61,
    ##     dna: [
    ##       'T', 'T', 'G', 'G',
    ##       'C', 'A', 'G', 'C',
    ##       'G', 'G', 'G', 'A',
    ##       'C', 'G', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 69,
    ##     dna: [
    ##       'C', 'G', 'G', 'G',
    ##       'C', 'G', 'G', 'C',
    ##       'G', 'G', 'C', 'G',
    ##       'C', 'T', 'T'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 71,
    ##     dna: [
    ##       'C', 'C', 'A', 'A',
    ##       'C', 'G', 'G', 'G',
    ##       'C', 'A', 'A', 'C',
    ##       'G', 'C', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 72,
    ##     dna: [
    ##       'C', 'A', 'A', 'G',
    ##       'G', 'G', 'G', 'T',
    ##       'C', 'G', 'C', 'A',
    ##       'A', 'C', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 75,
    ##     dna: [
    ##       'G', 'G', 'C', 'C',
    ##       'T', 'G', 'A', 'T',
    ##       'A', 'A', 'C', 'C',
    ##       'G', 'T', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 77,
    ##     dna: [
    ##       'T', 'G', 'G', 'G',
    ##       'A', 'C', 'C', 'G',
    ##       'C', 'T', 'G', 'G',
    ##       'G', 'G', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 78,
    ##     dna: [
    ##       'G', 'T', 'T', 'A',
    ##       'T', 'C', 'G', 'G',
    ##       'T', 'A', 'C', 'G',
    ##       'G', 'C', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 85,
    ##     dna: [
    ##       'G', 'T', 'C', 'A',
    ##       'C', 'A', 'C', 'G',
    ##       'A', 'C', 'T', 'G',
    ##       'C', 'T', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 87,
    ##     dna: [
    ##       'C', 'C', 'T', 'G',
    ##       'G', 'C', 'T', 'T',
    ##       'C', 'C', 'C', 'A',
    ##       'C', 'G', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 88,
    ##     dna: [
    ##       'G', 'G', 'C', 'A',
    ##       'A', 'T', 'T', 'C',
    ##       'C', 'G', 'G', 'T',
    ##       'A', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 92,
    ##     dna: [
    ##       'C', 'C', 'C', 'A',
    ##       'A', 'C', 'G', 'C',
    ##       'C', 'C', 'T', 'A',
    ##       'C', 'A', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 93,
    ##     dna: [
    ##       'C', 'G', 'T', 'C',
    ##       'C', 'T', 'A', 'T',
    ##       'C', 'T', 'G', 'T',
    ##       'G', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 97,
    ##     dna: [
    ##       'C', 'G', 'C', 'G',
    ##       'A', 'C', 'C', 'A',
    ##       'G', 'T', 'A', 'G',
    ##       'T', 'G', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 100,
    ##     dna: [
    ##       'C', 'C', 'G', 'G',
    ##       'G', 'C', 'T', 'A',
    ##       'A', 'C', 'A', 'G',
    ##       'T', 'C', 'T'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 102,
    ##     dna: [
    ##       'C', 'T', 'A', 'T',
    ##       'C', 'G', 'C', 'A',
    ##       'G', 'C', 'G', 'G',
    ##       'A', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   }
    ## ]

# Review: JavaScript Syntax, Part II

In this unit, you learned more JavaScript syntax.

Congratulations! The goal of this unit was to continue introducing you
to JavaScript. You learned about more data types like arrays and objects
and you also learned how to debug JavaScript programs.

Having completed this unit, you are now able to:

- Read and write JavaScript syntax for arrays, loops, objects, and
  iterators
- Debug JavaScript code and parse error messages
- Solve code challenges related to the newly learned syntax

If you are interested in learning more about these topics, here are some
additional resources:

- Codecademy Project - Create your own library of methods, <a
  href="https://www.codecademy.com/content-items/fb6220182ee4317cc3eaf380b71175de?preview=true"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Lodash</a>
- <a
  href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN Guide to Objects</a>
- <a
  href="https://www.digitalocean.com/community/tutorials/how-to-use-array-methods-in-javascript-iteration-methods"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Digital Ocean Tutorial for Iteration
  Methods</a>

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
