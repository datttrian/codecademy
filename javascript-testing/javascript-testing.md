# Introduction: JavaScript Testing

See what’s covered in the JavaScript Testing Unit.

The goal of this unit is to introduce you to the fundamentals of
JavaScript testing and different testing methodologies. You’ll use Test
Driven Development (TDD) as an example of how testing can influence
software development. You will learn about different types of tests and
how using tests will catch and identify issues with your code before you
deploy it to users.

After this unit, you will be able to:

- State the benefits of testing
- Identify different types of testing and methodologies
- Write tests using Mocha and Chai
- Apply TDD techniques to software development
- Describe how code coverage is used as a metric for testing
- Incorporate mocking and spies into tests

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

## Introduction

Imagine checking your bank account online. You have \$1,000. The website
is updated overnight, and you check again in the morning. Your balance
is \$257.43. Where did your money go? Is that truly your balance?

You report this to customer service. Thousands of other users report
similar issues. Customers close accounts.

Back at the bank a software error is found to be the cause. The bank’s
developers did not run tests on the software before deploying it to
users. Money did not vanish but its amounts were printed incorrectly to
the website.

Errors in software are inevitable. Unchecked, these errors can have
painful and costly impacts on users and developers. In 2002, a study
commissioned by the US Department of Commerce’s National Institute of
Standards and Technology concluded that software errors cost the US
economy about \$59 billion annually.

To avoid those costs, software professionals use *automated testing*.
During and after production, they can run an *automated test suite* to
give themselves confidence that their products are free of errors and
work as expected.

This lesson will give you the knowledge and practice to discuss these
concepts. By the end of this lesson you will be able to:

- Define an *automated test suite*
- Describe how a test suite is used in software development
- Explain the benefits of *automated testing*

\*Study available here: <a
href="https://web.archive.org/web/20090610052743/http://www.nist.gov/public_affairs/releases/n02-10.htm"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><em>Software Errors Cost U.S. Economy
\$59.5 Billion Annually</em>, 2002</a>.

### Instructions

In this exercise you have access to a terminal and browser. You can
start, stop, and test a web application from here.

1.  Type `npm start` into the terminal and hit Enter.
2.  Reload the page in the browser.

As a user of the Cake Bar site you suspect there are some errors.

- Try to enter your name and click the order button. Your name should be
  populated at the bottom of the page (you may have to scroll down).
  Does it work as expected?
- Try to pick a cake type and order. Does this feature work as expected?
- Continue interacting with the website. Can you find any other errors?

### Solution

# Why Test?

## Manual Testing

*Software testing* is the process of assessing the completeness and
quality of computer software. Usually this is done by running a part of
a system (like a web application) and comparing the actual behavior to
the expected behavior.

One way to perform software testing is *manual testing*. Manual testing
is a form of testing done by a human interacting with a system. With web
apps, this might be clicking, dragging, and typing through a webpage. A
list of actions and expected behaviors would be given. If the observed
behavior doesn’t match the expected behavior, the application has an
error.

Errors, like the ones you may have found in the provided web app, are
also called *bugs*. A bug is an error, fault, or flaw in software that
makes a system behave in unexpected ways. As you read in the last
exercise, these unexpected behaviors can cause harm to users. Ideally
testing catches bugs before they are sent to users.

### Instructions

The same application is provided. As a manual test engineer for this
app, you have been provided some features to test. Manually test the web
app by following the list provided:

- **Behavior 1**: Run `npm start` in the terminal and reload the page.
  Scroll down and expect the webpage to start with a blank order.
- **Behavior 2**: Type a name and click “Place Order”. Scroll down and
  expect “Deliver to:” to display the submitted name.
- **Behavior 3**: A blank name will not overwrite the existing name.
- **Behavior 4**: Select a cake type and place the order. Expect “Cake”
  to display the selected cake type.
- **Behavior 5**: Check some fillings. Expect “Fillings” to display your
  selected fillings.
- **Behavior 6**: Choose a stack size. Expect “Pancake Count:” to
  display the number equivalent to the stack size, e.g. “Double” is “2”.

### Solution

## Automated Testing

How long did it take to manually test the application in the previous
exercise? If you repeated the process 100 times, how often do you think
you would make a mistake?

In a company, someone must be paid to do that work, so every hour of
manual testing has a cost. The cost of testing can be reduced and the
quality can be improved with *automated testing*.

*Automated testing* is the use of software to control the execution of
tests and the comparison of actual behavior to expected behavior. All
the testing you just did (and more) could be performed by a computer
program.

Compared to manual testing, automated testing is

- Faster: it tests more of your product in less time.
- More reliable: it’s less prone to error than a human is .
- Maintainable: you can review, edit, and extend a collection of tests.

Rather than hire a testing team at the end of development, professional
developers can run their automated tests after every change. The
workflow might look like this:

1.  Write code and corresponding tests
2.  Enter a command into a terminal to run tests
3.  If the app behaves as intended, all tests should pass. Development
    is complete.
4.  If it does not behave as intended, at least one test should fail.
    Fix code and return to step 2.

### Instructions

**1.**

This web app is set up with automated tests. Run them by entering
`npm test` in the terminal.

Wait for the test output to appear.

The tests align with the expected behaviors in the previous exercise.
Which method caught more bugs? Which was faster?

### Solution

## The Test Suite

Tests are written with code, just like the rest of your web app. You can
refer to the code defining your app as *implementation code*, and the
code defining your tests as *test code*.

A collection of tests for a web application is called a *test suite*. In
the last exercise, you ran a test suite with `npm test`. In that case
the test suite contained all tests for the application.

Test code is included with and structured similarly to implementation
code. Often times changes to test code are associated with changes to
implementation code and vice versa. Both are easier to maintain when
they are stored in the same place.

For example, if implementation code is written in `index.js` then the
corresponding test code may be written in `index-test.js`.

### Instructions

**1.**

All bugs have been fixed!

- Confirm that by running the test suite (this may take some time).
- Check your work once you see that all tests pass.

**2.**

In the test output, find the string `starts with a blank order`. That
string defines part of the “User visits index” feature in the
application, so find it in the
**test/features/user-visits-index-test.js** test file.

Around line 9, change `starts with a blank order` to
`starts with an empty order` in the test file.

**3.**

Run `npm test`.

Check your work once you see `starts with an empty order` in your test
output.

**4.**

That test is interacting with the `index` webpage, which is controlled
by **index.handlebars**. Add some text to make the order NOT empty.

At the bottom of **index.handlebars**, around line 122, add your name
next to `{{order.name}}`. It should look like this:

``` js
<h2 id="deliver-to">deliver to: <span>My-Name{{order.name}}</span></h2>
```

**5.**

Run the test suite. Your change in **index.handlebars** affected the
outcome of tests in **features/user-visits-index-test.js**! When you
make the order NOT empty, the `starts with an empty order` test fails.
(You can scroll up the terminal to see more information.)

### Solution

``` javascript
const {assert} = require('chai');

describe('User visits index', () => {
  describe('to post an order', () => {
    /*
     * Run `npm start` in the terminal and reload the page. Expect the webpage to be visible and the order form to be empty.
     */
    // Edit the line below
    it('starts with an empty order (Behavior 1)', () => {
      browser.url('/');

      assert.equal(browser.getText('#deliver-to span'), '');
      assert.equal(browser.getText('#cake-type span'), '');
      assert.equal(browser.getText('#fillings span'), '');
      assert.equal(browser.getText('#size span'), '');
    });

    /*
     * Type a name and click "Place Order". Expect "Deliver to:" to display the submitted name. (You may need to scroll down.)
     */
    it('displays the submitted name (Behavior 2)', () => {
      const name = 'Hungry Person';

      browser.url('/');
      browser.setValue('#name', name);
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#deliver-to'), name);
    });

    it('does not overwrite name if blank name submitted (Behavior 3)', () => {
      const name = 'Hungry Person';

      browser.url('/');
      browser.setValue('#name', name);
      browser.click('#submit-order');
      browser.url('/');
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#deliver-to'), name);
    });

    /*
     * Select a cake type and place the order. Expect "Cake" to display the selected type.
     */
    it('displays the selected cake type (Behavior 4)', () => {
      const cakeType = 'Whole Wheat';

      browser.url('/');
      browser.click('#whole-wheat');
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#cake-type'), cakeType);
    });

    /*
     * Check some fillings. Expect "Fillings" to display your selection.
     */
    it('displays multiple fillings (Behavior 5)', () => {
      const firstChoice = 'Strawberries';
      const secondChoice = 'Banana';

      browser.url('/');
      browser.click('#strawberries');
      browser.click('#banana');
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#fillings'), firstChoice);
      assert.include(browser.getText('#fillings'), secondChoice);
    });

    /*
     * Choose a stack size. Expect "Pancake Count:" to display the number equivalent to the stack size, e.g. "Double" is "2".
     */
    it('displays the number equivalent to the stack size (Behavior 6)', () => {
      const optionText = 'Septuple Stack';
      const optionNum = '7';

      browser.url('/');
      browser.selectByVisibleText('#select-stack', optionText)
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#size'), optionNum);
    });
    });
});
```

## Tests As Documentation

Imagine explaining this Cake Bar app to someone else. How does it
behave? Does it rely on other software? How do you run it on a computer?
You could read every line in every file to figure that out. Or you could
read the *documentation*.

Documentation is any content separate from implementation code that
explains how it works or how to use it. It may provide more concise
summaries and explanation than the implementation code can.

Documentation can come in many forms, including plain text, diagrams…and
tests! Tests as documentation provide what many other forms cannot: both
human-readable text to describe the application and machine-executable
code to confirm the app works as described.

This code block from the Cake Bar app describes and tests the “name”
functionality.

``` js
it('accepts the customer name', () => {
  const name = 'Hungry Person';
 
  browser.url('/');
  browser.setValue('#name', name);
  browser.click('#submit-order');
  browser.url('/');
 
  assert.include(browser.getText('#deliver-to'), name);
});
```

You can read the description in plain English terms:
`it accepts the customer name`. You can run the test to confirm the
functionality works as described.

### Instructions

**1.**

Copy and paste the below code into the
**test/features/user-visits-index-test.js** file. This part of the test
explains the functionality in easy-to-read text. When you’re done, click
Run.

Paste this test structure at the bottom of the file, near line 91.

``` js
describe('to clear an order', () => {
  it('deletes the selected options', () => {
 
  });
});
```

**2.**

Copy and paste the body of the test within that block (underneath the
line containing `it`). This part of the test will confirm that the clear
order button `deletes the selected options`. When you’re done, click
Run.

``` js
      const name = 'Indecisive Person';
      const time = '10:00';
 
      browser.url('/');
      browser.setValue('#name', name);
      browser.selectByVisibleText('#select-pickUp', time)
      browser.click('#submit-order');
      browser.click('#clear-order');
      browser.url('/');
 
      assert.equal(browser.getText('#deliver-to'), '');
      assert.equal(browser.getText('#cake-type'), '');
      assert.equal(browser.getText('#fillings'), '');
      assert.equal(browser.getText('#size'), '');
      assert.equal(browser.getText('#pickUp'), '');
```

