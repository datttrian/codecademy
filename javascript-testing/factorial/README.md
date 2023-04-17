# Factorial Feature

In this project, you will use test-driven development to build a
factorial method. You will use the assert module and mocha testing
library to drive your development using tests that follow the phases:
setup, exercise, and verification.

## Getting Started

- Clone the project in this repo
- Remove the repository if exists
- Clone the repository from Github
- Switch to the `rooster-regulation` directory
- Run the test

``` bash
rm -rf codecademy
git clone https://github.com/datttrian/codecademy
cd codecademy/javascript-testing/rooster-regulation
npm test
```

#### How To Calculate Factorial

You take an integer and you multiply that by all the integers that are
less than it.

The factorial of an integer `n` is denoted by an exclamation mark `n!`,
so `5!` is equal to:

     5 × 4 × 3 × 2 × 1 = 120

#### Edge Case

An *edge case* is a problem or situation that occurs only at an extreme
(maximum or minimum) operating parameter — you can think of these as
special cases that you need to account for. Based on the logic of
factorials, you would expect that calculating 0! would look like this:

    0 × 0 = 0

But mathematically this is not true. In this instance of a factorial
method, there is an edge-case which is that 0 factorial (or 0!) is 1.

The steps below follow the *red-green-refactor* cycle and will guide you
through the process of using test-driven development to create a
factorial method. The factorial method will be inside an object named
Calculate. You will be implementing your test code in the file
**index_test.js**, and your implementation code in **index.js**.

After you complete each step, run the test suite in the terminal to test
the results.

If you get stuck during this project, check out the **project
walkthrough video** which can be found at the bottom of the page after
the final step of the project.



Mark the tasks as complete by checking them off

## Factorial Feature With TDD

1\.

**Get into the red part 1a:**

In your **index_test.js** file, add an `it` statement, and then fill in
the error message to state that it will test if the output of 5! is
equal to 120.

2\.

**Get into the red part 1b:**

Follow the steps below to write a test that checks if 120 is equal to
`Calculate.factorial(5)`.

- Write an `assert.equal()` statement inside your `it` block
- The first argument in your `assert.equal()` statement should be
  `Calculate.factorial(5)`
- The second argument should be 120

Remember to run `npm test` to see the error message.

3\.

\*\* Get into the green part 1:\*\*

- In your **index.js** file, add a `factorial` method inside the
  `Calculate` object
- The factorial method should accept one input and `return` 120

4\.

**Refactor part 1**

In your **index_test.js** file, refactor your test code so that it
follows the first three phases of a good test.

- Setup
- Exercise
- Verify

5\.

\*\* Get into the red part 2:\*\*

Write another test, with an input other than 5 to put yourself back in
the red. This will force you to write implementation code that covers
more conditions than just `.factorial(5)`.

- You can write a test that checks if your factorial method returns 6
  when you pass 3 to `.factorial()`

6\.

**Get into the green part 2:**

In your **index.js** file, replace the line of code `return 120` with
code that will actually calculate the factorial of the input argument
passed to the `.factorial()` method.

7\.

**Refactor part 2**

- If you haven’t already done so, make sure that all your test code uses
  descriptive variables instead of actual numeric values, and make sure
  that it follows the first three phases of a good test.

- Refactor your implementation code so that it is more concise and
  efficient. This could include cleaning up the existing code, or using
  a built-in method instead of a `for` loop for calculating the
  factorial of any input.

8\.

**Edge case: test code part 1**

In your **index_test.js** file, write an empty `it` block with an error
message that covers the 0! edge case.

9\.

**Edge case — production code**

In your **index.js** file add implementation code that makes your edge
case test pass.

10\.

**Edge case: test code part 2**

Finish writing your edge-case test using

- Setup
- Exercise
- Verify

11\.

Click here for a video walkthrough from our experts to help you check
your work!

[TDD With Mocha Project: Factorial
Feature](https://www.youtube.com/watch?v=NwSyopaJsUY)

## [Solution](../factorial.sh)

```bash
#!/bin/bash
project_name='factorial'
rm -rf $project_name 
mkdir $project_name  && cd $project_name
npm init -y
npm install mocha -D
cat << 'EOF' > package.json
{
  "name": "factorial",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "mocha test/**/*_test.js"
  },
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "mocha": "^10.2.0"
  }
}
EOF
cat << 'EOF' > index.js
const Calculate = {
 factorial(inputNum) {

  // If inputNum = 0 OR inputNum = 1, the factorial will return 1
if (inputNum === 0){
    return 1;
}

 for (var i = inputNum - 1; i >= 1; i--) {
    // We store the value of inputNum at each iteration
    inputNum *= i; 
  }
  return inputNum; 
 
}
}

module.exports = Calculate;
EOF
mkdir test
cat << 'EOF' > test/index_test.js
var assert = require("assert");
var Calculate =  require('../index.js')

describe('Calculate', () => {  
describe('factorial', () => {
   it('returns 120 when given 5', () => { 

      const inputNumber = 5;
      const expectedOutput = 120;

      const actual = Calculate.factorial(inputNumber)

      assert.equal(expectedOutput, actual);

     });
  
   it('returns the factorial of an input number', () => { 

      const inputNumber = 4;
      const expectedOutput = 24;

      const actual = Calculate.factorial(inputNumber)

      assert.equal(expectedOutput, actual,);

     });

//       //  edge case

  it('returns the 1 when given 0', () => {
      const  inputNumber = 0
      const expectedOutput = 1 

      const actual = Calculate.factorial(inputNumber);

      assert.equal(expectedOutput, actual);

    });
});
});
EOF
npm test
```