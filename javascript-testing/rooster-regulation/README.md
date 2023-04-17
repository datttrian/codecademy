# Rooster Regulation

An experimental `rooster` object has been developed without any tests!
It’s up to you to write them.

By the end of this project you will have a *fast*, *complete*,
*reliable*, *isolated*, *maintainable*, and *expressive* test suite: it
will provide confidence that the `rooster` is functioning correctly and
it will act as a form of documentation for other developers.

You can find the `rooster` defined in **index.js**. You will write a
test suite in **index_test.js** within the **test** directory using the
<a href="https://mochajs.org"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mocha test framework</a> and
<a href="https://nodejs.org/api/assert.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">assert methods</a> from the Node.js
standard library. If you’re unsure about any of the methods, you can use
the documentation linked.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

## Construct a test suite

1\.

Using `require()`, import the `assert` module at the top of
**index_test.js**.

2\.

Using `require()`, import the `Rooster` module from `../index`. This
allows you to access methods for testing.

3\.

Write a `describe` block for `Rooster`.

4\.

Within the first block write another `describe` block for the
`.announceDawn` method.

5\.

Within the nested `describe` block, write an `it` block that tests that
the method `'returns a rooster call'`.

6\.

Within the `it` block, write the relevant test using an `assert`
function.

Don’t forget to use the four phases of a test: *setup*, *exercise*, and
*verify* in your `it` block (*teardown* optional).

- In *setup* define your expected result
- In *exercise* call the function under test
- In *verify* use an `assert` function

``` js
// Define expected output
const expected = 'cock-a-doodle-doo!';
 
// Call Rooster.announceDawn and store result in variable
 
// Use an assert method to compare actual and expected result
```

7\.

Save your changes and run the test in the command line. You’ve
discovered an issue in **index.js**! Make the correction.

8\.

Below the `describe` block for `.announceDawn` in **index_test.js**
write another block for `.timeAtDawn`.

9\.

Test that `.timeAtDawn` `'returns its argument as a string'`. Make sure
to use `it()` and an `assert` method that uses strict equality.

10\.

You will next test that `.timeAtDawn` throws an error if its argument is
not a valid hour (less than `0` or greater than `23`).

Test both bounds to make your test suite *complete*. Test each bound in
a separate `it` block to make it *maintainable*.

Test that `.timeAtDawn`
`'throws an error if passed a number less than 0'`. Make sure to use
`it()` and an `assert` method that checks for thrown errors.

11\.

In another `it` block, test that `.timeAtDawn`
`'throws an error if passed a number greater than 23'`.

12\.

Your test suite is *fast*, *complete*, *isolated*, *maintainable*, and
*expressive*! Run it and review the output in the terminal.

## [Solution](../rooster-regulation.sh)

[Good Tests with Mocha Project: Rooster
Regulation](https://www.youtube.com/watch?v=GYLz0QJe9VI)

```bash
#!/bin/bash
project_name='rooster-regulation'
rm -rf $project_name 
mkdir $project_name  && cd $project_name
npm init -y
npm install mocha -D
cat << 'EOF' > package.json
{
  "name": "rooster-regulation",
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
// Define a rooster
Rooster = {};

// Return a morning rooster call
Rooster.announceDawn = () => {
  return 'moo!';
}

// Return hour as string
// Throws Error if hour is not between 0 and 23 inclusive
Rooster.timeAtDawn = (hour) => {
  if (hour < 0 || hour > 23) {
    throw new RangeError;
  } else {
    return hour.toString();
  };
}

module.exports = Rooster;
EOF
mkdir test
cat << 'EOF' > test/index_test.js
const assert = require('assert');
const Rooster = require('../index');

describe('Rooster', () => {
    describe('.announceDawn', () => {
        it('returns a rooster call', () => {
            const expected = 'moo!';
            const result = Rooster.announceDawn();
            assert.equal(expected, result)
        })
    })
    describe('.timeAtDawn', () => {
        it('returns its argument as a string', () => {
            const expected = '8'
            const result = Rooster.timeAtDawn(8);

            assert.strictEqual(expected, result)
        })
        it('throws an error if passed a number less than 0', () => {
            assert.throws(
                () => {
                    Rooster.timeAtDawn(-1);
                },
                RangeError
            );

        })

        it('throws an error if passed a number greater than 23', () => {
            assert.throws(
                () => {
                    Rooster.timeAtDawn(25);
                },
                RangeError
            );
        });
    });
});
EOF
npm test
```