**3.**

Run the test suite. You should see the new test fail. By running the
suite you’ve confirmed that the application does not behave as expected!

**4.**

Test this manually. Run `npm start` in the terminal, reload the page,
and see that the clear order button doesn’t exist yet!

### Solution

``` javascript
const {assert} = require('chai');

describe('User visits index', () => {
  describe('to post an order', () => {
    /*
     * Run `npm start` in the terminal and reload the page. Expect the webpage to be visible and the order form to be empty.
     */
    it('starts with a blank order (Behavior 1)', () => {
      browser.url('/');

      assert.equal(browser.getText('#deliver-to span'), '');
      assert.equal(browser.getText('#cake-type span'), '');
      assert.equal(browser.getText('#fillings span'), '');
      assert.equal(browser.getText('#size span'), '');
    });

    /*
     * Type a name and click "Place Order". Expect "Deliver to:" to display the submitted name. (You may need to scroll down.)
     */
    it('displays the submitted name (Behavior 2)', () => {
      const name = 'Hungry Person';

      browser.url('/');
      browser.setValue('#name', name);
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#deliver-to'), name);
    });

    it('does not overwrite name if blank name submitted (Behavior 3)', () => {
      const name = 'Hungry Person';

      browser.url('/');
      browser.setValue('#name', name);
      browser.click('#submit-order');
      browser.url('/');
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#deliver-to'), name);
    });

    /*
     * Select a cake type and place the order. Expect "Cake" to display the selected type.
     */
    it('displays the selected cake type (Behavior 4)', () => {
      const cakeType = 'Whole Wheat';

      browser.url('/');
      browser.click('#whole-wheat');
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#cake-type'), cakeType);
    });

    /*
     * Check some fillings. Expect "Fillings" to display your selection.
     */
    it('displays multiple fillings (Behavior 5)', () => {
      const firstChoice = 'Strawberries';
      const secondChoice = 'Banana';

      browser.url('/');
      browser.click('#strawberries');
      browser.click('#banana');
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#fillings'), firstChoice);
      assert.include(browser.getText('#fillings'), secondChoice);
    });

    /*
     * Choose a stack size. Expect "Pancake Count:" to display the number equivalent to the stack size, e.g. "Double" is "2".
     */
    it('displays the number equivalent to the stack size (Behavior 6)', () => {
      const optionText = 'Septuple Stack';
      const optionNum = '7';

      browser.url('/');
      browser.selectByVisibleText('#select-stack', optionText)
      browser.click('#submit-order');
      browser.url('/');

      assert.include(browser.getText('#size'), optionNum);
    });
    });

  // Add "clear order" test here
  describe('to clear an order', () => {
    it('deletes the selected options', () => {
            const name = 'Indecisive Person';
      const time = '10:00';

      browser.url('/');
      browser.setValue('#name', name);
      browser.selectByVisibleText('#select-pickUp', time)
      browser.click('#submit-order');
      browser.click('#clear-order');
      browser.url('/');

      assert.equal(browser.getText('#deliver-to'), '');
      assert.equal(browser.getText('#cake-type'), '');
      assert.equal(browser.getText('#fillings'), '');
      assert.equal(browser.getText('#size'), '');
      assert.equal(browser.getText('#pickUp'), '');
    });
  });
  

});
```

## Regression

The new “clear order” button feature has been implemented to satisfy the
new test.

When adding a new feature to your product, it’s possible that something
will break. If that break occurs within a feature developed earlier, it
is called *regression*. When functionality previously developed and
tested stops working, you may say the *functionality regressed*.

Running an automated test suite is fast and repeatable, which means you
can run tests after every change to confirm that old features still
work. If they have regressed, the test output should notify you.

### Instructions

**1.**

Code to implement the new “clear order” feature has been added. Start
the app and manually test the new and old button features:

- Click “Clear”. Expect the order to be empty.
- Enter an order and click “Place Order”. Expect the order to be
  populated with your selections. Do both buttons behave as expected?

When you’re done, check work.

**2.**

Stop the app by pressing CTRL + C (the control button and C key at the
same time), then run the test suite.

You can scroll up to see that the new feature test (“to clear an order”)
is passing and the old tests are failing. You found a regression!

When you’re done, check work.

**3.**

Here’s the bug: The “clear” button is using `/place-order` instead of
`/clear-order`, making both buttons clear the order!

Fix the regression, step 1: In **views/index.handlebars** around line
117, find the form

``` js
<form action="/place-order" method="post">
```

and replace it with

``` js
<form action="/clear-order" method="post">
```

Click Check Work when you’ve replaced the code.

**4.**

Fix the regression, step 2: In **routes/index.js** around line 13,
replace the first instance of

``` js
router.post('/place-order', async (req, res) => {
```

with

``` js
router.post('/clear-order', async (req, res) => {
```

Click Check Work when you’ve replaced the code.

**5.**

Run the test suite again to confirm the fix works as expected.

If you don’t see 7 passing tests, double check that `clear order` is on
the right line in each file!

When you’re done, check work.

### Solution

``` javascript
const express = require('express');
const bodyParser = require('body-parser');
const router = express.Router();
const Order = require('../models/order');

router.get('/', async (req, res) => {
  const order = await Order.findOne({});

  res.render('index', { order });
});

// Change the line below to fix the regression
router.post('/place-order', async (req, res) => {
  await Order.deleteOne({});
  res.redirect('/');
});

router.post('/place-order', async (req, res) => {
  const { name, cakeType, fillings, size, pickUp  } = req.body;

  const order = await Order.updateOrCreate({ name, cakeType, fillings, size })
  res.redirect('/');
});

module.exports = router;
```

``` html
  <div class="tracker">
    <div id="tracker-meter" class="tracker-meter">
      <div class="image-container">
        <img alt-text="bug-image" src="images/bug.svg">
      </div>
    </div>
    <div class="tracker-name">
      <p>BUG-O-METER</p>
    </div>
  </div>

  <div class="banner">
    <h1>CAKE BAR</h1>
  </div>

  <div class="body-container">
    <div class="menu">
      <form id="cake-form" action="/place-order" method="post">
        <div class="form-container">
          <div class="form-row">
            <h2>Enter your name</h2>
          </div>

          <div class="form-row">
            <div class="name-flex">
              <div class="name-col-1">
                <input type="text" id="name" name="name" value="">
              </div>
            </div>
          </div>

          <div class="form-row">
            <h2>Pick a cake type</h2>
          </div>

          <div class="form-row">
            <div class="input-col">
              <label for="plain">
                <input type="radio" id="plain" name="cakeType" value="Plain">Plain<br>
              </label>
            </div>
            <div class="input-col">
              <label for="whole-wheat">
                <input type="radio" id="whole-wheat" name="cakeType" value="Whole Wheat">Whole Wheat<br>
              </label>
            </div>
          </div>

          <div class="form-row">
            <h2>Add fillings</h2>
          </div>

          <div class="form-row">
            <div class="input-col">
              <label for="strawberries">
                <input type="checkbox" id="strawberries" name="fillings" value="Strawberries">Strawberries<br>
              </label>
              <label for="blueberries">
                <input type="checkbox" id="blueberries" name="fillings" value="Blueberries">Blueberries<br>
              </label>
              <label for="banana">
                <input type="checkbox" id="banana" name="fillings" value="Banana">Banana<br>
              </label>
              <label for="apple">
                <input type="checkbox" id="apple" name="fillings" value="Apple">Apple<br>
              </label>
            </div>
            <div class="input-col">
              <label for="macadamia-nuts">
                <input type="checkbox" id="macadamia-nuts" name="fillings" value="Macadamia Nuts">Macadamia Nuts<br>
              </label>
              <label for="sprinkles">
                <input type="checkbox" id="sprinkles" name="fillings" value="Sprinkles">Sprinkles<br>
              </label>
              <label for="chocolate-chips">
                <input type="checkbox" id="chocolate-chips" name="fillings" value="Chocolate Chips">Chocolate chips<br>
              </label>
              <label for="bacon">
                <input type="checkbox" id="bacon" name="fillings" value="Bacon">Bacon<br>
              </label>
            </div>
          </div>

          <div class="form-row">
            <div class="input-col">
              <h2>Choose a size</h2>
            </div>
          </div>

          <div class="form-row select-row">
            <div class="select-col">
              <div class="styled-select">
                <select id="select-stack" name="size">
                  <option id="single" value="1">Single Stack</option>
                  <option id="double" value="2">Double Stack</option>
                  <option id="triple" value="3">Triple Stack</option>
                  <option id="quadruple" value="4">Quadruple Stack</option>
                  <option id="quintuple" value="5">Quintuple Stack</option>
                  <option id="sextuple" value="6">Sextuple Stack</option>
                  <option id="septuple" value="7">Septuple Stack</option>
                  <option id="octuple" value="8">Octuple Stack</option>
                  <option id="nonuple" value="9">Nonuple Stack</option>
                  <option id="decuple" value="10">Decuple Stack</option>
                  <option id="centuple" value="100">Centuple Stack</option>
                </select>
              </div>
            </div>
          </div>

          <div class="form-row place-order-div">
            <input class="button" id="submit-order" type="submit" value="Place order">
          </div>
        </div>
      </form>

      <!-- Change the below action to fix the regression -->
      <form action="/clear-order" method="post">
        <div class="form-container">
          <div class="form-row place-order-div">
            <input class="button" id="clear-order" type="submit" value="Clear">
          </div>
        </div>
      </form>
    </div>

    <div class="order">
      <h2 id="deliver-to">deliver to: <span>{{order.name}}</span></h2>
      <h2 id="cake-type">cake: <span>{{order.cakeType}}</span></h2>
      <h2 id="fillings">fillings: <span>{{order.fillings}}</span></h2>
      <h2 id="size">pancake count: <span>{{order.size}}</span></h2>
    </div>
  </div>
```

## Review

Writing automated tests takes time, but the cost is outweighed by the
benefits. Automated testing

- Increases confidence that your product works as expected (compared to
  manual testing)
- Improves upon documentation
- Reduces the likelihood of regression

You also learned

- Where and why test code is stored alongside implementation code
- Terms to help communicate the benefit of testing: *manual testing*,
  *automated testing*, *test suite*, *bug*, *documentation*, and
  *regression*

### Instructions

**1.**

Run the test suite to confirm the app is working as expected.

**2.**

Start the app, reload the page, and enjoy a bug-free Cake Bar.

# Testing Types

In this article, you will be introduced to the different types of
testing that may be used throughout the various stages of a project from
local development to shipping to real users.

## What are the Types of Testing?

At different stages of production for a particular project, you may
encounter the opportunity for different types of tests, which can vary
in scale and resource intensity, as well as serve different purposes.
The types of testing we will discuss in this article are:

- Unit tests
- Integration tests
- End to end tests

<img
src="https://static-assets.codecademy.com/Courses/testing-concepts/testing-types-pyramid.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Testing levels art, demonstrating types of tests in a pyramid shape, smaller unit tests at the bottom, larger ent to end tests at the top" />

Throughout this article, we will discuss how each of these types of
tests can be applied to a basic weather application.

