# Introduction: Making a Website Responsive

The goal of this unit is to utilize responsive web design practices. You
will learn how to create websites that can be viewed on a variety of
devices and use different layouts and positioning.

After this unit, you will be able to:

- Understand responsive web design
- Use CSS Grid and Flexbox for layout, positioning, and responsiveness
- Use media queries

You will put all of this knowledge into practice with an upcoming
Challenge Project. You can complete the Challenge Project either in
parallel with or after taking the prerequisite content—it’s up to you!

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

# Grids and Spacing

## Introduction

*Grids* are made up of intersecting horizontal and vertical lines. For
instance, if you look at a city map, you’ll notice streets crossing
paths and forming a clear structure to the city’s layout. This is
because a lot of them were designed and built using a grid system.

As a designer, *grid systems* help you organize your designs and provide
a series of guidelines to properly align elements on a page. Using this
visual layout system can help easily define the space needed between
elements, while creating content that guides the user on how to navigate
the web page.

Grids can also promote consistency, allowing you to build repeated
patterns to carry throughout your designs. Through the use of
repetition, the learning curve of using your website can be
significantly reduced allowing users to clearly navigate and consume the
content.

Let’s explore the different parts of a grid system and discuss how it
can help enhance your designs with consistency, alignment, and spacing.

### Instructions

To the right is an example website that uses a grid system. Notice how
the different pieces of content are laid out on the page and how the
design makes use of columns and rows.

Move on to the next exercise when you’re ready!

### Solution

<img src="https://content.codecademy.com/programs/ui-design/css-grid-design/website%20grid%20example%20final.jpg" alt="The image is an example website that uses a grid system. There are different pieces of content laid out on the page and the design makes use of columns and rows. There is one large horizontal picture at the top and then two rows of four smaller perfectly spaced images below it. There is also a word between each row of images." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Grid Types

Various types of grids exist and are used within all types of visual
design. With the creation of the printing press, bookmakers developed a
manuscript-style grid, or a *block grid*, to bring structure to text on
pages. Within news design, the *column grid* allowed publishers to break
the page apart into sections to emphasize different pieces of content.

Similar to news design, the most common type of grid a web designer will
use is the column grid. The column grid breaks up a page into vertical
units that span the width of the content, and this grid structure can
dictate how elements are laid out with precision and elegance.

Let’s continue to explore the anatomy of a grid and what it comprises.

### Instructions

Examine the diagram in the right view. Note how the columns span the web
page evenly on the horizontal axis. By using a column-based layout, it
allows designers to evenly space content horizontally while seeing how
their layouts stack vertically.

### Solution

<img src="https://content.codecademy.com/programs/ui-design/css-grid-design/css_grid_diagram_2_v2.svg" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Grid Anatomy

When designing a website, the grid comprises three major components:
columns, gutters, and margins.

Columns are defined as the vertical sections that span the width of a
page. In web design, it’s common to see layouts consisting of 12 or 16
columns, while other may only feature three columns. Defining the number
of columns depends on what’s appropriate for your design, device, and or
screen viewing size.

Next, a gutter is the negative space between each column. Gutters help
in ensuring the columns don’t run together, which would negate the
purpose of using a column-based grid.

Margins appear on the left and right sides of the column-based grid.
These ensure the content of your designs doesn’t match up to the edges
of the browser window.

It’s important to note, margins may vary depending on the width of the
grid, browser window, or device. For larger displays, margins may be
very noticeable while on smaller screens, they may have the same width
as a gutter.

### Instructions

Examine the diagram to the right. Note the three major components we
reviewed in this exercise. Notice how the columns have a gap of space
between each column as well as how the grid doesn’t bump up against the
side of the web page.

### Solution

<img src="https://content.codecademy.com/programs/ui-design/css-grid-design/css_grid_diagram_3.svg" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Grid Columns

*Columns* are the vertical containers that span the width of the page.
They can be dependent on each other, meaning they are used to organize
related content such as a continuation of a paragraph. They can also be
independent of each other, meaning they are used for organizing the
layout of unrelated content such as a sidebar. This allows for the
flexibility of organizing information.

Within a grid, content can span multiple columns. What this means is
that a website does not need to maintain the same column layout
throughout. For example, a section of a website with a 12 column grid
can have content that spans 4 columns, three times.

As the designer, you have the option to maintain this layout throughout
the website. Or you can choose to use various layouts, including having
the content span the whole width of the grid, half the grid or only a
small portion of the grid.

While we will talk about this in more detail in just a few exercises,
columns are separated by gutters. This design term is referred to as the
space or gap between two columns. No content can spill into the gutter
unless it is using the next column.

Columns can also be used to push, or offset content. Say you want to
only display content on the right 4 columns of a page while using a 12
column grid. To do this, you can easily offset the content by 8 columns
so the content is pushed to those right 4 columns.

### Instructions

In the diagram to the right, notice how the content of the web page
spans a specific set of columns but doesn’t overflow into the gutter?
This is what makes grids so great for design. They allow you to quickly
create web designs that snap together in an efficient and systematic
way.

### Solution

<img src="https://content.codecademy.com/programs/ui-design/css-grid-design/website%20grid%20example%20final.jpg" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0" alt="Diagram of a website that has content that fits within columns as described in the Instructions section. ">

## Grid Rows

*Rows* are the horizontal lines on a grid. Think of rows as invisible
boxes that group content together by height. Rows are commonly used in
web designs to group content together and re-order other content to
allow for more whitespace.

For example, let’s say you have a set of items that all span the same
amount of columns and you want them to align across the page without
being disrupted by other elements. One way to achieve this outcome is to
wrap the content in a row component. This will force any content, not
inside of the row, to be pushed away.

Again, remember that a row can be used to force content away from an
area that has remaining columns not used. What does this mean? Great
question.

Let’s say our design uses a 12 column grid and we want one element to
span seven columns. That means we still have five unfilled columns to
either the left or the right side. Naturally, any new content added to
our document will try and fill this unused space. However, by placing a
row element around our component that spans 7 columns we can force any
new content to start beneath our component and leave the remaining 5
columns empty.

### Instructions

Check out the diagram to the right. Notice how the row wraps around the
different components like a box.

Also, note how it forces content that is not within the box below it.
For instance, in the first row, the logo, the gutter, and the navigation
bar span the entirety of the first row. Therefore, the next element must
go in the second row.

### Solution

<img src="https://content.codecademy.com/programs/ui-design/css-grid-design/CSS_diagram_4_v1.svg" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0" alt="A diagram of a web page split up into 12 columns and 3 rows. Each row contains up to 12 columns' worth of content. Once the maximum amount of content has been reached for a row (12 columns' worth) the content then starts anew on the row below it. ">

## Grid Gutters

*Gutters* make up the negative space between columns. This design
element helps to provide a natural break between elements aligned
horizontally, while also helping to break rows of content vertically.

Note, there will always be one less gutter than the total number of
columns. For example, if you are designing on a 12 column grid, then you
will only have 11 gutters, one for every gap that separates each column.

While there is no set standard for a gutter width, it’s best practice to
select a size that visually separates horizontal columns but is
significantly thinner than the width of a column. The same can be said
for vertical gutters.

Moreover, vertical and horizontal gutters do not need to match in size
for a given grid layout. This is because you as a designer may want more
vertical spacing than horizontal spacing when separating elements on a
page.

Remember, if the gutter space is too tight, it can be hard to visually
tell where one element ends and another starts. On the other hand, if
the gutter space is too large, the design can be hard to follow.

### Instructions

In the diagram to the right, notice the gutters between each column. The
gutter size can vary from project to project but should provide enough
space to keep the design feeling natural and allow the user to visually
see the separation of content on the page.

### Solution

<img src="https://content.codecademy.com/programs/ui-design/css-grid-design/CSS_diagram_4_v1.svg" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0" alt="A diagram of a web page split up into 12 columns and 3 rows. Each row contains up to 12 columns' worth of content. Once the maximum amount of content has been reached for a row (12 columns' worth) the content then starts anew on the row below it. ">

## Responsive Grid

When designing web content, a designer needs to take into account the
different screen-sizes a user might encounter and how that will affect a
website’s layout. Many websites utilize *responsive design*, a set of
techniques that allow a website’s content to shift based on the device
or screen size. Because of these changes, responsive design requires a
different number of total columns based on screen size, in order to
accommodate content and keep it from being squished.

Consider your mobile, tablet and desktop devices. Now, think about their
viewable areas. All are substantially different in size. Thus, it’s
common practice in web design to create responsive grid sizes. On a
large or desktop device you may start with a 12 column grid, but on a
small or mobile device, you adjust the 12 column grid to a 4 column
grid.

As a designer, responsive grid design enables you to maximize the
content on the screen, ensuring a more accessible experience for users.
Additionally, your design elements will have sufficient space to breathe
and content can naturally flow across the page.

### Instructions

Check out the diagrams to the right. Notice how we have adjusted the
total number of columns based on the viewport size. By adjusting the
columns as the viewport becomes smaller, we can rearrange content to
better fit the viewing size.

### Solution

<img src="https://static-assets.codecademy.com/Courses/Learn-CSS/Responsive-Design/responsive_grid.png" alt="diagram breakdown of how a Desktop site might use a 12 column grid vs a Tablet site that uses a 6 column grid vs a Mobile site that uses a 3 column grid." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Whitespace

Space is an important aspect of creating balanced and harmonious layouts
in web design. As a designer, it’s important to understand how space can
enhance as well as hurt your designs.

*Whitespace*, or negative space, refers to the emptiness between
elements, whether that’s in the gutter of the columns, or additional
padding around a block of text. As a designer, don’t be afraid of using
space to enhance the usability of your site and prioritize the content.

Let’s explore some examples of good whitespace. If you look at the
examples in the workspace, you will notice that the website on the left
embraces whitespace on its landing page. It focuses the user’s attention
solely on the primary action, which is searching for content. In this
case, the whitespace is white in color as well. However, whitespace
isn’t always going to be white.

In the example on the right, you’ll notice that too much whitespace can
negatively impact the flow of your site. By including too much spacing
in between elements, it can cause issues for users trying to navigate
seamlessly through the content.

Whitespace is broken up into passive and active, which we’ll explore in
the next two exercises!

### Instructions

Notice how the two web pages utilize whitespace, and which one does it
more effectively.

### Solution

<img src="https://content.codecademy.com/programs/ui-design/css-grid-design/Css_objective8_final_image_v2.jpg" alt="Diagram of two web pages, one showing mainly white space and a search bar, the other web page shows multiple columns and blocks of text." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Passive Whitespace

The first type of whitespace we will discuss is called *passive
whitespace* or *micro whitespace*. Used to improve the aesthetics of the
layout without guiding the user through a specific reading, flow, or
content order; passive whitespace is sometimes referred to as the
unconsidered space. The most frequent use of passive whitespace comes
within text elements.

Different font families have varying amounts of passive whitespace and
you can control aspects of them within your design by altering CSS
properties such as `line-height` or `margin` when setting type.

By adjusting the space between your lines of text, you can improve the
design’s overall legibility and balance.

If a site’s text is too tight or lacks sufficient margin below headings
and paragraphs, it can be hard for users to consume the content.
However, if the site’s text is too spaced out, it can make it just as
hard to read.

Finding a healthy balance between text that lacks sufficient spacing and
text that has too much is an important task for designers.

### Instructions

In the diagram to the right, notice the difference in space between the
two paragraphs. The text on the left has very little line-height or
spacing between lines of text. However, the example on the right has a
large amount of line-height.

### Solution

<img src="https://content.codecademy.com/programs/ui-design/css-grid-design/css%20diagram%206.svg" alt="notice the difference in space between the two paragraphs. The text on the left has very little line-height or spacing between lines of text. While the example on the right has a large amount of line-height." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Active Whitespace

Unlike passive whitespace, which occurs more naturally, *active
whitespace* is intentional. Also called *macro whitespace*, active
whitespace refers to enhancing the overall page structure through space
to emphasize content or guide users from one point to the next.

By adding active whitespace to a site’s design, we can spread our
different sections out. This technique helps guide the user through the
page’s content more effectively, allowing users to consume and absorb
content more easily.

Active whitespace comes in many forms. But traditionally, it is achieved
by adding space between a site’s elements. For instance, adding space to
an article’s sidebar helps to visually separate the content from the
page’s main content.

Additionally, this type of whitespace allows readers to quickly
understand what they should be focusing on versus what is just
supplementary details.

### Instructions

In the diagram to the left, notice how the example on the left is very
tight. There is not a lot of space that separates the various sections
of the page. This type of layout makes it hard for users to find the
information that they’re looking for. However, the image on the right
has plenty of active whitespace built in. This design allows users to
find natural breakpoints in the page and identify what information
belongs together and what does not.

### Solution

<img src="https://content.codecademy.com/programs/ui-design/css-grid-design/css%20diagram%207.jpg" alt="Image of two example websites. The one on the right does not have adequate whitespace between the elements, whereas the one on the left does. " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Review

Congratulations! You should have an understanding of grid structure, the
components that make up a grid, and how to use them to properly space
elements within your design.

Remember, the reasons we design using grids are:

- Promote consistency within our designs
- Properly align elements on our page
- Provide ample spacing between content

Remember a grid is made up of:

- Columns
- Gutters
- Margins

Spacing is incredibly important within a design to ensure:

- Elements have ample room to breathe
- Denote emphasis on certain parts of a page
- Promote harmonious patterns and rhythms within your designs

Following these guidelines will allow you to create elegant and usable
sites!

# Flexbox

## What is Flexbox?

CSS provides many tools and properties that you can use to position
elements on a webpage. Codecademy’s lessons on the box model and CSS
display introduce a couple of these techniques.

In this lesson, you will learn about Flexible Box Layout or *flexbox*, a
tool that greatly simplifies how to position elements.

There are two important components to a flexbox layout: *flex
containers* and *flex items*. A flex container is an element on a page
that contains flex items. All direct child elements of a flex container
are flex items. This distinction is important because some of the
properties you will learn in this lesson apply to flex containers while
others apply to flex items.

To designate an element as a flex container, set the element’s `display`
property to `flex` or `inline-flex`. Once an item is a flex container,
there are several properties we can use to specify how its children
behave. In this lesson we will cover these properties:

1.  `justify-content`
2.  `align-items`
3.  `flex-grow`
4.  `flex-shrink`
5.  `flex-basis`
6.  `flex`
7.  `flex-wrap`
8.  `align-content`
9.  `flex-direction`
10. `flex-flow`

Flexbox is an elegant tool that makes it easy to address positioning
issues that may have been difficult before. Let’s get started!

### Instructions

In the browser to the right, scroll down until you see the phrase “Our
Expertise” in the div with the yellow background. Stretch and shrink the
browser and observe how the elements change position to fit in the width
of the page.

### Solution

``` html
<!doctype html>
<html>
<head>
  <link href='https://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet'>
  <link rel='stylesheet' href='style.css'>
</head>
<body>
  <div class='header'>
    <div class='container'>
      <h1>Headlines.</h1>
      <ul>
        <li><a href='3'>About</a></li>
        <li><a href='#expertise'>Our Services</a></li>
        <li><a href='3'>Our Team</a></li>
        <li><a href='#footer'>Contact Us</a></li>
      </ul>
    </div>
  </div>
  <div class='jumbotron'>
    <div class='container'>
      <h2>We <span>collect and curate</span>
articles, opinions, and images
from around the world.</h2>
    </div>
  </div>
  <div class='banner'>
    <div class='container'>
      <h2>The Bottom Line.</h2>
      <p>We deliver the news that is relevant to you.</p>
    </div>
  </div>
  <div class='container'>
    <h2 id='expertise'>Our Expertise.</h2>
    <div class='main'>
      <div class='spacer'>
        <div class='cards'>
          <div class='col'>
            <img src='https://content.codecademy.com/projects/headlines/p1.jpg'>
            <img src='https://content.codecademy.com/projects/headlines/p6.jpg'>
            <img src='https://content.codecademy.com/projects/headlines/p8.jpg'>
          </div>
          <div class='col'>
            <img src='https://content.codecademy.com/projects/headlines/p2.jpg'>
            <img src='https://content.codecademy.com/projects/headlines/p5.jpg'>
            <img src='https://content.codecademy.com/projects/headlines/p7.jpg'>
          </div>
          <div class='col'>
            <img src='https://content.codecademy.com/projects/headlines/p3.jpg'>
            <img src='https://content.codecademy.com/projects/headlines/p4.jpg'>
            <img src='https://content.codecademy.com/projects/headlines/p9.jpg'>
            <img src='https://content.codecademy.com/projects/headlines/p10.jpg'>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class='footer'>
    <h3>Headlines.</h3>
    <p>1000 7th Avenue</p>
    <p>New York, NY</p>
    <p>(484) 192 - 8372</p>
  </div>
</body>
</html>
```

``` css
html, body {
  margin: 0;
  padding: 0;
  font-family: 'Libre Baskerville', sans-serif;
}

img {
  margin: 10px auto;
  height: auto;
  width: auto;
}

ul {
  text-align: right;
}

h1 {
  font-size: 20px;
}

/*Sizing*/
.container {
  margin: 0 auto;
}

.spacer {
  max-width: 1200px;
  margin: auto;
}

.main {
  background-color: #ffc200;
}

/*Header Section*/
.header {
  padding: 30px 0px 40px;
  margin-left: 50px;
  margin-right: 50px;
}

.header li {
  list-style: none;
  display: inline-block;
}

.header li a {
  color: #333;
  margin:0;
  border:0px;
}

/*Jumbotron Section*/
.jumbotron {
  background-color: #fff;
  max-width: 1200px;
  margin-left: 50px;
}

.jumbotron h2 {
  font-size: 50px;
  margin-bottom: 70px;
}

.jumbotron h2 span {
  color:#ffc200;
}

.jumbotron p {
  text-shadow: 0 0;
  font-size: 16px;
  color: #666;
  margin-bottom: 0;
}

/*Banner Section*/
.banner {
  background-color: #333;
  color: #fff;
  padding: 20px;
  text-align: center;
}

/*Expertise Section*/
.cards {
  background-color: #ffc200;
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}

.col {
  display: inline-flex;
  flex-direction: column;
  justify-content: space-between;
}

#expertise {
  padding: 20px;
  background-color: #ffc200;
  margin: 0;
  text-align: center;
}

/*Footer Section*/
.footer {
  padding: 60px 0px;
  background-color: #000;
  color: #fff;
}

.footer h3 {
  font-size: 20px;
  margin-left: 20px;
}

.footer p {
  font-size:12px;
  margin-bottom: 0;
  margin-left: 20px;
}
```

## display: flex

Any element can be a flex container. Flex containers are helpful tools
for creating websites that respond to changes in screen sizes. Child
elements of flex containers will change size and location in response to
the size and position of their parent container.

For an element to become a flex container, its `display` property must
be set to `flex`.

``` css
div.container {
  display: flex;
}
```

In the example above, all divs with the class `container` are flex
containers. If they have children, the children are flex items. A div
with the declaration `display: flex;` will remain block level — no other
elements will appear on the same line as it.

However, it will change the behavior of its child elements. Child
elements will not begin on new lines. In the exercises that follow, we
will cover how the flex `display` property impacts the positioning of
child elements.

### Instructions

**1.**

In the `<div>` with id `flex`, add a `display` property with a value of
`flex`. Compare the two divs in the browser.

### Solution

``` css
body {
  margin: 0;
  border: 0;
  font-family: 'Roboto Mono', monospace;
}

h1 {
  font-size: 18px;
  text-align: center;
}

h2 {
  font-size: 16px;
  text-align: center;
}

.container {
  background-color: whitesmoke;
}

.box {
  background-color: dodgerblue;
  height: 100px;
  width: 100px;
  border: 1px solid lightgrey;
}

#flex {
  display: flex;
}
```

## inline-flex

In the previous exercise, you might have observed that when we gave a
div — a block level element — the `display` value of `flex` that it
remained a block level element. What if we want multiple flex containers
to display inline with each other?

If we didn’t want div elements to be block-level elements, we would use
`display: inline`. Flexbox, however, provides the `inline-flex` value
for the `display` property, which allows us to create flex containers
that are also inline elements.

``` html
<div class='container'>
  <p>I’m inside of a flex container!</p>
  <p>A flex container’s children are flex items!</p>
</div>
<div class='container'>
  <p>I’m also a flex item!</p>
  <p>Me too!</p>
</div>
```

``` css
.container {
  width: 200px;
  height: 200px;
  display: inline-flex;
}
```

In the example above, there are two container divs. Without a width,
each div would stretch the entire width of the page. The paragraphs
within each div would also display on top of each other because
paragraphs are block-level elements.

When we change the value of the `display` property to `inline-flex`, the
divs will display inline with each other if the page is wide enough. As
we progress through this lesson, we will cover in more detail how flex
items are displayed.

Notice that in the example above, the size of the flex container is set.
Currently, the size of the parent container will override the size of
its child elements. If the parent element is too small, the flex items
will shrink to accommodate the parent container’s size. We’ll explain
why in a later exercise.

``` html
<div class='container'>
  <div class='child'>
    <h1>1</h1>
  </div>
  <div class='child'>
    <h1>2</h1>
  </div>
</div>
```

``` css
.container {
  width: 200px;
}
 
.child {
  display: inline-flex;
  width: 150px;
  height: auto;
}
```

In the example above, the `.child` divs will take up more width (300
pixels) than the `container` div allows (200 pixels). The `.child` divs
will shrink to accommodate the container’s size. In later exercises, we
will explore several ways to handle this.

### Instructions

**1.**

In the `.container` ruleset, set the `display` property to
`inline-flex`.

### Solution

``` css
body {
  margin: 0;
  border: 0;
  font-family: 'Roboto Mono', monospace;
  text-align: center;
}

h1 {
  font-size: 18px;
  text-align: center;
}

.container {
  width: 150px;
  border: 1px solid grey;
  display: inline-flex;
}

.box {
  background-color: dodgerblue;
  height: 75px;
  width: 75px;
  border: 1px solid turquoise;
}
```

## justify-content

In previous exercises, when we changed the `display` value of parent
containers to `flex` or `inline-flex`, all of the child elements (flex
items) moved toward the upper left corner of the parent container. This
is the default behavior of flex containers and their children. We can
specify how flex items spread out from left to right, along the *main
axis*. We will learn more about axes in a later exercise.

To position the items from left to right, we use a property called
`justify-content`.

``` css
.container {
  display: flex;
  justify-content: flex-end;
}
```

In the example above, we set the value of `justify-content` to
`flex-end`. This will cause all of the flex items to shift to the right
side of the flex container.

Below are five commonly used values for the `justify-content` property:

- `flex-start` — all items will be positioned in order, starting from
  the left of the parent container, with no extra space between or
  before them.
- `flex-end` — all items will be positioned in order, with the last item
  starting on the right side of the parent container, with no extra
  space between or after them.
- `center` — all items will be positioned in order, in the center of the
  parent container with no extra space before, between, or after them.
- `space-around` — items will be positioned with equal space before and
  after each item, resulting in double the space between elements.
- `space-between` — items will be positioned with equal space between
  them, but no extra space before the first or after the last elements.

In the definitions above, “no extra space” means that margins and
borders will be respected, but no more space (than is specified in the
style rule for the particular element) will be added between elements.
The size of each individual flex item is not changed by this property.

### Instructions

**1.**

Assign the `<div>` element with the id `flexstart` a `justify-content`
property with a value of `flex-start`.

You won’t see any changes since `flex-start` is the default value;

**2.**

Assign the `<div>` element with the id `flexend` a `justify-content`
property with a value of `flex-end`.

**3.**

Assign the `<div>` element with the id `center` a `justify-content`
property with a value of `center`.

**4.**

Assign the `<div>` element with the id `spacearound` a `justify-content`
property with a value of `space-around`.

Stretch and shrink the browser window to compare and contrast how the
elements in each div behave.

**5.**

Assign the `<div>` element with the id `spacebetween` a
`justify-content` property with a value of `space-between`.

### Solution

``` css
body {
  border: 0;
  margin: 0;
  font-family: 'Roboto Mono', monospace;
}

h1 {
  text-align: center;
  display: block;
  font-size: 18px;
}

.container {
  height: 150px;
  width: 100%;
  display: flex;
  background-color: whitesmoke;
}

.box {
  height: 75px;
  width: 100px;
  background-color: dodgerblue;
  border: 1px solid lightgrey;
  display: inline-block;
}

#flexstart {
  justify-content: flex-start;
}

#flexend {
  justify-content: flex-end;
}

#center {
  justify-content: center;
}

#spacearound {
  justify-content: space-around;
}

#spacebetween {
  justify-content: space-between;
}
```

## align-items

In the previous exercise, you learned how to justify the content of a
flex container from left to right across the page. It is also possible
to align flex items vertically within the container. The `align-items`
property makes it possible to space flex items vertically.

``` css
.container {
  align-items: baseline;
}
```

In the example above, the `align-items` property is set to `baseline`.
This means that the baseline of the content of each item will be
aligned.

Below are five commonly used values for the `align-items` property:

- `flex-start` — all elements will be positioned at the top of the
  parent container.
- `flex-end` — all elements will be positioned at the bottom of the
  parent container.
- `center` — the center of all elements will be positioned halfway
  between the top and bottom of the parent container.
- `baseline` — the bottom of the content of all items will be aligned
  with each other.
