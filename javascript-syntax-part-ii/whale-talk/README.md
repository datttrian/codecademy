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

### [Solution](whale-talk.js)

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