## Unit Tests

A *unit test* covers the smallest possible unit of testable code, such
as a single function. In order to keep the scope of a unit test focused
on the unit being tested, any data or behavior from other units or
external sources that the unit relies on should be replaced with fake
(*mock*) data or behavior.

For example, in a weather application, we might have a number of
functions that each handle a small piece of computation, such as
converting fahrenheit to celsius or formatting incoming weather data
from an API. Unit tests would be written first to ensure that these
functions can perform independently before we move on to testing how
they work together. Any data that might come in from an external
database or API would be mocked.

## Integration Tests

An *integration test* covers how the units of a particular program work
with one another. When testing integrations with external services, only
the handling of incoming data is tested while the data itself remains
mocked.

For example, in a weather application, integration tests would be
written to ensure that weather data fetched from an API will be properly
formatted to be displayed to the user. It would also ensure that delays,
errors, or invalid data from the external service would be handled
properly once they are introduced. The data itself would be mocked.

## End to End Tests

An *end to end test* (sometimes referred to as a *UI layer test* or
*e2e*) automates user flow to test the application in the way that a
real user would experience it. To closely match the end user’s
experience, this type of testing would also test interactions with
external services such as databases and APIs.

For example, in a weather application, end to end tests might be written
to simulate a user searching for a particular location, selecting that
location, choosing celsius or fahrenheit, and clicking through various
aspects of the UI. In this test, the actual database and external API is
used.

## How do these tests relate?

The order of tests in this article (unit -\> integration -\> end to end)
represent an increase in resource intensity (time, computation, money)
and the scope of the tests (amount of code being tested). Due to the
increase in complexity, tests of these types may initially be written in
this order. However, as an application is developed, new features may be
tested using all three types simultaneously, with each providing
different feedback to the developer or testing team.

A typical developer’s feedback loop using these various test types might
be:

1.  Make code changes
2.  Make a pull request
3.  The code change has tests run against it (unit, integration,
    sometimes e2e)
4.  If there are any failures then the dev will work on fixes in their
    local development environment.
5.  Repeat steps 1-4 until all tests pass.
6.  The pull request is allowed to be merged.

## Summary

In this article, we learned about the different types of tests that are
written and performed throughout the production process. These include:

- Unit tests, which test the smallest unit of code possible.
- Integration tests, which test the interactions between internal
  services in the application.
- End to end tests, which test the whole application including the
  external services it depends on.

These types of tests increase respectively in terms of resource
intensity and amount of code being tested and each provide developers
and/or testing teams with distinct feedback during the development
cycle.

# Software Testing Methodologies

Learn about software testing methodologies and some specific strategies
that use a test-first approach to software development.

Imagine this scenario: you’ve written some code for a new feature and
it’s time to test it. You deploy your development version of the code
and interact with all of the features of your application that were
impacted. This could include features you built in the past and anything
new. You repeat that process for different browsers and devices, and a
few hours later, you’re confident that it’s ready to go. But then you
deploy it to production and the error reports start to come in!

This scenario describes the process of **manual testing**, which is
time-consuming, can result in errors being overlooked, and can’t be
repeated easily. To get around the issues related to manual testing,
organizations generally use software to *automate* their testing
processes to validate code.

## What is a software testing methodology?

**Testing methodologies** are specific strategies for testing all of the
pieces of your software to make sure it behaves as expected. These
strategies include many ways to <a
href="https://www.codecademy.com/resources/docs/general/software-testing"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">test software</a>, such as unit testing, integration
testing, performance testing, and more. In this article, we’ll take a
closer look at testing practices that use a test-first approach to
software development.

### Why Use Software Testing Methodologies?

There are many reasons that organizations adopt software testing
methodologies:

- Software errors can cost companies resources such as money and users.
- Testing results in better reliability.
- Testing can provide a better <a
  href="https://www.codecademy.com/resources/docs/uiux/user-and-end-user"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">end-user</a> experience.
- Failing tests help indicate which part of the software is not working
  when bugs occur

Overall, the primary goal of testing is to make software development
more efficient, reliable, and future-proof.

## Different types of methodologies

Some software testing methodologies prioritize writing test cases before
writing the code those test cases will validate. Those types include:

- Test-driven Development (TDD)
- Behavior-driven Development (BDD)
- Specification by Example (SBE)
- Acceptance Test-driven Development (ATDD)

These methodologies are particularly relevant for teams that use an
agile, or iterative, approach to software development. Teams don’t have
to pick one testing solution and stop there — several approaches can be
used by the same team at different stages of development. The following
sections take a closer look at TDD and BDD and where they fit into the
development cycle to give some more context on testing methodologies in
practice.

### Test-driven development

Testing doesn’t necessarily have to occur after code has been written.
**Test-driven development** is a methodology that flips the order, where
tests are written before the functioning code is written. By writing
tests in this order, test cases can start with the definition of their
purpose, or use case.

Those use cases define the specification and documentation on what
actions are to be supported by new code. TDD tests look at the
*components* of code, like
<a href="https://www.codecademy.com/resources/docs/general/function"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">functions</a> and
<a href="https://www.codecademy.com/resources/docs/general/class"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">classes</a>, as the smallest unit to test.

In practice, TDD can accelerate software development since it dictates
short development cycles with direct test cases. There are many other
benefits of test-driven development:

- Developers can better understand the requirements of code, before
  writing the code.
- Code that will never be executed won’t be added to the codebase.
- The scope of development is reduced.
- Code is written with testability in mind.

TDD is not the only testing methodology that takes a test-first approach
to software development.

### Behavior-driven development

Another testing methodology that uses the strategy of writing test cases
before code is **behavior-driven development**, or BDD. It is extremely
similar to TDD in terms of process. Where these two methodologies differ
is in why or when tests are written, what an individual unit is
considered to be, and how the language of the test is composed.

Since BDD tests are driven by behavior, the language of the test cases
are simplified and written via collaboration between engineers, product
owners, and other stakeholders, to ensure the specified behaviors make
sense from a user perspective.

It can be said that BDD is more specific than TDD. Changes to the code
base, such as changing the design of the code, will not occur unless
there is a relevant change in the product. Since those changes are
feature-related, the unit of tests is called a “feature.” Test cases are
related to whether or not the feature works, rather than if the
individual functions or classes you are writing to develop features
work. Altogether, the tests are about how the product behaves — not the
nitty-gritty technical details.

## Review

Nice work, you now know more about software testing methodologies! Let’s
quickly recap the main ideas:

- Automated testing makes code production more reliable thanks to the
  ease of running frequent tests on all new and old code in a software
  application.
- Software companies don’t need to pick a singular software testing
  methodology — they can be combined and used at various stages during
  software development.
- Some organizations take a test-first approach to software development,
  with testing methodologies such as TDD and BDD being the first step of
  code production.
- Since software errors can cost businesses money and customer trust,
  testing is an integral part of the development process and used in
  some flavor by every software company.