- `stretch` — if possible, the items will stretch from top to bottom of
  the container (this is the default value; elements with a specified
  height will not stretch; elements with a minimum height or no height
  specified will stretch).

These five values tell the elements how to behave along the *cross axis*
of the parent container. In these examples, the cross axis stretches
from top to bottom of the container. We’ll learn more about this in a
future exercise.

You might be unfamiliar with the `min-height` and `max-height`
properties, but you have used `height` and `width` before. `min-height`,
`max-height`, `min-width`, and `max-width` are properties that ensure an
element is at least a certain size or at most a certain size. You’ll see
how these become useful as you move throughout this lesson.

Now you’re going to see each of the five values above in action!

### Instructions

**1.**

Assign the `<div>` element with id `flexstart` an `align-items` property
with the value `flex-start`.

**2.**

Assign the `<div>` element with id `flexend` an `align-items` property
with the value `flex-end`.

**3.**

Assign the `<div>` element with id `center` an `align-items` property
with the value `center`.

**4.**

Assign the `<div>` element with id `baseline` an `align-items` property
with the value `baseline`. How does the behavior of these elements
differ from those in other divs?

**5.**

Take a look at the elements under “Stretch” at the bottom of the page.
Now, in the `.left`, `.center`, `.right` ruleset, change the `height`
property to `min-height` and observe what happens to these elements.

### Solution

``` css
body {
  font-family: 'Roboto Mono', monospace;
}

h1 {
  margin: 20px;
  text-align: center;
  font-size: 18px;
}

.container {
  height: 150px;
  background-color: whitesmoke;
  display: flex;
  justify-content: center;
}

.left,
.center,
.right {
  min-height: 75px;
  width: 125px;
  background-color: dodgerblue;
  border: 2px solid lightgrey;
}

#baseline .center {
  height: 100px;
  width: 100px;
  border: 5px solid turquoise;
}

#flexstart {
  align-items: flex-start;
}

#flexend {
  align-items: flex-end;
}

#center {
  align-items: center; 
}

#baseline {
  align-items: baseline;
}
```

## flex-grow

In Exercise 3, we learned that all flex items shrink proportionally when
the flex container is too small. However, if the parent container is
larger than necessary then the flex items will not stretch by default.
The `flex-grow` property allows us to specify if items should grow to
fill a container and also which items should grow proportionally more or
less than others.

``` html
<div class='container'>
  <div class='side'>
    <h1>I’m on the side of the flex container!</h1>
  </div>
  <div class='center'>
    <h1>I'm in the center of the flex container!</h1>
  </div>
  <div class='side'>
    <h1>I'm on the other side of the flex container!</h1>
  </div>
</div>
```

``` css
.container {
  display: flex;
}
 
.side {
  width: 100px;
  flex-grow: 1;
}
 
.center {
  width: 100px;
  flex-grow: 2;
}
```

In the example above, the `.container` div has a `display` value of
`flex`, so its three child divs will be positioned next to each other.
If there is additional space in the `.container` div (in this case, if
it is wider than 300 pixels), the flex items will grow to fill it. The
`.center` div will stretch twice as much as the `.side` divs. For
example, if there were 60 additional pixels of space, the `center` div
would absorb 30 pixels and the `side` divs would absorb 15 pixels each.

If a `max-width` is set for an element, it will not grow larger than
that even if there is more space for it to absorb.

All of the previous properties we have learned are declared on flex
containers, or the parent elements. This property — `flex-grow` — is the
first we have learned that is declared on flex items.

### Instructions

**1.**

Assign `.top.side` and `.top.center` a `flex-grow` value of `1`. Stretch
and shrink the browser.

**2.**

Assign `.middle.center` the `flex-grow` value of `1`. Stretch and shrink
the browser again.

**3.**

Assign `.bottom.side` a `flex-grow` value of `1` and `.bottom.center` a
`flex-grow` value of `2`. Shrink and stretch the browser again. Compare
the differences in behavior of all three sections.

### Solution

``` css
body {
  margin: 0;
  border: 0;
  font-family: 'Roboto Mono', monospace;
}

h1 {
  font-size: 18px;
}

h2 {
  font-size: 16px;
}

h1,
h2 {
  text-align: center;
}

.top,
.middle,
.bottom {
  width: 100px;
  height: 100px;
  background-color: dodgerblue;
  border: 2px solid lightgrey;
  margin: 10px 30px;
}

.top.side {
  flex-grow: 1;
}

.top.center {
  flex-grow: 1;
}

.middle.side {

}

.middle.center {
  flex-grow: 1;
}

.bottom.side {
  flex-grow: 1;
}

.bottom.center {
  flex-grow: 2;
}

#top,
#middle,
#bottom {
  display: flex;
  background-color: Whitesmoke;
  justify-content: center;
  min-height: 200px;
  align-items: center;
}
```

## flex-shrink

Just as the `flex-grow` property proportionally stretches flex items,
the `flex-shrink` property can be used to specify which elements will
shrink and in what proportions.

You may have noticed in earlier exercises that flex items shrank when
the flex container was too small, even though we had not declared the
property. This is because the default value of `flex-shrink` is `1`.
However, flex items do not grow unless the `flex-grow` property is
declared because the default value of `flex-grow` is `0`.

``` html
<div class='container'>
  <div class='side'>
    <h1>I'm on the side of the flex container!</h1>
  </div>
  <div class='center'>
    <h1>I'm in the center of the flex container!</h1>
  </div>
  <div class='side'>
    <h1>I'm on the other side of the flex container!</h1>
  </div>
</div>
```

``` css
.container {
  display: flex;
}
 
.side {
  width: 100px;
  flex-shrink: 1;
}
 
.center {
  width: 100px;
  flex-shrink: 2;
}
```

In the example above, the `.center` div will shrink twice as much as the
`.side` divs if the `.container` div is too small to fit the elements
within it. If the content is 60 pixels too large for the flex container
that surrounds it, the `.center` div will shrink by 30 pixels and the
outer divs will shrink by 15 pixels each. Margins are unaffected by
`flex-grow` and `flex-shrink`.

Keep in mind, minimum and maximum widths will take precedence over
`flex-grow` and `flex-shrink`. As with `flex-grow`, `flex-shrink` will
only be employed if the parent container is too small or the browser is
adjusted.

### Instructions

**1.**

Assign `.top.side` a `flex-shrink` value of `2`.

Stretch and shrink the browser. Because the default value for
`flex-shrink` is `1`, the `.top.center` div will shrink but not as much
as the `.side` divs.

**2.**

Assign `.middle.side` a `flex-shrink` value of `0`.

Stretch and shrink the browser. How do the `.middle` divs resize
differently than the `.top` divs?

**3.**

Assign the `.bottom.center` div a `flex-shrink` value of `2`.

Shrink and stretch the browser again. How do the `.bottom` divs resize
differently than the `.top` and `.middle` divs?

### Solution

``` css
body {
  margin: 0;
  border: 0;
  font-family: 'Roboto Mono', monospace;
}

h1 {
  font-size: 18px;
}

h2 {
  font-size: 16px;
}

h1,
h2 {
  text-align: center;
}

.top,
.middle,
.bottom {
  width: 100px;
  height: 100px;
  background-color: dodgerblue;
  border: 2px solid lightgrey;
  margin: 10px 30px;
}

.top.side {
  flex-shrink: 2;
}

.top.center {

}

.middle.side {
  flex-shrink: 0;
}

.middle.center {

}

.bottom.side {

}

.bottom.center {
  flex-shrink: 2;
}

#top,
#middle,
#bottom {
  display: flex;
  background-color: whitesmoke;
  justify-content: center;
  min-height: 200px;
  align-items: center;
}
```

## flex-basis

In the previous two exercises, the dimensions of the divs were
determined by heights and widths set with CSS. Another way of specifying
the width of a flex item is with the `flex-basis` property. `flex-basis`
allows us to specify the width of an item before it stretches or
shrinks.

``` html
<div class='container'>
  <div class='side'>
    <h1>Left side!</h1>
  </div>
  <div class='center'>
    <h1>Center!</h1>
  </div>
  <div class='side'>
    <h1>Right side!</h1>
  </div>
</div>
```

``` css
.container {
  display: flex;
}
 
.side {
  flex-grow: 1;
  flex-basis: 100px;
}
 
.center {
  flex-grow: 2;
  flex-basis: 150px;
}
```

In the example above, the `.side` divs will be 100 pixels wide and the
`.center` div will be 150 pixels wide if the `.container` div has just
the right amount of space (350 pixels, plus a little extra for margins
and borders). If the `.container` div is larger, the `.center` div will
absorb twice as much space as the `.side` divs.

The same would hold true if we assigned `flex-shrink` values to the divs
above as well.

### Instructions

**1.**

In **style.css**, inside the `.grow.side` ruleset, add a flex-basis of
`60px`.

**2.**

In the same rule, add a `flex-grow` value of `1`.

**3.**

In the `.grow.center` rule, add a `flex-grow` property with a value of
`3`.

**4.**

In the `.shrink.side` rule, add a `flex-basis` property with a value of
`300px`.

**5.**

In the same rule, add a `flex-shrink` property with a value of `3`.

**6.**

In the `.shrink.center` rule, add a `flex-shrink` property with a value
of `2`.

**7.**

In the same rule, add a `flex-basis` property with a value of `150px`.
Now stretch and shrink the browser.

### Solution

``` css
body {
  margin: 0;
  border: 0;
  font-family: 'Roboto Mono', monospace;
}

h1 {
  text-align: center;
  font-size: 18px;
}

h2 {
  text-align: center;
  font-size: 16px;
}

.grow,
.shrink {
  width: 100px;
  height: 100px;
  background-color: dodgerblue;
  border: 2px solid lightgrey;
  margin: 10px 30px;
}

.grow.side {
    flex-basis: 60px;
  flex-grow: 1;
}

.grow.center {
    flex-grow: 3;
}

.shrink.side {
    flex-basis: 300px;
  flex-shrink: 3;
}

.shrink.center {
    flex-shrink: 2;
  flex-basis: 150px;
}

#grows,
#shrinks {
  display: flex;
  background-color: whitesmoke;
  justify-content: center;
  min-height: 200px;
  align-items: center;
}
```

## flex

The shorthand `flex` property provides a convenient way for specifying
how elements stretch and shrink, while simplifying the CSS required. The
`flex` property allows you to declare `flex-grow`, `flex-shrink`, and
`flex-basis` all in one line.

**Note:** The `flex` *property* is different from the `flex` *value*
used for the `display` property.

``` css
.big {
  flex-grow: 2;
  flex-shrink: 1;
  flex-basis: 150px;
}
 
.small {
  flex-grow: 1;
  flex-shrink: 2;
  flex-basis: 100px;
}
```

In the example above, all elements with class `big` will grow twice as
much as elements with class `small`. Keep in mind, this doesn’t mean
`big` items will be twice as big as `small` items, they’ll just take up
more of the extra space.

The CSS below declares these three properties in one line.

``` css
.big {
  flex: 2 1 150px;
}
 
.small {
  flex: 1 2 100px;
}
```

In the example above, we use the `flex` property to declare the values
for `flex-grow`, `flex-shrink`, and `flex-basis` (in that order) all in
one line.

``` css
.big {
 flex: 2 1;
}
```

In the example above, we use the `flex` property to declare `flex-grow`
and `flex-shrink`, but not `flex-basis`.

``` css
.small {
  flex: 1 20px;
}
```

In the example above, we use the `flex` property to declare `flex-grow`
and `flex-basis`. Note that there is no way to set only `flex-shrink`
and `flex-basis` using 2 values.

The browser to the right has two flex containers, each with three flex
items. In **style.css**, examine the values for each of these items.
Notice that the `flex-grow` and `flex-basis` values are set for the blue
divs.

Stretch the browser window to increase its width. Observe that once the
top outer `div`s reach 100 pixels wide, they begin to grow faster than
the top center `div`. Also notice that once the bottom center `div`
reaches 100 pixels wide, it begins to grow faster than the outer `div`s.

Now, shrink the browser window and notice that once the top center `div`
reaches 50 pixels wide it begins to shrink faster than the outer `div`s
and when the bottom outer `div`s reach 75 pixels, they begin to shrink
faster than the center `div`.

### Instructions

**1.**

In `#top .side`, all three values for `flex-grow`, `flex-shrink`, and
`flex-basis` are assigned individually. Refactor them to be declared in
one line using the shorthand `flex` property.

**2.**

In `#top .center`, all three values for `flex-grow`, `flex-shrink`, and
`flex-basis` are assigned individually. Refactor them to be declared in
one line.

**3.**

In `#bottom .side`, all three values for `flex-grow`, `flex-shrink`, and
`flex-basis` are assigned individually. Refactor them to be declared in
one line.

**4.**

In `#bottom .center`, all three values for `flex-grow`, `flex-shrink`,
and `flex-basis` are assigned individually. Refactor them to be declared
in one line.

### Solution

``` css
body {
  border: 0;
  margin: 0 15px;
  font-family: 'Roboto Mono', monospace;
}

h1 {
  text-align: center;
  display: block;
  font-size: 18px;
}

.container {
  height: 150px;
  width: 100%;
  display: flex;
  background-color: whitesmoke;
}

.side,
.center {
  height: 75px;
  background-color: dodgerblue;
  border: 1px solid lightgrey;
  display: inline-block;
}

#top .side {
    flex: 2 2 100px;
}

#top .center {
  flex: 1 3 50px;
}

#bottom .side {
  flex: 1 2 75px;
}

#bottom .center {
  flex: 2 1 100px;
}
```

## flex-wrap

Sometimes, we don’t want our content to shrink to fit its container.
Instead, we might want flex items to move to the next line when
necessary. This can be declared with the `flex-wrap` property. The
`flex-wrap` property can accept three values:

1.  `wrap` — child elements of a flex container that don’t fit into a
    row will move down to the next line
2.  `wrap-reverse` — the same functionality as `wrap`, but the order of
    rows within a flex container is reversed (for example, in a 2-row
    flexbox, the first row from a `wrap` container will become the
    second in `wrap-reverse` and the second row from the `wrap`
    container will become the first in `wrap-reverse`)
3.  `nowrap` — prevents items from wrapping; this is the default value
    and is only necessary to override a wrap value set by a different
    CSS rule.

``` html
<div class='container'>
  <div class='item'>
    <h1>We're going to wrap!</h1>
  </div>
  <div class='item'>
    <h1>We're going to wrap!</h1>
  </div>
  <div class='item'>
    <h1>We're going to wrap!</h1>
  </div>
</div>
```

``` css
.container {
  display: inline-flex;
  flex-wrap: wrap;
  width: 250px;
}
 
.item {
  width: 100px;
  height: 100px;
}
```

In the example above, three flex items are contained by a parent flex
container. The flex container is only 250 pixels wide so the three 100
pixel wide flex items cannot fit inline. The `flex-wrap: wrap;` setting
causes the third, overflowing item to appear on a new line, below the
other two items.

**Note:** The `flex-wrap` property is declared on flex *containers*.

### Instructions

**1.**

In **style.css**, inside the `#wrap` ruleset, add a `flex-wrap` property
with a value of `wrap`. Shrink and stretch the browser.

**2.**

Inside the `#nowrap` ruleset, add a `flex-wrap` property with a value of
`nowrap`. Shrink and stretch the browser.

**3.**

Inside the `#reverse` ruleset, add a `flex-wrap` property with a value
of `wrap-reverse`. Shrink and stretch the browser.

**4.**

Inside the `.container` ruleset, add a `justify-content` property with a
value of `space-around`. Stretch and shrink the browser. What’s
different this time?

### Solution

``` css
body {
  font-family: 'Roboto Mono', monospace;
}

h1 {
  font-size: 18px;
}

h1,
h3 {
  text-align: center;
}

.container {
  background-color: dodgerblue;
  display: flex;
  align-items: center;
  min-height: 125px;
  justify-content: space-around;
}

.box {
  background-color: whitesmoke;
  border: 1px solid white;
  width: 100px;
  height: 100px;
}

#wrap {
  flex-wrap: wrap;
}

#nowrap {
  flex-wrap: nowrap;
}

#reverse {
  flex-wrap: wrap-reverse;
}
```

## align-content

Now that elements can wrap to the next line, we might have multiple rows
of flex items within the same container. In a previous exercise, we used
the `align-items` property to space flex items from the top to the
bottom of a flex container. `align-items` is for aligning elements
within a single row. If a flex container has multiple rows of content,
we can use `align-content` to space the rows from top to bottom.

Below are some of the more commonly used `align-content` values:

- `flex-start` — all rows of elements will be positioned at the top of
  the parent container with no extra space between.
- `flex-end` — all rows of elements will be positioned at the bottom of
  the parent container with no extra space between.
- `center` — all rows of elements will be positioned at the center of
  the parent element with no extra space between.
- `space-between` — all rows of elements will be spaced evenly from the
  top to the bottom of the container with no space above the first or
  below the last.
- `space-around` — all rows of elements will be spaced evenly from the
  top to the bottom of the container with the same amount of space at
  the top and bottom and between each element.
- `stretch` — if a minimum height or no height is specified, the rows of
  elements will stretch to fill the parent container from top to bottom
  (default value).

``` html
<div class='container'>
  <div class='child'>
    <h1>1</h1>
  </div>
  <div class='child'>
    <h1>2</h1>
  </div>
  <div class='child'>
    <h1>3</h1>
  </div>
  <div class='child'>
    <h1>4</h1>
  </div>
</div>
```

``` css
.container {
  display: flex;
  width: 400px;
  height: 400px;
  flex-wrap: wrap;
  align-content: space-around;
}
 
.child {
  width: 150px;
  height: 150px;
}
```

In the example above, there are four flex items inside of a flex
container. The flex items are set to be 150 pixels wide each, but the
parent container is only 400 pixels wide. This means that no more than
two elements can be displayed inline. The other two elements will wrap
to the next line and there will be two rows of `div`s inside of the flex
container. The `align-content` property is set to the value of
`space-around`, which means the two rows of divs will be evenly spaced
from top to bottom of the parent container with equal space before the
first row and after the second, with double space between the rows.

Below, we will see each of the properties in action!

**Note:** The `align-content` property is declared on flex containers.

### Instructions

**1.**

In **style.css**, inside the `#flexstart` ruleset, add an
`align-content` property with a value of `flex-start` to position the
rows of elements at the top of the parent container.

**2.**

In **style.css**, inside the `#flexend` ruleset, add an `align-content`
property with a value of `flex-end` to position the rows of elements at
the bottom of the parent container.

**3.**

In **style.css**, inside the `#center` ruleset, add an `align-content`
property with a value of `center` to position the rows of elements at
the center of the parent container.

**4.**

In **style.css**, inside the `#between` ruleset, add an `align-content`
property with a value of `space-between` to space out all of the rows of
elements evenly with equal space between each row.

**5.**

In **style.css**, inside the `#around` ruleset, add an `align-content`
property with a value of `space-around` to space out all of the rows of
elements evenly with equal space around each row.

**6.**

Inside the `.left, .center, .right` ruleset, change the `height`
property to `min-height`. What happens to the flex items in the
`#stretch` container?

### Solution

``` css
body {
  font-family: 'Roboto Mono', monospace;
}

h1 {
  margin: 20px;
  text-align: center;
  font-size: 18px;
}

.container {
  height: 300px;
  width: 600px;
  background-color: whitesmoke;
  display: flex;
  flex-wrap: wrap;
  margin: auto;
}

.left,
.center,
.right {
  min-height: 75px;
  width: 200px;
  margin: 2px;
  background-color: dodgerblue;
  border: 2px solid lightgrey;
}

#flexstart {
    align-content: flex-start;
}

#flexend {
    align-content: flex-end;
}

#center {
    align-content: center;
}

#between {
    align-content: space-between;
}

#around {
    align-content: space-around; 
}
```

## flex-direction

Up to this point, we’ve only covered flex items that stretch and shrink
horizontally and wrap vertically. As previously stated, flex containers
have two axes: a *main axis* and a *cross axis*. By default, the main
axis is horizontal and the cross axis is vertical.

The main axis is used to position flex items with the following
properties:

1.  `justify-content`
2.  `flex-wrap`
3.  `flex-grow`
4.  `flex-shrink`

The cross axis is used to position flex items with the following
properties:

1.  `align-items`
2.  `align-content`

The main axis and cross axis are interchangeable. We can switch them
using the `flex-direction` property. If we add the `flex-direction`
property and give it a value of `column`, the flex items will be ordered
vertically, not horizontally.

``` html
<div class='container'>
  <div class='item'>
    <h1>1</h1>
  </div>
  <div class='item'>
    <h1>2</h1>
  </div>
  <div class='item'>
    <h1>3</h1>
  </div>
  <div class='item'>
    <h1>4</h1>
  </div>
  <div class="item">
    <h1>5</h1>
  </div>
</div>
```

``` css
.container {
  display: flex;
  flex-direction: column;
  width: 1000px;
}
.item {
  height: 100px;
  width: 100px;
}
```

In the example above, the five divs will be positioned in a vertical
column. All of these divs could fit in one horizontal row. However, the
`column` value tells the browser to stack the divs one on top of the
other. As explained above, properties like `justify-content` will not
behave the way they did in previous examples.

The `flex-direction` property can accept four values:

1.  `row` — elements will be positioned from left to right across the
    parent element starting from the top left corner (default).
2.  `row-reverse` — elements will be positioned from right to left
    across the parent element starting from the top right corner.
3.  `column` — elements will be positioned from top to bottom of the
    parent element starting from the top left corner.
4.  `column-reverse` — elements will be positioned from the bottom to
    the top of the parent element starting from the bottom left corner.

Below, we’ll investigate how these work.

**Note:** The `flex-direction` property is declared on flex containers.

### Instructions

**1.**

In **style.css**, inside the `#row` ruleset, add a `flex-direction`
property with a value of `row`.

**2.**

Inside the `#row-reverse` ruleset, add a `flex-direction` property with
a value of `row-reverse`.

**3.**

Inside the `#column` ruleset, add a `flex-direction` property with a
value of `column`.

**4.**

Inside the `#column-reverse` ruleset, add a `flex-direction` property
with a value of `column-reverse`.

**5.**

Change the `height` property of `.container` elements to be
`max-height`. Remember to stretch and shrink the browser after each
checkpoint so you can see the effects.

**6.**

Inside the `.container` ruleset, add an `align-items` property with a
value of `center`.

**7.**

Inside the `.container` ruleset, add a `justify-content` property with a
value of `space-around`.

**8.**

Inside the `.box` ruleset, add a `flex-grow` property with a value of
`1`. In which direction do the elements grow?

### Solution

``` css
body {
  margin: 0;
  border: 0;
  font-family: 'Roboto Mono', monospace;
}

h1 {
  font-size: 18px;
}

h2 {
  font-size: 14px;
}

h1,
h2 {
  text-align: center;
}

.container {
  background-color: dodgerblue;
  display: flex;
  max-height: 600px;
  align-items: center;
  justify-content: space-around; 
}

.box {
  background-color: whitesmoke;
  border: 1px solid white;
  width: 100px;
  height: 100px;
  flex-grow: 1; 
}

#row {
    flex-direction: row;
}

#row-reverse {
    flex-direction: row-reverse;
}

#column {
    flex-direction: column; 
}

#column-reverse {
    flex-direction: column-reverse;
}
```

## flex-flow

Like the shorthand `flex` property, the shorthand `flex-flow` property
is used to declare both the `flex-wrap` and `flex-direction` properties
in one line.

``` css
.container {
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
}
```

In the example above, we take two lines to accomplish what can be done
with one.

``` css
.container {
  display: flex;
  flex-flow: column wrap;
}
```

In the example above, the first value in the `flex-flow` declaration is
a `flex-direction` value and the second is a `flex-wrap` value. All
values for `flex-direction` and `flex-wrap` are accepted.

**Note:** The `flex-flow` property is declared on flex containers.

### Instructions

**1.**

In the `#row-reverse` ruleset, set the `flex-flow` property to have a
direction of `row-reverse` and to `wrap` elements. You should be able to
accomplish this in one line.

**2.**

In the `#column` ruleset, set the `flex-flow` property to give elements
a direction of `column` and to `wrap` elements. You should be able to
accomplish this in one line.

### Solution

``` css
body {
  margin: 0;
  border: 0;
  font-family: 'Roboto Mono', monospace;
}
h1 {
  font-size: 18px;
}

h2 {
  font-size: 14px;
}
h1, h2 {
  text-align: center;
}

.container {
  background-color: dodgerblue;
  display: flex;
  height: 600px;
  align-items: center;
}

.box {
  background-color: whitesmoke;
  border: 1px solid white;
  width: 100px;
  height: 100px;
}

#row {

}

#row-reverse {
  flex-flow: row-reverse wrap;
}

#column {
  flex-flow: column wrap;
}

#column-reverse {

}
```

## Nested Flexboxes

So far, we’ve had multiple flex containers on the same page to explore
flex item positioning. It is also possible to position flex containers
inside of one another.

``` html
<div class='container'>
  <div class='left'>
    <img class='small' src='#'/>
    <img class='small' src='#'/>
    <img class='small' src='#' />
  </div>
  <div class='right'>
    <img class='large' src='#' />
  </div>
</div>
```

``` css
.container {
  display: flex;
  justify-content: center;
  align-items: center;
}
 
.left {
  display: inline-flex;
  flex: 2 1 200px;
  flex-direction: column;
}
 
.right {
  display: inline-flex;
  flex: 1 2 400px;
  align-items: center;
}
 
.small {
  height: 200px;
  width: auto;
}
 
.large {
  height: 600px; 
  width: auto;
}
```

