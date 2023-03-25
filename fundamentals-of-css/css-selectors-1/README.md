# Healthy Recipes

Using CSS selectors, you’ll give a recipe website some new style!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

1\.

Before you begin, take a look at the site’s structure in **index.html**.

Start by making the image at the top of the page a little smaller.
Navigate to **style.css** and write a CSS selector for the `img` tag.

Within its curly braces, write:

``` html
height: 150px;
```

Try experimenting with the `150` number and observing the results.

2\.

The font size of the recipe description should be larger. In
**style.css**, write a CSS selector for the `.description` class.

Within its curly braces, add the following CSS:

``` html
font-size: 20px;
```

3\.

Next, let’s style the cooking time. The element on line 15 of
**index.html** has an `id` attribute of `cook-time`. Navigate to
**style.css** and add a `cook-time` ID selector.

Inside of its curly braces, write:

``` html
font-weight: bold;
```

4\.

Now, let’s change the bullet points of the ingredient list to squares
instead of circles. Start by writing a selector for the `li` elements
inside of the `.ingredients` element.

Then, write this inside of its curly braces:

``` html
list-style: square;
```

5\.

Next let’s make the time for each preparation step appear gray. In
**style.css**, write a selector for `p` elements that also have a class
of `.time`.

Then, inside of this selector’s curly braces, write:

``` html
color: gray;
```

6\.

At the bottom of the page, there’s a link to the full recipe. Let’s make
the link a different color.

Notice that in **index.html**, on line 42, there is a `p` element with a
class of `citation`, then an `a` element inside of it with a class of
`external-link`. Navigate to **style.css** and write a selector using
`external-link` class.

Then, add this code inside of the selector’s curly braces:

``` html
color: SeaGreen;
```

7\.

Finally, let’s make the font Helvetica instead of the default Times New
Roman. Instead of writing multiple selectors to apply the `font-family`
property, write a selector that applies a `font-family` attribute to all
text at once.

The selector should target the `h1`, `h2`, `p`, and `li` elements.

To change their font, include this line of code inside the curly braces:

``` html
font-family: Helvetica;
```

### [Solution](https://datttrian.github.io/codecademy/fundamentals-of-css/css-selectors-1/index.html)