As you continue with testing content, you’ll see TDD as the main
methodology we teach (such as <a
href="https://www.codecademy.com/learn/learn-testing-for-web-development/modules/learn-tdd-feature-test"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">this course</a>). Now you have some insight into what
TDD is and how it can be used as an example of how to guide the software
development process!

# Automate and Organize Tests

## Introduction

Testing is an essential part of development. When used properly, testing
can catch and identify issues with your implementation code before you
deploy it to users. Instead of testing every function manually,
developers automate their tests with a *test framework*.

Developers use test frameworks to organize and automate tests that
provide useful feedback when errors occur. In this lesson we will use
the <a href="https://mochajs.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mocha test framework</a> to write tests
against JavaScript methods.

In this lesson you will:

- Learn to write a basic Mocha test suite
- Use Node’s `assert.ok` method to verify the expected output of your
  code
- Understand and apply the four phases of a test to create an expressive
  testing suite
- Evaluate the quality of your tests against the
  <a href="https://www.codecademy.com/articles/tdd-u1-good-test"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">characteristics of a good test</a>

### Instructions

**1.**

A complete test suite is provided for you on the right. Run the suite
and view its output by typing `npm test` in the terminal and hitting
Enter.

Can you match the test output in your terminal to strings in
**index_test.js**?

### Solution

``` javascript
const assert = require('assert');

describe('Math', () => {
  describe('.max', () => {
    it('returns the argument with the highest value', () => {
      const minimum = 1;
      const median = 2;
      const maximum = 3;

      const result = Math.max(median, minimum, maximum);

      assert.ok(result === maximum);
    });
    it('returns -Infinity when no arguments are provided', () => {
      const negInfinity = -Infinity;

      const result = Math.max();

      assert.ok(result === negInfinity);
    });
  });
});
```

    $ npm test

    > learn-mocha-intro-start@1.0.0 test /home/ccuser/workspace/learn-mocha-learn-mocha-introduction
    > mocha test/**/*_test.js



      Math
        .max
          ✓ returns the argument with the highest value
          ✓ returns -Infinity when no arguments are provided


      2 passing (6ms)

## Install Mocha I

Before writing any tests you’ll need to use
<a href="https://www.codecademy.com/articles/what-is-node"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Node.js and npm</a> to set up a JavaScript project and
install Mocha.

- *Node* allows you to run JavaScript in the terminal
- *npm* is a Node tool that allows you to download packages from the
  web, and manage them in a JavaScript project
- *Mocha* is one of those packages and is used to test other JavaScript
  code

A JavaScript project is a directory of files. The following command
creates a file **package.json** that can be used to manage packages for
the project.

``` bash
$ npm init
```

After running this command you will be prompted to enter information
about your project. It’s okay to skip some fields if you’re not ready to
enter that information.

With your project setup, you can install packages.

``` bash
$ npm install mocha -D
```

Here’s what this command means:

- `npm install` tells npm to install a package from the internet and any
  other packages it depends on
- `mocha` is the package you want to download
- `-D` signifies that this package is a development dependency and will
  show up under the `devDependecies` section in **package.json**. This
  means that the package will only be included in development mode and
  will not be included in the production bundle.

Once you `npm install` packages, you can find the packages and all their
dependencies in the **node_modules** folder. The new directory structure
contains the following:

    project
    |_ node_modules
    |___ .bin
    |___ mocha
    |___ ...
    |_ package.json

The `...` in the file structure represents other packages that are a
dependency for Mocha.

### Instructions

**1.**

Initialize the project. In the terminal window type:

``` js
$ npm init
```

Hit the Enter key to skip each prompt. This creates a **package.json**
file in your project directory.

Check your work after each instruction.

**2.**

Install Mocha as a package and save it as a dependency. In the terminal
window type:

``` js
$ npm install mocha -D
```

You can view **package.json** in the text editor. You can now see
`mocha` as a dependency!

## Install Mocha II

After installing Mocha as a dependency we can run it in two ways.

The first (and more tedious) method is to call it directly from
**node_modules**:

``` js
$ ./node_modules/mocha/bin/mocha
```

The second (and recommended) method is to add a script to
**package.json**. In the `scripts` object in **package.json**, set the
value of `"test"` to `mocha`. It should look like this:

``` js
"scripts": {
  "test": "mocha"
}
```

Now you can call Mocha with the following command:

``` js
$ npm test
```

Instead of manually running each test in the **test** directory, you can
use this command to run the full test suite automatically.

### Instructions

**1.**

Using the guide above, set the `test` script to `"mocha"` in
**package.json**. This connects the command line command `npm test` with
the Mocha package.

**2.**

Run the test suite with Mocha. In the terminal window type:

``` js
$ npm test
```

The command will be executed but you will see a warning in the terminal:
there aren’t any tests to run yet!

## describe and it blocks

In Mocha we group tests using the `describe` function and define tests
using the `it` function. These two functions can be used to make your
test suite *complete*, *maintainable*, and *expressive* in the following
ways:

- Structure your test suite: you can organize tests into nested groups
  that reflect the structure of your implementation code.

- Provide informative messages: you can define your tests using
  human-readable strings.

If you are testing a `Math` object with the method `.max`, you could use
the following test code.

``` js
describe('Math', () => {
  describe('.max', () => {
    it('returns the argument with the highest value', () => {
      // Your test goes here
    });
    it('returns -Infinity when no arguments are provided', () => {
      // Your test goes here
    });
  });
});
```

Both the `describe` and `it` functions accept two parameters: a
descriptive string and a callback function. Though the functions are
flexible, they are commonly used in the structure above: nest `describe`
blocks to resemble the structure of your implementation code and write
individual tests in `it` blocks. This makes your test suite *isolated*,
*maintainable*, and *expressive*.

### Instructions

**1.**

Using the previous example as a guide, you will write a `describe` -
`describe` - `it` block for the function `Math.min()`.

In **test/index_test.js**, create your first `describe` block using
`'Math'` as the descriptive string.

**2.**

Within the block, create another `describe` block using `'.min'` as the
descriptive string.

**3.**

Within the block, create an `it` block using
`'returns the argument with the lowest value'` as the descriptive
string.

### Solution

``` javascript
describe('Math', () => {
  describe('.min', () => {
    it('returns the argument with the lowest value', () => {
      
    });
  });
});
```

## assert

In the last exercise, you learned how to organize and automate tests
using the Mocha test framework. To write the tests themselves, we can
use the `assert.ok` method provided by Node.js.

In programming, a test compares an expected outcome to an actual
outcome. For example, we expect the outcome of the following code…

``` js
const a = 1 + 2;
```

…to be: `a` has a value of `3`.

To test the value saved to `a` with plain JavaScript, you would need to
write a conditional statement comparing `a` to the expected result.
Inside the statement, you would construct an error when the actual
outcome does not match the expected.

``` js
if (a !== 3) {
  throw 'Test failed! a is not 3'
} 
```

`assert.ok()` allows you to compare values and throw errors as needed
using one function call. The small, human-readable format of the
functions will help you make a more *expressive* test suite.

As a Node module, `assert` can be imported at the top of your files with

``` js
const assert = require('assert');
```

You call `assert` functions like this:

``` js
assert.ok(a === 3);
```

In this case `a === 3` evaluates to `true`, so no error is thrown.

If an argument passed to `assert.ok()` evaluates to false, an
`AssertionError` is thrown. The error communicates to Mocha that a test
has failed, and Mocha logs the error message to the console.

### Instructions

**1.**

At the top of **index_test.js**, import `assert` with the `require`
function.

**2.**

Within the provided `it` block, enter the following expression:

``` js
assert.ok(3 + 4 === 8);
```

**3.**

Run the test suite.

**4.**

The argument passed to `assert.ok()` throws an error! You should see
some descriptive feedback in the console.

Make the expression evaluate to true by replacing `8` with `7`.

**5.**

Run the suite again. Your test should pass now!

### Solution

``` javascript
// import assert here
const assert = require('assert');

describe('+', () => {
  it('returns the sum of its arguments', () => {
    // Write assertion here
        assert.ok(3 + 4 === 7);
  });
});
```

## Setup, Exercise, and Verify

In this exercise you will be separating a test into *setup*, *exercise*,
and *verify* phases. This distinct and well-defined separation of steps
makes your test more *reliable*, *maintainable*, and *expressive*.

The phases are defined as follows:

- *Setup* - create objects, variables, and set conditions that your test
  depends on

- *Exercise* - execute the functionality you are testing

- *Verify* - check your expectations against the result of the exercise
  phase. You can use the `assert` library here

Clear separation of each phase makes a test easier to read, change, and
validate.

### Instructions

**1.**

The same test is written twice – once in a naive approach, once using
setup, exercise, and verify phases.

Run the test suite.

**2.**

Both tests have errors! The test output will tell you which line threw
an error for each test.

Following the examples below, fix both tests using the correct call to
`.pop()`.

``` js
 const arr = ['entry1', 'entry2'];
 ['entry1', 'entry2'].pop(); // for naive test
 arr.pop(); // for 3phase test
```

**3.**

Which test approach was easier to read and edit? Answer this for
yourself then move on to the next exercise.

### Solution

``` javascript
const assert = require('assert');

// Naive approach
describe('.pop', () => {
  it('returns the last element in the array [naive]', () => {
    assert.ok(['padawan', 'knight'].pop() === 'knight'); 
  });
});

// 3 phase approach
describe('.pop', () => {
  it('returns the last element in the array [3phase]', () => {
    // Setup
    const knightString = 'knight';
    const jediPath = ['padawan', knightString];

    // Exercise
    const popped = jediPath.pop();

    // Verify
    assert.ok(popped === knightString);
  });
});
```

## Teardown

So far, we’ve been writing just one test using a single `it()` block.
However, in most situations, we will need to write many tests for a
particular feature that get executed in succession.

Running multiple tests can introduce issues if the tests make changes to
the testing environment: changes to the environment in one test might
affect the next test. Some common changes to an environment include:

- altering files and directory structure
- changing read and write permissions on a file
- editing records in a database

To address this issue, we often add a *teardown* step to the end of our
tests. The teardown phase makes our tests *isolated* by resetting the
environment before the next test runs. This provides two key benefits:

- Changes to the environment caused by one test do not affect the other
  tests.
- Isolated tests can be executed in any order!

> **Note**: In some cases — including the previous exercises — the
> *teardown* phase isn’t needed because there are no conditions to
> reset.

### Instructions

**1.**

This exercise uses Node’s filesystem library `fs` in addition to
`assert`. It’s okay if you’re not familiar with `fs` — we will briefly
explain the key methods we are using:

- `fs.appendFileSync(path, str)` creates a new file at `path` with the
  string `str` as content. If a file at `path` exists, the string `str`
  will be appended to the end.
- `fs.readFileSync(path)` returns the contents of the file found at
  `path`.

The first test found in this exercise verifies that we can use
`fs.appendFileSync()` to create a file called **./message.txt** with the
string `'Hello Node.js'`. The second test verifies that we can do the
same but with an empty string.

If you open up your file system, you’ll see that the file
**message.txt** doesn’t exist yet. Run the test in the terminal. Why
does the first test pass but the second test fails?

**2.**

Note the new file `message.txt` created in your directory. It should
have the text `Hello Node.js`:

    project
    |_ node_modules
    |_ test
    |___ index_test.js
    |_ message.txt <--- new file
    |_ package.json

In both tests, we are modifying the environment by creating a new
**message.txt** file. However, the current tests do not have a teardown
phase. The test fails because the second test appends an empty string to
the file created from the first test instead of creating a *new* file
with just an empty string.

Furthermore, if you were to run the test file again, the first test
would now fail. Run the test again and see for yourself — the
**message.txt** file will now have the text `Hello Node.jsHelloNode.js`.

**3.**

You got different output because the test was not isolated.

- In the first run the file didn’t exist, so `fs.appendFileSync()`
  created a **message.txt** file containing the string.
- In the second run, the method added the string to the end of
  `message.txt` because it already existed.
- The second test run failed because the string `Hello Node.js` was
  added twice to the same file!

In the terminal enter `rm message.txt` to delete the file.

**4.**

To ensure that each test is isolated from each other, and that each run
of the test file isolated, we will add a teardown step to the tests. In
this case, we want to make sure that after each test, the file found at
`path` is deleted.

Add this code below `// Teardown` in both tests to delete the file after
the test has completed.

``` js
fs.unlinkSync(path);
```

> **Why do we delete the file after the second test?** We want to ensure
> that the environment returns to its state before the tests were
> executed. This keeps the tests isolated.

**5.**

Verify that you fixed the issue: run the test suite twice and compare
the outputs. It should pass both times!

### Solution

``` javascript
const assert = require('assert');
const fs = require('fs');
let path, str;
 
describe('appendFileSync', () => {
  it('creates a new file with a string of text', () => {
 
   // Setup
   path = './message.txt';
   str = 'Hello Node.js';
  
   // Exercise: write to file
   fs.appendFileSync(path, str);
 
   // Verify: compare file contents to string
   const contents = fs.readFileSync(path);
   assert.equal(contents.toString(), str);
 
   // Teardown: restore file

 });
 
 it('creates a new file with a string of text', () => {
 
   // Setup
   path = './message.txt';
   str = '';
  
   // Exercise: write to file
   fs.appendFileSync(path, str);
 
   // Verify: compare file contents to string
   const contents = fs.readFileSync(path);
   assert.equal(contents.toString(), str);
 
   // Teardown: restore file

 });
});
```

## Hooks

Over the last two exercises, we learned about the four main phases of a
test: setup, execute, verify, and teardown. In the last exercise, you
may have noticed that the setup and teardown steps were identical
between tests.

While execution and verification are unique to each test, setup and
teardown are often similar or even identical for multiple tests within a
test suite. The Mocha test framework provides functions that enable us
to reduce repetition, simplify the scope of each test, and more finely
control the execution of our tests.

These functions (also referred to as *hooks*) are:

- `beforeEach(callback)` - `callback` is run before each test
- `afterEach(callback)` - `callback` is run after each test
- `before(callback)` - `callback` is run before the first test
- `after(callback)` - `callback` is run after the last test

Each hook accepts a callback to be executed at various times during a
test. The `before...` hooks naturally happen before tests and are useful
for separating out the setup steps of your tests. Meanwhile, the
`after...` hooks are executed after tests and are useful for separating
out the teardown steps of your tests.

``` js
describe('messing around with hooks', () => {
 
  let testValue; // Variable used by both tests
 
  beforeEach(() => {
    testValue = 5;
  });
 
  it('should add', () => {
    // testValue = 5 <-- moved to beforeEach()
    testValue = testValue + 5;
    assert.equal(testValue, 10);
  });
 
  it('should multiply', () => {
    // testValue = 5 <-- moved to beforeEach()
    testValue = testValue * 5;
    assert.equal(testValue, 25);
  });
 
});
```

In this example, while each `it()` block could have set the `testValue`
to `5`, using the `beforeEach()` hook allows us to avoid that repetition
while keeping each test isolated.

Keep in mind that not all setup and teardown steps should be included in
these hooks. Occasionally, you may find that you need to perform some
unique setup or teardown for a single test that you don’t want to
include in other tests.

### Instructions

**1.**

`path = './message.txt'` is repeated in both tests, but only needs to be
assigned once.

First, inside the `describe()` block and above the first `it()` test,
create the appropriate hook to simplify this. For now, use an empty
callback function with your hook.

**2.**

Now, copy `path = './message.txt'` into the callback for your new hook
and delete it from the `it()` blocks.

**3.**

Great work! We’ve moved a repetitive setup step out of the tests and
into the `before()` hook. Run the test suite to make sure that the tests
still pass.

After you’ve pressed <span class="kbd">Check Work</span>, type `clear`
into the terminal to clear the message.

**4.**

`fs.unlinkSync(path);` is repeated at the end of both tests. Use the
appropriate hook to have this teardown executed after each test.

First, inside the `describe()` block and before the first `it()` test,
create the appropriate hook to simplify this. For now, use an empty
function.

**5.**

Now, copy `fs.unlinkSync(path);` into the callback for your new hook and
delete it from the `it()` blocks.

**6.**

Confirm everything works by running the test suite!

### Solution

``` javascript
const assert = require('assert');
const fs = require('fs');
let path, str;
 
describe('appendFileSync', () => {
 
 before(() => {
   path = './message.txt';
 });
 
 afterEach(() => {
   fs.unlinkSync(path);
 })
  it('writes a string to text file at given path name', () => {
 
   // Setup
   str = 'Hello Node.js';
  
   // Exercise: write to file
   fs.appendFileSync(path, str);
 
   // Verify: compare file contents to string
   const contents = fs.readFileSync(path);
   assert.equal(contents.toString(), str);
 
 });
 
 it('writes an empty string to text file at given path name', () => {
 
   // Setup
   str = '';
  
   // Exercise: write to file
   fs.appendFileSync(path, str);
 
   // Verify: compare file contents to string
   const contents = fs.readFileSync(path);
   assert.equal(contents.toString(), str);   
 });
});
```

## Review

You can now write tests with Mocha and Node’s `assert.ok()` ! In this
lesson you learned to:

- Install Mocha with npm
- Organize tests with `describe()` and `it()`
- Ensure your tests are isolated and expressive with the four phases of
  a test
- Ensure your tests are reliable with hooks
- Write assertions with `assert.ok()`

As you continue to write tests, remember to always evaluate them against
<a href="https://www.codecademy.com/articles/tdd-u1-good-test"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">the characteristics of a good test</a>: fast, complete,
reliable, isolated, maintainable, and expressive. If you are meeting
these six criteria, you are creating high quality test frameworks!

### Solution

``` javascript
const assert = require('assert');
const fs = require('fs');

describe('appendFileSync', () => {
  const path = './message.txt';
  
  it('writes a string to text file at given path name', () => {

    // Setup
    const str = 'Hello Node.js';
    
    // Exercise: write to file
    fs.appendFileSync(path, str);

    // Verify: compare file contents to string
    const contents = fs.readileSync(path);
    assert.ok(contents.toString() === str);

    // Teardown: delete path
    fs.unlinkSync(path);

  });
});
```

# Learn TDD With Mocha

## Introduction

A good test framework is
<a href="https://www.codecademy.com/articles/tdd-u1-good-test"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>fast</em>, <em>complete</em>, <em>reliable</em>,
<em>isolated</em>, <em>maintainable</em>, and <em>expressive</em></a>.
In this lesson you will learn how to use Node’s `assert` library to
write more *expressive* tests.

An expressive test is easy to read and descriptive, making it useful as
a form of documentation for your implementation code. One way to make a
test more expressive is clarifying its *verify* phase — the step where
expected outcome is compared to actual outcome.

<a href="https://www.codecademy.com/articles/what-is-node"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Node.js</a> provides a library called `assert` with
methods that help you write more expressive verification code. You can
use the methods in this library in place of conditional statements to
write less code and use human-readable language. It can be used within
the Mocha testing framework, and you will be using both throughout this
lesson.

### Instructions

**1.**

An assertion has been provided within a Mocha `describe` - `it` block.
Run the Mocha test suite by typing `npm test` in the terminal and
hitting Enter.

Review the output and move on to the next exercise.

### Solution

``` javascript
const assert = require('assert');
const Calculate =  require('../index.js')

describe('Calculate', () =>{
  describe('.sum', () =>{
     it('returns the sum of an array of numbers', () =>{
       
     })
  }) 
})
```

## assert.ok

As a Node module, `assert` can be imported at the top of your files with

``` js
const assert = require('assert');
```

The <a href="https://nodejs.org/api/assert.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">functions in the <code
class="code__2rdF32qjRVp7mMVBHuPwDS">assert</code> library</a> compare
values and throw errors as needed using one function call. The small,
human-readable format of the functions will help you make a more
*expressive* test suite.

``` js
assert.ok(6 - 1 === 5);
```

In this case `6 - 1 === 5` evaluates to `true`, so no error is thrown.

If an argument passed to `assert.ok()` evaluates to `false`, an
`AssertionError` is thrown. The error communicates to Mocha that a test
has failed, and Mocha logs the error message to the console.

### Instructions

**1.**

At the top of **index_test.js**, import `assert` with the `require`
function.

**2.**

Within the provided `it` block, enter the following expression:

``` js
assert.ok(result === 91);
```

**3.**

Run the test suite.

**4.**

The argument passed to `assert.ok()` throws an error! You should see
some descriptive feedback in the terminal.

Make the expression evaluate to true by replacing `91` with `expected`.

**5.**

Run the suite again. Your test should pass now!

### Solution

``` javascript
```

## assert.equal

You can use `assert.ok()` for most verifications, but sometimes it can
be difficult to determine the condition you are evaluating.

Read the example code below. Will this assertion throw an error?

``` js
const landAnimals = ['giraffe', 'squirrel'];
const waterAnimals = ['shark', 'stingray'];
 
landAnimals.push('frog');
waterAnimals.push('frog');
 
assert.ok(landAnimals[2] == waterAnimals[2]);
```

The above assertion is checking for equality. In order to understand
this you must evaluate the entire expression within the parentheses of
`.ok()`.

You can instead use `assert.equal()` which does the `==` comparison for
us.

In the example below, the two methods achieve the same outcome.

``` js
assert.ok(landAnimals[2] == waterAnimals[2]);
assert.equal(landAnimals[2], waterAnimals[2]);
```

The second line is more *expressive:* instead of parsing the entire
statement, a reader only needs to read the first two words to know the
test is verifying equality!

### Instructions

**1.**

Replace the call to `assert.ok()` with the equivalent call to
`assert.equal()`.

Though your test will work regardless of the order you pass the `result`
and `expected`, it is common practice to pass `result` first and
`expected` second.

**2.**

Run the test suite.

### Solution

``` javascript
```

## assert.strictEqual

Take a look at the code below. Will these assertions throw errors?

``` js
const a = 3;
const b = '3';
assert.ok(a == b);
assert.ok(a === b);
```

- The first assertion will not throw an error because it uses loose
  (`==`) equality. It performs a type conversion when comparing two
  things.
- The second will throw an error because it uses strict (`===`)
  equality. It returns `false` if the types differ.

If you need to be strict in evaluating equality, you can use
`assert.strictEqual()`.

- `assert.equal()` performs a `==` comparison
- `assert.strictEqual()` performs a `===` comparison

Compare the following code to the first example. This code performs the
same verifications, but it is more *expressive*. Without parsing any
logic, a reader would know the intention of your tests by reading the
method names.

``` js
const a = 3;
const b = '3';
assert.equal(a, b);
assert.strictEqual(a, b);
```

> July 2021 Update: the <a
> href="https://nodejs.org/api/assert.html#assert_assert_equal_actual_expected_message"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener"><code
> class="code__2rdF32qjRVp7mMVBHuPwDS">assert</code> documentation</a>
> recommends always using `assert.strictEqual()` instead of
> `assert.equal()`.

### Instructions

**1.**

Set `expected` to the string `'96'` and run the test suite. The test
still passes!

**2.**

Replace `assert.equal()` with `assert.strictEqual()`

**3.**

Run the test suite in the command line. The test fails!

**4.**

Reset `expected` to `96` so that `assert.strictEqual()` does not return
an error.

**5.**

Run the test suite.

### Solution

``` javascript
```

## assert.deepEqual I

Do you think these assertions will throw errors?

``` js
const a = {relation: 'twin', age: '17'};
const b = {relation: 'twin', age: '17'};
assert.equal(a, b);
assert.strictEqual(a, b);
```

Both assertions will throw an error because distinct objects are not
considered equal when using either loose or strict equality in
JavaScript.

If you need to compare the values within two objects, you can use
`assert.deepEqual()`. This method compares the values of each object
using loose (`==`) equality.

The following code will not throw an error…

``` js
assert.deepEqual(a, b);
```

…and you can confirm by manually comparing the `relation` and `age`
properties of each object.

``` js
a.relation == b.relation;
a.age == b.age;
```

### Instructions

**1.**

Run the test suite. You should see an error thrown.

**2.**

Replace `assert.equal()` with `assert.deepEqual()`.

**3.**

Run the test suite again.

### Solution

``` javascript
```

# Write Expressive Tests

## assert.deepEqual II

In the last exercise you used `deepEqual()` to compare the values of two
objects with loose equality. Arrays are also objects, so `deepEqual()`
also compares their values with loose equality.

``` js
const arr1 = [1, 2, 3];
const arr2 = [1, 2, 3];
const arr3 = [1, 2, '3'];
 
assert.deepEqual(arr1, arr2); // No error
assert.deepEqual(arr1, arr3); // No error
```

If you’d like to learn more about `deepEqual()`, the documentation is
available <a
href="https://nodejs.org/api/assert.html#assert_assert_deepequal_actual_expected_message"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

### Instructions

**1.**

Run the test suite. You should see an error thrown.

**2.**

Replace `assert.equal()` with `assert.deepEqual()`.

**3.**

Run the test suite again.

### Solution

``` javascript
```

## Other assert methods

Node’s `assert` library includes more than the four methods covered so
far. You can find them all in the
<a href="https://nodejs.org/api/assert.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Node.js documentation</a>.

Many of the methods can be implemented using other methods, like using
`assert.ok(1 == 1)` to implement `assert.equal(1,1)`. Although this can
be used for many types of tests, more descriptive functions like
`assert.equal`, `assert.strictEqual`, and `assert.deepEqual` allow us to
be more *expressive:* the expected functionality of the implementation
code is clear to anyone reading your tests.

### Instructions

**1.**

Using the link above, go to the `assert` documentation and find a more
*expressive* way to implement `assert.ok(1 !== 2)`.

### Solution

``` javascript
```

## Review

You can now write tests with Node’s `assert` library! In this lesson you
learned to:

- Check for loose (`==`) equality with `assert.equal()`
- Check for strict (`===`) equality with `assert.strictEqual()`
- Check the equality of two object’s values with `assert.deepEqual()`
- Make your tests expressive by using different `assert` methods found
  in the <a href="https://nodejs.org/api/assert.html"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Node.js documentation</a>.

As you continue to write tests, remember to always evaluate them against
<a href="https://www.codecademy.com/articles/tdd-u1-good-test"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">the characteristics of a good test</a>: fast, complete,
reliable, isolated, maintainable, and expressive. If you are meeting
these six criteria, you are creating high quality test frameworks!

### Solution

``` javascript
```

# Documentation: Mocha

<a href="https://mochajs.org/#getting-started"
class="noUnderline__1DujYZeohdnOrK9vnT5gfM" target="_blank"
tabindex="0"></a>

## Mocha<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtcTF4ZDV3LVN2ZyBlb2wyenZtMCI+PHRpdGxlPk9wZW4gSWNvbjwvdGl0bGU+PHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlPSJjdXJyZW50Q29sb3IiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik0yMy4yNTEgNy40OThWLjc0OGgtNi43NW02Ljc1IDBsLTE1IDE1bTMtMTAuNWgtOWExLjUgMS41IDAgMDAtMS41IDEuNXYxNWExLjUgMS41IDAgMDAxLjUgMS41aDE1YTEuNSAxLjUgMCAwMDEuNS0xLjV2LTkiPjwvcGF0aD48L3N2Zz4="
class="gamut-q1xd5w-Svg eol2zvm0" />

In this resource, you are presented with the documentation for the Mocha
testing framework. This is helpful if you want a comprehensive resource
for this JavaScript testing framework that allows asynchronous testing.

Instead of trying to remember it all, use the documentation as a readily
available resource for syntax or implementation help!

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

### Instructions

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

### [Solution](rooster-regulation)

[Good Tests with Mocha Project: Rooster
Regulation](https://www.youtube.com/watch?v=GYLz0QJe9VI)

# Learn TDD With Mocha

## Introduction

Test-driven development (TDD) is a programming technique where you write
test code before implementation code. Test code is written to define the
desired behavior of your program. The test output provides descriptive
error messages that inform the implementation of your program.

### The Red-Green-Refactor Cycle

One of the driving forces of TDD is the *red-green-refactor* cycle.
“Red” and “green” correspond to the color of the text that our test
framework produces in the terminal while running the tests in our suite.
Red signifies failing tests and green corresponds to passing tests.

Use <a
href="https://content.codecademy.com/programs/tdd-js/articles/red-green-refactor-tdd.png"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this red, green, refactor diagram</a> to
help you as you read the steps below:

- Red — Write tests that describe the intended behavior of
  implementation code, and then compare developer expectations with the
  actual results of implementation code. The tests should always fail at
  first because the implementation code for the desired behavior will be
  written in response to the failing test.

<!-- -->

- Green — Write just enough implementation code to make the test pass.
  The tests return *green* because the implementation code executes the
  intended behavior described by the test in the *red* phase.

- Refactor — Clean up and optimize code following the
  <a href="https://www.codecademy.com/articles/tdd-u1-good-test"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">characteristics of a good test</a>. Refactoring
  involves actively considering test and implementation code and making
  revisions to the code base. The tests are passing and should continue
  to pass throughout this phase of the cycle.

In this lesson, you will use a test-driven development approach to
program a method that calculates the sum of an array of numbers.

### Instructions

**1.**

Locate the **index_test.js** file in your editor.

This code has an error in it! You can identify the error by running the
test suite and reviewing the output.

Use `npm test` in the terminal to run the test suite.

Based on the feedback in your terminal, fix the code, then run your test
again. Check your work once it passes.

### Solution

``` javascript
```

## Getting Into The Red I

When we use the red, green, refactor cycle, we:

1.  Write test code that fails
2.  Write implementation code to make the test pass
3.  Consider refactoring the code

As you learn TDD, it may feel backward to intentionally write and run
code that will return errors. In TDD we react to the error messages by
continually re-writing our implementation code so it behaves in the way
that our test specifies.

Imagine you were trying to create a method named `.initials,` inside of
an object named `Phrase`.

The desired behavior of `.initials()` is that it should return the first
letter of each word in a phrase that is passed to it as an argument.

#### Step 1: Write The Test

The first step to writing a test with Mocha is to use `describe` and
`it` blocks to describe the desired behavior of your code. It’s very
important for tests to thoroughly describe the desired behavior with
natural language. This will create the most helpful error messages and
make it easy for you to understand the behavior that your test failed in
executing.

Before running our test, we would use an assert statement to compare the
desired result of our method with the actual result.

*The first step in developing this method would be writing a test that
could look like this:*

``` js
describe('Phrase', () => {
  describe('.initials', () => {
    it('returns the first letter of each word in a phrase.', () => {
      assert.strictEqual(Phrase.initials('Nelson Mandela'), 'NM');
    })
  })
})
```

#### Step 2: Run the test

If we ran this test we would get the following error message in the
terminal:

<img
src="https://content.codecademy.com/courses/learn-tdd-testing-models/getting-into-the-red-I.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="ReferenceError: Phrase is not defined" />

#### Step 3: The test fails (yea!)

The error message tells us that the error is related to the
`Phrase.initials` code block. The `ReferenceError` tells us that the
error is thrown because we don’t have a `Phrase` object. In the next
exercise, we’ll show you the minimum possible code required to get this
test to pass.

### Instructions

**1.**

Complete the test for `Calculate.sum()` In **index_test.js** by writing
an `assert.strictEqual()`statement to verify that
`Calculate.sum([1,2,3])` is equal to `6`.

When using `npm test` in the terminal, the test should fail since
`Calculate.sum` hasn’t been defined yet.

### Solution

``` javascript
const assert = require('assert');
const Calculate =  require('../index.js')

describe('Calculate', () => {
  describe('.sum',() => {
    it('returns the sum of an array of numbers', () => {
      assert.strictEqual(Calculate.sum([1,2,3]), 6);
    });
  });
});
```

## Red To Green I

#### Congrats you’re in the red!

The red error messages describe the failures of our implementation code,
so we can specifically address each issue that is preventing our test
from passing.

Let’s look at the error message from our `Phrase.initials()` example in
the last exercise:

<img
src="https://content.codecademy.com/courses/learn-tdd-testing-models/getting-into-the-red-I.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="ReferenceError: Phrase is not defined" />

The error tells us that `Phrase is not defined`. This is because we have
not created an object named `Phrase` yet. Let’s do that now:

``` js
const Phrase = {}
```

When we run our test again the error would look like this:

<img
src="https://content.codecademy.com/courses/learn-tdd-testing-models/red-to-green-I-1.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="TypeError: Phrase.initials is not a function" />

We’re still in the red, but we have a new error. The error says that
`Phrase.initials` is not a function. That’s because we haven’t added an
`.initials` method to the `Phrase` object. Let’s do that now:

``` js
const Phrase = {
    initials() {
  }
}
```

Now when we run our test we get the following error:

<img
src="https://content.codecademy.com/courses/learn-tdd-testing-models/red-to-green-I-2.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="AssertionError: undefined == &#39;NM&#39;" />

This is the first error that is referencing the actual behavior of the
`.initials` method.

The assert statement we wrote looked like this:

``` js
assert.strictEqual(Phrase.initials('Nelson Mandela'), 'NM');
```

We expected the result of passing `Nelson Mandela` to
`Phrase.initials()` to be `NM`, but the actual result was `undefined`.
This is because our method has not been programmed to return anything.

Following TDD, the next step would be writing the minimum possible
implementation code to make our test pass. In this example, that would
involve adding a line of implementation code so that `.initials()`
returns our expected result, which is `NM`.

*The minimum possible implementation code to make the test pass:*

``` js
const Phrase = {
  initials(phr) {
    return 'NM';
  }
}
```

Now our test would pass and we would be in the green. But that doesn’t
mean our method is working as intended. If we entered “Jody Williams”
our method would return ‘NM’, not ‘JW’. We will address this issue when
it is time, but following TDD, now that we have progressed from the
*red* to the *green*, we will move into the *refactor* phase.

### Instructions

**1.**

Go to your **index.js** file and above the line of code that is
exporting your implementation code, create an empty object named
`Calculate`.

Then run the test suite in your terminal using `npm test`. Notice the
error — you get that `.sum()` is not a function as an out of the box
error message.

Check your work.

**2.**

Inside your `Calculate` object, add a `.sum()` method that takes one
argument.

Run the test suite again in the terminal. You should now get an
`AssertionError`.

Check your work.

**3.**

Address the `AssertionError` in the terminal by making `.sum()` return
the same value as the expected result you defined in your test.

Run the test suite. Your test should pass!

Check your work.

### Solution

## Refactor I

#### Congrats you’re in the green!

Once all your tests pass, you can confidently refactor your code —
restructure and improve it without changing its external behavior. The
confidence comes from knowing that our tests will catch us if we make a
misstep.

When refactoring, it’s critical to test early and often — if our tests
turn red, then we know that something went wrong while we were
refactoring, and we can undo those changes.

A good place to start with refactoring is to restructure tests to
reflect the four phases of a good test: *setup*, *exercise*,
*verification*, *teardown*.

Let’s consider the test for our `Phrase.initials` method. We could
rewrite the test with setup, exercise, and verification stages to make
it more expressive and maintainable.

``` js
describe('Phrase', () => {
  describe('.initials', () => {
    it('returns the first letter of each word in a phrase.', () => {
      // Setup
      const inputName = 'Nelson Mandela';
      const expectedInitials = 'NM';
      // Exercise
      const result = Phrase.initials(inputName);
      // Verification
      assert.strictEqual(result, expectedInitials);
    });
  });
});
```

Here, we have re-written the same test, but we have created variables to
hold the values that we will use to test the behavior of `.initials()`,
and broken up the test into distinct phases, which are marked by the
comments in the code.

Now that we have refactored our test code, we can refactor our
implementation code. Our earlier code looked like this:

``` js
const Phrase = {
  initials(phr) {
    return 'NM';
  }
}
 
```

In order to make our implementation code more expressive, we can change
the name of the input argument of `.initials()` like this:

``` js
const Phrase = {
  initials(inputName) {
    return 'NM';
  }
}
 
```

Refactoring will look different for each project and each iteration of
the *red-green-refactor cycle*. In some cases you won’t need to refactor
at all! Regardless, you should consider how you can improve your code
and — although it is optional — it can set you up for success moving
forward.

### Instructions

**1.**

In **index_test.js**, refactor the code in your `Calculate.sum` test to
include setup, exercise, and verify phases.

- Create descriptive `const` variables for your expected result, and
  then your input array
- Create a descriptive `const` variable for the result of your method
- Rewrite your `assert.strictEqual()` statement to compare the exercised
  result to the expected result.

**2.**

*Optional*: Go to **index.js**. Refactor your implementation code and
set the `.sum()` argument name to `inputArray`. This descriptive name
makes your implementation code more *expressive*.

*Required*: Run the test suite to make sure you are still in the green.

### Solution

## Getting into the Red II

Congratulations, you have made it through your first red-green-refactor
cycle using TDD! The next step is to repeat this cycle to build a more
complete implementation of the `.initials` method.

Once you have a baseline test for your feature, you can start to write
additional test cases that force you to write better implementation
code.

Let’s consider the test suite for our `Phrase.initials` method. We have
one test that checks if `Phrase.initial("Nelson Mandela")` returns
`"NM"`.

``` js
describe('Phrase', () => {
  describe('.initials', () => {
    it('returns the first letter of each word in a phrase.', () => {
      const inputName = 'Nelson Mandela';
      const expectedInitials = 'NM';
      const result = Phrase.initials(inputName);
      assert.strictEqual(result, expectedInitials);
    });
  });
});
```

Let’s write another test that pushes us to implement a
`Phrase.initials()` method that returns the first letter of each word
for “Nelson Mandela” and a different name.

To do this, we will add another `it` block to our code, and inside the
callback function we will again follow the setup, exercise, verification
phases for writing tests. This time we will write a test based on the
circumstance that the string passed to `.initials()` has three names:
`'Juan Manuel Santos'`.

Here is what a second test for `.initials()` would look like:

``` js
describe('Phrase', () => {
  describe('.initials', () => {
 
    . . .
 
    it('returns the initials of a name', () => {
      const nameInput = 'Juan Manuel Santos';
      const expectedInitials = 'JMS';
 
      const result = Phrase.initials(nameInput);
 
      assert.strictEqual(result, expectedInitials);
    });
  });
});
 
```

Although the new `it` block is similar to the existing example, the two
together force you to implement a method that will return initials that
pass both tests.

The idea of TDD is to continue building tests and going through the
*red-green-refactor* process until you feel confident that your
implementation code performs as expected.

### Instructions

**1.**

Add another test to your `describe` block that checks if the
`Calculate.sum([4, 5, 6, 7])` returns `22`.

Create a new `it` block with the string:
`'returns the sum of a four-item list'`

Inside the `it` block, add setup, exercise, and verify phases.

You should see the following error message when you run your test suite.

<img
src="https://content.codecademy.com/courses/learn-tdd-testing-models/red-to-green-II-2.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="AssertionError: 6 == 22" />

### Solution

``` javascript
const assert = require('assert');
const Calculate =  require('../index.js')

describe('Calculate', () => {
  describe('.sum',() => {
    it('returns the sum of an array of numbers', () => {
      const expectedResult = 6;
      const inputArray = [1,2,3]
      
      const result = Calculate.sum(inputArray)
      
      assert.strictEqual(result, expectedResult);
    });
    
    it('returns the sum of a four item list', ()=>{
      const expectedResult = 22;
      const inputArray = [4,5,6,7];
      
      const result = Calculate.sum(inputArray);
      
      assert.strictEqual(result, expectedResult)
      
    });
  });
});
```

## Red to Green II

Now that we have tests that cover more than one condition, it is time to
program the actual behavior that we want our `.initials` method to
execute.

Let’s think about the current state of `Phrase.initials()`. We have one
passing test and one failing test that raises the following error when
you run the test suite:

<img
src="https://content.codecademy.com/courses/learn-tdd-testing-models/red-to-green-II-1.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="AssertionError: &#39;NM&#39; == &#39;JMS&#39;" />

This is not surprising, considering our current implementation always
returns ‘NM.’

To write a more complete implementation, that could get us back into the
green, we could write something like this:

``` js
const Phrase = {
  initials(inputName) {
    // Create an empty array for initials
    const initials = [];
    // Create an array of strings 
    const words = inputName.split(" ");
    // Iterate through the array of strings and push the first character of each to array
    words.forEach((word) => {
      initials.push(word.charAt(0));
    });
    // Return the initials as one string
    return initials.join("");
  }
}
```

This implementation will successfully pass the tests we have written.
Each additional test pushes us to build a complete implementation of the
`.initials` method.

### Instructions

**1.**

Now, in your **index.js** file, you are going to replace the line of
code that returns 6 with the actual code to calculate the sum of the
input array, so that your implementation code will pass both of the
tests you have written.

Run your test suite to get the error message that will lead you towards
writing the most concise production code to make your test pass.

Run your test suite again to make sure you are in the green.

Check your work.

### Solution

``` javascript
const Calculate = {
    sum(inputArray) {
    let total = 0;
    for (const num of inputArray) {
      total += num;
    }
        return total;
    }
}

module.exports = Calculate;
```

## Refactor II

Congrats, you’re back in the green!

Which means the next step is to refactor the code so that your tests are
fast, complete, reliable, isolated, maintainable, and expressive. Also,
you want to make sure your implementation code is descriptive and
efficient.

Sometimes refactoring can take place in test and implementation code,
either one, or neither. The purpose of the refactor phase is to think
critically about the code you have and decide whether there is anything
unnecessary, redundant, or that could be done more clearly or
efficiently.

### Instructions

**1.**

Refactor the code in your **index.js** file by replacing the current
implementation code inside `Calculate.sum()` with a function that uses
the built-in JavaScript method `.reduce()` to accumulate the total value
of an array of numbers.

You can read more about `.reduce()` in the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce?v=a"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network
documentation</a>.

Run your test to make sure you are still in the green.

### Solution

``` javascript
 const Calculate = {
    sum(inputArray) {
    let totalSum = inputArray.reduce((x,y) => x + y);
    
    return totalSum;
    }
}

module.exports = Calculate;
```

## Edge Case

Now that we have written and refactored a few tests, it’s time to
consider *edge cases*.

An edge case is a problem or situation that occurs only at an extreme
(maximum or minimum) operating parameter — you can think of these as
special cases that you need to account for.

Take our `Phrase.initials()` example from earlier. What happens if we
pass `.initials()` a number instead of a string? We could write a test
and then implementation code that responds to this behavior by raising
an error message that instructs you to only use strings.

The test for throwing an error when a number is passed to
`Phrase.initials()` would look like this:

``` js
it('raises an error if the parameter passed in is not a string', () => {
  // Setup
  const nameInput = 14;   
  // Exercise
  const exercise = () => { Phrase.initials(nameInput) };
  // Verification
  assert.throws(exercise, /only use string/);        
})
```

After getting our intended error message we would write just enough
implementation code to pass the test. Which in this case would be adding
the following to `Phrase.initials()`:

``` js
if (typeof inputName !== "string") {
  throw new Error("ERROR: only use string");
}
```

The complete implementation code would now be back in the green and look
like this:

``` js
const Phrase = {
  initials(inputName) {
    if (typeof inputName !== "string") {
      throw new Error("ERROR: only use string");
    }
    const initials = [];
    const words = inputName.split(" ");
 
    words.forEach((word) => {
      initials.push(word.charAt(0));
    });
 
   return initials.join("");
  }
}
```

This is an example of creating a test for edge cases.

### Instructions

**1.**

Now you will write your own test and implementation code for an edge
case in your `Calculate` module, which covers the behavior of an empty
array passed to `.sum()`.

Add another `it` block to your `describe` block that has the docstring:

`"returns zero for an empty array"`

Inside the new `it` block, use the following steps to write the setup,
exercise, and verify phases:

- Set a `const` variable named `expectedResult` equal to `0`.

- Set a `const` variable named `inputArray` equal to an empty array.

- Set a `const` variable named `result` equal to the result of
  `Calculate.sum(inputArray)`

- Assert that your `result` is equal to your `expectedResult`.

**2.**

In your **index.js** file, follow the steps below to add an `if` block
that returns `0` if your `inputArray` is empty.

- Add an `if` block above the `.reduce()` method.
- Check if the length of your `inputArray` is equal to `0`.
- Inside the `if` block, return `0` .

### Solution

``` javascript
```

## Review

We have just covered Test Driven Development with Mocha.

**At a high-level the process is:**

- Write The Test — Start with a test describing the functionality we’d
  like to see.
- Fail The Test — Write code in response to the test that fails.
- Pass The Test — The tests fail and communicate feedback to developers
  through error messages. It’s our responsibility to read those
  messages, then respond by writing the minimum amount of code to
  address those messages.
- Refactor Your Code — See below.

**The development process is guided by the red-green-refactor cycle.**

### Red

Write a test that covers the functionality you would like to see
implemented. You don’t have to know what your code looks like at this
point, you just have to know what it will do.

Run the test. You should see it fail. Most test runners will output red
for failure and green for success. While we say “failure” do not take
this negatively. It’s a good sign! By seeing the test fail first, we
know that once we make it pass, our code works.

### Green

Read the error message from the failing test, and write as little code
as possible to fix the current error message. By only writing enough
code to see our test pass, we tend to write less code as a whole.
Continue this process until the test passes.

This may involve writing intermediary features covering lower level
functionality which require their own Red, Green, Refactor cycle. The
**edge-case** was an example of this.

Do not focus on code quality at this point. Be shameless! We simply want
to get our new test passing.

### Refactor

Clean up your code, reducing any duplication you may have introduced.
This includes your code as well as your tests.

Treat your test suite with as much respect as you would your live code,
as it can quickly become difficult to maintain if not handled with care.
You should feel confident enough in the tests you’ve written that you
can make your changes without breaking anything.

### Instructions

Take a look at our final workspace here. We have both implementation
code that we are confident in, and a test suite that can catch
regressions.

Here we can see the benefits of using Mocha with Test-Driven
Development.

### Solution

``` javascript
```

# Documentation: Chai

<a href="https://www.chaijs.com/guide/"
class="noUnderline__1DujYZeohdnOrK9vnT5gfM" target="_blank"
tabindex="0"></a>

## [Chai](https://www.chaijs.com/guide/)

In this resource, you are presented with the documentation for the Chai
assertion library. This is helpful if you want a comprehensive resource
for this library that pairs with many JavaScript testing frameworks.

Instead of trying to remember it all, use this documentation as a
readily available resource for syntax or implementation help!

# Factorial Feature

In this project, you will use test-driven development to build a
factorial method. You will use the assert module and mocha testing
library to drive your development using tests that follow the phases:
setup, exercise, and verification.

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

### Instructions

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

### [Solution](factorial)

# Code Coverage

In this article, you will learn about *code coverage* and *test
coverage* – two metrics that organizations can use to determine the
extent to which an application’s code has been tested – and why these
metrics are useful.

## What is Code Coverage?

Code coverage is the metric that measures the amount of application code
that has been executed in testing, represented as a percentage. For
example, if 90% of our code has been executed in our tests, then we
would say that we have “90% code coverage”.

But what does it mean for code to be executed in a test? How rigorous
does a test need to be in order to qualify as having executed the
entirety of a program? And does 100% test coverage mean that a program
is bug-free?

## Code Coverage Criteria

Measuring code coverage is conducted using one or more criteria,
depending on the organization’s standards for code coverage. Though this
is not an exhaustive list, some key criteria to use when measuring code
coverage include:

- *Function Coverage*: Has each function been called?
- *Statement Coverage*: Has each statement been executed?
- *Path Coverage*: Has every edge in the
  <a href="https://en.wikipedia.org/wiki/Control-flow_graph"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">control-flow graph</a> been executed?
- *Condition Coverage*: Has each boolean sub-expression evaluated to be
  both true and false?

Let’s look at an example of how these criteria can be used to determine
code coverage. Here we have a very simple function that returns the sum
of two arguments, if two arguments have been provided, and returns
`null` otherwise:

``` js
function numSum(x, y) {
  if (x && y) {
    return (x + y);
  } else {
    return null;
  }
}
```

The most basic test of this function would include calling the function
at least once, thus achieving 100% function coverage.

``` js
numSum(1, 2);  // This should return 3
```

By executing the function only once and with the arguments above, we
will execute some, but not all, of the lines of code in the function.
So, we can test our function by calling it with arguments that will
return `null`:

``` js
numSum(1, 2);  // This should return 3
numSum(1, false);  // This should return null
```

With these two calls together, both paths in the `if` / `else` blocks
are taken and both `return` statements are executed. Thus, we have 100%
statement coverage and 100% path coverage.

Finally, to achieve 100% condition coverage, we need to call our
function with arguments such that `x` and `y` each evaluate to `true`
and `false` in the function’s `if` condition statement.

``` js
numSum(1, 2);  // This should return 3
numSum(1, false);  // This should return null
numSum(false, 1);  // This should return null
numSum();   // This should return null
```

## The 100% Code Coverage Myth

And there we have it, we’ve achieved 100% coverage in each of the four
criteria! So, we’re done testing, right? Well, not quite.

Having 100% code coverage does not guarantee bug-free code – it simply
validates the completeness of our tests using a given set of criteria
relative to other test suites with lower code coverage. We still must be
vigilant about writing robust test suites that specifically address both
the intended use cases, and unintended edge cases, of our application.

For example, as written, the `numSum` function will concatenate numeric
string arguments rather than performing addition.

``` js
numSum('1', '2') // This will return '12' instead of 3
```

While there are <a
href="https://en.wikipedia.org/wiki/Code_coverage#Parameter_value_coverage"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">other coverage criteria</a> we can use to
identify the full range of function parameters, code coverage is an
insufficient metric to determine if our tests confirm the intended
functionality of our program as defined by the end user’s requirements.

Instead, we should consider the code coverage criteria as a set of
guidelines to help you develop intuition for testing your code while
remaining determined to write robust test suites that are specific in
targeting the various use cases of our programs.

## Test Coverage

Another term you may hear with regards to testing is called *test
coverage*. Test coverage differs from code coverage in that test
coverage measures the percentage of the required **features/specs** that
are tested, as opposed to the percentage of lines executed. These
features/specs are typically defined in a
<a href="https://en.wikipedia.org/wiki/Product_requirements_document"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">requirements document</a> provided by a
client or product designer.

Suppose you are building a mobile-native application that needs to work
on phones using the Android and iOS operating systems but is not
expected to work on desktop browsers. Accordingly, to achieve high test
coverage, you will be expected to write tests for your application’s
performance on Android and iOS but not on browsers.

Like code coverage, test coverage cannot guarantee that our program will
not have unexpected behavior. However, the pursuit of high test coverage
can lead us to identify bugs and unexpected behavior earlier on in the
development process.

## Conclusion

Code coverage measures the percentage of lines of code that are executed
in a test while test coverage measures the percentage of required
features that are tested. Though these metrics cannot guarantee bug-free
code, by incorporating these two metrics into your test analysis, you
can increase your confidence that your test suites are robust and that
your products can satisfy your end users.

# Mocking In Tests

In this article, you’ll be introduced to the practice of mocking and how
it can be used in unit and integration tests.

## What is Mocking?

*Mocking* is the process of creating a fake version of an external
service for testing purposes, particularly in unit tests and integration
tests. Mocking is effective in testing individual units of code without
relying on the functionality of other services or units such as APIs or
databases.

> Another word that is used to describe this practice is *stubbing*. <a
> href="https://dev.to/snird/the-difference-between-mocks-and-stubs-explained-with-js-kkc"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">While there is a difference</a>, it’s
> not a very relevant difference in this scope and context.

Let’s say we’re testing a feature for a blog website which renders
profile data (i.e. name and bio) of the author of a certain blog post.
How might mocking help us better test this feature?

## Mocking in Unit Tests

As mentioned above, mocking allows us to test a particular feature
without needing to rely on other services or units. By removing
dependencies, we are limiting the sources of potential bugs and
unintended results to just the feature being tested.

In our blog application, the new feature has three steps:

1.  profile data must first be fetched from a database
2.  the data received must be parsed and formatted
3.  the formatted data is rendered

When unit testing how the data is displayed (step 3), we can skip the
first two steps (fetching and formatting) by mocking the formatted data
we need, allowing us to focus solely on testing how our feature renders
that data. We can even mock bad or unexpected inputs to test how our
feature might display an error message.

<img
src="https://static-assets.codecademy.com/Courses/testing-concepts/mocking-in-unit-tests.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Mocking in unit tests diagram" />

## Mocking in Integration Tests

While it’s helpful to use mocks in unit tests, we should avoid using
mocks in integration tests to better simulate interactions between
internal services (though external services should remain mocked).

In our blog application, we use an intermediate function to format
incoming data from the database for our new feature that will render the
data. To test this integration, we would no longer mock how that raw
data is formatted and then displayed. We would, however, still mock the
raw data coming in from the database.

## Summary

Mocks are helpful tools that allow us to more accurately test units of
code by limiting the impacts of other potential sources for bugs to
emerge from. Though they can be useful in unit testing, we should make
sure to use mocks sparingly to ensure that integration of internal
services can be tested comprehensively.

What is a mock?

- [ ] A real service used by a unit under test.
- [ ] A test that can be run on units of code.
- [ ] An object that can be used to observe the behavior of other
  functions.
- [x] A fake version of a service, used for testing purposes by the unit
  being tested.

👏 Correct!

Which of the following is a benefit of using mocks?

- [x] Mocks make it possible to limit the amount of code being tested
  without depending on other services.
- [ ] You can test how all the external services used in an application
  work together.
- [ ] Mocks can be used to assert information in a test.
- [ ] Mocks can wrap around our existing functions and tell us
  information about their usage.

👏 Correct!

Which of the following is true about using mocks with integration tests?

- [x] Integration tests should mock external services but not internal
  services.
- [ ] Integration tests should never use mocks.
- [ ] Integration tests should mock internal services but not external
  services
- [ ] Integration tests should use mocks for every service, both
  internal and external.

👏 Correct!

# Spies with Sinon

Step aside, James Bond! In this article, you’ll learn about spies in the
context of testing and about the Sinon.js library.

## What are Spies?

In testing, a *spy* is a function that observes and records information
about another function’s calls including arguments, return value, the
`this` value, and exceptions thrown (if any). The information that is
observed by the spy can then be used in assertions for testing.

As an example, let’s say we are testing a top-secret application with a
feature to receive a message, display for 5 seconds, then delete it. We
can wrap a spy around this unit to keep track of how many messages were
received, what the messages said, if any errors were thrown, etc. Using
its stealthy powers of espionage, a spy won’t change anything about how
the function operates, it will just observe what happens.

<div class="iframe">

<img src="assets/spies0.png" class="interactive-img" />
<img src="assets/spies1.png" class="interactive-img" />
<img src="assets/spies2.png" class="interactive-img" />
<img src="assets/spies3.png" class="interactive-img" />
<img src="assets/spies4.png" class="interactive-img" />
<img src="assets/spies5.png" class="interactive-img" />
<img src="assets/spies6.png" class="interactive-img" />

<img src="assets/previous.svg" id="previous-img" class="svgImg" />

Back

<img src="assets/play.svg" id="play-img" class="svgImg"
style="display:hidden" />
<img src="assets/pause.svg" id="pause-img" class="svgImg" />

Next <img src="assets/next.svg" id="next-img" class="svgImg" />

1/

X

</div>

## What is Sinon?

Sinon.js is a JavaScript library that includes standalone fakes, spies,
and mocks that can be used in any unit testing framework. The
<a href="https://sinonjs.org/releases/latest/spies/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Sinon spies documentation</a> highlights
the different information that can be pulled from spies.

## How to Spy?

There are multiple ways to use a spy, they can be anonymous functions or
they can wrap around existing methods in a program. You can see all the
many ways to use spies in the
<a href="https://sinonjs.org/releases/latest/spies/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Sinon spies documentation</a>, but we’ll
focus on one type in particular: wrapping methods.

Our spy will be wrapped around a method and, as we use the method in our
tests, will observe everything that happens involving that method. We
can think of a spy with a wiretap, taking notes on every interaction
that method has.

The following example demonstrates some basics of using the <a
href="https://sinonjs.org/releases/latest/spies/#using-a-spy-to-wrap-an-existing-method"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">sinon.spy()</code> method</a> to
test the method of an object.

``` js
const robot = {
  greet(name){  // Unit being tested
    return 'Hello ' + name;
  }
};
 
test('greet should return hello codey', () => {
  sinon.spy(robot, 'greet'); // Initialize the spy
  robot.greet('codey'); // Call the method
  expect(robot.greet.called).to.be.true;
  expect(robot.greet.calledWith('codey')).to.be.true;
  expect(robot.greet.returned('Hello codey')).to.be.true;
  robot.greet.restore(); // Remove spy from wrapped method
});
```

In the example above, the `sinon.spy()` method is used to wrap the
`robot` object’s `.greet()` method. Doing so adds a number of useful
properties and methods that allow us to monitor its behavior after we
call `robot.greet('codey')`. Using a few of these methods, we test if
the `.greet()` method…

- has been called using the `.called` property
- is called with the correct argument using the `.calledWith()` method
- returns what we expect it to return using the `.returned()` property

Finally, to ensure that the method returns to its original, un-spied-on
state, we use the `.restore()` method.

There are too many properties and methods available to spied-on
functions to cover in one article and even to commit to memory, so we
recommend that you check out the
<a href="https://sinonjs.org/releases/latest/spies/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a> to find the right tools
for your needs.

## Summary

Spies are an incredibly useful tool that serves as a means for observing
and recording information about how our methods are used in tests.
Though there are a number of JavaScript libraries that provide spying
functionality, Sinon.js is well known and used widely, including at
Codecademy!

What is a spy in the context of testing?

- [x] A function that observes and records information about another
  function’s calls.
- [ ] A devious hacker who intends on learning how to break source code.
- [ ] A function that asserts information in a test.
- [ ] A function that fakes information required by a unit under test.

👏 Correct!

Fill in the blanks to properly set up and teardown a spy.

``` js
// Setup the spy
sinon.spy(myObj, 'myFunc'); 
 
// Teardown the spy
myObj.myFunc.restore(); 
```

👏 You got it!

# Review: JavaScript Testing

In this Unit, you learned about JavaScript testing.

Congratulations! The goal of this unit was to introduce you to the
fundamentals of JavaScript testing and different testing methodologies.
You’ll use Test Driven Development (TDD) as an example of how testing
can influence software development. You will learn about different types
of tests and how using tests will catch and identify issues with your
code before you deploy it to users.

Having completed this unit, you are now able to:

- State the benefits of testing
- Identify different types of testing and methodologies
- Write tests using Mocha and Chai
- Apply TDD techniques to software development
- Describe how code coverage is used as a metric for testing
- Incorporate mocking and spies into tests

If you are interested in learning more about these topics, here are some
additional resources:

- Article: <a
  href="https://hackernoon.com/introduction-to-test-driven-development-tdd-61a13bc92d92"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Hackernoon’s Introduction to Test
  Driven Development</a>

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