In the example above, a div with three smaller images will display from
top to bottom on the left of the page (`.left`). There is also a div
with one large image that will display on the right side of the page
(`.right`). The left div has a smaller `flex-basis` but stretches to
fill more extra space; the right div has a larger `flex-basis` but
stretches to fill less extra space. Both divs are flex items *and* flex
containers. The items have properties that dictate how they will be
positioned in the parent container and how their flex item children will
be positioned in them.

We’ll use the same formatting above to layout the simple page to the
right.

### Instructions

**1.**

Inside the `.main` ruleset, add a `display` property with a value of
`flex`.

**2.**

Inside the `.main` ruleset, add an `align-items` property with a value
of `center`.

**3.**

Inside the `.main` ruleset, add a `justify-content` property with a
value of `space-around`.

**4.**

Inside the `.container` ruleset, add a `display` property with a value
of `flex`.

**5.**

Inside the `.container` ruleset, add a `flex-direction` property with a
value of `column`.

**6.**

Inside the `.container` ruleset, add a `justify-content` property with a
value of `center`.

**7.**

Inside the `.container` ruleset, add an `align-items` property with a
value of `center`.

**8.**

Repeat steps 4, 6, and 7 for the `.child` ruleset.

### Solution

``` css
body {
  font-family: 'Roboto Mono', monospace;
}

h2 {
  text-align: center;
  font-size: 18px;
}

.main {
  background-color: lightgrey;
  width: 400px;
  height: 700px;
  display: flex;
  align-items: center;
  justify-content: space-around;

}

.container {
  width: 300px;
  height: 300px;
  background-color: dodgerblue;
  border: 1px solid white;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.child {
  height: 75px;
  width: 75px;
  background-color: whitesmoke;
  border: 1px solid snow;
  display: flex;
  justify-content: center;
  align-items: center;
}
```

## Review: Flexbox

You should be proud of yourself! You have learned the most important
properties of flexbox. Flexbox is an art and a science; you can use it
to make laying out multiple elements a piece of cake. You know
everything necessary to begin using it in your own projects.

1.  `display: flex` changes an element to a block-level container with
    flex items inside of it.
2.  `display: inline-flex` allows multiple flex containers to appear
    inline with each other.
3.  `justify-content` is used to space items along the main axis.
4.  `align-items` is used to space items along the cross axis.
5.  `flex-grow` is used to specify how much space (and in what
    proportions) flex items absorb along the main axis.
6.  `flex-shrink` is used to specify how much flex items shrink and in
    what proportions along the main axis.
7.  `flex-basis` is used to specify the initial size of an element
    styled with `flex-grow` and/or `flex-shrink`.
8.  `flex` is used to specify `flex-grow`, `flex-shrink`, and
    `flex-basis` in one declaration.
9.  `flex-wrap` specifies that elements should shift along the cross
    axis if the flex container is not large enough.
10. `align-content` is used to space rows along the cross axis.
11. `flex-direction` is used to specify the main and cross axes.
12. `flex-flow` is used to specify `flex-wrap` and `flex-direction` in
    one declaration.
13. Flex containers can be nested inside of each other by declaring
    `display: flex` or `display: inline-flex` for children of flex
    containers.

Let’s apply a few of the properties you’ve learned to arrange one
section of the web page in the browser to the right!

### Instructions

**1.**

All of the images are inside of three column divs and the three column
divs are all inside of one large div called `.cards`.

Inside the `.cards` ruleset, add a `display` property with a value of
`flex`.

**2.**

Now, inside the `.cards` ruleset, set the `flex-wrap` property to have a
value of `wrap`.

**3.**

Inside the `.cards` ruleset, set the `justify-content` property to have
a value of `space-around`.

**4.**

In the `.col` ruleset, set the `display` property to have a value of
`inline-flex`.

**5.**

In the `.col` ruleset, set the `flex-direction` property to have a value
of `column`.

**6.**

In the `.col` ruleset, set the `justify-content` property to have a
value of `space-between`.

### Solution

``` html
<!doctype html>
<html>
<head>
  <link href='https://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="header">
    <div class="container">
      <h1>Headlines.</h1>
      <ul>
        <li><a href="3">About</a></li>
        <li><a href="#expertise">Our Services</a></li>
        <li><a href="3">Our Team</a></li>
        <li><a href="#footer">Contact Us</a></li>
      </ul>
    </div>
  </div>
  <div class="jumbotron">
    <div class="container">
      <h2>We <span>collect and curate</span>
articles, opinions, and images
from around the world.</h2>
    </div>
  </div>
  <div class="banner">
    <div class="container">
      <h2>The Bottom Line.</h2>
      <p>We deliver the news that is relevant to you.</p>
    </div>
  </div>
  <div class="container">
    <h2 id="expertise">Our Expertise.</h2>
    <div class="main">
      <div class="spacer">
        <div class="cards">
          <div class="col">
            <img src="https://content.codecademy.com/projects/headlines/p1.jpg">
            <img src="https://content.codecademy.com/projects/headlines/p6.jpg">
            <img src="https://content.codecademy.com/projects/headlines/p8.jpg">
          </div>
          <div class="col">
            <img src="https://content.codecademy.com/projects/headlines/p2.jpg">
            <img src="https://content.codecademy.com/projects/headlines/p5.jpg">
            <img src="https://content.codecademy.com/projects/headlines/p7.jpg">
          </div>
          <div class="col">
            <img src="https://content.codecademy.com/projects/headlines/p3.jpg">
            <img src="https://content.codecademy.com/projects/headlines/p4.jpg">
            <img src="https://content.codecademy.com/projects/headlines/p9.jpg">
            <img src="https://content.codecademy.com/projects/headlines/p10.jpg">
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer">
    <h3>Headlines.</h3>
    <p>1000 7th Avenue</p>
    <p>New York, NY</p>
    <p>(484) 192 - 8372</p>
  </div>
</body>
</html>
```

``` css
html, body {
  margin: 0;
  padding: 0;
  font-family: 'Libre Baskerville', sans-serif;
}

img {
  margin: 10px auto;
  height: auto;
  width: auto;
}

ul {
  text-align: right;
}

h1 {
  font-size: 20px;
}

/*Sizing*/

.container {
  margin: 0 auto;
}

.spacer {
  max-width: 1200px;
  margin: auto;
}

.main {
    background-color: #ffc200;
}

/*Header Section*/

.header {
  padding: 30px 0px 40px;
  margin-left: 50px;
  margin-right: 50px;
}

.header li {
  list-style: none;
  display: inline-block;
}

.header li a {
  color: #333;
  margin:0;
  border:0px;
}

/*Jumbotron Section*/

.jumbotron {
  background-color: #fff;
  max-width: 1200px;
  margin-left: 50px;
}

.jumbotron h2 {
  font-size: 50px;
  margin-bottom: 70px;
}

.jumbotron h2 span {
  color:#ffc200;
}

.jumbotron p {
  text-shadow: 0 0;
  font-size: 16px;
  color: #666;
  margin-bottom: 0;
}

/*Banner Section*/
.banner {
  background-color: #333;
  color: #fff;
  padding: 20px;
  text-align: center;
}

/*Expertise Section*/
.cards {
  background-color: #ffc200;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
}

.col {
  display: inline-flex;
  flex-direction: column;
  justify-content: space-between;
}

#expertise {
  padding: 20px;
  background-color: #ffc200;
  margin: 0;
  text-align: center;
}

/*Footer Section*/
.footer {
  padding: 60px 0px;
  background-color: #000;
  color: #fff;
}

.footer h3 {
  font-size: 20px;
  margin-left: 20px;
}

.footer p {
  font-size:12px;
  margin-bottom: 0;
  margin-left: 20px;
}
```

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

### [Solution](flexbox-to---do-app)

# Off-Platform Project: Tea Cozy

In this project, you will create a fictional tea shop website on your
own computer.

We will provide a *design spec* and image assets to help you along the
way. A design spec is an image of a web page outlined with all of its
CSS properties and values. These are usually created by a designer as a
source of instructions for a web developer. This project assumes that
you will be able to reproduce the basic HTML and CSS with little
guidance.

The images and design spec you need to complete the project are listed
below.

Images:

1.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-4/img-tea-cozy-logo.png"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Logo</a>
2.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-4/img-bedford-bizarre.jpg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Bedford Bizarre</a>
3.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-4/img-berryblitz.jpg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Berry Blitz</a>
4.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-4/img-donut.jpg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Donut</a>
5.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-4/img-locations-background.jpg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Locations</a>
6.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-4/img-mission-background.jpg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Background</a>
7.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-4/img-myrtle-ave.jpg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Myrtle Ave</a>
8.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-4/img-spiced-rum.jpg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Spiced Rum</a>

Design Spec:

1.  Click <a
    href="https://content.codecademy.com/courses/freelance-1/unit-4/img-tea-cozy-redline.jpg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">here</a> to access the design spec.

Good luck!

### Instructions

Mark the tasks as complete by checking them off

1\.

This project is intended to be completed on your own computer. The
resources above will help you get to the final outcome. There’s no
single, correct way to complete this project, so experiment and have
fun!

### [Solution](tea-cozy)

# Grid Essentials

## Introduction to Grids

Using CSS, you can elegantly lay out elements on a web page. There is no
simple answer for how best to do this — depending on what content you
are trying to display, multiple different techniques can work well. The
<a
href="https://www.codecademy.com/courses/learn-css/lessons/box-model-intro/exercises/box-model-intro"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Box Model</a> and <a
href="https://www.codecademy.com/courses/learn-css/lessons/css-display-positioning/exercises/html-flow"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Display and Positioning</a> explain some possible ways
to style layout.

In this lesson, we introduce a powerful tool called *CSS Grid*. The
*grid* can be used to layout entire web pages. Whereas <a
href="https://www.codecademy.com/courses/learn-css/lessons/learn-flexbox-l/exercises/flexbox"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Flexbox</a> is mostly useful for positioning items in a
one-dimensional layout, CSS grid is most useful for two-dimensional
layouts, providing many tools for aligning and moving elements across
both rows and columns.

By the end of this lesson, you will understand how to use these
properties to create grid layouts:

- `grid-template-columns`
- `grid-template-rows`
- `grid-template`
- `grid-template-area`
- `row-gap` / `column-gap` / `gap`
- `grid-row-start` / `grid-row-end`
- `grid-column-start` / `grid-column-end`
- `grid-area`

That’s a lot to learn. But by the end, you’ll be a master at grid
positioning. Let’s start learning!

### Instructions

When you’re ready to dive into CSS Grid, move on to the next exercise.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <link rel='stylesheet' href='style.css'></head>
  
<body>
  <div class="grid">
    <div class="box a">A</div>
    <div class="box b">B</div>
    <div class="box c">C</div>
    <div class="box d">D</div>
    <div class="box e">E</div>
  </div>
</body>

</html>
```

``` css
.grid {
  border: 2px blue solid;
  height: 500px;
  width: 500px;
  display: grid;
  grid-template-columns: 25% 25% 2fr 1fr;
  grid-template-rows: 200px 200px;
  row-gap: 10px;
  column-gap: 15px;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}

