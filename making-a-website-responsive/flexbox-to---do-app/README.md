# Flexbox: To-Do App

In this project, you will follow step-by-step instructions to fix a
to-do web app. All of the HTML and most of the CSS is intact, however, a
few Flexbox values are missing.

In order to complete this project, you must know how to set an element’s
Flexbox properties.

We recommend that you review our Flexbox Lesson before beginning.

The website’s existing **index.html** and **style.css** files are
displayed in the text editor to the right. Good luck!

If you get stuck during this project, check out the **project
walkthrough video** which can be found in the help menu.

### Instructions

Mark the tasks as complete by checking them off

1\.

Start off by turning some of the elements into flex and inline-flex
containers.

- Turn elements with the class `container` and elements with the class
  `square` into flex containers.
- Turn elements with the class `week` and elements with the class
  `reminders` into inline-flex containers.

To do this, add the `display` property with a value of either `flex` or
`inline-flex`.

2\.

The elements inside the new inline-flex containers should grow to fill
the container. This is accomplished using the `flex-grow` property:

- Elements with the class `week` will get a `flex-grow` property with a
  value of `3`.
- Elements with the class `reminders` will get a `flex-grow` property
  with a value of `2`.

3\.

We want the flex items with the class `week` to be ordered vertically,
instead of horizontally.

Inside the `.week` ruleset, add a `flex-direction` property with the
value that orders the items in a column.

4\.

The items with the class `row` should move to the next line when the
container gets too small.

Inside the `.row` ruleset, add a `flex-wrap` property with the value
that moves items to the next row, while keeping their order intact.

5\.

The items with the class `row` also need some space:

Inside the `.row` ruleset, add a `justify-content` property with the
value that adds space around each item.

Furthermore, the items with the class `square` need to be centered:

Inside the `.square` ruleset, add a `justify-content` property with the
value that centers the items in the container.

6\.

Lastly, the elements with the class `row` and elements with the class
`square` need to be aligned vertically:

Inside the rulesets for `.row` and `.square`, add the `align-items`
property with the value that centers the items inside the container.

You did it! Great work. Now resize the browser to see your flex
properties in action!

### [Solution](https://datttrian.github.io/codecademy/making-a-website-responsive/flexbox-to---do-app/index.html)