.a {
  grid-column-start: 1;
  grid-column-end: span 2;
  grid-row-start: 1;
  grid-row-end: 3;
}
```

## Creating a Grid

To set up a grid, you need to have both a *grid container* and *grid
items*. The grid container will be a parent element that contains grid
items as children and applies overarching styling and positioning to
them.

To turn an HTML element into a grid container, you must set the
element’s `display` property to one of two values:

- `grid` — for a block-level grid.
- `inline-grid` — for an inline grid.

Then, you can assign other properties to lay out the grid to suit your
needs.

### Instructions

**1.**

To start, look at **index.html** to see all seven items in the grid. The
grid container is of class `grid`.

Back in **style.css**, in the ruleset for elements that have the class
`grid`, set the `display` property to `grid`.

Right now, we haven’t specified the number of rows or columns in our
grid, so every item is sitting on a new row. We’ll learn how to
structure grid rows and columns in the next couple of exercises.

### Solution

``` css
.grid {
  border: 2px blue solid;
  width: 400px;
  height: 500px;
  display: grid;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Creating Columns

By default, grids contain only one column. If you were to start adding
items, each item would be put on a new row; that’s not much of a grid!
To change this, we need to explicitly define the number of rows and
columns in our grid.

We can define the columns of our grid by using the CSS property
`grid-template-columns`. Below is an example of this property in action:

``` css
.grid {
  display: grid;
  width: 500px;
  grid-template-columns: 100px 200px;
}
```

This property creates two changes. First, it defines the number of
columns in the grid; in this case, there are two. Second, it sets the
width of each column. The first column will be 100 pixels wide and the
second column will be 200 pixels wide.

We can also define the size of our columns as a percentage of the entire
grid’s width.

``` css
.grid {
  display: grid;
  width: 1000px;
  grid-template-columns: 20% 50%;
}
```

In this example, the grid is 1000 pixels wide. Therefore, the first
column will be 200 pixels wide because it is set to be 20% of the grid’s
width. The second column will be 500 pixels wide.

We can also mix and match these two units. In the example below, there
are three columns of width 20 pixels, 40 percent, and 60 pixels:

``` css
.grid {
  display: grid;
  width: 100px;
  grid-template-columns: 20px 40% 60px;
}
```

Notice that in this example, the total width of our columns (120 pixels)
exceeds the width of the grid (100 pixels). This might make our grid
cover other elements on the page! In a later exercise, we will discuss
how to avoid overflow.

### Instructions

**1.**

In **style.css**, inside the `.grid` ruleset, use the
`grid-template-columns` property to create three columns. Set the first
column to be `100px` wide, the second to be `50%` of the grid, and the
third to be `200px` wide.

Notice that this causes our grid items to go outside the boundaries of
the grid. We’ll learn how to fix this soon!

### Solution

``` css
.grid {
  border: 2px blue solid;
  width: 400px;
  height: 500px;
  display: grid;
  grid-template-columns: 100px 50% 200px;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Creating Rows

We’ve learned how to define the number of columns in our grid
explicitly. To specify the number and size of the rows, we are going to
use the property `grid-template-rows`.

This property is almost identical to `grid-template-columns`. Take a
look at the code below to see both properties in action.

``` css
.grid {
  display: grid;
  width: 1000px;
  height: 500px;
  grid-template-columns: 100px 200px;
  grid-template-rows: 10% 20% 600px;
}
```

This grid has two columns and three rows. `grid-template-rows` defines
the number of rows and sets each row’s height. In this example, the
first row is 50 pixels tall (10% of 500), the second row is 100 pixels
tall (20% of 500), and the third row is 600 pixels tall.

When using percentages in these two properties, remember that rows are
defined as a percentage of the grid’s height, and columns are defined as
a percentage of its width.

### Instructions

**1.**

By default, the rows are sized to fit evenly inside the grid. Let’s
manually change the size of our rows.

In **style.css**, inside the `.grid` ruleset, use `grid-template-rows`
to set the first row to be `40%` of the grid’s height. Set the second
row to be `50%` of the grid’s height. And set the third row to be
`50px`.

### Solution

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  width: 400px;
  height: 500px;
  grid-template-columns: 100px 50% 200px;
  grid-template-rows: 40% 50% 50px;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Grid Template

The shorthand property, `grid-template`, can replace the previous two
CSS properties. Both `grid-template-rows` and `grid-template-columns`
are nowhere to be found in the following code!

``` css
.grid {
  display: grid;
  width: 1000px;
  height: 500px;
  grid-template: 200px 300px / 20% 10% 70%;
}
```

When using `grid-template`, the values before the slash will determine
the size of each row. The values after the slash determine the size of
each column. In this example, we’ve made two rows and three columns of
varying sizes.

The same rules from before apply; when using percentages to set rows,
each row will be a percentage of the grid’s total height. Columns are
still a percentage of the total width.

### Instructions

**1.**

Refactor the grid template rows and columns code inside the `.grid`
ruleset using the `grid-template` property. Keep the rows and columns
looking the same without using the `grid-template-rows` and
`grid-template-columns` properties!

### Solution

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  width: 400px;
  height: 500px;
  grid-template: 40% 50% 50px / 100px 50% 200px;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Fraction

You may already be familiar with several types of responsive units such
as percentages (`%`), `em`s and `rem`s. CSS Grid introduced a new
relative sizing unit — `fr`, like fraction.

By using the `fr` unit, we can define the size of columns and rows as a
fraction of the grid’s length and width. This unit was specifically
created for use in CSS Grid. Using `fr` makes it easier to prevent grid
items from overflowing the boundaries of the grid. Consider the code
below:

``` css
.grid {
  display: grid;
  width: 1000px;
  height: 400px;
  grid-template: 2fr 1fr 1fr / 1fr 3fr 1fr;
}
```

In this example, the grid will have three rows and three columns. The
rows are splitting up the available 400 pixels of height into four
parts. The first row gets two of those parts, the second row gets one,
and the third row gets one. Therefore the first row is 200 pixels tall,
and the second and third rows are 100 pixels tall.

Each column’s width is a fraction of the available space. In this case,
the available space is split into five parts. The first column gets
one-fifth of the space, the second column gets three-fifths, and the
last column gets one-fifth. Since the total width is 1000 pixels, this
means that the columns will have widths of 200 pixels, 600 pixels, and
200 pixels respectively.

It is possible to use `fr` with other units as well. When this happens,
each `fr` represents a fraction of the *available* space.

``` css
.grid {
  display: grid;
  width: 100px;
  grid-template-columns: 1fr 60px 1fr;
}
```

In this example, 60 pixels are taken up by the second column. Therefore
the first and third columns have 40 available to split between them.
Since each gets one fraction of the total, they both end up being 20
pixels wide.

### Instructions

**1.**

Change your rows so that each row will take up the exact same fraction
of the available space.

**2.**

Change the grid so the middle column is still 50% of the grid, but the
first column takes up three fourths of the remaining space and the last
column takes up one fourth.

### Solution

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  width: 400px;
  height: 500px;
  grid-template: 1fr 1fr 1fr / 3fr 50% 1fr;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Repeat

The properties that define the number of rows and columns in a grid can
take a function as a value. `repeat()` is one of these functions. The
`repeat()` function was created specifically for CSS Grid.

``` css
.grid {
  display: grid;
  width: 300px;
  grid-template-columns: repeat(3, 100px);
}
```

The repeat function will duplicate the specifications for rows or
columns a given number of times. In the example above, using the repeat
function will make the grid have three columns that are each 100 pixels
wide. It is the same as writing:

``` css
grid-template-columns: 100px 100px 100px;
```

Repeat is particularly useful with `fr`. For example, `repeat(5, 1fr)`
would split your table into five equal rows or columns.

Finally, the second parameter of `repeat()` can have multiple values.

``` css
grid-template-columns: repeat(2, 20px 50px)
```

This code will create four columns where the first and third columns
will be 20 pixels wide and the second and fourth will be 50 pixels wide.

### Instructions

**1.**

Refactor the sizing of the rows to use the `repeat()` function.

### Solution

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  width: 400px;
  height: 500px;
  grid-template: repeat(3, 1fr) / 3fr 50% 1fr;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## minmax

So far, all of the grids that we have worked with have been a fixed
size. The grid in our example has been 400 pixels wide and 500 pixels
tall. But sometimes you might want a grid to resize based on the size of
your web browser.

In these situations, you might want to prevent a row or column from
getting too big or too small. For example, if you have a 100-pixel wide
image in your grid, you probably don’t want its column to get thinner
than 100 pixels! The `minmax()` function can help us solve this problem.

``` css
.grid {
  display: grid;
  grid-template-columns: 100px minmax(100px, 500px) 100px;
}
```

In this example, the first and third columns will always be 100 pixels
wide, no matter the size of the grid. The second column, however, will
vary in size as the overall grid resizes. The second column will always
be between 100 and 500 pixels wide.

### Instructions

**1.**

To see `minmax()` in action, we need to first make the grid have a
variable width. Delete the `width` declaration from `.grid`.

If you resize your browser, you will see the grid change size with the
window.

**2.**

Using `minmax()`, change the second column to be between 50 pixels and
300 pixels.

Try resizing your browser window. What happens to the other columns when
the second column reaches the 300 pixel limit?

### Solution

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  height: 500px;
  grid-template: repeat(3, 1fr) / 3fr minmax(50px, 300px) 1fr;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Grid Gap

In all of our grids so far, there hasn’t been any space between the
items in our grid. The CSS properties `row-gap` and `column-gap` will
put blank space between every row and column in the grid.

``` css
.grid {
  display: grid;
  width: 320px;
  grid-template-columns: repeat(3, 1fr);
  column-gap: 10px;
}
```

It is important to note that grid gap properties do not add space at the
beginning or end of the grid. In the example code, our grid will have
three columns with two ten-pixel gaps between them.

Let’s quickly calculate how wide these columns are. Remember that using
`fr` considers all of the *available* space. The grid is 320 pixels wide
and 20 of those pixels are taken up by the two grid gaps. Therefore each
column takes a piece of the 300 available pixels. Each column gets
`1fr`, so the columns are evenly divided into thirds (or 100 pixels
each).

Finally, there is a shorthand CSS property, `gap`, that can set the row
and column gap at the same time.

``` css
.grid {
  display: grid;
  width: 320px;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px 10px;
}
```

The example above will set the distance between rows to 20 pixels and
the distance between columns to 10 pixels. Unlike other CSS grid
properties, this shorthand does not take a `/` between values! If only
one value is given, it will set the column gap and the row gap to that
value.

> **Note**: You might have seen `grid-row-gap`, `grid-column-gap`, and
> `grid-gap` in other code, but these properties are now deprecated.

### Instructions

**1.**

Use `row-gap` to create a gap of `20px` between the rows of your grid.

**2.**

Use `column-gap` to create a gap of `5px` between the column of your
grid.

**3.**

Comment out the `row-gap` and `column-gap` declarations. Refactor the
two properties into a shorthand `gap` property.

### Solution

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  height: 500px;
  grid-template: repeat(3, 1fr) / 3fr minmax(50px, 300px) 1fr;
  /* row-gap: 20px;
  column-gap: 5px; */
  gap: 20px 5px;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Grid Items

In this lesson, we have learned how to define a grid container. When
explicitly defining a grid, you have to declare the quantity of rows and
columns and their respective sizes.

In all of our examples, the items placed in the grid have always taken
up exactly one square. This does not always need to be the case; we can
drastically change the look of our grid by making grid items take up
more than one row and one column. You can see this in the diagram to the
right. Items A, B, C, and E span more than one row!

In the following exercises, you will learn CSS properties that will
affect the size of the *grid items* and where they are displayed on the
page. By manipulating both the parent and the child elements, we can
create beautiful layouts with ease.

Let’s start exploring grid items!

### Solution

<img src="https://content.codecademy.com/courses/learn-css-grid/lesson-i/css_grid_diagram_2.svg" alt="Diagram of grid" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Multiple Row Items

Using the CSS properties `grid-row-start` and `grid-row-end`, we can
make single grid items take up multiple rows. Remember, we are no longer
applying CSS to the outer grid container; we’re adding CSS to the
elements sitting inside the grid!

``` css
.item {
  grid-row-start: 1;
  grid-row-end: 3;
}
```

In this example, the HTML element of class `item` will take up two rows
in the grid, rows 1 and 2. The values that `grid-row-start` and
`grid-row-end` accept are *grid lines*.

Row grid lines and column grid lines start at 1 and end at a value that
is 1 greater than the number of rows or columns the grid has. For
example, if a grid has 5 rows, the grid row lines range from 1 to 6. If
a grid has 8 rows, the grid row lines range from 1 to 9.

The value for `grid-row-start` should be the row at which you want the
grid item to begin. The value for `grid-row-end` should be one greater
than the row at which you want the grid item to end. An element that
covers rows 2, 3, and 4 should have these declarations:
`grid-row-start: 2` and `grid-row-end: 5`.

It is possible for the value of `grid-row-start` to be greater than that
of `grid-row-end`. Both properties can also each have negative values.
Consult the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-start"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a> to learn more about how
to use these features.

### Instructions

**1.**

Take a look at the CSS rule for the class `grid`. Think about what the
grid would look like if it were completely filled. Let’s make this first
item take up the fifth and sixth rows of the grid.

In the `a` ruleset, set `grid-row-start` so the item begins in the fifth
row.

**2.**

Set `grid-row-end` so the item occupies the fifth and sixth rows.

### Solution

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  height: 500px;
  width: 500px;
  grid-template: repeat(4, 1fr 2fr) / repeat(4, 3fr 2fr);
  gap: 5px;
}

.a {
  grid-row-start: 5;
  grid-row-end: 7;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Grid Row

We can use the property `grid-row` as shorthand for `grid-row-start` and
`grid-row-end`. The following two code blocks will produce the same
output:

``` css
.item {
  grid-row-start: 4;
  grid-row-end: 6;
}
```

``` css
.item {
  grid-row: 4 / 6;
}
```

This code should look similar to the way `grid-template` is shorthand
for `grid-template-rows`and `grid-template-columns`. In this case, the
starting row goes before the “/“ and the ending row goes after it.
Again, the ending row is exclusive; this grid item will occupy rows four
and five.

When an item spans multiple rows or columns using these properties, it
will also include the `gap` if any exists. For example, if an item spans
two rows of `height` 100 pixels and there is a ten-pixel `gap`, then the
item will have a total height of 210 pixels.

### Instructions

**1.**

Refactor your code from the last exercise. Replace `grid-row-start` and
`grid-row-end` with `grid-row`. Make sure the item still takes up rows
five and six.

### Solution

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  height: 500px;
  width:500px;
  grid-template: repeat(4, 1fr 2fr) / repeat(4, 3fr 2fr);
  gap: 5px;
}

.a {
  grid-row: 5 / 7;
  grid-column-start: 1;
  grid-column-end: 3;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Grid Column

The previous three properties also exist for columns.
`grid-column-start`, `grid-column-end` and `grid-column` work
identically to the row properties. These properties allow a grid item to
span multiple columns.

When using these properties, we can use the keyword `span` to start or
end a column or row, relative to its other end. Look at how `span` is
used in the code below:

``` css
.item {
  grid-column: 4 / span 2;
}
```

This is telling the `item` element to begin in column four and take up
two columns of space. So `item` would occupy columns four and five. It
produces the same result as the following code blocks:

``` css
.item {
  grid-column: 4 / 6;
}
```

``` css
.item {
  grid-column-start: 4;
  grid-column-end: span 2;
}
```

``` css
.item {
  grid-column-start: span 2;
  grid-column-end: 6;
}
```

`span` is a useful keyword, because it avoids off-by-one errors
(miscalculating the ending grid line) you might make when determining
the ending grid line of an element. If you know where you want your grid
item to start and how long it should be, use `span`!

### Instructions

**1.**

Let’s add another item to our grid. Navigate to **index.html** and
uncomment the B div.

**2.**

Let’s make box `b` take up a few rows. Go back to **style.css**, in the
`.b` ruleset, use `grid-row` with `span` to make the item take up rows
two through four.

**3.**

Next, make box `b` take up six columns. In **style.css**, in the `.b`
ruleset, use `grid-column` to set its starting column to `2`. Use `span`
to make the item take up six columns.

**4.**

Now let’s go back to the box `a` ruleset. Refactor the
`grid-column-start` and `grid-column-end` declarations into a shorthand
`grid-column` declaration. The grid item should still start in the first
column and span 2 columns using the `span` keyword.

### Solution

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  height: 500px;
  width:500px;
  grid-template: repeat(4, 1fr 2fr) / repeat(4, 3fr 2fr);
  gap: 5px;
}

.a {
  grid-row: 5 / 7;
  grid-column: 1 / span 2;
}

.b {  
  grid-row: 2 / span 3;
  grid-column: 2 / span 6;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Grid Area

We’ve already been able to use `grid-row` and `grid-column` as shorthand
for properties like `grid-row-start` and `grid-row-end`. We can refactor
even more using the property `grid-area`. This property will set the
starting and ending positions for both the rows and columns of an item.

``` css
.item {
  grid-area: 2 / 3 / 4 / span 5;
}
```

`grid-area` takes four values separated by slashes. The order is
important! This is how `grid-area` will interpret those values.

1.  `grid-row-start`
2.  `grid-column-start`
3.  `grid-row-end`
4.  `grid-column-end`

In the above example, the item will start on row `2` and end on row `4`,
though the 4th row is not actually included, only rows `2` and `3`! The
item will then start on column `3` and instead of setting a number for
which column to end on, we want this item to `span 5` columns — this
means the item will include columns `3`, `4`, `5`, `6`, and `7`.

Using `grid-area` is an easy way to place items exactly where you want
them in a grid.

### Instructions

**1.**

In **index.html** uncomment the C `<div>` on line 10.

**2.**

In **style.css**, inside the `.c` ruleset, use `grid-area` to make the
element start at row six and column eight. Then have it take up three
rows and one column. Use `span` for both ending values.

**3.**

Let’s refactor the code for the other two items in the grid. Start with
item `b`. Replace `grid-row` and `grid-column` with `grid-area`. Make
sure the item still takes up the same amount of space.

**4.**

Lastly, refactor item `a`. Replace `grid-row` and `grid-column` with
`grid-area`. Again, use `span` to set the end of the rows and columns.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <link rel='stylesheet' href='style.css'></head>
  
<body>
  <div class="grid">
    <div class="box a">A</div>
    <div class="box b">B</div>
    <div class="box c">C</div>
  </div>
</body>

</html>
```

``` css
.grid {
  display: grid;
  border: 2px blue solid;
  height: 500px;
  width:500px;
  grid-template: repeat(4, 1fr 2fr) / repeat(4, 3fr 2fr);
  gap: 5px;
}

.a {
  grid-area: 5 / 1 / span 2 / span 2;
}

.b {  
  grid-area: 2 / 2 / span 3 / span 6;
}

.c {
  grid-area: 6 / 8 / span 3 / span 1;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}
```

## Review

At this point, we’ve covered a great deal of different ways to
manipulate the grid and the items inside it to create interesting
layouts.

- `grid-template-columns` defines the number and sizes of the columns of
  the grid
- `grid-template-rows` defines the number and sizes of the rows of the
  grid
- `grid-template` is a shorthand for defining both
  `grid-template-columns` and `grid-template-rows` in one line
- `row-gap` puts blank space between the rows of the grid
- `column-gap` puts blank space between the columns of the grid
- `gap` is a shorthand for defining both `row-gap` and `column-gap` in
  one line
- `grid-row-start` and `grid-row-end` makes elements span certain rows
  of the grid
- `grid-column-start` and `grid-column-end` makes elements span certain
  columns of the grid
- `grid-area` is a shorthand for `grid-row-start`, `grid-column-start`,
  `grid-row-end`, and `grid-column-end`, all in one line

You have seen how to set up and fill in a grid and you now have one more
CSS positioning technique to add to your toolkit! Let’s do some practice
to solidify these skills.

### Instructions

**1.**

Let’s start by making this bunch of divs into a grid. In **style.css**,
in the `.grid` ruleset, add a declaration that uses the `display`
property along with the value necessary to make the element a CSS grid.

**2.**

Structure the grid to have four columns — the first two each taking up
25% of the total width, the third column taking up two-thirds of the
remaining space, and the last column taking up the last third of the
remaining space.

**3.**

Give the grid two rows, both `200px` in size.

**4.**

Put a `10px` gap in between the rows of the grid and a `15px` gap in
between the columns of the grid.

**5.**

Using the `span` keyword, make the box with class `a` take up the first
two columns of the grid.

**6.**

Without using `span`, make the box with class `a` take up the first two
rows of the grid.

**7.**

Great! Now, feel free to play around with refactoring to see how short
you can make your **style.css** file while not changing the layout we’ve
created. When you’re ready, move on to the next lesson. In the next
lesson, you will learn some advanced techniques to further style your
CSS grids.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <link rel='stylesheet' href='style.css'></head>
  
<body>
  <div class="grid">
    <div class="box a">A</div>
    <div class="box b">B</div>
    <div class="box c">C</div>
    <div class="box d">D</div>
    <div class="box e">E</div>
  </div>
</body>

</html>
```

``` css
.grid {
  border: 2px blue solid;
  height: 500px;
  width: 500px;
  display: grid;
  grid-template-columns: 25% 25% 2fr 1fr;
  grid-template-rows: 200px 200px;
  row-gap: 10px;
  column-gap: 15px;
}

.box {
  background-color: beige;
  color: black;
  border-radius: 5px;
  border: 2px dodgerblue solid;
}

.a {
  grid-column-start: 1;
  grid-column-end: span 2;
  grid-row-start: 1;
  grid-row-end: 3;
}
```

# Advanced CSS Grid

## Introduction

In the previous lesson, you learned all the foundational properties
necessary to create a two-dimensional grid-based layout for your web
pages! In this lesson, you’ll learn the following additional properties
that you can use to harness the power of CSS Grid Layout:

- `grid-template-areas`
- `justify-items`
- `justify-content`
- `justify-self`
- `align-items`
- `align-content`
- `align-self`
- `grid-auto-rows`
- `grid-auto-columns`
- `grid-auto-flow`

You will also learn about the *explicit* and *implicit* grids and *grid
axes*.

### Instructions

Examine the code in the browser to the right. Expand the browser by
clicking the diagonal arrow to the right of `localhost:8000`.

You’ll be updating this fictional recipe site as you move throughout
this lesson! Continue to the next exercise when you’re ready.

### Solution

``` html
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Savory</title>
    <link rel="stylesheet" type="text/css" href="reset.css" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
  </head>

  <body>

    <div class="container">

      <header>
        <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/savory.svg" class="logo">
      </header>

      <main>
        <div class="recipe a">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-1.png" />
          <h2>CHOCOLATE MOUSSE</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">20 mins</p>
          <p class="description">
            This delicious chocolate mousse will delight dinner guests of all ages!</p>
        </div>
        <div class="recipe b">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-2.png" />
          <h2>SMOKED LAMB WITH RICE</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">120 mins</p>
          <p class="description">
            Want to feel like your favorite relative came over and made you dinner? This comfort meal of smoked lamb and rice will quickly become a weekend favorite!
          </p>
        </div>
        <div class="recipe c">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-5.png" />
          <h2>GOAT CHEESE SALAD</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">25 mins</p>
          <p class="description">
            In addition to the full flavor of goat cheese, this salad includes kale, avocado, and farro to balance it out.</p>
        </div>
        <div class="recipe d">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-4.png" />
          <h2>CHICKEN SANDWICH</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">45 mins</p>
          <p class="description">
            We've packed a lot into this one - shredded cabbage, carmalized onions, deep-fried chicken, chipotle mayo, half-sour pickles, and a toasted sesame bun will leave you thoroughly satisfied!</p>
        </div>
        <div class="recipe e">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-3.png" />
          <h2>SWEET CHURROS</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">90 mins</p>
          <p class="description">
            Making this classic summer treat at home will remind you of a childhood spent in the park.</p>
        </div>
        <div class="recipe f">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-6.png" />
          <h2>BERRY PARFAIT</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">10 mins</p>
          <p class="description">
            This low-calorie, vitamin-packed parfait is great for breakfast, dessert, or post-workout!</p>
        </div>
      </main>

      <footer>
        <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/savory.svg" class="logo">
      </footer>

    </div>
  </body>

</html>
```

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

## Grid Template Areas

The `grid-template-areas` property allows you to name sections of your
web page to use as values in the `grid-row-start`, `grid-row-end`,
`grid-column-start`,`grid-column-end`, and `grid-area` properties. This
property is declared on grid containers.

``` html
<div class="container">
  <header>Welcome!</header>
  <nav>Links!</nav>
  <section class="info">Info!</section>
  <section class="services">Services!</section>
  <footer>Contact us!</footer>
</div>
```

``` css
.container {
  display: grid;
  max-width: 900px;
  position: relative;
  margin: auto;
  grid-template-areas: "head head"
                       "nav nav" 
                       "info services"
                       "footer footer";
  grid-template-rows: 300px 120px 800px 120px;
  grid-template-columns: 1fr 3fr; 
}
 
header {
  grid-area: head;
} 
 
nav {
  grid-area: nav;
} 
 
.info {
  grid-area: info;
} 
 
.services {
  grid-area: services;
}
 
footer {
  grid-area: footer;
}
```

You may want to expand this section of the website to view the code
above more clearly.

1.  In the example above, the HTML creates a web page with five distinct
    parts.
2.  In the `.container` ruleset, the `grid-template-areas` declaration
    creates a 2-column, 4-row layout.
3.  The `grid-template-rows` declaration specifies the height of each of
    the four rows from top to bottom: 300 pixels, 120 pixels, 800
    pixels, and 120 pixels.
4.  The `grid-template-columns` declaration uses the `fr` value to cause
    the left column to use one fourth of the available space on the page
    and the right column to use three-fourths of the available space on
    the page.
5.  In each ruleset below `.container`, we use the `grid-area` property
    to tell that section to cover the portion of the page specified. The
    `header` element spans the first row and both columns. The `nav`
    element spans the second row and both columns. The element with
    class `.info` spans the third row and left column. The element with
    class `.services` spans the third row and right column. The `footer`
    element spans the bottom row and both columns.
6.  That’s it! An entire page laid out in 40 lines of code.

### Instructions

**1.**

You can see what you’ll be building in this exercise <a
href="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/grid-template-areas/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

In **style.css**, add the `grid-template-areas` property to the
`.container` ruleset.

Its value should create a 2-column, 4-row layout with these areas:

- header (spans two columns in the first row)
- nav (spans two columns in the second row)
- left (spans one column on the left in the third row)
- right (spans one column on the right in the third row)
- footer (spans two columns in the fourth row)

**2.**

In **style.css**, inside the `header` ruleset, set the `grid-area`
property to have a value of `header`.

**3.**

Follow the same pattern for the `nav`, `.left`, `.right`, and `footer`
rulesets in **style.css**.

**4.**

In the `.container` ruleset, use the `grid-template-columns` property to
make the first column 200 pixels wide and the second column 400 pixels
wide.

**5.**

In the `.container` ruleset, use the `grid-template-rows` property to
make the rows 150 pixels, 200 pixels, 600 pixels, and 200 pixels tall.

### Solution

``` css
.container {
  display: grid;
  max-width: 900px;
  position: relative;
  margin: auto;
  gap: 10px;
  grid-template-areas: "header header"
                        "nav    nav"
                        "left   right"
                        "footer footer";
  grid-template-columns: 200px 400px;
  grid-template-rows: 150px 200px 600px 200px;
}

h1, h2 {
  font-family: monospace;
  text-align: center;
}

header {
  background-color: dodgerblue;
  grid-area: header;
}

nav {
  background-color: beige;
  grid-area: nav;
}

.left {
  background-color: dodgerblue;
  grid-area: left;
}

.right {
  background-color: beige;
  grid-area: right;
}

footer {
  background-color: dodgerblue;
  grid-area: footer;
}
```

## Overlapping Elements

Another powerful feature of CSS Grid Layout is the ability to easily
overlap elements.

When overlapping elements, it is generally easiest to use the <a
href="https://www.codecademy.com/courses/learn-css/lessons/advanced-css-grid/exercises/grid-area"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">grid-area</code></a> property with
grid row names. Remember that `grid-area` will set the starting and
ending positions for both the rows and columns of an item.

``` html
<div class="container">
  <div class="info">Info!</div> 
  <img src="#" />
  <div class="services">Services!</div>
</div>
```

``` css
.container {
  display: grid;
  grid-template: repeat(8, 200px) / repeat(6, 100px);
}
 
.info {
  grid-area: 1 / 1 / 9 / 4;
}
 
.services {
  grid-area: 1 / 4 / 9 / 7;
}
 
img {
  grid-area: 2 / 3 / 5 / 5;
  z-index: 5;
}
```

In the example above, there is a grid container with eight rows and six
columns. There are three grid items within the container — a `<div>`
with the class `info`, a `<div>` with the class `services`, and an
image.

The `info` section covers all eight rows and the first three columns.
The `services` section covers all eight rows and the last three columns.

The image spans the 2nd, 3rd, and 4th rows and the 3rd and 4th columns.

The z-index property tells the browser to render the image element on
top of the `services` and `info` sections so that it is visible.

### Instructions

**1.**

In **style.css**, inside the `.left` ruleset, add the `grid-area`
property and set its value to `4 / 1 / 9 / 5`. This sets the Left
element to take up rows 4 through 8, and columns 1 through 4.

**2.**

In **style.css**, inside the `.right` ruleset, add the `grid-area`
property and set its value to `4 / 5 / 9 / 7`. This sets the Right
element to take up rows 4 through 8, and columns 5 and 6.

**3.**

In **style.css**, inside the `.overlap` ruleset, add the `grid-area`
property.

Set its value so that the `overlap` element spans the 6th and 7th rows
and the 4th and 5th columns.

**4.**

Notice that the `overlap` element is covered by the `right` element.

Set the `z-index` of the `overlap` element to `5`.

**5.**

In **style.css**, inside the `footer` ruleset, add the `grid-area`
property and set its value to `9 / 1 / 13 / 7`.

### Solution

``` css
.container {
  display: grid;
  max-width: 900px;
  position: relative;
  margin: auto;
  gap: 10px;
  grid-template: repeat(12, 1fr) / repeat(6, 1fr);
}

h1, h2, h3 {
  font-family: monospace;
  text-align: center;
}

header {
  background-color: dodgerblue;
  grid-area: 1 / 1 / 3 / 7;
}

nav {
  background-color: beige;
  grid-area: 3 / 1 / 4 / 7;
}

.left {
  background-color: dodgerblue;
  grid-area: 4 / 1 / 9 / 5;
}

.right {
  background-color: beige;
  grid-area: 4 / 5 / 9 / 7;
}

.overlap {
  background-color: lightcoral;
  grid-area: 6 / 4 / 8 / 6;
  z-index: 5;
}

footer {
  background-color: dodgerblue;
  grid-area: 9 / 1 / 13 / 7;
}
```

## Justify Items

We have referred to “two-dimensional grid-based layout” several times
throughout this course.

There are two axes in a grid layout — the *column* (or block) axis and
the *row* (or inline) axis.

The column axis stretches from top to bottom across the web page.

The row axis stretches from left to right across the web page.

In the following four exercises, we will learn and use properties that
rely on an understanding of grid axes.

`justify-items` is a property that positions grid items along the
inline, or row, axis. This means that it positions items from left to
right across the web page. This property is declared on grid containers.

`justify-items` accepts these values:

- `start` — aligns grid items to the left side of the grid area
- `end` — aligns grid items to the right side of the grid area
- `center` — aligns grid items to the center of the grid area
- `stretch` — stretches all items to fill the grid area

There are several other values that `justify-items` accepts, which you
can read about on the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Box_Alignment_in_CSS_Grid_Layout#Justifying_Items_on_the_Inline_or_Row_Axis"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network</a>. The
definitions for these values can also be found in the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/justify-items#Values"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>. It is important to
note that the page with the definitions includes some values that are
not accepted in CSS Grid layout.

``` html
<main>
  <div class="card">Card 1</div>
  <div class="card">Card 2</div>
  <div class="card">Card 3</div>
</main>
```

``` css
main {
  display: grid;
  grid-template-columns: repeat(3, 400px);
  justify-items: center;
}
```

In the example above, we use `justify-items` to adjust the positioning
of some elements on this web page.

1.  There is a grid container with three columns that are each 400
    pixels wide.
2.  The container has three grid items that do not have a specified
    width.
3.  Without setting the `justify-items` property, these elements will
    span the width of the column they are in (400 pixels).
4.  By setting the `justify-items` property to `center`, the `.card`
    `<div>`s will be centered inside of their columns. They will only be
    as wide as necessary to contain their content (the words Card 1,
    etc).
5.  If we specify a width for the `.card` elements, they will not
    stretch the width of their column.

### Instructions

**1.**

Look in **style.css**. Each column inside of the `<main>` element is 250
pixels. The recipes stretch to take up the entire 250 pixels.

In the `.recipe` ruleset, add the `width` property and set its value to
`200px`.

What changes?

**2.**

In the `main` ruleset, add a `justify-items` property with the value
`center`.

The elements won’t be completely centered just yet. Depending on your
browser size, you may not notice much of a move at all. We’ll learn why
in the following exercise!

### Solution

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
  justify-items: center;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {  
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
  width: 200px;
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

## Justify Content

In the previous exercise, we learned how to position elements within
their columns. In this exercise, we will learn how to position a grid
within its parent element.

We can use `justify-content` to position the entire grid along the row
axis. This property is declared on grid containers.

It accepts these values:

- `start` — aligns the grid to the left side of the grid container
- `end` — aligns the grid to the right side of the grid container
- `center` — centers the grid horizontally in the grid container
- `stretch` — stretches the grid items to increase the size of the grid
  to expand horizontally across the container
- `space-around` — includes an equal amount of space on each side of a
  grid element, resulting in double the amount of space between elements
  as there is before the first and after the last element
- `space-between` — includes an equal amount of space between grid items
  and no space at either end
- `space-evenly` — places an even amount of space between grid items and
  at either end

There are several other values that `justify-content` accepts, which you
can read about on the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Box_Alignment_in_CSS_Grid_Layout#Aligning_the_grid_tracks_on_the_block_or_column_axis"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network</a>. The
definitions for these values can also be found in the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content#Values"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>. It is important to
note that the page with the definitions includes some values that are
not accepted in CSS Grid layout.

``` html
<main>
  <div class="left">Left</div>
  <div class="right">Right</div>
</main>
```

``` css
main {
  display: grid;
  width: 1000px;
  grid-template-columns: 300px 300px;
  grid-template-areas: "left right"; 
  justify-content: center;
}
```

1.  In the example above, the grid container is 1000 pixels wide, but we
    only specified two columns that are 300 pixels each. This will leave
    400 pixels of unused space in the grid container.
2.  `justify-content: center;` positions the columns in the center of
    the grid, leaving 200 pixels on the right and 200 pixels on the left
    of the grid.

### Instructions

**1.**

Expand the web browser to the right. The two columns of recipe cards are
off-center.

In **style.css**, inside the `main` ruleset, add the `justify-content`
property and set its value to `center`.

Now, all of the elements should be perfectly centered on the page! Feel
free to try some of the other values to see how they position the grid.

### Solution

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
  justify-items: center;
  justify-content: center;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
  width: 200px;
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

## Align Items

In the previous two exercises, we learned how to position grid items and
grid columns from left to right across the page. Now we’ll learn how to
position grid items from top to bottom!

`align-items` is a property that positions grid items along the block,
or column axis. This means that it positions items from top to bottom.
This property is declared on grid containers.

`align-items` accepts these values:

- `start` — aligns grid items to the top side of the grid area
- `end` — aligns grid items to the bottom side of the grid area
- `center` — aligns grid items to the center of the grid area
- `stretch` — stretches all items to fill the grid area

There are several other values that `align-items` accepts, which you can
read about on the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Box_Alignment_in_CSS_Grid_Layout#Aligning_items_on_the_block_or_column_Axis"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network</a>. The
definitions for these values can also be found in the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/align-items#values"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>. It is important to
note that the page with the definitions includes some values that are
not accepted in CSS Grid layout.

``` html
<main>
  <div class="card">Card 1</div>
  <div class="card">Card 2</div>
  <div class="card">Card 3</div>
</main>
```

``` css
main {
  display: grid;
  grid-template-rows: repeat(3, 400px);
  align-items: center;
}
```

In the example above, we use `align-items` to adjust the positioning of
some elements on this web page.

1.  There is a grid container with three rows that are 400 pixels tall.
2.  The container has three grid items that do not have a specified
    width.
3.  Without setting the `align-items` property, these elements will span
    the height of the row they are in (400 pixels).
4.  By setting the `align-items` property to `center`, the `.card`
    `<div>`s will be centered vertically inside of their rows. They will
    only be as tall as necessary to contain their content (the words
    Card 1, etc).
5.  If we specify a height for the `.card` elements, they will not
    stretch the height of their row even if `align-items: stretch;` is
    set.

### Instructions

**1.**

Notice that each row of recipe cards stretches to the height of the row
(450 pixels), even if it doesn’t have enough text to fill the space.

In **style.css**, inside the `main` ruleset, we’ve added some
`align-items` properties with different values. Uncomment each line to
see what position the grid items take.

The final declaration `align-items: stretch` is what we’ll be sticking
with!

### Solution

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
  justify-items: center;
  justify-content: center;
  align-items: stretch;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
  width: 200px;
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

## Align Content

In the previous exercise, we positioned grid items within their rows.
`align-content` positions the rows along the column axis, or from top to
bottom, and is declared on grid containers.

It accepts these positional values:

- `start` — aligns the grid to the top of the grid container
- `end` — aligns the grid to the bottom of the grid container
- `center` — centers the grid vertically in the grid container
- `stretch` — stretches the grid items to increase the size of the grid
  to expand vertically across the container
- `space-around` — includes an equal amount of space on each side of a
  grid element, resulting in double the amount of space between elements
  as there is before the first and after the last element
- `space-between` — includes an equal amount of space between grid items
  and no space at either end
- `space-evenly` — places an even amount of space between grid items and
  at either end

There are several other values that `align-content` accepts, which you
can read about on the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Box_Alignment_in_CSS_Grid_Layout#Aligning_the_grid_tracks_on_the_block_or_column_axis"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network</a>. The
definitions for these values can also be found in the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/align-content#Values"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>. It is important to
note that the page with the definitions includes some values that are
not accepted in CSS Grid layout.

``` html
<main>
  <div class="top">Top</div>
  <div class="bottom">Bottom</div>
</main>
```

``` css
main {
  display: grid;
  height: 600px;
  grid-template-rows: 200px 200px;
  grid-template-areas: "top"
                       "bottom"; 
  align-content: center;
}
```

1.  In the example above, the grid container is 600 pixels tall, but we
    only specified two rows that are 200 pixels each. This will leave
    200 pixels of unused space in the grid container.
2.  `align-content: center;` positions the rows in the center of the
    grid, leaving 100 pixels at the top and 100 pixels at the bottom of
    the grid.

### Instructions

**1.**

In **style.css**, inside the `main` ruleset, add the `height` property
and set its value to `1600px`.

Scroll all the way to the bottom of the web page. Notice the empty space
at the bottom?

This is because the rows are each 450 pixels tall (for a total of 1350
pixels), but the container is 1600 pixels.

**2.**

To center the content on the page, add the `align-content` property to
the `main` ruleset and set its value to `center`.

Feel free to play around with some other values to see how the grid
container can positioned!

### Solution

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
  justify-items: center;
  justify-content: center;
  align-items: stretch;
  height: 1600px;
  align-content: center;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
  width: 200px;
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

## Justify Self and Align Self

The `justify-items` and `align-items` properties specify how all grid
items contained within a single container will position themselves along
the row and column axes, respectively.

`justify-self` specifies how an individual element should position
itself with respect to the row axis. This property will override
`justify-items` for any item on which it is declared.

`align-self` specifies how an individual element should position itself
with respect to the column axis. This property will override
`align-items` for any item on which it is declared.

These properties are declared on grid items. They both accept these four
properties: 

- `start` — positions grid items on the left side/top of the grid area
- `end` — positions grid items on the right side/bottom of the grid area
- `center` — positions grid items on the center of the grid area
- `stretch` — positions grid items to fill the grid area (default)

`align-self` and `justify-self` accept the same values as `align-items`
and `justify-items`. You can read about these values on the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Box_Alignment_in_CSS_Grid_Layout#Aligning_the_grid_tracks_on_the_block_or_column_axis"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network</a>. The
definitions for these values can also be found in the <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/align-self#Values"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>. It is important to
note that the page with the definitions includes some values that are
not accepted in CSS Grid layout.

### Instructions

**1.**

In **style.css**, inside the `.a` ruleset, add the `align-self` property
and set its value to `end`.

What changes?

**2.**

In **style.css**, inside the `.c` ruleset, add the `justify-self`
property and set its value to `start`.

What changes?

The web page is looking a little uneven. We’ll get rid of both
declarations in the next exercise.

### Solution

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
  justify-items: center;
  justify-content: center;
  align-items: stretch;
  height: 1600px;
  align-content: center;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
  width: 200px;
}

.a {
  align-self: end;
}

.c {
  justify-self: start;
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

## Implicit vs. Explicit Grid

So far, we have been explicitly defining the dimensions and quantities
of our grid elements using various properties. This works well in many
cases, such as a landing page for a business that will display a
specific amount of information at all times.

However, there are instances in which we don’t know how much information
we’re going to display. For example, consider online shopping. Often,
these web pages include the option at the bottom of the search results
to display a certain quantity of results or to display ALL results on a
single page. When displaying all results, the web developer can’t know
in advance how many elements will be in the search results each time.

What happens if the developer has specified a 3-column, 5-row grid (for
a total of 15 items), but the search results return 30?

Something called the *implicit* grid takes over. The implicit grid is an
algorithm built into the specification for CSS Grid that determines
default behavior for the placement of elements when there are more than
fit into the grid specified by the CSS.

The default behavior of the implicit grid is as follows: items fill up
rows first, adding new rows as necessary. New grid rows will only be
tall enough to contain the content within them. In the next exercise,
you’ll learn how to change this default behavior.

### Instructions

Move on to the next exercise when you’re ready!

### Solution

``` html
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Savory</title>
    <link rel="stylesheet" href="reset.css" />
    <link rel="stylesheet" href="style.css" />
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
  </head>

  <body>

    <div class="container">

      <header>
        <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/savory.svg" class="logo">
      </header>

      <main>
        <div class="recipe a">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-1.png" />
          <h2>CHOCOLATE MOUSSE</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">20 mins</p>
          <p class="description">
            This delicious chocolate mousse will delight dinner guests of all ages!</p>
        </div>
        <div class="recipe b">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-2.png" />
          <h2>SMOKED LAMB WITH RICE</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">120 mins</p>
          <p class="description">
            Want to feel like your favorite relative came over and made you dinner? This comfort meal of smoked lamb and rice will quickly become a weekend favorite!
          </p>
        </div>
        <div class="recipe c">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-5.png" />
          <h2>GOAT CHEESE SALAD</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">25 mins</p>
          <p class="description">
            In addition to the full flavor of goat cheese, this salad includes kale, avocado, and farro to balance it out.</p>
        </div>
        <div class="recipe d">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-4.png" />
          <h2>CHICKEN SANDWICH</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">45 mins</p>
          <p class="description">
            We've packed a lot into this one - shredded cabbage, carmalized onions, deep-fried chicken, chipotle mayo, half-sour pickles, and a toasted sesame bun will leave you thoroughly satisfied!</p>
        </div>
        <div class="recipe e">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-3.png" />
          <h2>SWEET CHURROS</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">90 mins</p>
          <p class="description">
            Making this classic summer treat at home will remind you of a childhood spent in the park.</p>
        </div>
        <div class="recipe f">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-6.png" />
          <h2>BERRY PARFAIT</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">10 mins</p>
          <p class="description">
            This low-calorie, vitamin-packed parfait is great for breakfast, dessert, or post-workout!</p>
        </div>
      </main>

      <footer>
        <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/savory.svg" class="logo">
      </footer>

    </div>
  </body>

</html>
```

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
  justify-items: center;
  justify-content: center;
  align-items: stretch;
  height: 1600px;
  align-content: center;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
  width: 200px;
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

## Grid Auto Rows and Grid Auto Columns

CSS Grid provides two properties to specify the size of grid tracks
added implicitly: `grid-auto-rows` and `grid-auto-columns`. These
properties are declared on grid containers.

`grid-auto-rows` specifies the height of implicitly added grid rows.
`grid-auto-columns` specifies the width of implicitly added grid
columns.

`grid-auto-rows` and `grid-auto-columns` accept the same values as their
explicit counterparts, `grid-template-rows` and `grid-template-columns`:

- pixels (`px`)
- percentages (`%`)
- fractions (`fr`)
- the `repeat()` function

``` html
<body>
  <div>Part 1</div>   
  <div>Part 2</div>
  <div>Part 3</div>
  <div>Part 4</div>
  <div>Part 5</div>
</body>
```

``` css
body {
  display: grid;
  grid: repeat(2, 100px) / repeat(2, 150px); 
  grid-auto-rows: 50px;
}
```

In the example above, there are 5 `<div>`s. However, in the `body`
ruleset, we only specify a 2-row, 2-column grid — four grid cells.

The fifth `<div>` will be added to an implicit row that will be 50
pixels tall.

If we did not specify `grid-auto-rows`, the rows would be auto-adjusted
to the height of the content of the grid items.

### Instructions

**1.**

In **style.css**, delete the `height: 1600px;` declaration from the
`main` ruleset .

**2.**

In **index.html**, copy and paste the last two recipe cards to add two
more recipe cards to the bottom of the page.

Examine the height of the two new cards. What do you notice?

**3.**

To make additional cards the same height, in **style.css**, inside the
`main` ruleset, add the `grid-auto-rows` property. Set the height of the
implicitly defined rows to 500 pixels.

### Solution

``` html
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Savory</title>
    <link rel="stylesheet" href="reset.css" />
    <link rel="stylesheet" href="style.css" />
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
  </head>

  <body>

    <div class="container">

      <header>
        <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/savory.svg" class="logo">
      </header>

      <main>
        <div class="recipe a">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-1.png" />
          <h2>CHOCOLATE MOUSSE</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">20 mins</p>
          <p class="description">
            This delicious chocolate mousse will delight dinner guests of all ages!</p>
        </div>
        <div class="recipe b">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-2.png" />
          <h2>SMOKED LAMB WITH RICE</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">120 mins</p>
          <p class="description">
            Want to feel like your favorite relative came over and made you dinner? This comfort meal of smoked lamb and rice will quickly become a weekend favorite!
          </p>
        </div>
        <div class="recipe c">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-5.png" />
          <h2>GOAT CHEESE SALAD</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">25 mins</p>
          <p class="description">
            In addition to the full flavor of goat cheese, this salad includes kale, avocado, and farro to balance it out.</p>
        </div>
        <div class="recipe d">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-4.png" />
          <h2>CHICKEN SANDWICH</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">45 mins</p>
          <p class="description">
            We've packed a lot into this one - shredded cabbage, carmalized onions, deep-fried chicken, chipotle mayo, half-sour pickles, and a toasted sesame bun will leave you thoroughly satisfied!</p>
        </div>
        <div class="recipe e">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-3.png" />
          <h2>SWEET CHURROS</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">90 mins</p>
          <p class="description">
            Making this classic summer treat at home will remind you of a childhood spent in the park.</p>
        </div>
        <div class="recipe f">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-6.png" />
          <h2>BERRY PARFAIT</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">10 mins</p>
          <p class="description">
            This low-calorie, vitamin-packed parfait is great for breakfast, dessert, or post-workout!</p>
        </div>
        <div class="recipe e">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-3.png" />
          <h2>SWEET CHURROS</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">90 mins</p>
          <p class="description">
            Making this classic summer treat at home will remind you of a childhood spent in the park.</p>
        </div>
        <div class="recipe f">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-6.png" />
          <h2>BERRY PARFAIT</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">10 mins</p>
          <p class="description">
            This low-calorie, vitamin-packed parfait is great for breakfast, dessert, or post-workout!</p>
        </div>
      </main>

      <footer>
        <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/savory.svg" class="logo">
      </footer>

    </div>
  </body>

</html>
```

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
  justify-items: center;
  justify-content: center;
  align-items: stretch;
  align-content: center;
  grid-auto-rows: 500px;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
  width: 200px;
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

## Grid Auto Flow

In addition to setting the dimensions of implicitly-added rows and
columns, we can specify the order in which they are rendered.

`grid-auto-flow` specifies whether new elements should be added to rows
or columns, and is declared on grid containers.

`grid-auto-flow` accepts these values:

- `row` — specifies the new elements should fill rows from left to right
  and create new rows when there are too many elements (default)
- `column` — specifies the new elements should fill columns from top to
  bottom and create new columns when there are too many elements
- `dense` — this keyword invokes an algorithm that attempts to fill
  holes earlier in the grid layout if smaller elements are added

You can pair `row` or `column` with `dense`, like this:
`grid-auto-flow: row dense;`.

### Instructions

**1.**

In **style.css**, inside the `main` ruleset , add the `grid-auto-flow`
property and set its value to create columns when more elements are
added.

### Solution

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
  justify-items: center;
  justify-content: center;
  align-items: stretch;
  align-content: center;
  grid-auto-rows: 500px;
  grid-auto-flow: column;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
  width: 200px;
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

## Review

Great work! You have learned many new properties to use when creating a
layout using CSS Grid! Let’s review:

- `grid-template-areas` specifies grid named grid areas
- grid layouts are two-dimensional: they have a row, or inline, axis and
  a column, or block, axis.
- `justify-items` specifies how individual elements should spread across
  the row axis
- `justify-content` specifies how groups of elements should spread
  across the row axis
- `justify-self` specifies how a single element should position itself
  with respect to the row axis
- `align-items` specifies how individual elements should spread across
  the column axis
- `align-content` specifies how groups of elements should spread across
  the column axis
- `align-self` specifies how a single element should position itself
  with respect to the column axis
- `grid-auto-rows` specifies the height of rows added implicitly to the
  grid
- `grid-auto-columns` specifies the width of columns added implicitly to
  the grid
- `grid-auto-flow` specifies in which direction implicit elements should
  be created

This is a great time to experiment with the code in the code editor and
try any of the properties you want to practice more! When you’re ready,
move on!

### Instructions

**1.**

This is a great time to experiment with the code in the text editor to
visualize any of the properties covered in this lesson! Move on when
you’re ready.

### Solution

``` html
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <title>Savory</title>
    <link rel="stylesheet" href="reset.css" />
    <link rel="stylesheet" href="style.css" />
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
  </head>

  <body>

    <div class="container">

      <header>
        <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/savory.svg" class="logo">
      </header>

      <main>
        <div class="recipe a">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-1.png" />
          <h2>CHOCOLATE MOUSSE</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">20 mins</p>
          <p class="description">
            This delicious chocolate mousse will delight dinner guests of all ages!</p>
        </div>
        <div class="recipe b">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-2.png" />
          <h2>SMOKED LAMB WITH RICE</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">120 mins</p>
          <p class="description">
            Want to feel like your favorite relative came over and made you dinner? This comfort meal of smoked lamb and rice will quickly become a weekend favorite!
          </p>
        </div>
        <div class="recipe c">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-5.png" />
          <h2>GOAT CHEESE SALAD</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">25 mins</p>
          <p class="description">
            In addition to the full flavor of goat cheese, this salad includes kale, avocado, and farro to balance it out.</p>
        </div>
        <div class="recipe d">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-4.png" />
          <h2>CHICKEN SANDWICH</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">45 mins</p>
          <p class="description">
            We've packed a lot into this one - shredded cabbage, carmalized onions, deep-fried chicken, chipotle mayo, half-sour pickles, and a toasted sesame bun will leave you thoroughly satisfied!</p>
        </div>
        <div class="recipe e">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-3.png" />
          <h2>SWEET CHURROS</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">90 mins</p>
          <p class="description">
            Making this classic summer treat at home will remind you of a childhood spent in the park.</p>
        </div>
        <div class="recipe f">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-6.png" />
          <h2>BERRY PARFAIT</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">10 mins</p>
          <p class="description">
            This low-calorie, vitamin-packed parfait is great for breakfast, dessert, or post-workout!</p>
        </div>
        <div class="recipe e">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-3.png" />
          <h2>SWEET CHURROS</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">90 mins</p>
          <p class="description">
            Making this classic summer treat at home will remind you of a childhood spent in the park.</p>
        </div>
        <div class="recipe f">
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/image-6.png" />
          <h2>BERRY PARFAIT</h2>
          <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/time.svg" class="time" />
          <p class="mins">10 mins</p>
          <p class="description">
            This low-calorie, vitamin-packed parfait is great for breakfast, dessert, or post-workout!</p>
        </div>
      </main>

      <footer>
        <img src="https://content.codecademy.com/courses/learn-css-grid/lesson-ii/savory.svg" class="logo">
      </footer>

    </div>
  </body>

</html>
```

``` css
header, footer {
  background-color: #ffa500;
  text-align: center;
  min-width: 500px;
}

main {
  display: grid;
  grid-template-columns: 250px 250px;
  grid-template-rows: repeat(3, 450px);
  gap: 20px;
  margin-top: 44px;
  justify-items: center;
  justify-content: center;
  align-items: stretch;
  align-content: center;
  grid-auto-rows: 500px;
  grid-auto-flow: column;
}

h2 {
  font-family: Poppins;
  font-size: 18px;
  font-weight: 600;
  letter-spacing: 0.3px;
  text-align: left;
  color: #ffa500;
  padding: 10px 0px 10px 10px;
}

img {
  width: 100%;
  height: auto;
}

.recipe {
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.5);
  width: 200px;
}

.time {
  padding-left: 10px;
  padding-top: 10px;
  width: 20px;
  height: auto;
}

.mins {
  display: inline-block;
  font-family: Poppins;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.3px;
  text-align: left;
  color: #4a4a4a;
  position: relative;
  bottom: 5px;
}

.description {
  font-family: Work Sans;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.29;
  letter-spacing: 0.1px;
  text-align: left;
  color: #4a4a4a;
  padding: 10px 0px 10px 10px;
  border-top: 1px solid #4a4a4a;
}

.logo {
  width: 115px;
  height: 21.1px;
  object-fit: contain;
  padding: 20px;
}

.container {
  min-width: 500px;
  margin: auto;
}

footer {
  margin-top: 44px;
}
```

# PupSpa

Let’s practice what we’ve just learned about CSS Grid through building a
classic, grid-based, responsive web page. Your friend has just opened a
doggie daycare and grooming services shop, PupSpa. They would like a
simple web page to let customers know about their services.

We currently have an HTML document styled with CSS, but every `<div>`
appears in its own row. Let’s add some CSS grid properties to make parts
of the site appear more cohesive. Some of the properties we’ll be using
include:

- `display`
- `grid-template-rows`
- `grid-template-columns`
- `gap`
- `grid-column-start`
- `grid-column-end`

We’ll also cover a couple of the shorthand properties of these as well,
so let’s get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

1\.

First, let’s take a look at our **index.html** file. As you can see, we
have several `<div>`s that contain the content of our website.

Find the `<div>` with the class `grid` — this is our container grid and
the properties applied to it will determine the structure for the
content inside.

Next, locate the `<div>`s that share the class `box` and the `<div>`s
that share the class `testimonial`. Their positioning will change the
most when the new grid properties are added.

You can check this step off when you feel like you’re ready to proceed!

2\.

Now let’s look at our CSS. We have provided the initial styling. Now it
is up to you to add the necessary CSS grid properties to make sure the
content is properly laid out on the page. The first step will be to
initialize the grid, and then we’re going to specify the number and size
of our rows and columns.

In **style.css**, inside the `.grid` ruleset, set the `display` property
to `grid`.

3\.

Next, to specify the number and size of the rows, inside the `.grid`
ruleset, use the `grid-template-rows` property with a value of:
`100px 8fr 5fr 4fr 5fr 80px`. What changes do you see?

4\.

Still inside of the `.grid` ruleset, set `grid-template-columns` to six
equal sections using the `fr` measurement.

When you run your code, don’t panic! The CSS is just trying to organize
our content based off of our instructions. In a later section, we’ll go
over how to style our `<div>`s so they take up the necessary column
widths.

5\.

The code you added in the last two steps can be refactored into one
shorthand `grid-template` property.

1.  First, add the `grid-template` property to the `.grid` ruleset.

2.  Next, cut the values from the `grid-template-rows` and
    `grid-templates-columns` properties, and paste them as values for
    the new `grid-template` property.

3.  Then, delete the old `grid-template-rows` and
    `grid-templates-columns` declarations.

4.  Finally, the `grid-templates-columns` value can be refactored even
    further. Use the `repeat()` function to refactor the 6 `1fr` values.

6\.

Now, let’s fix that broken page layout. The content in the following
rulesets needs to extend across all six columns:

- `header`
- `.banner`
- `.about`
- `footer`

Add the `grid-column-start` and `grid-column-end` properties to these
rulesets, with values that start the content at the the first column and
end it at the sixth column.

7\.

The `grid-column-start` and `grid-column-end` properties can also be
written as a shorthand property. Using the `grid-column` property and
the `span` keyword, make:

1.  `.address` span the first 2 columns
2.  `.hours` span the 3rd and 4th columns
3.  `.call-us` span the 5th and 6th columns

8\.

In the `.one` and `.two` rulesets, use `grid-column` again to have each
`<div>` span three columns.

9\.

Let’s give our content some wiggle room. Return to the `.grid` ruleset,
add a `gap` property, and set its value to 20 pixels. Notice which parts
of the page have changed.

10\.

Lastly, the `<p>` elements inside of the grid boxes aren’t centered.
There are some fun ways to deal with this using some advanced CSS grid
properties that you’ll soon learn about. In the meantime, one way we can
take care of it with knowledge we already have is to make each of the
boxes its own grid! Since each `<p>` element has a `margin: auto`
declaration, they will be centered inside grid container.

To turn the boxes with the `<p>` elements into grids, use the `display`
properties in the below rulesets to turn them into grids:

- `header`
- `.about`
- `.box`
- `.testimonial`
- `footer`

### [Solution](pupspa)

# CSS Grid: Task Board

In this project, you will create a board of to-do items organized into
columns. All of the HTML and most of the CSS have been written for you,
but the grid property declarations have yet to be added.

In order to complete this project, you must know how to lay out the
structure of a grid’s rows and columns and place items within that grid
using CSS.

We recommend that you review our <a
href="https://www.codecademy.com/courses/learn-intermediate-css/lessons/css-grid-essentials/exercises/introduction-to-grids"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">CSS Grid Essentials</a> lesson before beginning.

The premade **index.html** and **style.css** files are displayed for
you. Click <a
href="https://content.codecademy.com/courses/learn-css-grid/project-ii/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this link</a> to see the completed
project in another tab. Have fun!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

1\.

We will be focusing on laying out the container `<div>` and the two
card-column `<div>`s within it. Here’s an abbreviated version of those
`<div>`s in **index.html**:

``` html
<div class="container">
    <div class="card-column future-projects">
        ...
    </div>
    <div class="card-column active-projects">
        ...
    </div>
</div>
```

Right now, the task board looks pretty cluttered. In **style.css**,
let’s make the `<div>` with class `container` a grid container so that
we can start to arrange these tasks better.

2\.

That didn’t have any immediate effect, but it allows us to apply grid
properties to the `container` div. Let’s start by giving the
`.container` ruleset three equally sized columns by using the
`grid-template-columns` property.

Note that only 2 of columns will be filled with content at this point.

3\.

Now, let’s add a gap of 20 pixels in between the columns.

4\.

Inside of each card column, there are 5 rows of task cards. We want them
to be arranged neatly within the columns as well, so let’s make each
card column a grid container.

In **style.css**, within the `.card-column` ruleset, add a declaration
that sets the `display` property to `grid`.

5\.

Each card column has a heading above the 5 task cards. We want the
heading to take up `20px` and each task card to take up `100px`.

Inside the `.card-column` ruleset, set the `grid-template-rows` property
to have 1 `20px` row and 5 `100px` rows. Use the `repeat` function to
make your code clean.

6\.

In order to have the task cards spaced evenly in each card, inside
`.card-column`, use the `align-content` property to set an even amount
of vertical space around each card.

7\.

Now we want to add another card column for Completed Projects to keep
track of all of the tasks we’ve already done. Let’s add a third card
column that’s like the other two. We already have our `container` set to
have space for three columns, so you just need to add the HTML.

In **index.html**, uncomment the code for the third card column.

8\.

We expect to complete a lot of projects, but we don’t know how many.
Since those projects will be added as task cards to the Completed
Projects column, it will be helpful to use implicit grid properties
instead of the explicit properties we have been using so far. We know
the first row with the heading should be explicitly `20px`, just as the
other heading rows are. Every additional row, if it exists, should be
implicitly set.

Inside `.card-column`, use the `grid-auto-rows` property to implicitly
set rows to `100px`.

9\.

Good job! Now, feel free to play around with the layout of this site,
using the other CSS properties you’ve learned. Once you’re satisfied
with your work, press the Next Button to move on.

### [Solution](css-grid-task-board)

# Sizing Elements

## Relative Measurements

Modern technology allows users to browse the Internet via multiple
devices, such as desktop monitors, mobile phones, tablets, and more.
Devices of different screen sizes, however, pose a problem for web
developers: how can we ensure that a website is readable and visually
appealing across all devices, regardless of screen size?

The answer: *responsive design*! Responsive design refers to the ability
of a website to resize and reorganize its content based on:

1.  The size of other content on the website.
2.  The size of the screen the website is being viewed on.

In this lesson, we’ll size HTML content *relative* to other content on a
website.

You’ve probably noticed the unit of
<a href="https://en.wikipedia.org/wiki/Pixel"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">pixels</a>, or `px`, used in websites.
Pixels are used to size content to *exact* dimensions. For example, if
you want a div to be exactly 500 pixels wide and 100 pixels tall, then
the unit of `px` can be used. Pixels, however, are fixed,
<a href="https://www.google.com/search?q=hard%20coding"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">hard coded</a> values. When a screen size
changes (like switching from landscape to portrait view on a phone),
elements sized with pixels can appear too small, overflow the screen, or
become completely illegible.

With CSS, you can avoid hard coded measurements and use *relative
measurements* instead. Relative measurements offer an advantage over
hard coded measurements, as they allow for the proportions of a website
to remain intact regardless of screen size or layout.

### Instructions

The website in the browser to the right uses many relative measurements.
Resize the page by increasing and decreasing the browser’s width
repeatedly. What do you notice about how the content on the page
responds to the changes in width?

When you’re done resizing the browser component, proceed to the next
exercise.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <title>Bana's Travel Blog</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Merriweather:300,400" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="reset.css">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div id="banner">
    <h1>Bana's Travel Blog</h1>
  </div>
  <div id="blog">
    <div class="post">
      <h2>Saturday Market</h2>
      <h3>January 7th</h3>
      <strong class="opening-line">On Saturday, Dilara took us to the market.</strong>
      <p>It is a wonderfully eclectic mix of goods from all over the world - delightfully random. I dusted off my bargaining skills to buy a metal bracelet with camels on it, and Maggie bought a lapis lazuli necklace from Afghanistan. In the evening, we walked along Gulf Road towards the marina, passed through Marina Mall, and ate dinner at a wonderful little cafe that we will definitely be frequenting. I’ve developed a slight obsession with lentil soul... maybe it’s because I miss Foco’s Indian lentil chili.</p>
      <div class="image-container">
        <img src="market.jpg" />
      </div>
      <p>We took a catamaran from the marina to Failaka Island, where we got to explore a bit, relax on the beach, and go swimming. The water in the Gulf is incredibly still; I haven’t seen a wave yet, and when you look out on the horizon it seems to go forever. Something about the color of the water and maybe the dust in the air make it seem hazier than the Atlantic coast. I have some cool pictures of the city skyline as we returned on the boat.</p>
      <p>That night, I hung out in a cafe with two friends, drinking traditional lemonade with mint. It’s delicious; maybe I should send in a flavor suggestion to Morano Gelato? Then we drove around the city for a while. Cruising around is a really valid way to spend the time when a tank of gas costs about seven bucks. </p>
    </div>
    <div class="images">
      <div class="image-container">
        <img src="camel.jpg" />
      </div><!--
      Adding comment to ensure no whitespace between inline-block div elements from HTML file.
      --><div class="image-container">
        <img src="map.png" />
      </div>
    </div>
  </div>
  <footer>
    <span>&copy; Bana’s Travel Blog</span>
  </footer>
</body>
</html>
```

``` css
/* Universal Styles */

html {
  font-size: 16px;
}

body {
  background-color: white;
}

.image-container {
  overflow: hidden;
}

.image-container img {
  display: block;
  max-width: 100%;
  height: auto;
}

/* Banner Section */

#banner {
  height: 46rem;
  background-image: url('camel-background.png');
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 3.75rem;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  width: 86%;
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  width: 52%;
  margin-top: 12.5%;
  margin-bottom: 7.5%;
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.875rem;
  margin-bottom: 1.5rem;
}

.post h3 {
  font-size: 1.125rem;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post p,
.post .image-container {
  margin-bottom: 2rem;
}

.post .image-container {
  width: 100%;
}

/* Blog Images */

.images {
  margin-bottom: 20%;
}

.images .image-container {
  display: inline-block;
  width: 50%;
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 1.125rem;
  color: #999999;
  text-align: center;
}
```

## Em

Incorporating relative sizing starts by using units other than pixels.
One unit of measurement you can use in CSS to create relatively-sized
content is the *em*, written as `em` in CSS.

Historically, the em represented the width of a capital letter M in the
typeface and size being used. That is no longer the case.

Today, the em represents the font-size of the current element or the
default base font-size set by the browser if none is given. For example,
if the base font of a browser is 16 pixels (which is normally the
default size of text in a browser), then 1 em is equal to 16 pixels. 2
ems would equal 32 pixels, and so on.

Let’s take a look at two examples that show how em can be used in CSS.

``` css
.heading {
  font-size: 2em;
}
```

In the example above, no base font has been specified, therefore the
font size of the `heading` element will be set relative to the default
font size of the browser. Assuming the default font size is 16 pixels,
then the font size of the `heading` element will be 32 pixels.

``` css
.splash-section {
  font-size: 18px;
}
 
.splash-section h1 {
  font-size: 1.5em;
}
```

The example above shows how to use ems without relying on the default
font size of the browser. Instead, a base font size (`18px`) is defined
for all text within the `splash-section` element. The second CSS rule
will set the font size of all `h1` elements inside of `splash-section`
relative to the base font of `splash-section` (18 pixels). The resulting
font size of `h1` elements will be 27 pixels.

### Instructions

**1.**

In **style.css**, set the font size in `#banner h1` (“Bana’s Travel
Blog”) to `1.5em`.

**2.**

Set the font size in `.post h2` (“Saturday Market”) to `1.75em`.

**3.**

Set the font size in `.post h3` to `1.25em`.

**4.**

Set the font size in the footer (“© Bana’s Travel Blog”) to `0.75em`.

### Solution

``` css
/* Universal Styles */



body {
  background-color: white;
}

.image-container {
  
}

.image-container img {
  
}

/* Banner Section */

#banner {
  
  background-image: url('camel-background.png');
  background-position: center;
  
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 1.5em;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  
  

  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.75em;
}

.post h3 {
  font-size: 1.25em;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post .image-container {
  
}

/* Blog Images */

.images {
  
}

.images .image-container {
  display: inline-block;
  
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 0.75em;
  color: #999999;
  text-align: center;
}
```

## Rem

The second relative unit of measurement in CSS is the *rem*, coded as
`rem`.

Rem stands for *root em*. It acts similar to em, but instead of checking
parent elements to size font, it checks the *root element*. The root
element is the `<html>` tag.

Most browsers set the font size of `<html>` to 16 pixels, so by default
rem measurements will be compared to that value. To set a different font
size for the root element, you can add a CSS rule.

``` css
html {
  font-size: 20px;
}
 
h1 {
  font-size: 2rem;
}
```

In the example above, the font size of the root element, `<html>`, is
set to 20 pixels. All subsequent rem measurements will now be compared
to that value and the size of `h1` elements in the example will be 40
pixels.

One advantage of using rems is that all elements are compared to the
same font size value, making it easy to predict how large or small font
will appear. If you are interested in sizing elements consistently
across an entire website, the rem measurement is the best unit for the
job. If you’re interested in sizing elements in comparison to other
elements nearby, then the em unit would be better suited for the job.

### Instructions

**1.**

In **style.css**, add a new rule on line 3 that sets the font size of
the root element to 16 pixels.

**2.**

Let’s update the font sizes you set in the previous exercise to use
`rem` instead of `em`.

First, change the font size in `#banner h1` to `3.75rem`.

**3.**

Set the font size in `.post h2` to `1.875rem`.

**4.**

Set the font size in `.post h3` to `1.125rem`.

**5.**

Set the font size of the footer to `1.125rem`.

### Solution

``` css
/* Universal Styles */

html {
  font-size: 16px;
}

body {
  background-color: white;
}

.image-container {
  
}

.image-container img {
  
}

/* Banner Section */

#banner {
  
  background-image: url('camel-background.png');
  background-position: center;
  
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 3.75rem;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  
  

  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.875rem;
  
}

.post h3 {
  font-size: 1.125rem;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post .image-container {
  
}

/* Blog Images */

.images {
  
}

.images .image-container {
  display: inline-block;
  
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 1.125rem;
  color: #999999;
  text-align: center;
}
```

## Percentages: Height & Width

To size non-text HTML elements relative to their parent elements on the
page you can use *percentages*.

Percentages are often used to size box-model values, like width and
height, padding, border, and margins. They can also be used to set
positioning properties (top, bottom, left, right).

To start, let’s size the height and width of an element using
percentages.

``` css
.main {
  height: 300px;
  width: 500px;
}
 
.main .subsection {
  height: 50%;
  width: 50%;
}
```

In the example above, `.main` and `.subsection` each represent divs. The
`.subsection` div is nested within the `.main` div. Note that the
dimensions of the parent div (`.main`) have been set to a height of 300
pixels and a width of 500 pixels.

When percentages are used, elements are sized relative to the dimensions
of their parent element (also known as a container). Therefore, the
dimensions of the `.subsection` div will be 150 pixels tall and 250
pixels wide. Be careful, a child element’s dimensions may be set
erroneously if the dimensions of its parent element aren’t set first.

**Note:** Because the box model includes padding, borders, and margins,
setting an element’s `width` to `100%` may cause content to overflow its
parent container. While tempting, `100%` should only be used when
content will not have padding, border, or margin.

### Instructions

**1.**

Currently, the blog takes up the full width of the body. Let’s modify
this so that it doesn’t extend to fill the full width.

In **style.css**, set the width in `#blog` to `86%`.

This will responsively set the entire blog’s container to 86% of the
full width of the body.

**2.**

Great! Resize the browser’s width again. Notice that the blog’s text
becomes illegible at smaller widths.

To fix this, set the width in `#blog .post` to `52%`.

This will ensure that the text fills only 52% of its container’s
(`#blog`) width. Resize the browser now and notice how the text remains
legible.

**3.**

Now set the width in `.post .image-container` to `100%`. This will make
sure the image’s container is always the full width of the blog post
(`.post`).

**4.**

Scroll to the bottom of the web page. Notice that there are two images.
We’d like to display these images next to each other on the page, with
equal width.

Set the width in `.images .image-container` to `50%`. This will give
each image in `.images` equal width.

Don’t worry if the images still look distorted at the moment. You’ll
improve their appearance in a later exercise.

### Solution

``` css
/* Universal Styles */

html {
  font-size: 16px;
}

body {
  background-color: white;
}

.image-container {
  
}

.image-container img {
  
}

/* Banner Section */

#banner {
  
  background-image: url('camel-background.png');
  background-position: center;
  
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 3.75rem;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  width: 86%;
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  width: 52%;
  

  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.875rem;
  
}

.post h3 {
  font-size: 1.125rem;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post .image-container {
  width: 100%;
}

/* Blog Images */

.images {
  
}

.images .image-container {
  display: inline-block;
  width: 50%;
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 1.125rem;
  color: #999999;
  text-align: center;
}
```

## Percentages: Padding & Margin

Percentages can also be used to set the padding and margin of elements.

When height and width are set using percentages, you learned that the
dimensions of child elements are calculated based on the dimensions of
the parent element.

When percentages are used to set padding and margin, however, they are
calculated based only on the *width* of the parent element.

For example, when a property like `margin-left` is set using a
percentage (say `50%`), the element will be moved halfway to the right
in the parent container (as opposed to the child element receiving a
margin half of its parent’s margin).

Vertical padding and margin are also calculated based on the width of
the parent. Why? Consider the following scenario:

1.  A container div is defined, but its height is not set (meaning it’s
    flat).
2.  The container then has a child element added within. The child
    element *does* have a set height. This causes the height of its
    parent container to stretch to that height.
3.  The child element requires a change, and its height is modified.
    This causes the parent container’s height to also stretch to the new
    height. This cycle occurs endlessly whenever the child element’s
    height is changed!

In the scenario above, an unset height (the parent’s) results in a
constantly changing height due to changes to the child element. This is
why vertical padding and margin are based on the width of the parent,
and not the height.

**Note:** When using relative sizing, ems and rems should be used to
size text and dimensions on the page related to text size (i.e. padding
around text). This creates a consistent layout based on text size.
Otherwise, percentages should be used.

### Instructions

**1.**

Let’s size the height of the banner relative to the root element’s font
size.

In **style.css**, for the `#banner` ruleset, add a `height` property and
assign it to `46rem`.

**Note:** The root element’s font size is 16 pixels, meaning that
`46rem` will result in a height of 736 pixels.

**2.**

Set the top margin in `#blog .post` to `12.5%`.

**3.**

Set the bottom margin in `#blog .post` to `7.5%`.

**4.**

Set the bottom margin in `.images` to `20%`.

### Solution

``` css
/* Universal Styles */

html {
  font-size: 16px;
}

body {
  background-color: white;
}

.image-container {
  
}

.image-container img {
  
}

/* Banner Section */

#banner {
  height: 46rem;
  background-image: url('camel-background.png');
  background-position: center;
  
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 3.75rem;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  width: 86%;
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  width: 52%;
  margin-top: 12.5%;
  margin-bottom: 7.5%;
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.875rem;
  
}

.post h3 {
  font-size: 1.125rem;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post .image-container {
  width: 100%;
}

/* Blog Images */

.images {
  margin-bottom: 20%;
}

.images .image-container {
  display: inline-block;
  width: 50%;
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 1.125rem;
  color: #999999;
  text-align: center;
}
```

## Width: Minimum & Maximum

Although relative measurements provide consistent layouts across devices
of different screen sizes, elements on a website can lose their
integrity when they become too small or large. You can limit how wide an
element becomes with the following properties:

1.  `min-width` — ensures a minimum width for an element.
2.  `max-width` — ensures a maximum width for an element.

``` css
p {
  min-width: 300px;
  max-width: 600px;
}
```

In the example above, when the browser is resized, the width of
paragraph elements will not fall below 300 pixels, nor will their width
exceed 600 pixels.

When a browser window is narrowed or widened, text can become either
very compressed or very spread out, making it difficult to read. These
two properties ensure that content is legible by limiting the minimum
and maximum widths.

**Note**: The unit of pixels is used to ensure hard limits on the
dimensions of the element(s).

### Instructions

**1.**

Resize the browser to the right. Notice that the text on the web page
can become difficult to read. Let’s limit the text’s width to keep it
legible.

In **style.css**, create a CSS rule that sets the minimum width of all
paragraphs to 200 pixels and run your code.

Now, resize your browser (make it narrower) and notice that the text no
longer compresses as much as it did before.

### Solution

``` css
/* Universal Styles */

html {
  font-size: 16px;
}

body {
  background-color: white;
}

.image-container {
  
}

.image-container img {
  
}

/* Banner Section */

p {
  min-width: 200px;
}

#banner {
  height: 46rem;
  background-image: url('camel-background.png');
  background-position: center;
  
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 3.75rem;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  width: 86%;
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  width: 52%;
  margin-top: 12.5%;
  margin-bottom: 7.5%;
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.875rem;
  
}

.post h3 {
  font-size: 1.125rem;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post .image-container {
  width: 100%;
}

/* Blog Images */

.images {
  margin-bottom: 20%;
}

.images .image-container {
  display: inline-block;
  width: 50%;
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 1.125rem;
  color: #999999;
  text-align: center;
}
```

## Height: Minimum & Maximum

You can also limit the minimum and maximum *height* of an element.

1.  `min-height` — ensures a minimum height for an element’s box.
2.  `max-height` — ensures a maximum height for an element’s box.

``` css
p {
  min-height: 150px;
  max-height: 300px;
}
```

In the example above, the height of all paragraphs will not shrink below
150 pixels and the height will not exceed 300 pixels.

What will happen to the contents of an element if the `max-height`
property is set too low for that element? It’s possible that content
will overflow outside of the element, resulting in content that is not
legible.

### Instructions

**1.**

Again, resize your browser (stretch it out). Notice that the paragraph’s
text can become overly spread out (i.e. a small height). Let’s limit the
height to keep the text legible.

In **style.css**, set the minimum height of all paragraphs to 200
pixels.

Resize your browser once more and notice that the text no longer spreads
out as much as it did before.

### Solution

``` css
/* Universal Styles */

html {
  font-size: 16px;
}

body {
  background-color: white;
}

.image-container {
  
}

.image-container img {
  
}

/* Banner Section */

p {
  min-width: 200px;
  min-height: 200px;
}

#banner {
  height: 46rem;
  background-image: url('camel-background.png');
  background-position: center;
  
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 3.75rem;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  width: 86%;
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  width: 52%;
  margin-top: 12.5%;
  margin-bottom: 7.5%;
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.875rem;
  
}

.post h3 {
  font-size: 1.125rem;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post .image-container {
  width: 100%;
}

/* Blog Images */

.images {
  margin-bottom: 20%;
}

.images .image-container {
  display: inline-block;
  width: 50%;
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 1.125rem;
  color: #999999;
  text-align: center;
}
```

## Scaling Images and Videos

Many websites contain a variety of different media, like images and
videos. When a website contains such media, it’s important to make sure
that it is scaled proportionally so that users can correctly view it.

``` css
.container {
  width: 50%;
  height: 200px;
  overflow: hidden;
}
 
.container img {
  max-width: 100%;
  height: auto;
  display: block;
}
```

In the example above, `.container` represents a container div. It is set
to a width of `50%` (half of the browser’s width, in this example) and a
height of 200 pixels. Setting `overflow` to `hidden` ensures that any
content with dimensions larger than the container will be hidden from
view.

The second CSS rule ensures that images scale with the width of the
container. The `height` property is set to `auto`, meaning an image’s
height will *automatically* scale proportionally with the width.
Finally, the last line will display images as block level elements
(rather than inline-block, their default state). This will prevent
images from attempting to align with other content on the page (like
text), which can add unintended margin to the images.

It’s worth memorizing the entire example above. It represents a *very
common* design pattern used to scale images and videos proportionally.

**Note:** The example above scales the width of an image (or video) to
the width of a container. If the image is larger than the container, the
vertical portion of the image will overflow and will not display. To
swap this behavior, you can set `max-height` to `100%` and `width` to
`auto` (essentially swapping the values). This will scale the *height*
of the image with the height of the container instead. If the image is
larger than the container, the horizontal portion of the image will
overflow and not display.

### Instructions

**1.**

Take a look at the images on the web page. Notice that they currently
display incorrectly (too large). Let’s fix that.

First, in **style.css**, set the `overflow` property in
`.image-container` to `hidden`. Run your code.

Take a look at the images once more. At this point, the images partially
display. In reality, what we’ve done is constrain them to the dimensions
of their container (`.image-container`). Any part of the image that
overflows out of the container will be hidden from view. This will set
us up to scale them proportionally.

**2.**

Resize the width of the browser back and forth. Notice that the images
expand and contract to show more (or less) of the image. Instead, let’s
display the full image at all times.

In **style.css**, set the maximum width in `.image-container img` to
`100%`. This will ensure the full image is always displayed.

**3.**

Great work! Take a look at the images on the web page again — they have
been greatly improved!

Next, we’ll want to make sure the images automatically remain in
proportion when the browser is resized.

In `.image-container img`, set the height to `auto`.

**4.**

Finally, within the same CSS rule, set the `display` to `block`. This
will instruct the images to behave as block-level elements and
facilitate scaling (as opposed to their default inline behavior).

### Solution

``` css
/* Universal Styles */

html {
  font-size: 16px;
}

body {
  background-color: white;
}

.image-container {
  overflow: hidden;
}

.image-container img {
  max-width: 100%;
  height: auto;
  display: block;
}

/* Banner Section */

p {
  min-width: 200px;
  min-height: 200px;
}

#banner {
  height: 46rem;
  background-image: url('camel-background.png');
  background-position: center;
 
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 3.75rem;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  width: 86%;
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  width: 52%;
  margin-top: 12.5%;
  margin-bottom: 7.5%;
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.875rem;
  
}

.post h3 {
  font-size: 1.125rem;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post .image-container {
  width: 100%;
}

/* Blog Images */

.images {
  margin-bottom: 20%;
}

.images .image-container {
  display: inline-block;
  width: 50%;
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 1.125rem;
  color: #999999;
  text-align: center;
}
```

## Scaling Background Images

Background images of HTML elements can also be scaled responsively using
CSS properties.

``` css
body {
  background-image: url('#');
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}
```

In the example above, the first CSS declaration sets the background
image (`#` is a placeholder for an image URL in this example). The
second declaration instructs the CSS compiler to not repeat the image
(by default, images will repeat). The third declaration centers the
image within the element.

The final declaration, however, is the focus of the example above. It’s
what scales the background image. The image will *cover* the entire
background of the element, all while keeping the image in proportion. If
the dimensions of the image exceed the dimensions of the container then
only a portion of the image will display.

### Instructions

**1.**

In **style.css**, set the `background-size` property in `#banner` to
`cover`.

### Solution

``` css
/* Universal Styles */

html {
  font-size: 16px;
}

body {
  background-color: white;
}

.image-container {
  overflow: hidden;
}

.image-container img {
  max-width: 100%;
  height: auto;
  display: block;
}

/* Banner Section */

p {
  min-width: 200px;
  min-height: 200px;
}

#banner {
  height: 46rem;
  background-image: url('camel-background.png');
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 3.75rem;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  width: 86%;
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  width: 52%;
  margin-top: 12.5%;
  margin-bottom: 7.5%;
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.875rem;
  
}

.post h3 {
  font-size: 1.125rem;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post .image-container {
  width: 100%;
}

/* Blog Images */

.images {
  margin-bottom: 20%;
}

.images .image-container {
  display: inline-block;
  width: 50%;
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 1.125rem;
  color: #999999;
  text-align: center;
}
```

## Review: Relative Measurements

Great work! You learned how to size elements on a website relative to
other elements on the page.

Let’s review what you learned:

- Content on a website can be sized relative to other elements on the
  page using *relative measurements*.
- The unit of `em` sizes font relative to the font size of a parent
  element.
- The unit of `rem` sizes font relative to the font size of a root
  element. That root element is the `<html>` element.
- Percentages are commonly used to size box-model features, like the
  width, height, padding, or margin of an element.
- When percentages are used to size width and height, child elements
  will be sized relative to the dimensions of their parent (remember
  that parent dimensions must first be set).
- Percentages can be used to set padding and margin. Horizontal and
  vertical padding and margin are set relative to the width of a parent
  element.
- The minimum and maximum width of elements can be set using `min-width`
  and `max-width`.
- The minimum and maximum height of elements can be set using
  `min-height` and `max-height`.
- When the height of an image or video is set, then its width can be set
  to `auto` so that the media scales proportionally. Reversing these two
  properties and values will also achieve the same result.
- A background image of an HTML element will scale proportionally when
  its `background-size` property is set to `cover`.

Relative units of measurement are a first step towards incorporating
responsive design in a website. When combined with more advanced
responsive techniques, you can create a seamless user experience
regardless of a device’s screen size.

### Instructions

Take some time to experiment with your new knowledge of relative
measurements in **style.css**. When you’re done, proceed to the next
unit.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <title>Bana's Travel Blog</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Merriweather:300,400" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="reset.css">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div id="banner">
    <h1>Bana's Travel Blog</h1>
  </div>
  <div id="blog">
    <div class="post">
      <h2>Saturday Market</h2>
      <h3>January 7th</h3>
      <strong class="opening-line">On Saturday, Dilara took us to the market.</strong>
      <p>It is a wonderfully eclectic mix of goods from all over the world - delightfully random. I dusted off my bargaining skills to buy a metal bracelet with camels on it, and Maggie bought a lapis lazuli necklace from Afghanistan. In the evening, we walked along Gulf Road towards the marina, passed through Marina Mall, and ate dinner at a wonderful little cafe that we will definitely be frequenting. Ive developed a slight obsession with lentil soul... maybe its because I miss Focos Indian lentil chili.</p>
      <div class="image-container">
        <img src="market.jpg" />
      </div>
      <p>We took a catamaran from the marina to Failaka Island, where we got to explore a bit, relax on the beach, and go swimming. The water in the Gulf is incredibly still; I havent seen a wave yet, and when you look out on the horizon it seems to go forever. Something about the color of the water and maybe the dust in the air make it seem hazier than the Atlantic coast. I have some cool pictures of the city skyline as we returned on the boat.</p>
      <p>That night, I hung out in a cafe with two friends, drinking traditional lemonade with mint. Its delicious; maybe I should send in a flavor suggestion to Morano Gelato? Then we drove around the city for a while. Cruising around is a really valid way to spend the time when a tank of gas costs about seven bucks. </p>
    </div>
    <div class="images">
      <div class="image-container">
        <img src="camel.jpg" />
      </div><!--
      Adding comment to ensure no whitespace between inline-block div elements from HTML file.
      --><div class="image-container">
        <img src="map.png" />
      </div>
    </div>
  </div>
  <footer>
    <span>&copy; Banas Travel Blog</span>
  </footer>
</body>
</html>
```

``` css
/* Universal Styles */

html {
  font-size: 16px;
}

body {
  background-color: white;
}

.image-container {
  overflow: hidden;
}

.image-container img {
  max-width: 100%;
  height: auto;
  display: block;
}

/* Banner Section */

p {
  min-width: 200px;
  min-height: 200px;
}

#banner {
  height: 46rem;
  background-image: url('camel-background.png');
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

#banner h1 {
  font-size: 3.75rem;
  font-family: 'Roboto', sans-serif;
  font-weight: 300;
  color: white;
}

/* Blog Post */

#blog {
  width: 86%;
  margin: auto;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#blog .post {
  width: 52%;
  margin-top: 12.5%;
  margin-bottom: 7.5%;
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: 'Merriweather', serif;
  font-weight: 300;
  font-size: 1rem;
  text-align: center;
  line-height: 1.8;
  color: #444444;
}

.post h2 {
  font-size: 1.875rem;
  
}

.post h3 {
  font-size: 1.125rem;
  color: #999999;
}

.post .opening-line {
  margin-top: 4.1875rem;
  margin-bottom: 1.5rem;
  color: black;
  font-weight: bold;
}

.post .image-container {
  width: 100%;
}

/* Blog Images */

.images {
  margin-bottom: 20%;
}

.images .image-container {
  display: inline-block;
  width: 50%;
}

/* Footer */

footer {
  padding: 4rem 0;
  border-top: 1px solid #999999;
  font-family: 'Roboto', sans-serif;
  font-size: 1.125rem;
  color: #999999;
  text-align: center;
}
```

# Media Queries

## Responsive Web Design

When someone visits a website, it’s possible they are viewing it on a
phone, tablet, computer, or even a TV monitor. Because screen sizes can
vary greatly across different devices, it’s important for websites to
resize and reorganize their content to best fit screens of all sizes.

When a website doesn’t respond to different screen sizes, the website
may look odd or become indecipherable on certain devices. This usually
occurs on smaller screens, like phones. When a website responds to the
size of the screen it’s viewed on, it’s called a *responsive* website.

Because websites can be displayed on thousands of different screen
sizes, they must be able to respond to a change in screen size and adapt
the content so that users can access it.

### Instructions

Let’s take a look at a website that does not respond to different screen
sizes.

1.  First, visit <a
    href="https://content.codecademy.com/courses/freelance-1/unit-5/globe-book-store/index.html"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">this site</a>.
2.  Then resize the width of your browser to simulate a smaller screen
    size. Note how the content on the web page does not shrink as you
    resize the browser’s width.

In contrast, let’s take a look at a responsive website.

1.  First, visit <a
    href="https://content.codecademy.com/courses/freelance-1/unit-5/globe-book-store/index-responsive.html"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">this site</a>.
2.  Again, resize the width of your browser and note how the content on
    the web page resizes and reorganizes itself.

## Viewport Meta Tag

Thus far, we have been learning about creating responsive web designs
with CSS. However, in order for us to enable this responsive CSS to
work, we need to get familiar with the HTML viewport meta tag!

Let’s start with the *viewport*, which is the total viewable area for a
user; this area varies depending on device. The viewport is smaller on a
mobile device and larger on a desktop.

Based on the size of the viewport, the *meta tag* (`<meta>`) is used to
instruct the browser on how to render the webpage’s scale and
dimensions. For instance, say if a web page is 960px and the device is
320px wide. Adding the viewport meta tag will squish the content down
until it is 320px — there is no need for the user to zoom out and view
the whole page!

Inside the `<head>` element, we will find where the `<meta>` tag syntax
is implemented:

``` css
<!DOCTYPE html> 
<html lang="en"> 
  <head> 
    ...
    <meta name="viewport" content="width=device-width, initial-scale=1">
    ...
  </head> 
```

We can break down the added `<meta>` tag into the following essential
components:

- the `name="viewport"` attribute: tells the browser to display the web
  page at the same width as its screen
- the `content` attribute: defines the values for the `<meta>` tag,
  including `width` and `initial-scale`
- the `width=device-width` key-value pair: controls the size of the
  viewport in which it sets the width of the viewport to equal the width
  of the device
- the `initial-scale=1` key-value pair: sets the initial zoom level
  (Read more about scale at <a
  href="https://developer.mozilla.org/en-US/docs/Web/HTML/Viewport_meta_tag#viewport_basics"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN’s viewport documentation</a>)

The viewport meta tag allows our web pages to be responsive and adapt a
site’s contents to the users’ screen size. We’ll explore more on
actually implementing this responsiveness in the later exercises, but
for now, we need to first include the meta tag in our HTML file!

### Instructions

**1.**

At the top of `index.html`, create a viewport meta tag. Be sure to
include the `name`, `content` properties, and other appropriate values.

### Solution

``` css
<html>

<head>
  <title>Amazing Space</title>
  <!-- Add your code below: -->
  <meta name = "viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/reset.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Space+Mono:400,700" rel="stylesheet">
</head>

<body>
  <header>
    <div class="page-title">
      <div class="logo"></div>
      <h1>Amazing Space</h1>
      <h5>At Amazing Space, there's always space for you.&trade;</h5>
    </div>
  </header>
  <div class="main">
    <p class="page-description clearfix">
      Otherworldly views, uncompromising service, unparallelled luxury. This is Amazing Space, the world's first, and finest, space adventure company. With private and group voyages embarking weekly, you can book your tickets in advance or on the fly.
      <a class="learn-more" href="#">Learn More >></a>
    </p>
    <div class="gallery">
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space01.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space02.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space03.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space04.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space05.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space06.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space07.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space08.jpg">
      </figure>
    </div>
  </div>
  <nav class="footer">
    <ul>
      <li>ABOUT</li>
      <li>MISSIONS</li>
      <li>ARCHIVE</li>
    </ul>
    <div class="contact-btn">
      <a>CONTACT US</a>
    </div>
  </nav>
</body>

</html>
```

## Media Queries

CSS uses *media queries* to adapt a website’s content to different
screen sizes. With media queries, CSS can detect the size of the current
screen and apply different CSS styles depending on the width of the
screen.

``` css
@media only screen and (max-width: 480px) {
  body {
    font-size: 12px;
  }
}
```

The example above demonstrates how a media query is applied. The media
query defines a rule for screens smaller than 480 pixels (approximately
the width of many smartphones in
<a href="https://en.wikipedia.org/wiki/Page_orientation"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">landscape</a> orientation).

Let’s break this example down into its parts:

1.  `@media` — This keyword begins a media query rule and instructs the
    CSS compiler on how to parse the rest of the rule.
2.  `only screen` — Indicates what types of devices should use this
    rule. In early attempts to target different devices, CSS
    incorporated different media types (screen, print, handheld). The
    rationale was that by knowing the media type, the proper CSS rules
    could be applied. However, “handheld” and “screen” devices began to
    occupy a much wider range of sizes and having only one CSS rule per
    media device was not sufficient. `screen` is the media type always
    used for displaying content, no matter the type of device. The
    `only` keyword is added to indicate that this rule only applies to
    one media type (`screen`).
3.  `and (max-width : 480px)` — This part of the rule is called a *media
    feature*, and instructs the CSS compiler to apply the CSS styles to
    devices with a width of 480 pixels or smaller. Media features are
    the conditions that must be met in order to render the CSS within a
    media query.
4.  CSS rules are nested inside of the media query’s curly braces. The
    rules will be applied when the media query is met. In the example
    above, the text in the `body` element is set to a `font-size` of
    `12px` when the user’s screen is less than 480px.

### Instructions

**1.**

At the bottom of **style.css**, write a media query for a `max-width` of
`480px`.

This will allow us to shrink the width of the `.page-title` element on
smaller screens.

**2.**

When the screen is less than `480px` wide, give the `.page-title` class
a `width` of `270px`.

This will make the `.page-title` element appear more clearly on small
screens. Test your code by resizing the browser.

### Solution

``` css
html,
body {
  max-width: 1200px;
  margin: auto;
  font-family: "Space Mono", sans-serif;
  font-size: 18px;
  line-height: 1.4em;
  color: GhostWhite;
}

body {
  background-image: url("../img/space.jpg");
  height: 100%;
  background-attachment: fixed;
  background-size: cover;
}

.clearfix {
  clear: both;
}

/* Title and Description */

.page-title {
  text-align: center;
  margin: auto;
  line-height: 2em;
}

.logo {
  height: 80px;
  width: 80px;
  background-image: url("../img/spaceship.png");
  background-size: contain;
  background-repeat: no-repeat;
  display: inline-block;
  position: relative;
  top: 1em;
}

.page-title h1 {
  display: inline-block;
}

.main {
  text-align: center;
}

.page-description {
  font-size: 0.8rem;
  padding: 30px;
}

.learn-more {
  color: DarkOrange;
  text-decoration: none;
  display: block;
  margin: 25px 0 0 0;
  font-weight: bold;
}

/* Gallery */

.gallery {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 20px;
}

.gallery-item {
  margin: 20px;
}

.gallery-item .thumbnail {
  width: 240px;
  border: 2px solid GhostWhite;
  border-radius: 4px;
}

/* Footer Navigation */

nav {
  margin-top: 30px;
}

nav ul {
  display: block;
}

nav li {
  display: inline;
  margin: 0 20px 0 0;
  color: GhostWhite;
}

nav a {
  line-height: 60px;
  border: 1px solid GhostWhite;
  padding: 7px;
  border-radius: 4px;
  color: DarkOrange;
  text-decoration: none;
}

.contact-btn {
  cursor: pointer;
  margin: 20px 30px;
  text-align: center;
}

.contact-btn a:active {
  position: relative;
  bottom: 2px;
}


@media only screen and (max-width: 480px) {
  .page-title {
    width: 270px;
  }
}
```

## Range

Specific screen sizes can be targeted by setting multiple width and
height media features. `min-width` and `min-height` are used to set the
minimum width and minimum height, respectively. Conversely, `max-width`
and `max-height` set the maximum width and maximum height, respectively.

By using multiple widths and heights, a range can be set for a media
query.

``` css
@media only screen and (min-width: 320px) and (max-width: 480px) {
    /* ruleset for 320px - 480px */
}
```

The example above would apply its CSS rules only when the screen size is
between 320 pixels and 480 pixels. Notice the use of a second `and`
keyword after the `min-width` media feature. This allows us to chain two
requirements together.

The example above can be written using two separate rules as well:

``` css
@media only screen and (min-width: 320px) { 
    /* ruleset for >= 320px */
}
 
 
@media only screen and (min-width: 480px) { 
    /* ruleset for >= 480px */
}
```

The first media query in the example above will apply CSS rules when the
size of the screen meets or exceeds 320 pixels. The second media query
will then apply CSS rules when the size of the screen meets or exceeds
480 pixels, meaning that it can override CSS rules present in the first
media query or apply additional CSS rules that are not already present
in the first.

Both examples above are valid, and it is likely that you will see both
patterns used when reading another developer’s code.

### Instructions

**1.**

Let’s make the gallery images appear larger when the screen size is
small to medium size.

Write one `@media` query for screen sizes with a range between `320px`
and `480px`. Use `min-width` and `max-width` to define the range.

**2.**

Inside the media query, select the thumbnails within the gallery with
`.gallery-item .thumbnail` and give them a `width` of `95%`.

You should notice that the gallery images appear wider when the screen
size is between 320 and 480 pixels wide.

### Solution

``` css
html,
body {
  max-width: 1200px;
  margin: auto;
  font-family: "Space Mono", sans-serif;
  font-size: 18px;
  line-height: 1.4em;
  color: GhostWhite;
}

body {
  background-image: url("../img/space.jpg");
  height: 100%;
  background-attachment: fixed;
  background-size: cover;
}

.clearfix {
  clear: both;
}

/* Title and Description */

.page-title {
  text-align: center;
  margin: auto;
  line-height: 2em;
}

.logo {
  height: 80px;
  width: 80px;
  background-image: url("../img/spaceship.png");
  background-size: contain;
  background-repeat: no-repeat;
  display: inline-block;
  position: relative;
  top: 1em;
}

.page-title h1 {
  display: inline-block;
}

.main {
  text-align: center;
}

.page-description {
  font-size: 0.8rem;
  padding: 30px;
}

.learn-more {
  color: DarkOrange;
  text-decoration: none;
  display: block;
  margin: 25px 0 0 0;
  font-weight: bold;
}

/* Gallery */

.gallery {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 20px;
}

.gallery-item {
  margin: 20px;
}

.gallery-item .thumbnail {
  width: 240px;
  border: 2px solid GhostWhite;
  border-radius: 4px;
}

/* Footer Navigation */

nav {
  margin-top: 30px;
}

nav ul {
  display: block;
}

nav li {
  display: inline;
  margin: 0 20px 0 0;
  color: GhostWhite;
}

nav a {
  line-height: 60px;
  border: 1px solid GhostWhite;
  padding: 7px;
  border-radius: 4px;
  color: DarkOrange;
  text-decoration: none;
}

.contact-btn {
  cursor: pointer;
  margin: 20px 30px;
  text-align: center;
}

.contact-btn a:active {
  position: relative;
  bottom: 2px;
}


@media only screen and (max-width: 480px) {
  .page-title {
    width: 270px;
  }
}

@media only screen and (min-width: 320px) and (max-width: 480px) {
  .gallery-item .thumbnail {
    width: 95%;
  }
}
```

## Dots Per Inch (DPI)

Another media feature we can target is screen resolution. Many times we
will want to supply higher quality media (images, video, etc.) only to
users with screens that can support high resolution media. Targeting
screen resolution also helps users avoid downloading high resolution
(large file size) images that their screen may not be able to properly
display.

To target by resolution, we can use the `min-resolution` and
`max-resolution` media features. These media features accept a
resolution value in either dots per inch (dpi) or dots per centimeter
(dpc). Learn more about resolution measurements
<a href="https://en.wikipedia.org/wiki/Dots_per_inch"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

``` css
@media only screen and (min-resolution: 300dpi) {
    /* CSS for high resolution screens */
}
```

The media query in the example above targets high resolution screens by
making sure the screen resolution is at least 300 dots per inch. If the
screen resolution query is met, then we can use CSS to display high
resolution images and other media.

### Instructions

**1.**

Write a media query to make the logo higher quality if the visitor is
looking at the Amazing Space website on a high resolution display.

A high resolution display may have a `min-resolution` of `150dpi`.

**2.**

Inside of the media query, add this CSS property to the `.logo` class:

``` css
background-image: url("../img/spaceship@2x.png");
```

This code will exchange the existing logo with a higher resolution logo.
To make the difference obvious, the higher resolution spaceship logo has
blue wings.

If you are accessing Codecademy on a screen with a resolution greater
than 150dpi, you will observe the spaceship change. If not, you can
re-write the `min-resolution` media feature to a lower value to observe
the change.

### Solution

``` css
html,
body {
  max-width: 1200px;
  margin: auto;
  font-family: "Space Mono", sans-serif;
  font-size: 18px;
  line-height: 1.4em;
  color: GhostWhite;
}

body {
  background-image: url("../img/space.jpg");
  height: 100%;
  background-attachment: fixed;
  background-size: cover;
}

.clearfix {
  clear: both;
}

/* Title and Description */

.page-title {
  text-align: center;
  margin: auto;
  line-height: 2em;
}

.logo {
  height: 80px;
  width: 80px;
  background-image: url("../img/spaceship.png");
  background-size: contain;
  background-repeat: no-repeat;
  display: inline-block;
  position: relative;
  top: 1em;
}

.page-title h1 {
  display: inline-block;
}

.main {
  text-align: center;
}

.page-description {
  font-size: 0.8rem;
  padding: 30px;
}

.learn-more {
  color: DarkOrange;
  text-decoration: none;
  display: block;
  margin: 25px 0 0 0;
  font-weight: bold;
}

/* Gallery */

.gallery {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 20px;
}

.gallery-item {
  margin: 20px;
}

.gallery-item .thumbnail {
  width: 240px;
  border: 2px solid GhostWhite;
  border-radius: 4px;
}

/* Footer Navigation */

nav {
  margin-top: 30px;
}

nav ul {
  display: block;
}

nav li {
  display: inline;
  margin: 0 20px 0 0;
  color: GhostWhite;
}

nav a {
  line-height: 60px;
  border: 1px solid GhostWhite;
  padding: 7px;
  border-radius: 4px;
  color: DarkOrange;
  text-decoration: none;
}

.contact-btn {
  cursor: pointer;
  margin: 20px 30px;
  text-align: center;
}

.contact-btn a:active {
  position: relative;
  bottom: 2px;
}


@media only screen and (max-width: 480px) {
  .page-title {
    width: 270px;
  }
}

@media only screen and (min-width: 320px) and (max-width: 480px) {
  .gallery-item .thumbnail {
    width: 95%;
  }
}

@media only screen and (min-resolution: 150dpi) {
  .logo {
    background-image: url("../img/spaceship@2x.png");
  }
}
```

## And Operator

In previous exercises, we chained multiple media features of the same
type in one media query by using the `and` operator. It allowed us to
create a range by using `min-width` and `max-width` in the same media
query.

The `and` operator can be used to require multiple media features.
Therefore, we can use the `and` operator to require both a `max-width`
of `480px` *and* to have a `min-resolution` of `300dpi`.

For example:

``` css
@media only screen and (max-width: 480px) and (min-resolution: 300dpi) {
    /* CSS ruleset */
}
```

By placing the `and` operator between the two media features, the
browser will require both media features to be true before it renders
the CSS within the media query. The `and` operator can be used to chain
as many media features as necessary.

### Instructions

**1.**

The website’s text needs to be larger for users who have small, low
resolution screens.

Write a media query that applies when the `max-resolution` is `150dpi`
and the screen has a `max-width` of `480px`.

**2.**

Inside the media query, make the `font-size` of the `.page-description`
element `20px`.

### Solution

``` css
html,
body {
  max-width: 1200px;
  margin: auto;
  font-family: "Space Mono", sans-serif;
  font-size: 18px;
  line-height: 1.4em;
  color: GhostWhite;
}

body {
  background-image: url("../img/space.jpg");
  height: 100%;
  background-attachment: fixed;
  background-size: cover;
}

.clearfix {
  clear: both;
}

/* Title and Description */

.page-title {
  text-align: center;
  margin: auto;
  line-height: 2em;
}

.logo {
  height: 80px;
  width: 80px;
  background-image: url("../img/spaceship.png");
  background-size: contain;
  background-repeat: no-repeat;
  display: inline-block;
  position: relative;
  top: 1em;
}

.page-title h1 {
  display: inline-block;
}

.main {
  text-align: center;
}

.page-description {
  font-size: 0.8rem;
  padding: 30px;
}

.learn-more {
  color: DarkOrange;
  text-decoration: none;
  display: block;
  margin: 25px 0 0 0;
  font-weight: bold;
}

/* Gallery */

.gallery {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 20px;
}

.gallery-item {
  margin: 20px;
}

.gallery-item .thumbnail {
  width: 240px;
  border: 2px solid GhostWhite;
  border-radius: 4px;
}

/* Footer Navigation */

nav {
  margin-top: 30px;
}

nav ul {
  display: block;
}

nav li {
  display: inline;
  margin: 0 20px 0 0;
  color: GhostWhite;
}

nav a {
  line-height: 60px;
  border: 1px solid GhostWhite;
  padding: 7px;
  border-radius: 4px;
  color: DarkOrange;
  text-decoration: none;
}

.contact-btn {
  cursor: pointer;
  margin: 20px 30px;
  text-align: center;
}

.contact-btn a:active {
  position: relative;
  bottom: 2px;
}


@media only screen and (max-width: 480px) {
  .page-title {
    width: 270px;
  }
}

@media only screen and (min-width: 320px) and (max-width: 480px) {
  .gallery-item .thumbnail {
    width: 95%;
  }
}

@media only screen and (min-resolution: 150dpi) {
  .logo {
    background-image: url("../img/spaceship@2x.png");
  }
}

@media only screen and (max-resolution: 150dpi) and (max-width: 480px) {
  .page-description {
    font-size: 20px;
  }
}
```

## Comma Separated List

If only one of multiple media features in a media query must be met,
media features can be separated in a comma separated list.

For example, if we needed to apply a style when only one of the below is
true:

- The screen is more than 480 pixels wide
- The screen is in landscape mode

We could write:

``` css
@media only screen and (min-width: 480px), (orientation: landscape) {
    /* CSS ruleset */
}
```

In the example above, we used a comma (`,`) to separate multiple rules.
The example above requires only one of the media features to be true for
its CSS to apply.

Note that the second media feature is `orientation`. The `orientation`
media feature detects if the page has more width than height. If a page
is wider, it’s considered `landscape`, and if a page is taller, it’s
considered `portrait`.

### Instructions

**1.**

Navigate to the media query where you targeted screens with a
`min-width` of `320px` and a `max-width` of `480px`.

Now that you have located this media query, let’s also make the logo and
text appear vertical if the screen is in portrait orientation. To do
this, add an `orientation` media feature after inserting a comma (`,`)
to separate the rules. This new media feature should check if the
screen’s `orientation` is `portrait`.

### Solution

``` css
html,
body {
  max-width: 1200px;
  margin: auto;
  font-family: "Space Mono", sans-serif;
  font-size: 18px;
  line-height: 1.4em;
  color: GhostWhite;
}

body {
  background-image: url("../img/space.jpg");
  height: 100%;
  background-attachment: fixed;
  background-size: cover;
}

.clearfix {
  clear: both;
}

/* Title and Description */

.page-title {
  text-align: center;
  margin: auto;
  line-height: 2em;
}

.logo {
  height: 80px;
  width: 80px;
  background-image: url("../img/spaceship.png");
  background-size: contain;
  background-repeat: no-repeat;
  display: inline-block;
  position: relative;
  top: 1em;
}

.page-title h1 {
  display: inline-block;
}

.main {
  text-align: center;
}

.page-description {
  font-size: 0.8rem;
  padding: 30px;
}

.learn-more {
  color: DarkOrange;
  text-decoration: none;
  display: block;
  margin: 25px 0 0 0;
  font-weight: bold;
}

/* Gallery */

.gallery {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 20px;
}

.gallery-item {
  margin: 20px;
}

.gallery-item .thumbnail {
  width: 240px;
  border: 2px solid GhostWhite;
  border-radius: 4px;
}

/* Footer Navigation */

nav {
  margin-top: 30px;
}

nav ul {
  display: block;
}

nav li {
  display: inline;
  margin: 0 20px 0 0;
  color: GhostWhite;
}

nav a {
  line-height: 60px;
  border: 1px solid GhostWhite;
  padding: 7px;
  border-radius: 4px;
  color: DarkOrange;
  text-decoration: none;
}

.contact-btn {
  cursor: pointer;
  margin: 20px 30px;
  text-align: center;
}

.contact-btn a:active {
  position: relative;
  bottom: 2px;
}


@media only screen and (max-width: 480px){
  .page-title {
    width: 270px;
  }
}

@media only screen and (min-width: 320px) and (max-width: 480px) , (orientation: portrait) {
  .gallery-item .thumbnail {
    width: 95%;
  }
}

@media only screen and (min-resolution: 150dpi) {
  .logo {
    background-image: url("../img/spaceship@2x.png");
  }
}

@media only screen and (max-resolution: 150dpi) and (max-width: 480px) {
  .page-description {
    font-size: 20px;
  }
}
```

## Breakpoints

We know how to use media queries to apply CSS rules based on screen size
and resolution, but how do we determine what queries to set?

The points at which media queries are set are called *breakpoints*.
Breakpoints are the screen sizes at which your web page does not appear
properly. For example, if we want to target tablets that are in
landscape orientation, we can create the following breakpoint:

``` css
@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {
    /* CSS ruleset */
}
```

The example above creates a screen size range the size of a tablet in
landscape mode and also identifies the orientation.

However, setting breakpoints for every device imaginable would be
incredibly difficult because there are many devices of differing shapes
and sizes. In addition, new devices are released with new screen sizes
every year.

Rather than set breakpoints based on specific devices, the best practice
is to resize your browser to view where the website naturally breaks
based on its content. The dimensions at which the layout breaks or looks
odd become your media query breakpoints. Within those breakpoints, we
can adjust the CSS to make the page resize and reorganize.

By observing the dimensions at which a website naturally breaks, you can
set media query breakpoints that create the best possible user
experience on a project by project basis, rather than forcing every
project to fit a certain screen size. Different projects have different
needs, and creating a responsive design should be no different.

Check out <a
href="https://content.codecademy.com/courses/freelance-1/unit-5/screen-sizes.png"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this</a> list of breakpoints by device
widths. Use it as a reference of screen widths to test your website to
make certain it looks great across a variety of devices.

### Instructions

**1.**

The last breakpoint we’d like to account for is a tablet in landscape
orientation. The Amazing Space website should change its format to show
the gallery pictures on the right, while having the logo and the
description on the left.

Write a media query that meets the following requirements:

- The screen has a `min-width` of `768px`
- The screen has a `max-width` of `1024px`
- The screen has an `orientation` of `landscape`

**2.**

Inside of the media query, include this CSS:

``` css
.page-title, .page-description {
  float: left;
    width: 20em;
}
 
.page-description {
    text-align: left;
}
```

This CSS will make the page title and description float to the left of
the gallery images. Resize the browser to observe these changes at
various screen widths.

### Solution

``` css
html,
body {
  max-width: 1200px;
  margin: auto;
  font-family: "Space Mono", sans-serif;
  font-size: 18px;
  line-height: 1.4em;
  color: GhostWhite;
}

body {
  background-image: url("../img/space.jpg");
  height: 100%;
  background-attachment: fixed;
  background-size: cover;
}

.clearfix {
  clear: both;
}

/* Title and Description */

.page-title {
  text-align: center;
  margin: auto;
  line-height: 2em;
}

.logo {
  height: 80px;
  width: 80px;
  background-image: url("../img/spaceship.png");
  background-size: contain;
  background-repeat: no-repeat;
  display: inline-block;
  position: relative;
  top: 1em;
}

.page-title h1 {
  display: inline-block;
}

.main {
  text-align: center;
}

.page-description {
  font-size: 0.8rem;
  padding: 30px;
}

.learn-more {
  color: DarkOrange;
  text-decoration: none;
  display: block;
  margin: 25px 0 0 0;
  font-weight: bold;
}

/* Gallery */

.gallery {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 20px;
}

.gallery-item {
  margin: 20px;
}

.gallery-item .thumbnail {
  width: 240px;
  border: 2px solid GhostWhite;
  border-radius: 4px;
}

/* Footer Navigation */

nav {
  margin-top: 30px;
}

nav ul {
  display: block;
}

nav li {
  display: inline;
  margin: 0 20px 0 0;
  color: GhostWhite;
}

nav a {
  line-height: 60px;
  border: 1px solid GhostWhite;
  padding: 7px;
  border-radius: 4px;
  color: DarkOrange;
  text-decoration: none;
}

.contact-btn {
  cursor: pointer;
  margin: 20px 30px;
  text-align: center;
}

.contact-btn a:active {
  position: relative;
  bottom: 2px;
}


@media only screen and (max-width: 480px), (orientation: portrait) {
  .page-title {
    width: 270px;
  }
}

@media only screen and (min-width: 320px) and (max-width: 480px) {
  .gallery-item .thumbnail {
    width: 95%;
  }
}

@media only screen and (min-resolution: 150dpi) {
  .logo {
    background-image: url("../img/spaceship@2x.png");
  }
}

@media only screen and (max-resolution: 150dpi) and (max-width: 480px) {
  .page-description {
    font-size: 20px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {
  .page-title, 
  .page-description {
    float: left;
    width: 20em;
  }

  .page-description {
      text-align: left;
  }
}
```

## Review: Media Queries

Incredible work! You learned how to change the way a website appears on
different screens with media queries and breakpoints

Throughout this lesson, you learned:

- When a website responds to the size of the screen it’s viewed on, it’s
  called a *responsive* website.
- You can write *media queries* to help with different screen sizes.
- Adding the viewport `<meta>` tag to our code allows us to control the
  width and scaling of the viewport so that it’s sized and scaled
  correctly on all devices.
- Media queries require *media features*. Media features are the
  conditions that must be met to render the CSS within a media query.
- Media features can detect many aspects of a user’s browser, including
  the screen’s width, height, resolution, orientation, and more.
- The `and` operator requires multiple media features to be true at
  once.
- A comma separated list of media features only requires one media
  feature to be true for the code within to be applied.
- The best practice for identifying where media queries should be set is
  by resizing the browser to determine where the content naturally
  breaks. Natural breakpoints are found by resizing the browser.

With your knowledge of media queries and CSS, you can make websites that
look great on any device, from a small phone to a huge television. By
making your websites responsive, you’ll make it possible for any of your
users to have a great experience.

### Instructions

Click ‘Up Next’ to continue.

### Solution

``` html
<html>

<head>
  <title>Amazing Space</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/reset.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Space+Mono:400,700" rel="stylesheet">
</head>

<body>
  <header>
    <div class="page-title">
      <div class="logo"></div>
      <h1>Amazing Space</h1>
      <h5>At Amazing Space, there's always space for you.&trade;</h5>
    </div>
  </header>
  <div class="main">
    <p class="page-description clearfix">
      Otherworldly views, uncompromising service, unparallelled luxury. This is Amazing Space, the world's first, and finest, space adventure company. With private and group voyages embarking weekly, you can book your tickets in advance or on the fly.
      <a class="learn-more" href="#">Learn More >></a>
    </p>
    <div class="gallery">
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space01.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space02.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space03.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space04.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space05.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space06.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space07.jpg">
      </figure>
      <figure class="gallery-item">
        <img class="thumbnail" src="https://content.codecademy.com/projects/make-a-website/lesson-3/space08.jpg">
      </figure>
    </div>
  </div>
  <nav class="footer">
    <ul>
      <li>ABOUT</li>
      <li>MISSIONS</li>
      <li>ARCHIVE</li>
    </ul>
    <div class="contact-btn">
      <a>CONTACT US</a>
    </div>
  </nav>
</body>

</html>
```

``` css
html,
body {
  max-width: 1200px;
  margin: auto;
  font-family: "Space Mono", sans-serif;
  font-size: 18px;
  line-height: 1.4em;
  color: GhostWhite;
}

body {
  background-image: url("../img/space.jpg");
  height: 100%;
  background-attachment: fixed;
  background-size: cover;
}

.clearfix {
  clear: both;
}

/* Title and Description */

.page-title {
  text-align: center;
  margin: auto;
  line-height: 2em;
}

.logo {
  height: 80px;
  width: 80px;
  background-image: url("../img/spaceship.png");
  background-size: contain;
  background-repeat: no-repeat;
  display: inline-block;
  position: relative;
  top: 1em;
}

.page-title h1 {
  display: inline-block;
}

.main {
  text-align: center;
}

.page-description {
  font-size: 0.8rem;
  padding: 30px;
}

.learn-more {
  color: DarkOrange;
  text-decoration: none;
  display: block;
  margin: 25px 0 0 0;
  font-weight: bold;
}

/* Gallery */

.gallery {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin-top: 20px;
}

.gallery-item {
  margin: 20px;
}

.gallery-item .thumbnail {
  width: 240px;
  border: 2px solid GhostWhite;
  border-radius: 4px;
}

/* Footer Navigation */

nav {
  margin-top: 30px;
}

nav ul {
  display: block;
}

nav li {
  display: inline;
  margin: 0 20px 0 0;
  color: GhostWhite;
}

nav a {
  line-height: 60px;
  border: 1px solid GhostWhite;
  padding: 7px;
  border-radius: 4px;
  color: DarkOrange;
  text-decoration: none;
}

.contact-btn {
  cursor: pointer;
  margin: 20px 30px;
  text-align: center;
}

.contact-btn a:active {
  position: relative;
  bottom: 2px;
}


@media only screen and (max-width: 480px), (orientation: portrait) {
  .page-title {
    width: 270px;
  }
}

@media only screen and (min-width: 320px) and (max-width: 480px) {
  .gallery-item .thumbnail {
    width: 95%;
  }
}

@media only screen and (min-resolution: 150dpi) {
  .logo {
    background-image: url("../img/spaceship@2x.png");
  }
}

@media only screen and (max-resolution: 150dpi) and (max-width: 480px) {
  .page-description {
    font-size: 20px;
  }
}

@media only screen and (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {
  .page-title, 
  .page-description {
    float: left;
    width: 20em;
  }

  .page-description {
      text-align: left;
  }
}
```

# Simulate Different Screen Sizes with Device Mode in Chrome DevTools

→ **<a href="https://developer.chrome.com/docs/devtools/device-mode"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Simulate Different Screen Sizes with
Device Mode in Chrome DevTools</a>**

In this article, you will learn how to simulate different screen sizes
with device mode in Chrome DevTools in order to approximate how your
page looks and performs on different devices. This is helpful if you
want to ensure that the components of your page would be readable on
mobile devices. There’s also value in seeing how your website would load
on a device with a weak or non-existent connection to the network. After
you finish reading the article, return to this page and complete the
following assessments.

What does throttling allow you to simulate?

- [ ] Vibrations from actions performed on a website on a mobile device.
- [ ] How a website would perform if a device was in low-battery mode.
- [ ] How a website would perform if the incoming data for a device
  switches from wifi to cellular.
- [x] How a website would respond to weaker, stronger, and no network
  connections as well as different CPU speeds.

👏 Yes! It’s important to understand how responsive your website is when
users are in weak-to-non-existent networks with their devices or are
experiencing low performance from their devices.

What does orientation refer to in the context of this article?

- [x] It refers to a device’s physical position with respect to gravity
  and how a website would look in that particular position. There are
  two orientations - portrait and landscape.
- [ ] It refers to the introduction and tutorial to using Chrome
  DevTools.
- [ ] It refers to a device’s physical position with respect to the sky
  and how a website would look in that particular position. There are
  two orientations - right-side up and upside-down.
- [ ] It refers to the different screen sizes that are available to
  simulate.

# Tsunami Coffee

Use your knowledge of relative units and responsive web design to help
Tsunami Coffee make their website come to life.

Throughout this project, you’ll edit the existing Tsunami Coffee website
code so that the website appears correctly on varying screen sizes. In
addition, you’ll contribute styles that will make this website more
visually appealing.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

1\.

The website needs a background image in the main section at the top of
the page.

Navigate to **style.css** and add the following image to the `.main`
class as a cover-sized background image:

    https://content.codecademy.com/courses/freelance-1/unit-5/tsunami-coffee/images/bg-photo.png

2\.

The navigation items at the top of the page need more padding.

Add a padding of `0.75rem` to the top and bottom, and `1.25rem` to the
left and right of the navigation’’s list items.

3\.

The coffee beans image under the main banner in the supporting section
is too large.

Inside of the `.supporting img` selector, set the height and width
dimensions to 10 percent.

4\.

The coffee beans image looks better now, but the text to the right of it
needs to be spaced out further from the image.

Set the right margin of the image to 5 percent.

5\.

The font size of the rating should be increased within the rating
section.

Use `rem` units to make the `h1` text equivalent to 40 pixels. This can
be calculated based on the `html` element’s font size.

6\.

The map image near the bottom of the page should span the page’s width,
instead of overflowing.

Add a width of 100 percent to the `.location img` CSS rule.

7\.

Now the page looks better on large screens. When the page is resized to
a smaller width, the page needs to resize and reorganize its elements
using media queries.

Write a media query that targets the screen when its width is under 960
pixels and smaller.

8\.

When the page is resized to a width less than 960 pixels, note that the
navigation bar has empty space above it. Within the media query you
wrote in the last step, set the top padding of the `.main` class to `0`.

9\.

Resize the browser from large to small. Notice that the coffee beans
image in the supporting section causes the supporting paragraph to
become too thin.

Write a media query for screens under 700 pixels.

10\.

Inside the media query, make the image disappear by ensuring that the
`.supporting img` selector displays nothing.

You can make an element disappear using the following property and
value:

``` css
display: none;
```

11\.

Continue to resize the width of the browser until the website is the
size of a small screen.

Write a media query that targets a screen width less than 470 pixels.

12\.

Inside the media query for small screens, you’’ll need to apply a
variety of styles.

First, make the rating’s `h1` font size the equivalent of 32 pixels
using `rem` units.

13\.

The images in the gallery are too small for small screens.

Select the images in the gallery and style them so that they fill the
width of the screen.

Then set their margin to `0` so they span across the entire page.

14\.

The footer’s text is not formatted correctly on small screen sizes.

Hide the `nav` inside the `footer` to appear better on small screens.

Then, resize the screen from small to large and watch your website
change its appearance to best fit the screen size. You just built a
responsive website!

### [Solution](tsunami-coffee)

# Documentation and Research

## Overview

Building websites requires technical knowledge of multiple languages and
frameworks. You may wonder, “How is it possible for developers to know
everything there is to know about every language?” The answer is,
thankfully, they don’t. One of the most essential skills of being a
developer is knowing how to investigate solutions to problems you have
not yet learned how to solve.

In this lesson, you will learn how to look up new ways to use
previously-learned CSS properties and discover entirely new CSS
properties.

On the right side of the screen is the portfolio site that you will
develop into <a
href="https://content.codecademy.com/courses/freelance-1/capstone-1-documentation/mocks.jpg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the final product</a>. We suggest you
keep this mock open in a separate tab for reference throughout the
lesson.

### Instructions

Take some time to read the code in the code editor (some of which may be
unfamiliar). Notice the differences between our current site and the
final mock.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="reset.css">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <nav class="clearfix">
    <h1>My Portfolio</h1>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>
</body>
</html>
```

``` css
nav {
  padding: 25px;
  font-family: 'Roboto', sans-serif;
  background-color: #F25F5C;
}

h1 {
  float: left;
  margin-top: 5px;
  color: white;
  font-size: 36px;
}

ul {
  float: left;
}

li {
  display: inline-block;
  margin-right: 25px;
  text-align: center;
  background-color: #28587B;  
}

a {
  display: inline-block;
  width: 150px;
  padding: 10px 0;
  text-decoration: none;
  font-size: 24px;
  color: white;
}

.clearfix:after {
   content: " ";
   visibility: hidden;
   display: block;
   height: 0;
   clear: both;
}

@media only screen and (max-width: 800px) {
  h1 {

  }

  li {
    margin-right: 10px;
  }

  a {
    width: 100px;
    padding: 5px 0;
    font-size: 16px;
  }
}
```

## Documentation

Every well-developed language or framework has a place where you can
look up all of its features. This library of information is called a
language’s *documentation*.

You can find the documentation for CSS at
<a href="https://developer.mozilla.org/en-US/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network</a>. In
addition to CSS, The Mozilla Developer Network (referred to as MDN)
contains the complete documentation for HTML, JavaScript, and many other
essential tools of web development.

To see the documentation for a specific CSS property, navigate to the
MDN website and search for that property in the search bar at the top of
the page. Then, click on the link for that property. For example, search
for the `font-weight` property. The list of results might appear
intimidating, but you should quickly see a link starting with the
description “The font-weight css property…”. This is the link we want.

Once you land on a property’s documentation page you can read all of the
information about it. For example,
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">font-weight</code></a> starts with
a description of the property. The “Values” section lists all of the
possible values for `font-weight`. There are some values you already
know, such as `normal` and `bold`, but there are also new values, such
as `lighter` and `bolder`.

### Instructions

**1.**

As you can see in the <a
href="https://content.codecademy.com/courses/freelance-1/capstone-1-documentation/mocks.jpg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">mock</a>, on smaller screen sizes we want
to hide our `h1`. Look up the documentation for `display` on
<a href="https://developer.mozilla.org/en-US/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN</a>.

In the “Grouped values” section, find a value that will turn off the
display of an element. Add a `display` property with that value to the
`h1` rule in the `@media` query at the bottom of **style.css**.

**2.**

The **style.css** file includes a property you might not know — `float`.
Read the documentation for `float` to see what the property does and
what values it can accept.

Update the `ul` rule to push the `ul` to the right side of the
navigation bar.

### Solution

``` css
nav {
  padding: 25px;
  font-family: 'Roboto', sans-serif;
  background-color: #F25F5C;
}

h1 {
  float: left;
  margin-top: 5px;
  color: white;
  font-size: 36px;
}

ul {
  float: right;
}

li {
  display: inline-block;
  margin-right: 25px;
  text-align: center;
  background-color: #28587B;  
}

a {
  display: inline-block;
  width: 150px;
  padding: 10px 0;
  text-decoration: none;
  font-size: 24px;
  color: white;
}

.clearfix:after {
   content: " ";
   visibility: hidden;
   display: block;
   height: 0;
   clear: both;
}

@media only screen and (max-width: 800px) {
  h1 {
    display: none;
  }
  
  li {
    margin-right: 10px;
  }

  a {
    width: 100px;
    padding: 5px 0;
    font-size: 16px;
  }
}
```

## Google

Documentation is an essential tool to learn about properties. However,
what if you don’t even know what property you need?

In situations like this, it might come as no surprise that using
<a href="https://google.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google</a> is a great way to read other
developers’ solutions to problems. Googling the problem you’re trying to
solve and the language you’re using will yield many useful answers.

For example, if you want to know how to change the size of text, you
could google “how to change text size using CSS.” After doing this, you
will receive multiple links to information about the `font-size`
property.

### Instructions

**1.**

In the <a
href="https://content.codecademy.com/courses/freelance-1/capstone-1-documentation/mocks.jpg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">mock</a>, we can see that the `a`
elements should have a light shadow beneath them. Use Google to find out
which CSS property allows you to add a shadow beneath text. Once you’ve
found the property, set its value to `2px 2px 0 #bbbbbb` in the `a` rule
(try to figure out what this value will do by reading the documentation
for the property).

### Solution

``` css
nav {
  padding: 25px;
  font-family: 'Roboto', sans-serif;
  background-color: #F25F5C;
}

h1 {
  float: left;
  margin-top: 5px;
  color: white;
  font-size: 36px;
}

ul {
  float: right;
}

li {
  display: inline-block;
  margin-right: 25px;
  text-align: center;
  background-color: #28587B;  
}

a {
  display: inline-block;
  width: 150px;
  padding: 10px 0;
  text-decoration: none;
  font-size: 24px;
  color: white;
  text-shadow: 2px 2px 0 #bbbbbb;
}

.clearfix:after {
   content: " ";
   visibility: hidden;
   display: block;
   height: 0;
   clear: both;
}

@media only screen and (max-width: 800px) {
  h1 {
    display: none;
  }

  li {
    margin-right: 10px;
  }

  a {
    width: 100px;
    padding: 5px 0;
    font-size: 16px;
  }
}
```

## Stack Overflow

While using Google in the previous exercise, you may have noticed a lot
of links to a site called <a href="https://stackoverflow.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><em>Stack Overflow</em></a>.

Stack Overflow is a useful resource where developers ask and answer
questions. You should use it to find answers to your questions, and
learn from experienced developers.

Reading all of the top-voted answers to a Stack Overflow question can
give you multiple solutions to try as well as an understanding of why
one solution might be better than another. Additionally, if you can’t
find a question, you can even ask it yourself and receive answers.

To search for a question on Stack Overflow, type your question and
programming language into the search bar and find the question threads
that seem relevant.

### Instructions

**1.**

In the <a
href="https://content.codecademy.com/courses/freelance-1/capstone-1-documentation/mocks.jpg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">mock</a>, you can see that the buttons
have rounded edges. Use <a href="http://stackoverflow.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Stack Overflow</a> to search how to make
buttons round using CSS. Once you’ve found the property, set its value
in the `li` rule to `5px`.

### Solution

``` css
nav {
  padding: 25px;
  font-family: 'Roboto', sans-serif;
  background-color: #F25F5C;
}

h1 {
  float: left;
  margin-top: 5px;
  color: white;
  font-size: 36px;
}

ul {
  float: right;
}

li {
  display: inline-block;
  margin-right: 25px;
  text-align: center;
  background-color: #28587B;
  border-radius: 5px;
}

a {
  display: inline-block;
  width: 150px;
  padding: 10px 0;
  text-decoration: none;
  font-size: 24px;
  color: white;
  text-shadow: 2px 2px 0 #bbbbbb;
}

.clearfix:after {
   content: " ";
   visibility: hidden;
   display: block;
   height: 0;
   clear: both;
}

@media only screen and (max-width: 800px) {
  h1 {
    display: none;
  }

  li {
    margin-right: 10px;
  }

  a {
    width: 100px;
    padding: 5px 0;
    font-size: 16px;
  }
}
```

## Review

Awesome! With just a few simple searches and some research you completed
the header for your portfolio site. Reading documentation and searching
Google and Stack Overflow make it easy to solve development problems,
even if you haven’t previously encountered the right tool for the job.

In summary:

1.  Documentation is an easy way to view all of the information about a
    language or framework. The
    <a href="https://developer.mozilla.org/en-US/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener"><em>Mozilla Development
    Network</em></a> is the source of documentation for HTML, CSS, and
    JavaScript.

2.  Investigating a new language feature is as easy as typing the
    problem and the language into <a href="https://google.com/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Google</a> or
    <a href="https://stackoverflow.com/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Stack Overflow</a>.

Now that you know how to find any feature and read its documentation,
the sky’s the limit on what you can do. Feel free to browse MDN and
Stack Overflow to find new features and try incorporating them into your
header to make it look even better. Great job!

### Instructions

Use MDN, Google, and Stack Overflow to explore new HTML and CSS
features, experimenting with this header to see how they work.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="reset.css">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <nav class="clearfix">
    <h1>My Portfolio</h1>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>
</body>
</html>
```

``` css
nav {
  padding: 25px;
  font-family: 'Roboto', sans-serif;
  background-color: #F25F5C;
}

h1 {
  float: left;
  margin-top: 5px;
  color: white;
  font-size: 36px;
}

ul {
  float: right;
}

li {
  display: inline-block;
  border-radius: 5px;
  margin-right: 25px;
  text-align: center;
  background-color: #28587B;
}

a {
  display: inline-block;
  width: 150px;
  padding: 10px 0;
  text-decoration: none;
  font-size: 24px;
  color: white;
  text-shadow: 2px 2px 0 #bbbbbb;
}

.clearfix:after {
   content: " ";
   visibility: hidden;
   display: block;
   height: 0;
   clear: both;
}

@media only screen and (max-width: 800px) {
  h1 {
    display: none;
  }

  li {
    margin-right: 10px;
  }

  a {
    width: 100px;
    padding: 5px 0;
    font-size: 16px;
  }
}
```

# Off-Platform Project: Fotomatic

In this project you will fix a broken version of a responsive website
called Fotomatic. You will be provided specs to help guide you in making
adjustments to the broken code. Download the broken code <a
href="https://content.codecademy.com/courses/freelance-1/capstone-1/capstone_fotomatic_start.zip"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a> and the specs <a
href="https://content.codecademy.com/courses/freelance-1/capstone-1/specs/fotomatic_spec_landing_v2.png"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>. You can also see a working
version of the final product <a
href="https://content.codecademy.com/courses/freelance-1/capstone-1/solution/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

As you fix Fotomatic’s bugs, remember to use the skills you acquired in
the Chrome DevTools article to help you decipher and update the site’s
CSS. Chrome DevTools are essential for debugging – they allow you to
view current style values, toggle rules, and test different rule values.

### [Solution](f1-2-c1p1-fotomatic)

# Fotomatic Project Solution

You can download the solution code to the Fotomatic project <a
href="https://content.codecademy.com/PRO/skill-paths/learn-how-to-build-websites/F1C1_solution_2019.zip"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

Try not to peek at the solution code until you’ve completed this part of
the project, or unless you’re really stuck and your struggle has become
totally unproductive. Looking at the code before that moment will
deprive you of an important learning opportunity and will make it harder
for you to achieve your ultimate outcome.

# Challenge Project: Company Home Page with Flexbox

#### Overview

This project is slightly different than others you have encountered thus
far on Codecademy. Instead of a step-by-step tutorial, this project
contains a series of open-ended requirements which describe the project
you’ll be building. There are many possible ways to correctly fulfill
all of these requirements, and you should expect to use the Internet,
Codecademy, and other resources when you encounter a problem that you
cannot easily solve.

#### Project Goals

In this project, you’ll be using flexbox to design and build the layout
for a company’s homepage. You can choose to build a new homepage for an
existing company or imagine your own dream company!

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. If you need help setting up your computer, read our article about
setting up a text editor for HTML/CSS development.

### Instructions

Mark the tasks as complete by checking them off

## Prerequisites

1\.

To complete this project, you should have completed Codecademy’s Flexbox
curriculum in any of the following:

- <a
  href="https://www.codecademy.com/learn/paths/full-stack-engineer-career-path"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Full-Stack Engineering Career Path</a>
- <a
  href="https://www.codecademy.com/learn/paths/front-end-engineer-career-path"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Front-End Engineering Career Path</a>
- <a
  href="https://www.codecademy.com/learn/paths/learn-how-to-build-websites"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Learn How to Build Websites Skill Path</a>

## Project Requirements

2\.

You’re going to build a company homepage for a real or imagined company.
You’ll get to decide exactly what content to include for this company,
but you should at least include:

- A title and logo or splash image.
- A mission statement or brief description of the company.
- A list or set of images and titles representing the product or
  products of the company.
- A section describing some of the company’s employees or teammates.

If you want, you can tour our <a
href="https://content.codecademy.com/PRO/independent-practice-projects/flexbox-business-site/example-site/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">example site</a> for inspiration or to
see how we used flexbox. Your site will probably look very different
from ours, and that’s great!

3\.

Your project should use flexbox styling for layout. Aim to use flexbox’s
advantages, such as easy horizontal and vertical positioning, flexible
element flows as the page size changes, and great styling for repeated
elements.

In our example project, we used flexbox to:

- Create a centered navbar at the top of the page.
- Create a flexible display of company products that changes from a more
  grid-like list to a column list as the page shrinks.
- Create a flexible display of company employees.

Our example site is not an elaborate use of flexbox–we’re sure you can
come up with other uses of flexbox in your layout, such as taking
advantage of `flex-grow` or `flex-shrink`.

4\.

Your page should also use custom styles for other properties, such as
colors, fonts, and other layout properties such as borders and padding.

Our example site uses:

- A simple color scheme using CSS named colors, but yours can be more
  elaborate with hexadecimal, RGB, or HSL colors.
- Fonts from the <a href="https://fonts.google.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Google Fonts API</a>.
- Custom images. A great source for project images when you’re
  practicing web design is <a href="https://unsplash.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Unsplash</a>.

Get creative! Customizing your site’s look and feel is one of the most
exciting parts of building your own websites. You can review any of
these other CSS properties in our
<a href="https://www.codecademy.com/learn/learn-css"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn CSS</a> course.

## Project Solution

5\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/company-home-page-challenge-project-css-flexbox/462383"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners!

Remember, this is just one possible solution. Your own project may be
coded totally differently, have more or less content, and look totally
different! We’re providing our solution for you get a sense of one way
to flexbox to help with page layout. There are multiple ways to solve
these projects, and you’ll learn more by seeing others’ code.

### [Solution](company-page-with-flexbox)

# Challenge Project: Responsive Club Website

#### Overview

This project is slightly different than others you have encountered thus
far on Codecademy. Instead of a step-by-step tutorial, this project
contains a series of open-ended requirements which describe the project
you’ll be building. There are many possible ways to correctly fulfill
all of these requirements, and you should expect to use the Internet,
Codecademy, and other resources when you encounter a problem that you
cannot easily solve.

#### Project Goals

In this project, you’ll be building your own club group page that will
dynamically respond as you adjust the size of your screen!

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. If you need help setting up your computer, read our article about
setting up a text editor for HTML/CSS development.

### Instructions

Mark the tasks as complete by checking them off

## Prerequisites

1\.

To complete this project, you should have completed the Codecademy
<a href="https://www.codecademy.com/learn/learn-responsive-design"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Responsive Design course</a>, or the same lessons in the
<a
href="https://www.codecademy.com/learn/paths/learn-how-to-build-websites"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn How to Build Websites Path</a>.

## Project Requirements

2\.

In this project, you’ll build a webpage for a local club. You can base
it on real-life organization you belong to or make one up! You’ll get to
choose everything about your page: the club name, the page layout and
styling, any images that you want to use, and more! You can check out
our <a
href="https://content.codecademy.com/PRO/independent-practice-projects/responsive-club-site/example-site/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">example site</a> for some inspiration and
experiment with what elements are responsive. We’ll provide the full
code for this site in the solution section at the end of this project.

A helpful resource for finding beautiful images for your sites is
<a href="https://unsplash.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Unsplash</a>.

3\.

Your project should demonstrate many of the responsive design tools you
learned. In our example project, we use percentages and relative units,
such as `em` and `rem`, in our CSS to size and position page elements.
We also made our website responsive by incorporating media queries to
resize elements based on the size of the screen.

Possible responsive design concepts to demonstrate:

- Making images toggle to certain percentages in terms of `width` after
  a certain minimum screen size.
- Using a `@media` rule to change page layout and behavior based on size
  breakpoints.
- Employing responsive units `em` and `rem` to size and space elements
  with `width` and `padding`.

## Project Solution

4\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/responsive-club-website-css/462382"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners!

Remember, this is just one possible solution. Your own project may be
coded totally differently, have more or less content, and look totally
different! We’re providing our solution for you get a sense of one way
to use responsive units and media queries to affect page layout. There
are multiple ways to solve these projects, and you’ll learn more by
seeing others’ code.-

### [Solution](responsive-club-website)

# Review: Making a Website Responsive

Congratulations! The goal of this unit was to establish a foundation in
responsive web design and give you the tools to create websites that use
different layouts which work on a variety of devices.

Having completed this unit, you are now able to:

- Understand responsive web design
- Use CSS Grid and Flexbox for layout, positioning, and responsiveness
- Use media queries

If you are interested in learning more about these topics, here are some
additional resources:

- Resource: <a href="https://codepip.com/games/grid-garden/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Grid Garden</a>
- Article: <a
  href="https://www.smashingmagazine.com/2011/01/guidelines-for-responsive-web-design/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Responsive Web Design</a>
- Article:
  <a href="https://www.taniarascia.com/you-dont-need-a-framework/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">You Don’t Need a Framework:
  Understanding the Fundamentals of Responsive Design</a>
- Article:
  <a href="https://css-tricks.com/snippets/css/complete-guide-grid/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">A Complete Guide to CSS Grid</a>

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
