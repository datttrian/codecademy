# Introduction: Fundamentals of CSS

In this unit, you will be introduced to the fundamentals of CSS.

The goal of this unit is to introduce you to CSS, one of the languages
essential to developing websites. You will learn how to apply styles to
HTML documents using CSS.

After this unit, you will be able to:

- Understand how CSS is used for web development
- Use CSS to add initial styling to your website
- Understand the Box Model in CSS
- Add positioning using CSS
- Read CSS documentation

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

# Setup and Syntax

## Intro to CSS

While <a href="https://www.codecademy.com/learn/learn-html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">HTML</a> is the fundamental structure of every web page,
it can be visually unappealing on its own. Cascading Style Sheets or
*CSS* is a language web developers use to style the HTML content on a
web page. If you’re interested in modifying colors, font types, font
sizes, images, element positioning, and more, CSS is the tool for the
job!

In this lesson, you’ll learn how to set up your CSS file structure and
select which HTML elements you wish to style.



**1.**

Take a look at the code in `index.html` and observe how it displays in
the browser to the right. This is plain HTML without any styling. Let’s
take a quick look at the power of CSS.

Copy and paste the following line of code onto line 5:

``` html
<link href="style.css" rel="stylesheet">
```

What happens when you press the Run button?

Take some time to explore and experiment with the code in the
`style.css` file.



``` html
<!DOCTYPE html>
<html>
  <head>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,100' rel='stylesheet' type='text/css'>
    <link href="style.css" rel="stylesheet">
  </head>
  <body>
    <div class="header">
      <div class="container">
        <h1>Innovation Cloud</h1>
        <p>Connect your ideas globally</p>
        <a class="btn" href="#">Learn More</a>
      </div>
    </div>

    <div class="nav">
      <div class="container">
        <ul>
          <li>Register</li>
          <li>Schedule</li>
          <li>Sponsors</li>
          <li>About</li>
          <li>Contact</li>
        </ul>
      </div>
    </div>

    <div class="main">
      <div class="container">
        <img src="https://content.codecademy.com/projects/innovation-cloud/cloud.svg" height="128" width="196">
        <h2>The Innovation Cloud Conference</h2>
        <p>Connect with the best minds across a wide range of industries to share ideas and brainstorm new solutions to challenging problems.</p>
        <p>Hear industry leaders talk about what worked (and what didn't) so that you can save time on your most challenging projects.</p>
        <p>Learn about the latest research and technologies that you can use immediately to invent the future.</p>
      </div>
    </div>

    <div class="jumbotron">
      <div class="container">
        <h2>Stay Connected</h2>
        <p>Receive weekly insights from industry insiders.</p>
        <a class="btn" href="#">Join</a>
      </div>
    </div>

    <div class="footer">
      <div class="container">
        <p>&copy; Innovation Cloud Conference</p>
      </div>
    </div>
  </body>
</html>
```

``` css
html, body {
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Roboto', sans-serif;
  font-weight: 100;
}

.container {
  margin: 0 auto;
  max-width: 940px; 
  padding: 0 10px;
}

.header {
  background: url(https://content.codecademy.com/projects/innovation-cloud/bg.jpg) no-repeat center center; 
  background-size: cover;
  height: 800px;
  text-align: center; 
}

.header .container {
  position: relative;
  top: 200px;
}

.header h1 {
  color: #fff;
  line-height: 100px; 
  font-size: 80px;
  margin-top: 0;
  margin-bottom: 80px;
  text-transform: uppercase; 
}

@media (min-width:850px) {
  .header h1 {
    font-size: 120px;
  }
}

.header p {
  color: #fff;
  font-weight: 500;
  letter-spacing: 8px;
  margin-bottom: 40px;
  margin-top: 0;
  text-transform: uppercase; 
}

.btn {
  color: #fff;
  background: #000;
  padding: 10px 40px;
  text-decoration: none; 
  transition: background .5s; 
}

.nav { 
  background: #000;
  height: 80px; 
  width: 100%;
}

.nav ul {
  height: 80px;
  list-style: none;
  margin: 0 auto; 
  padding: 0;
}

.nav ul li {
  color: #fff;
  display: inline-block; 
  height: 80px;
  line-height: 80px; 
  list-style: none;
  padding: 0 10px;
  transition: background .5s; 
}

.btn:hover, .nav ul li:hover {
  background: #117bff;
  cursor: pointer; 
  transition: background .5s;  
}

.main .container {
  margin: 80px auto;
}

.main img {
  float: left;
  margin: 50px 80px 50px 0;
}

.jumbotron {
  background: url(https://content.codecademy.com/projects/innovation-cloud/jumbotron_bg.jpg) center center;
  background-size: cover;
  height: 600px; 
}

.jumbotron .container {
  position: relative;
  top: 220px;
}

.jumbotron h2 {
  color: #fff;
  text-align: right; 
}

.jumbotron p {
  color: #fff; 
  text-align: right; 
}

.jumbotron .btn {
  margin: 10px 0 0;
  float: right; 
}

.footer { 
  background: #000;
  height: 80px; 
  padding-bottom: 50px;
}

.footer p { 
  color: #fff;
  font-size: 14px;  
  height: 80px; 
  line-height: 80px;
  margin: 0;  
}

@media (max-width: 500px) {
  .header h1 {
    font-size: 50px;
    line-height: 64px;
  }

  .main, .jumbotron {
    padding: 0 30px;
  }

  .main img {
    width: 100%;
  }
}
```

## CSS Anatomy

The diagram on the right shows two different methods, or *syntaxes*, for
writing CSS code. The first syntax shows CSS applied as a *ruleset*,
while the second shows it written as an *inline style*. Two different
methods of writing CSS may seem a bit intimidating at first, but it’s
not as bad as it looks!

Both methods contain common features in their <a
href="https://www.codecademy.com/resources/docs/css/anatomy?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">anatomy</a>. Notice how both syntaxes contain a
*declaration*. Declarations are the core of CSS. They apply a style to
the selected element. Here, the <a
href="https://www.codecademy.com/resources/docs/html/paragraphs?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<p\></code></a> element has been
selected in both syntaxes and will be styled to display the text in
blue.

Understanding that a declaration is used to style a selected element is
key to learning how to style HTML documents with CSS! The terms below
explain each of the labels in the diagram on the right.

**Ruleset Terms:**

- *Selector*—The beginning of the ruleset used to target the element
  that will be styled.
- *Declaration Block*—The code in-between (and including) the curly
  braces (`{ }`) that contains the CSS declaration(s).
- *Declaration*—The group name for a property and value pair that
  applies a style to the selected element.
- *Property*—The first part of the declaration that signifies what
  visual characteristic of the element is to be modified.
- *Value*—The second part of the declaration that signifies the value of
  the property.

**Inline Style Terms:**

- *Opening Tag*—The start of an <a
  href="https://www.codecademy.com/resources/docs/html/elements?page_req=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">HTML element</a>. This is the element that will be
  styled.
- *Attribute*—The style <a
  href="https://www.codecademy.com/resources/docs/html/attributes?page_req=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">attribute</a> is used to add CSS inline styles to an
  HTML element.
- *Declaration*—The group name for a property and value pair that
  applies a style to the selected element.
- *Property*—The first part of the declaration that signifies what
  visual characteristic of the element is to be modified.
- *Value*—The second part of the declaration that signifies the value of
  the property.

Don’t worry about memorizing all of these—you will get acquainted with
them more and more as the course progresses! Feel free to come back and
use this exercise as a reference later on.



Study the diagrams to become familiar with the CSS syntax and the new
terms that will be used throughout the course.

Click the “Next” button when you are ready to write some code!



<img src="https://static-assets.codecademy.com/Courses/Learn-CSS/Setup-and-Syntax/CSS_Anatomy-v2-nobgfill.svg" alt="table labeling different components of CSS syntaxes" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Inline Styles

Although CSS is a different language than HTML, it’s possible to write
CSS code directly within HTML code using *inline styles*.

To style an HTML element, you can add the `style` attribute directly to
the opening tag. After you add the attribute, you can set it equal to
the CSS style(s) you’d like applied to that element.

``` html
<p style='color: red;'>I'm learning to code!</p>
```

The code in the example above demonstrates how to use inline styling.
The paragraph element has a `style` attribute within its opening tag.
Next, the `style` attribute is set equal to `color: red;`, which will
set the color of the paragraph text to red within the browser.

If you’d like to add *more* than one style with inline styles, simply
keep adding to the `style` attribute. Make sure to end the styles with a
semicolon (`;`).

``` html
<p style='color: red; font-size: 20px;'>I'm learning to code!</p>
```

It’s important to know that inline styles are a quick way of directly
styling an HTML element, but are rarely used when creating websites. But
you may encounter circumstances where inline styling is necessary, so
understanding how it works, and recognizing it in HTML code is good
knowledge to have. Soon you’ll learn the proper way to add CSS code!



**1.**

In `index.html`, use inline styling to set the `color` of the first
paragraph (the first `<p>` element) to `green`.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Vacation World</title>
</head>

<body>
  <img src='https://content.codecademy.com/courses/freelance-1/unit-2/explorer.jpeg' />
  <h1 class='title'>Top Vacation Spots</h1>
  <h5>By: Stacy Gray</h5>
  <h6>Published: 2 Days Ago</h6>

  <p style='color: green;'>The world is full of fascinating places. Planning the perfect vacation involves packing up, leaving home, and experiencing something new.</p>

  <h2 class='destination'>1. Florence, Italy</h2>
  <div class='description'>A city-size shrine to the Renaissance, Florence offers frescoes, sculptures, churches, palaces, and other monuments from the richest cultural flowering the world has known. Names from its dazzling historical past; Dante, Michelangelo, Galileo, Machiavelliare are some of the most resonant of the medieval age. <a href='https://www.nationalgeographic.com/travel/destination/florence' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Museums</li>
      <li>Bike Tours</li>
      <li>Historical Monuments</li>
    </ul>
  </div>

  <h2 class='destination'>2. Beijing, China</h2>
  <div class='description'>A city in the midst of reinventing itself and continuing to build on the success of the 2008 Summer Olympics, Beijing is a place of frenzied construction. New housing, new roads, and new sports venues seem to spring up overnight. At the same time, the capital of the Peoples Republic of China remains an epicenter of tradition, with the treasures of nearly 2,000 years as the imperial capital still on view in the famed Forbidden City and in the luxuriant pavilions and gardens of the Summer Palace.
    <a href='https://www.nationalgeographic.com/travel/destination/beijing' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Biking</li>
      <li>Historical Sites</li>
      <li>Restaurants and Dining</li>
    </ul>
  </div>

  <h2 class='destination'>3. Seoul, South Korea</h2>
  <div class='description'>The Korean capital is a city of contrasts. Fourteenth-century city gates squat in the shadow of 21st-century skyscrapers, while the broad Han River is back-dropped by granite mountains rising in the city center complete with alpine highways speeding around their contours and temples nestling among their crags. Fashionable, gadget-laden youths battle for sidewalk space with fortune-tellers and peddlers, while tiny neighborhoods of traditional cottages contrast with endless ranks of identical apartments.
    <a href='https://www.nationalgeographic.com/travel/destination/seoul' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Parasailing</li>
      <li>Segway Tours</li>
      <li>Spas and Resorts</li>
    </ul>
  </div>

  <h2> More Destinations </h2>
  <ul>
    <li><h4 class='destination'>Jackson Hole, Wyoming</h4></li>
    <li><h4 class='destination'>Cape Town, South Africa</h4></li>
    <li><h4 class='destination'>La Paz, Bolivia</h4></li>
  </ul>

  <p>&mdash;Best of luck with your travels, and be sure to send pictures and stories. We'd love to hear them!</p>


</body>

</html>
```

## Internal Stylesheet

As previously stated, inline styles are not the best way to style HTML
elements. If you wanted to style, for example, multiple <a
href="https://www.codecademy.com/resources/docs/html/elements/h1-h6?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<h1\></code> elements</a>, you
would have to add inline styling to each element manually. In addition,
you would also have to maintain the HTML code when additional `<h1>`
elements are added.

Fortunately, HTML allows you to write CSS code in its own dedicated
section with a <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<style\></code></a> element nested
inside of the <a
href="https://www.codecademy.com/resources/docs/html/elements/head?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<head\></code></a> element. The
CSS code inside the `<style>` element is often referred to as an
*internal stylesheet*.

An internal stylesheet has certain benefits and use cases over inlines
styles, but once again, it’s not best practice (we’ll get there, we
promise). Understanding how to use internal stylesheets is nonetheless
helpful knowledge to have.

To create an internal stylesheet, a `<style>` element must be placed
inside of the `<head>` element.

``` html
<head>
  <style>
 
 
  </style>
</head>
```

After adding opening and closing `<style>` tags in the head section, you
can begin writing CSS code.

``` html
<head>
  <style>
    p {
      color: red;
      font-size: 20px;
    }
  </style>
</head>
```

The CSS code in the example above changes the color of all paragraph
text to red and also changes the size of the text to 20 pixels. Note how
the syntax of the CSS code matches (for the most part) the syntax you
used for inline styling. The main difference is that you can specify
which elements to apply the styling.



**1.**

Let’s move the inline style that was added to the paragraph into an
internal stylesheet.

Start by adding an empty `<style>` element in the head of `index.html`.

**2.**

Inside of the `<style>` element, add a CSS ruleset targeting the
paragraph (the `<p>` element). You can leave the declaration block empty
for now.

**3.**

Next, place just the declaration from the inline style into the empty
declaration block in the inline stylesheet.

**4.**

Finally, delete the inline style from the `<p>` element.

Notice how the styling works the same in the stylesheet as it did in the
inline style!



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Vacation World</title>
  <style>
    p {
      color: green;
    }
  </style>
</head>

<body>
  <img src='https://content.codecademy.com/courses/freelance-1/unit-2/explorer.jpeg' />
  <h1 class='title'>Top Vacation Spots</h1>
  <h5>By: Stacy Gray</h5>
  <h6>Published: 2 Days Ago</h6>

  <p>The world is full of fascinating places. Planning the perfect vacation involves packing up, leaving home, and experiencing something new.</p>

  <h2 class='destination'>1. Florence, Italy</h2>
  <div class='description'>A city-size shrine to the Renaissance, Florence offers frescoes, sculptures, churches, palaces, and other monuments from the richest cultural flowering the world has known. Names from its dazzling historical past; Dante, Michelangelo, Galileo, Machiavelliare are some of the most resonant of the medieval age. <a href='https://www.nationalgeographic.com/travel/destination/florence' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Museums</li>
      <li>Bike Tours</li>
      <li>Historical Monuments</li>
    </ul>
  </div>

  <h2 class='destination'>2. Beijing, China</h2>
  <div class='description'>A city in the midst of reinventing itself and continuing to build on the success of the 2008 Summer Olympics, Beijing is a place of frenzied construction. New housing, new roads, and new sports venues seem to spring up overnight. At the same time, the capital of the Peoples Republic of China remains an epicenter of tradition, with the treasures of nearly 2,000 years as the imperial capital still on view in the famed Forbidden City and in the luxuriant pavilions and gardens of the Summer Palace.
    <a href='https://www.nationalgeographic.com/travel/destination/beijing' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Biking</li>
      <li>Historical Sites</li>
      <li>Restaurants and Dining</li>
    </ul>
  </div>

  <h2 class='destination'>3. Seoul, South Korea</h2>
  <div class='description'>The Korean capital is a city of contrasts. Fourteenth-century city gates squat in the shadow of 21st-century skyscrapers, while the broad Han River is back-dropped by granite mountains rising in the city center complete with alpine highways speeding around their contours and temples nestling among their crags. Fashionable, gadget-laden youths battle for sidewalk space with fortune-tellers and peddlers, while tiny neighborhoods of traditional cottages contrast with endless ranks of identical apartments.
    <a href='https://www.nationalgeographic.com/travel/destination/seoul' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Parasailing</li>
      <li>Segway Tours</li>
      <li>Spas and Resorts</li>
    </ul>
  </div>

  <h2> More Destinations </h2>
  <ul>
    <li><h4 class='destination'>Jackson Hole, Wyoming</h4></li>
    <li><h4 class='destination'>Cape Town, South Africa</h4></li>
    <li><h4 class='destination'>La Paz, Bolivia</h4></li>
  </ul>

  <p>&mdash;Best of luck with your travels, and be sure to send pictures and stories. We'd love to hear them!</p>


</body>

</html>
```

## External Stylesheet

Developers avoid mixing code by storing HTML and CSS code in separate
files (HTML files contain only HTML code, and CSS files contain only CSS
code).

You can create an external stylesheet by using the `.css` file name
extension, like so: `style.css`

With an external stylesheet, you can write all the CSS code needed to
style a page without sacrificing the readability and maintainability of
your HTML file.



**1.**

Take a look at `index.html`. Cut the CSS code ruleset in between the
opening and closing `<style>` tags and paste it directly into the file
called `style.css`.

Delete the remaining `<style>` element (now empty) from `index.html` and
press the Run button.

Hmm, the font changes didn’t take effect? Click the Next button to find
out why.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Vacation World</title>
</head>

<body>
  <img src='https://content.codecademy.com/courses/freelance-1/unit-2/explorer.jpeg' />
  <h1 class='title'>Top Vacation Spots</h1>
  <h5>By: Stacy Gray</h5>
  <h6>Published: 2 Days Ago</h6>

  <p>The world is full of fascinating places. Planning the perfect vacation involves packing up, leaving home, and experiencing something new.</p>

  <h2 class='destination'>1. Florence, Italy</h2>
  <div class='description'>A city-size shrine to the Renaissance, Florence offers frescoes, sculptures, churches, palaces, and other monuments from the richest cultural flowering the world has known. Names from its dazzling historical past; Dante, Michelangelo, Galileo, Machiavelliare are some of the most resonant of the medieval age. <a href='https://www.nationalgeographic.com/travel/destination/florence' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Museums</li>
      <li>Bike Tours</li>
      <li>Historical Monuments</li>
    </ul>
  </div>

  <h2 class='destination'>2. Beijing, China</h2>
  <div class='description'>A city in the midst of reinventing itself and continuing to build on the success of the 2008 Summer Olympics, Beijing is a place of frenzied construction. New housing, new roads, and new sports venues seem to spring up overnight. At the same time, the capital of the Peoples Republic of China remains an epicenter of tradition, with the treasures of nearly 2,000 years as the imperial capital still on view in the famed Forbidden City and in the luxuriant pavilions and gardens of the Summer Palace.
    <a href='https://www.nationalgeographic.com/travel/destination/beijing' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Biking</li>
      <li>Historical Sites</li>
      <li>Restaurants and Dining</li>
    </ul>
  </div>

  <h2 class='destination'>3. Seoul, South Korea</h2>
  <div class='description'>The Korean capital is a city of contrasts. Fourteenth-century city gates squat in the shadow of 21st-century skyscrapers, while the broad Han River is back-dropped by granite mountains rising in the city center complete with alpine highways speeding around their contours and temples nestling among their crags. Fashionable, gadget-laden youths battle for sidewalk space with fortune-tellers and peddlers, while tiny neighborhoods of traditional cottages contrast with endless ranks of identical apartments.
    <a href='https://www.nationalgeographic.com/travel/destination/seoul' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Parasailing</li>
      <li>Segway Tours</li>
      <li>Spas and Resorts</li>
    </ul>
  </div>

  <h2> More Destinations </h2>
  <ul>
    <li><h4 class='destination'>Jackson Hole, Wyoming</h4></li>
    <li><h4 class='destination'>Cape Town, South Africa</h4></li>
    <li><h4 class='destination'>La Paz, Bolivia</h4></li>
  </ul>

  <p>&mdash;Best of luck with your travels, and be sure to send pictures and stories. We'd love to hear them!</p>


</body>

</html>
```

## Linking the CSS File

Perfect! We successfully separated structure (HTML) from styling (CSS),
but the web page still looks bland. Why?

When HTML and CSS codes are in separate files, the files must be linked.
Otherwise, the HTML file won’t be able to locate the CSS code, and the
styling will not be applied.

You can use the <a
href="https://www.codecademy.com/resources/docs/html/elements/link?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<link\></code></a> element to link
HTML and CSS files together. The `<link>` element must be placed within
the head of the HTML file. It is a self-closing tag and requires the
following attributes:

1.  `href` — like the anchor element, the value of this attribute must
    be the address, or path, to the CSS file.
2.  `rel` — this attribute describes the relationship between the HTML
    file and the CSS file. Because you are linking to a stylesheet, the
    value should be set to `stylesheet`.

When linking an HTML file and a CSS file together, the `<link>` element
will look like the following:

``` html
<link href='https://www.codecademy.com/stylesheets/style.css' rel='stylesheet'>
```

Note that in the example above, the path to the stylesheet is a URL:

    https://www.codecademy.com/stylesheets/style.css

Specifying the path to the stylesheet using a URL is one way of linking
a stylesheet.

If the CSS file is stored in the same
<a href="https://en.wikipedia.org/wiki/Directory_(computing)"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">directory</a> as your HTML file, then you
can specify a <a
href="https://www.codecademy.com/resources/docs/general/file-paths?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">relative path</a> instead of a URL, like so:

``` html
<link href='./style.css' rel='stylesheet'>
```

Using a relative path is very common way of linking a stylesheet.



**1.**

Let’s link the stylesheet `style.css` to the HTML file `index.html`.

First, add a `<link>` element within the `<head>` section.

**2.**

Next, add the `href` attribute to the `<link>` element and set it equal
to `style.css`.

Take a look at the web page in the browser to the right. Do you notice
any changes yet?

**3.**

Finally, add the `rel` attribute and set it to the correct value. Keep
an eye on the first paragraph’s font—it should appear different from the
destinations’ descriptions when your stylesheet is linked correctly.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Vacation World</title>
  <link href='style.css' rel='stylesheet'>
</head>

<body>
  <img src='https://content.codecademy.com/courses/freelance-1/unit-2/explorer.jpeg' />
  <h1 class='title'>Top Vacation Spots</h1>
  <h5>By: Stacy Gray</h5>
  <h6>Published: 2 Days Ago</h6>

  <p>The world is full of fascinating places. Planning the perfect vacation involves packing up, leaving home, and experiencing something new.</p>

  <h2 class='destination'>1. Florence, Italy</h2>
  <div class='description'>A city-size shrine to the Renaissance, Florence offers frescoes, sculptures, churches, palaces, and other monuments from the richest cultural flowering the world has known. Names from its dazzling historical past; Dante, Michelangelo, Galileo, Machiavelliare are some of the most resonant of the medieval age. <a href='https://www.nationalgeographic.com/travel/destination/florence' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Museums</li>
      <li>Bike Tours</li>
      <li>Historical Monuments</li>
    </ul>
  </div>

  <h2 class='destination'>2. Beijing, China</h2>
  <div class='description'>A city in the midst of reinventing itself and continuing to build on the success of the 2008 Summer Olympics, Beijing is a place of frenzied construction. New housing, new roads, and new sports venues seem to spring up overnight. At the same time, the capital of the Peoples Republic of China remains an epicenter of tradition, with the treasures of nearly 2,000 years as the imperial capital still on view in the famed Forbidden City and in the luxuriant pavilions and gardens of the Summer Palace.
    <a href='https://www.nationalgeographic.com/travel/destination/beijing' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Biking</li>
      <li>Historical Sites</li>
      <li>Restaurants and Dining</li>
    </ul>
  </div>

  <h2 class='destination'>3. Seoul, South Korea</h2>
  <div class='description'>The Korean capital is a city of contrasts. Fourteenth-century city gates squat in the shadow of 21st-century skyscrapers, while the broad Han River is back-dropped by granite mountains rising in the city center complete with alpine highways speeding around their contours and temples nestling among their crags. Fashionable, gadget-laden youths battle for sidewalk space with fortune-tellers and peddlers, while tiny neighborhoods of traditional cottages contrast with endless ranks of identical apartments.
    <a href='https://www.nationalgeographic.com/travel/destination/seoul' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Parasailing</li>
      <li>Segway Tours</li>
      <li>Spas and Resorts</li>
    </ul>
  </div>

  <h2> More Destinations </h2>
  <ul>
    <li><h4 class='destination'>Jackson Hole, Wyoming</h4></li>
    <li><h4 class='destination'>Cape Town, South Africa</h4></li>
    <li><h4 class='destination'>La Paz, Bolivia</h4></li>
  </ul>

  <p>&mdash;Best of luck with your travels, and be sure to send pictures and stories. We'd love to hear them!</p>


</body>

</html>
```

## Review

Great work so far! By understanding how to incorporate CSS code into
your HTML file, as well as learning some of the key terms, you’re on
your way to creating spectacular websites with HTML and CSS.

Let’s review what you learned so far:

- The basic anatomy of CSS syntax written for both inline styles and
  stylesheets.
- Some commonly used CSS terms, such as *ruleset*, *selector*, and
  *declaration*.
- CSS inline styles can be written inside the opening HTML tag using the
  `style` attribute.
- Inline styles can be used to style HTML, but it is not the best
  practice.
- An internal stylesheet is written using the `<style>` element inside
  the `<head>` element of an HTML file.
- Internal stylesheets can be used to style HTML but are also not best
  practice.
- An external stylesheet separates CSS code from HTML, by using the
  `.css` file extension.
- External stylesheets are the best approach when it comes to using HTML
  and CSS.
- External stylesheets are linked to HTML using the `<link>` element.

Take this knowledge to the next lesson, where you start learning how to
select HTML elements to style!

Here are a few more resources to add to your toolkit:

- <a href="https://www.codecademy.com/resources/docs/css"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Codecademy Docs: CSS</a>
- <a href="https://www.codecademy.com/workspaces/new"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Codecademy Workspaces: CSS</a>

Make sure to bookmark these links so you have them at your disposal.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Vacation World</title>
  <link href='style.css' rel='stylesheet'>
</head>

<body>
  <img src='https://content.codecademy.com/courses/freelance-1/unit-2/explorer.jpeg' />
  <h1 class='title'>Top Vacation Spots</h1>
  <h5>By: Stacy Gray</h5>
  <h6>Published: 2 Days Ago</h6>

  <p>The world is full of fascinating places. Planning the perfect vacation involves packing up, leaving home, and experiencing something new.</p>

  <h2 class='destination'>1. Florence, Italy</h2>
  <div class='description'>A city-size shrine to the Renaissance, Florence offers frescoes, sculptures, churches, palaces, and other monuments from the richest cultural flowering the world has known. Names from its dazzling historical past; Dante, Michelangelo, Galileo, Machiavelliare are some of the most resonant of the medieval age. <a href='https://www.nationalgeographic.com/travel/destination/florence' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Museums</li>
      <li>Bike Tours</li>
      <li>Historical Monuments</li>
    </ul>
  </div>

  <h2 class='destination'>2. Beijing, China</h2>
  <div class='description'>A city in the midst of reinventing itself and continuing to build on the success of the 2008 Summer Olympics, Beijing is a place of frenzied construction. New housing, new roads, and new sports venues seem to spring up overnight. At the same time, the capital of the Peoples Republic of China remains an epicenter of tradition, with the treasures of nearly 2,000 years as the imperial capital still on view in the famed Forbidden City and in the luxuriant pavilions and gardens of the Summer Palace.
    <a href='https://www.nationalgeographic.com/travel/destination/beijing' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Biking</li>
      <li>Historical Sites</li>
      <li>Restaurants and Dining</li>
    </ul>
  </div>

  <h2 class='destination'>3. Seoul, South Korea</h2>
  <div class='description'>The Korean capital is a city of contrasts. Fourteenth-century city gates squat in the shadow of 21st-century skyscrapers, while the broad Han River is back-dropped by granite mountains rising in the city center complete with alpine highways speeding around their contours and temples nestling among their crags. Fashionable, gadget-laden youths battle for sidewalk space with fortune-tellers and peddlers, while tiny neighborhoods of traditional cottages contrast with endless ranks of identical apartments.
    <a href='https://www.nationalgeographic.com/travel/destination/seoul' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Parasailing</li>
      <li>Segway Tours</li>
      <li>Spas and Resorts</li>
    </ul>
  </div>

  <h2> More Destinations </h2>
  <ul>
    <li><h4 class='destination'>Jackson Hole, Wyoming</h4></li>
    <li><h4 class='destination'>Cape Town, South Africa</h4></li>
    <li><h4 class='destination'>La Paz, Bolivia</h4></li>
  </ul>

  <p>&mdash;Best of luck with your travels, and be sure to send pictures and stories. We'd love to hear them!</p>


</body>

</html>
```

``` css
p {
  color: green;
}
```

<style type="text/css">
p {
  color: green;
}
&#10;</style>

# Selectors

## Type

Remember that *declarations* are a fundamental part of CSS because they
apply a style to a selected element. But how do you decide which
elements will get the style? With a <a
href="https://www.codecademy.com/resources/docs/css/selectors?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>selector</em></a>.

A selector is used to target the specific HTML element(s) to be styled
by the declaration. One selector you may already be familiar with is the
*type* selector. Just like its name suggests, the type selector matches
the *type* of the element in the HTML document.

In the previous lesson, you changed the color of a paragraph element.

``` css
p {
  color: green;
}
```

This is an instance of using the type selector! The element type is `p`,
which comes from the HTML `<p>` element.

Some important notes on the type selector:

- The type selector does not include the angle brackets.
- Since element types are often referred to by their opening tag name,
  the type selector is sometimes referred to as the *tag name* or
  *element* selector.



**1.**

Open `style.css`. On line 5, add a ruleset using the type selector to
target all `<h1>` elements. Leave the declaration block (`{ }`) empty
for now.

**2.**

Inside the curly braces of the `h1` selector, add the declaration below:

``` css
color: maroon;
```

Note that the content of the web page will update because we’ve already
linked `style.css` to `index.html`.



``` css
p {
  color: green;
}

h1 {
  color: maroon;
}
```

## Universal

You learned how the *type selector* selects all elements of a given
type. Well, the *universal selector* selects all elements of *any* type.

Targeting all of the elements on the page has a few specific use cases,
such as resetting default browser styling, or selecting all <a
href="https://discuss.codecademy.com/t/what-are-parent-elements-and-child-elements-in-html-and-css/283224"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">children</a> of a parent element. Don’t
worry if you don’t understand the use cases right now—we will get to
them later on in our Learn CSS journey.

The universal selector uses the `*` character in the same place where
you specified the type selector in a ruleset, like so:

``` css
* { 
  font-family: Verdana;
}
```

In the code above, every text element on the page will have its font
changed to `Verdana`.



**1.**

To see how the universal selector targets all elements on a page, copy
the rule below and paste it on the first line of **style.css**.

``` css
* {
  border: 1px solid red;
}
```

Then, click “Run”.

Since the universal selector targets all elements, every element on the
page now has a red border. Not a visually pleasing look, but you can see
how all of the elements have been modified.



``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}
```

## Class

CSS is not limited to selecting elements by their type. As you know,
HTML elements can also have <a
href="https://www.codecademy.com/courses/learn-html/lessons/intro-to-html/exercises/attr-html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">attributes</a>. When working with HTML and CSS a <a
href="https://www.codecademy.com/resources/docs/html/classes?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>class</em></a> attribute is one of the most common
ways to select an element.

For example, consider the following HTML:

``` html
<p class='brand'>Sole Shoe Company</p>
```

The paragraph element in the example above has a `class` attribute
within the opening tag of the`<p>` element. The `class` attribute is set
to `'brand'`. To select this element using CSS, we can create a ruleset
with a class selector of `.brand`.

``` css
.brand {
 
}
```

To select an HTML element by its class using CSS, a period (`.`) must be
prepended to the class’s name. In the example above, the class is
`brand`, so the CSS selector for it is `.brand`.



**1.**

On line 11 of **index.html** there is an `<h1>` element with the class
`title`.

Now, open **style.css**. On line 13, use the class selector to create a
ruleset that selects that HTML element using the class `title`.

**2.**

Inside the curly braces of the `.title` selector, add the declaration:

``` css
color: teal;
```

This code will change the color of the `h1` with the `title` class to
teal.

We’ll see in a later exercise why using `.title` overrides the `h1`
selector.



``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}
```

## Multiple Classes

We can use CSS to select an HTML element’s `class` attribute by name.
And so far, we’ve selected elements using only one class name per
element. If every HTML element had a single class, all the style
information for each element would require a new class.

Luckily, it’s possible to add more than one class name to an HTML
element’s `class` attribute.

For instance, perhaps there’s a heading element that needs to be green
and bold. You could write two CSS rulesets like so:

``` css
.green {
  color: green;
}
 
.bold {
  font-weight: bold;
}
```

Then, you could include both of these classes on one HTML element like
this:

``` html
<h1 class='green bold'> ... </h1>
```

We can add multiple classes to an HTML element’s `class` attribute by
separating them with a space. This enables us to mix and match CSS
classes to create many unique styles without writing a custom class for
every style combination needed.



**1.**

In **index.html**, on line 11, there is an `<h1>` element with a class
of `title`. Add a second class named `uppercase` to this element.

**2.**

Next, navigate to **style.css**, and add a ruleset using the
`.uppercase` class selector. Then, add the declaration below inside of
the curly braces.

``` css
text-transform: uppercase;
```



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Vacation World</title>
  <link href='style.css' rel='stylesheet'>
</head>

<body>
  <img src='https://content.codecademy.com/courses/freelance-1/unit-2/explorer.jpeg' />
  <h1 class='title uppercase'>Top Vacation Spots</h1>
  <h5>By: Stacy Gray</h5>
  <h6>Published: 2 Days Ago</h6>

  <p>The world is full of fascinating places. Planning the perfect vacation involves packing up, leaving home, and experiencing something new.</p>

  <h2 class='destination'>1. Florence, Italy</h2>
  <div class='description'>A city-size shrine to the Renaissance, Florence offers frescoes, sculptures, churches, palaces, and other monuments from the richest cultural flowering the world has known. Names from its dazzling historical past; Dante, Michelangelo, Galileo, Machiavelliare are some of the most resonant of the medieval age. <a href='https://www.nationalgeographic.com/travel/destination/florence' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Museums</li>
      <li>Bike Tours</li>
      <li>Historical Monuments</li>
    </ul>
  </div>

  <h2 class='destination'>2. Beijing, China</h2>
  <div class='description'>A city in the midst of reinventing itself and continuing to build on the success of the 2008 Summer Olympics, Beijing is a place of frenzied construction. New housing, new roads, and new sports venues seem to spring up overnight. At the same time, the capital of the Peoples Republic of China remains an epicenter of tradition, with the treasures of nearly 2,000 years as the imperial capital still on view in the famed Forbidden City and in the luxuriant pavilions and gardens of the Summer Palace.
    <a href='https://www.nationalgeographic.com/travel/destination/beijing' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Biking</li>
      <li>Historical Sites</li>
      <li>Restaurants and Dining</li>
    </ul>
  </div>

  <h2 class='destination'>3. Seoul, South Korea</h2>
  <div class='description'>The Korean capital is a city of contrasts. Fourteenth-century city gates squat in the shadow of 21st-century skyscrapers, while the broad Han River is back-dropped by granite mountains rising in the city center complete with alpine highways speeding around their contours and temples nestling among their crags. Fashionable, gadget-laden youths battle for sidewalk space with fortune-tellers and peddlers, while tiny neighborhoods of traditional cottages contrast with endless ranks of identical apartments.
    <a href='https://www.nationalgeographic.com/travel/destination/seoul' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Parasailing</li>
      <li>Segway Tours</li>
      <li>Spas and Resorts</li>
    </ul>
  </div>

  <h2> More Destinations </h2>
  <ul>
    <li><h4 class='destination'>Jackson Hole, Wyoming</h4></li>
    <li><h4 class='destination'>Cape Town, South Africa</h4></li>
    <li><h4 class='destination'>La Paz, Bolivia</h4></li>
  </ul>

  <p>&mdash;Best of luck with your travels, and be sure to send pictures and stories. We'd love to hear them!</p>


</body>

</html>
```

``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}
```

## ID

Oftentimes it’s important to select a single element with CSS to give it
its own unique style. If an HTML element needs to be styled uniquely, we
can give it an ID using the `id` attribute.

``` html
<h1 id='large-title'> ... </h1>
```

In contrast to `class` which accepts multiple values, and can be used
broadly throughout an HTML document, an element’s `id` can only have a
single value, and only be used once per page.

To select an element’s ID with CSS, we prepend the `id` name with a
number sign (`#`). For instance, if we wanted to select the HTML element
in the example above, it would look like this:

``` css
#large-title {
 
}
```

The `id` name is `large-title`, therefore the CSS selector for it is
`#large-title`.



**1.**

On line 11 of **index.html**, inside the `h1` opening tag and after the
class attribute, add an `id` with the value `article-title`.

**2.**

Navigate to **style.css**. Add a ruleset using the ID selector to target
the `article-title` ID. Inside of its curly braces, write the
declaration:

``` css
font-family: cursive;
```

You’ll see the title change to a cursive font bringing some beauty and
elegance to the page! Okay, maybe not so much. But the font does change.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Vacation World</title>
  <link href='style.css' rel='stylesheet'>
</head>

<body>
  <img src='https://content.codecademy.com/courses/freelance-1/unit-2/explorer.jpeg' />
  <h1 class='title uppercase' id='article-title'>Top Vacation Spots</h1>
  <h5>By: Stacy Gray</h5>
  <h6>Published: 2 Days Ago</h6>

  <p>The world is full of fascinating places. Planning the perfect vacation involves packing up, leaving home, and experiencing something new.</p>

  <h2 class='destination'>1. Florence, Italy</h2>
  <div class='description'>A city-size shrine to the Renaissance, Florence offers frescoes, sculptures, churches, palaces, and other monuments from the richest cultural flowering the world has known. Names from its dazzling historical past; Dante, Michelangelo, Galileo, Machiavelliare are some of the most resonant of the medieval age. <a href='https://www.nationalgeographic.com/travel/destination/florence' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Museums</li>
      <li>Bike Tours</li>
      <li>Historical Monuments</li>
    </ul>
  </div>

  <h2 class='destination'>2. Beijing, China</h2>
  <div class='description'>A city in the midst of reinventing itself and continuing to build on the success of the 2008 Summer Olympics, Beijing is a place of frenzied construction. New housing, new roads, and new sports venues seem to spring up overnight. At the same time, the capital of the Peoples Republic of China remains an epicenter of tradition, with the treasures of nearly 2,000 years as the imperial capital still on view in the famed Forbidden City and in the luxuriant pavilions and gardens of the Summer Palace.
    <a href='https://www.nationalgeographic.com/travel/destination/beijing' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Biking</li>
      <li>Historical Sites</li>
      <li>Restaurants and Dining</li>
    </ul>
  </div>

  <h2 class='destination'>3. Seoul, South Korea</h2>
  <div class='description'>The Korean capital is a city of contrasts. Fourteenth-century city gates squat in the shadow of 21st-century skyscrapers, while the broad Han River is back-dropped by granite mountains rising in the city center complete with alpine highways speeding around their contours and temples nestling among their crags. Fashionable, gadget-laden youths battle for sidewalk space with fortune-tellers and peddlers, while tiny neighborhoods of traditional cottages contrast with endless ranks of identical apartments.
    <a href='https://www.nationalgeographic.com/travel/destination/seoul' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Parasailing</li>
      <li>Segway Tours</li>
      <li>Spas and Resorts</li>
    </ul>
  </div>

  <h2> More Destinations </h2>
  <ul>
    <li><h4 class='destination'>Jackson Hole, Wyoming</h4></li>
    <li><h4 class='destination'>Cape Town, South Africa</h4></li>
    <li><h4 class='destination'>La Paz, Bolivia</h4></li>
  </ul>

  <p>&mdash;Best of luck with your travels, and be sure to send pictures and stories. We'd love to hear them!</p>


</body>

</html>
```

``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: cursive;
}
```

## Attribute

You may remember that some HTML elements use attributes to add extra
detail or functionality to the element. Some familiar attributes may be
`href` and `src`, but there are
<a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">many more</a>—including `class` and `id`!

The *attribute selector* can be used to target HTML elements that
already contain attributes. Elements of the same type can be targeted
differently by their attribute or attribute value. This alleviates the
need to add new code, like the `class` or `id` attributes.

Attributes can be selected similarly to types, classes, and IDs.

``` css
[href]{
   color: magenta;
}
```

The most basic syntax is an attribute surrounded by square brackets. In
the above example: `[href]` would target all elements with an `href`
attribute and set the `color` to `magenta`.

And it can get <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors#syntax"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">more granular</a> from there by adding
type and/or attribute values. One way is by using
`type[attribute*=value]`. In short, this code selects an element where
the attribute contains any instance of the specified value. Let’s take a
look at an example.

``` html
<img src='/images/seasons/cold/winter.jpg'>
<img src='/images/seasons/warm/summer.jpg'>
```

The HTML code above renders two <a
href="https://www.codecademy.com/resources/docs/html/elements/img?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<img\></code></a> elements, each
containing a `src` attribute with a value equaling a link to an image
file.

``` css
img[src*='winter'] {
  height: 50px;
}
 
img[src*='summer'] {
  height: 100px;
}
```

Now take a look at the above CSS code. The *attribute selector* is used
to target each image individually.

- The first ruleset looks for an `img` element with an attribute of
  `src` that contains the string `'winter'`, and sets the `height` to
  `50px`.
- The second ruleset looks for an `img` element with an attribute of
  `src` that contains the string `'summer'`, and sets the `height` to
  `100px`.

Notice how no new HTML markup (like a class or id) needed to be added,
and we were still able to modify the styles of each image independently.
This is one advantage to using the attribute selector!



**1.**

To use the attribute selector to select the `<a>` element with an `href`
attribute value containing ‘florence’, add the following code to
**style.css**:

``` css
a[href*='florence'] {
  color: lightgreen;
}
```

Notice how only the “Learn More” link in the Florence, Italy paragraph
changed to light green.

**2.**

Next, in **style.css**, use the attribute selector to select the `<a>`
element that has an `href` attribute value containing `'beijing'`. Add a
declaration of `color: lightblue;` to make the link appear light blue.

**3.**

Finally, use the attribute selector change the `<a>` element that has an
`href` attribute value containing `'seoul'` to `lightpink`.



``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: cursive;
}

a[href*='florence'] {
  color: lightgreen;
}

a[href*='beijing'] {
  color: lightblue;
}

a[href*='seoul'] {
  color: lightpink;
}
```

## Pseudo-class

You may have observed how the appearance of certain elements can change,
or be in a different state, after certain user interactions. For
instance:

- When you click on an `<input>` element, and a blue border is added
  showing that it is in *focus*.
- When you click on a blue `<a>` link to *visit* to another page, but
  when you return the link’s text is purple.
- When you’re filling out a form and the submit button is grayed out and
  *disabled*. But when all of the fields have been filled out, the
  button has color showing that it’s *active*.

These are all examples of pseudo-class selectors in action! In fact,
`:focus`, `:visited`, `:disabled`, and `:active` are all pseudo-classes.
Factors such as user interaction, site navigation, and position in the
document tree can all give elements a different state with pseudo-class.

A pseudo-class can be attached to any selector. It is always written as
a colon `:` followed by a name. For example `p:hover`.

``` css
p:hover {
  background-color: lime;
}
```

In the above code, whenever the mouse hovers over a paragraph element,
that paragraph will have a lime-colored background.



**1.**

Add a ruleset to the end of **style.css** that selects the `<a>`
elements on the page. Leave the declaration block empty for now.

**2.**

Next, add a `:hover` pseudo-class to the `a` selector you just created.

**3.**

Lastly, set the text color to dark orange by adding the following CSS
declaration inside the declaration block:

``` css
color: darkorange;
```

Now when you hover the mouse over the “Learn More” text, the font color
changes to dark orange! Neato.



``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: cursive;
}

a[href*='florence'] {
  color: lightgreen;
}

a[href*='beijing'] {
  color: lightblue;
}

a[href*='seoul'] {
  color: lightpink;
}

a:hover {
  color:darkorange;
}
```

## Classes and IDs

CSS can select HTML elements by their type, class, and ID. CSS classes
and IDs have different purposes, which can affect which one you use to
style HTML elements.

CSS classes are meant to be reused over many elements. By writing CSS
classes, you can style elements in a variety of ways by mixing classes.
For instance, imagine a page with two headlines. One headline needs to
be bold and blue, and the other needs to be bold and green. Instead of
writing separate CSS rules for each headline that repeat each other’s
code, it’s better to write a `.bold` CSS rule, a `.green` CSS rule, and
a `.blue` CSS rule. Then you can give one headline the `bold green`
classes, and the other the `bold blue` classes.

While classes are meant to be used many times, an ID is meant to style
only one element. As you’ll learn in the next exercise, IDs override the
styles of types and classes. Since IDs override these styles, they
should be used sparingly and only on elements that need to always appear
the same.



**1.**

To demonstrate using classes on multiple elements, let’s give a few
elements the same style.

In **index.html**, there are four `<h2>` elements. Give each of them a
class of `heading-background`.

**2.**

Now, let’s give a unique style to a single element using ID.

On line 13 of **index.html**, there’s an `<h6>` element that displays
the time the article on the page was published.

Add an id attribute to the `<h6>`, and give it a value of
`publish-time`.

**3.**

Then, in **style.css**, create a ruleset targeting the new
`heading-background` class, and give it a declaration of:

``` css
background-color: aqua;
```

After you press Run, notice how all of the `<h2>` elements now have the
same style. This `heading-background` class can continue to be applied
to any element you wish to bestow that amazing style onto.

**4.**

Finally, in **style.css**, create another ruleset using the
`publish-time` ID selector. Add the declaration:

``` css
color: gray;
```

Since ID’s are single-use, this element now has a unique ID that can’t
be used again in this document!



``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: cursive;
}

a[href*='florence'] {
  color: lightgreen;
}

a[href*='beijing'] {
  color: lightblue;
}

a[href*='seoul'] {
  color: lightpink;
}

a:hover {
  color:darkorange;
}

.heading-background {
  background-color: aqua;
}

#publish-time {
  color: gray;
}
```

## Specificity

Specificity is the order by which the browser decides which CSS styles
will be displayed. A best practice in CSS is to style elements while
using the lowest degree of specificity so that if an element needs a new
style, it is easy to override.

IDs are the most specific selector in CSS, followed by classes, and
finally, type. For example, consider the following HTML and CSS:

``` html
<h1 class='headline'>Breaking News</h1>
```

``` css
h1 {
  color: red;
}
 
.headline {
  color: firebrick;
}
```

In the example code above, the color of the heading would be set to
`firebrick`, as the class selector is more specific than the type
selector. If an ID attribute (and selector) were added to the code
above, the styles within the ID selector’s body would override all other
styles for the heading.

Over time, as files grow with code, many elements may have IDs, which
can make CSS difficult to edit since a new, more specific style must be
created to change the style of an element.

To make styles easy to edit, it’s best to style with a type selector, if
possible. If not, add a class selector. If that is not specific enough,
then consider using an ID selector.



**1.**

To compare type, class, and ID specificity, let’s add a class and ID to
an existing element.

On line 12 of **index.html**, there is an `<h5>` element with the
author’s name. Give the element a class of `author-class` and an ID of
`author-id`.

**2.**

The element now has 3 ways of selecting it, by type, class, and ID. Add
the 3 following rulesets to the bottom of **style.css** utilizing each
of the selectors:

``` css
h5 {
  color: yellow;
}
 
.author-class {
  color: pink;
}
 
#author-id {
  color: cornflowerblue;
}
```

Each of these rules selects the same element in a different way. Which
style will win the “specificity war”? Click “Run” to find out!

Because ID is the most specific selector, the element will change to
cornflower blue. You may have noticed the other `<h5>` elements changed
to yellow. This is because the most specific (and only) selector they
have is their type.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Vacation World</title>
  <link href='style.css' rel='stylesheet'>
</head>

<body>
  <img src='https://content.codecademy.com/courses/freelance-1/unit-2/explorer.jpeg' />
  <h1 class='title uppercase' id='article-title'>Top Vacation Spots</h1>
  <h5 class='author-class' id='author-id'>By: Stacy Gray</h5>
  <h6 id='publish-time'>Published: 2 Days Ago</h6>

  <p>The world is full of fascinating places. Planning the perfect vacation involves packing up, leaving home, and experiencing something new.</p>

  <h2 class='destination heading-background'>1. Florence, Italy</h2>
  <div class='description'>A city-size shrine to the Renaissance, Florence offers frescoes, sculptures, churches, palaces, and other monuments from the richest cultural flowering the world has known. Names from its dazzling historical past; Dante, Michelangelo, Galileo, Machiavelliare are some of the most resonant of the medieval age. <a href='https://www.nationalgeographic.com/travel/destination/florence' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Museums</li>
      <li>Bike Tours</li>
      <li>Historical Monuments</li>
    </ul>
  </div>

  <h2 class='destination heading-background'>2. Beijing, China</h2>
  <div class='description'>A city in the midst of reinventing itself and continuing to build on the success of the 2008 Summer Olympics, Beijing is a place of frenzied construction. New housing, new roads, and new sports venues seem to spring up overnight. At the same time, the capital of the Peoples Republic of China remains an epicenter of tradition, with the treasures of nearly 2,000 years as the imperial capital still on view in the famed Forbidden City and in the luxuriant pavilions and gardens of the Summer Palace.
    <a href='https://www.nationalgeographic.com/travel/destination/beijing' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Biking</li>
      <li>Historical Sites</li>
      <li>Restaurants and Dining</li>
    </ul>
  </div>

  <h2 class='destination heading-background'>3. Seoul, South Korea</h2>
  <div class='description'>The Korean capital is a city of contrasts. Fourteenth-century city gates squat in the shadow of 21st-century skyscrapers, while the broad Han River is back-dropped by granite mountains rising in the city center complete with alpine highways speeding around their contours and temples nestling among their crags. Fashionable, gadget-laden youths battle for sidewalk space with fortune-tellers and peddlers, while tiny neighborhoods of traditional cottages contrast with endless ranks of identical apartments.
    <a href='https://www.nationalgeographic.com/travel/destination/seoul' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Parasailing</li>
      <li>Segway Tours</li>
      <li>Spas and Resorts</li>
    </ul>
  </div>

  <h2 class='heading-background'> More Destinations </h2>
  <ul>
    <li><h4 class='destination'>Jackson Hole, Wyoming</h4></li>
    <li><h4 class='destination'>Cape Town, South Africa</h4></li>
    <li><h4 class='destination'>La Paz, Bolivia</h4></li>
  </ul>

  <p>&mdash;Best of luck with your travels, and be sure to send pictures and stories. We'd love to hear them!</p>


</body>

</html>
```

``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: cursive;
}

a[href*='florence'] {
  color: lightgreen;
}

a[href*='beijing'] {
  color: lightblue;
}

a[href*='seoul'] {
  color: lightpink;
}

a:hover {
  color:darkorange;
}

.heading-background {
  background-color: aqua;
}

#publish-time {
  color: lightgray;
}

h5 {
  color: yellow;
}

.author-class {
  color: pink;
}

#author-id {
  color: cornflowerblue;
}
```

## Chaining

When writing CSS rules, it’s possible to require an HTML element to have
two or more CSS selectors at the same time.

This is done by combining multiple selectors, which we will refer to as
chaining. For instance, if there was a `special` class for `<h1>`
elements, the CSS would look like below:

``` css
h1.special {
 
}
```

The code above would select only the `<h1>` elements with a class of
`special`. If a `<p>` element also had a class of `special`, the rule in
the example would not style the paragraph.



**1.**

Let’s use chaining to select only the `<h2>` elements with destinations,
and add a style to them.

In **style.css**, write a CSS selector for `<h2>` elements with a class
of `.destination`. Inside the selector’s curly braces, add this
declaration:

``` css
font-family: Tahoma;
```

This will change the font of the `h2` elements that also have the class
`destination`. The last `<h2>` element (“More Destinations”) will remain
unchanged.



``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: cursive;
}

a[href*='florence'] {
  color: lightgreen;
}

a[href*='beijing'] {
  color: lightblue;
}

a[href*='seoul'] {
  color: lightpink;
}

a:hover {
  color:darkorange;
}

.heading-background {
  background-color: aqua;
}

#publish-time {
  color: lightgray;
}

h5 {
  color: yellow;
}

.author-class {
  color: pink;
}

#author-id {
  color: cornflowerblue;
}

h2.destination {
  font-family: Tahoma;
}
```

## Descendant Combinator

In addition to chaining selectors to select elements, CSS also supports
selecting elements that are nested within other HTML elements, also
known as *descendants*. For instance, consider the following HTML:

``` html
<ul class='main-list'>
  <li> ... </li>
  <li> ... </li>
  <li> ... </li>
</ul>
```

The nested `<li>` elements are descendants of the `<ul>` element and can
be selected with the *descendant combinator* like so:

``` css
.main-list li {
 
}
```

In the example above, `.main-list` selects the element with
the`.main-list` class (the `<ul>` element). The descendant `<li>`’s are
selected by adding `li` to the selector, separated by a space. This
results in `.main-list li` as the final selector.

Selecting elements in this way can make our selectors even more specific
by making sure they appear in the context we expect.



**1.**

In **index.html**, each destination has a paragraph with a `description`
class below it. Nested within each description paragraph, is an `<h5>`
element with the text “Top Attractions”. They’re a little hard to read
since they turned yellow. Let’s fix that!

Navigate to **style.css**. Add a ruleset that uses the descendant
combinator to target only the `<h5>` descendants of elements with the
class `.description`.

**2.**

Inside the curly braces of the selector, add a declaration of:

``` css
color: blueviolet;
```



``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: cursive;
}

a[href*='florence'] {
  color: lightgreen;
}

a[href*='beijing'] {
  color: lightblue;
}

a[href*='seoul'] {
  color: lightpink;
}

a:hover {
  color:darkorange;
}

.heading-background {
  background-color: aqua;
}

#publish-time {
  color: lightgray;
}

h5 {
  color: yellow;
}

.author-class {
  color: pink;
}

#author-id {
  color: cornflowerblue;
}

h2.destination {
  font-family: Tahoma;
}

.description h5 {
  color: blueviolet;
}
```

## Chaining and Specificity

In the last exercise, instead of selecting all `<h5>` elements, you
selected only the `<h5>` elements nested inside the `.description`
elements. This CSS selector was more specific than writing only `h5`.
Adding more than one tag, class, or ID to a CSS selector increases the
specificity of the CSS selector.

For instance, consider the following CSS:

``` css
p {
  color: blue;
}
 
.main p {
  color: red;
}
```

Both of these CSS rules define what a `<p>` element should look like.
Since `.main p` has a class and a `p` type as its selector, only the
`<p>` elements inside the `.main` element will appear `red`. This occurs
despite there being another more general rule that states `<p>` elements
should be `blue`.



**1.**

To show how specificity increases with additional selectors, let’s
create another ruleset with the descendant combinator and then compare
it to a ruleset without.

In **style.css**, write a ruleset using the descendant combinator to
select the `<h4>` elements nested in the `<li>` elements. Inside of the
curly braces, write:

``` css
color: gold;
```

Click Run and then scroll down the page to see the `<h4>` elements under
“More Destinations” appear gold.

**2.**

Now, create a ruleset targeting elements with just the `h4` type, and
add a declaration of:

``` css
color: dodgerblue;
```

Will the `<h4>` elements turn blue? Click “Run” to find out.

The elements stay gold because there is a more specific selector for
`<h4>` elements you wrote in the last step. Because of the more specific
CSS selector (`li h4`), the more general selector of `h4` will not take
hold.



``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: cursive;
}

a[href*='florence'] {
  color: lightgreen;
}

a[href*='beijing'] {
  color: lightblue;
}

a[href*='seoul'] {
  color: lightpink;
}

a:hover {
  color:darkorange;
}

.heading-background {
  background-color: aqua;
}

#publish-time {
  color: lightgray;
}

h5 {
  color: yellow;
}

.author-class {
  color: pink;
}

#author-id {
  color: cornflowerblue;
}

h2.destination {
  font-family: Tahoma;
}

.description h5 {
  color: blueviolet;
}

li h4 {
  color: gold;
}

h4 {
  color: dodgerblue;
}
```

## Multiple Selectors

In order to make CSS more concise, it’s possible to add CSS styles to
multiple CSS selectors all at once. This prevents writing repetitive
code.

For instance, the following code has repetitive style attributes:

``` css
h1 {
  font-family: Georgia;
}
 
.menu {
  font-family: Georgia;
}
```

Instead of writing `font-family: Georgia` twice for two selectors, we
can separate the selectors by a comma to apply the same style to both,
like this:

``` css
h1, 
.menu {
  font-family: Georgia;
}
```

By separating the CSS selectors with a comma, both the `<h1>` elements
and the elements with the `menu` class will receive the
`font-family: Georgia` styling.



**1.**

In **style.css**, write selectors for the `<h5>` and `<li>` elements so
they will both be styled with the same CSS rule. Apply this style
declaration:

``` css
font-family: monospace;
```

Notice that both the `<h5>` and `<li>` element’s fonts will change,
without writing the same CSS declaration twice.



``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: Tahoma;
}

a[href*='florence'] {
  color: lightgreen;
}

a[href*='beijing'] {
  color: lightblue;
}

a[href*='seoul'] {
  color: lightpink;
}

a:hover {
  color:darkorange;
}

.heading-background {
  background-color: aqua;
}

#publish-time {
  color: lightgray;
}

h5 {
  color: yellow;
}

.author-class {
  color: pink;
}

#author-id {
  color: cornflowerblue;
}

h2.destination {
  font-family: Tahoma;
}

.description h5 {
  color: blueviolet;
}

li h4 {
  color: gold;
}

h4 {
  color: dodgerblue;
}

li,
h5 {
  font-family: monospace;
}
```

## Review

Throughout this lesson, you learned how to select HTML elements with CSS
and apply styles to them. Let’s review what you learned:

- CSS can select HTML elements by type, class, ID, and attribute.
- All elements can be selected using the universal selector.
- An element can have different states using the pseudo-class selector.
- Multiple CSS classes can be applied to one HTML element.
- Classes can be reusable, while IDs can only be used once.
- IDs are more specific than classes, and classes are more specific than
  type. That means IDs will override any styles from a class, and
  classes will override any styles from a type selector.
- Multiple selectors can be chained together to select an element. This
  raises the specificity but can be necessary.
- Nested elements can be selected by separating selectors with a space.
- Multiple unrelated selectors can receive the same styles by separating
  the selector names with commas.

Great work this lesson. With this knowledge, you’ll be able to use CSS
to change the look and feel of websites to make them look great!



Take some time to take in the beauty of the site you just created, and
feel free to continue when you’re ready!



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Vacation World</title>
  <link href='style.css' rel='stylesheet'>
</head>

<body>
  <img src='https://content.codecademy.com/courses/freelance-1/unit-2/explorer.jpeg' />
  <h1 class='title uppercase' id='article-title'>Top Vacation Spots</h1>
  <h5 class='author-class' id='author-id'>By: Stacy Gray</h5>
  <h6 id='publish-time'>Published: 2 Days Ago</h6>

  <p>The world is full of fascinating places. Planning the perfect vacation involves packing up, leaving home, and experiencing something new.</p>

  <h2 class='destination heading-background'>1. Florence, Italy</h2>
  <div class='description'>A city-size shrine to the Renaissance, Florence offers frescoes, sculptures, churches, palaces, and other monuments from the richest cultural flowering the world has known. Names from its dazzling historical past; Dante, Michelangelo, Galileo, Machiavelliare are some of the most resonant of the medieval age. <a href='https://www.nationalgeographic.com/travel/destination/florence' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Museums</li>
      <li>Bike Tours</li>
      <li>Historical Monuments</li>
    </ul>
  </div>

  <h2 class='destination heading-background'>2. Beijing, China</h2>
  <div class='description'>A city in the midst of reinventing itself and continuing to build on the success of the 2008 Summer Olympics, Beijing is a place of frenzied construction. New housing, new roads, and new sports venues seem to spring up overnight. At the same time, the capital of the Peoples Republic of China remains an epicenter of tradition, with the treasures of nearly 2,000 years as the imperial capital still on view in the famed Forbidden City and in the luxuriant pavilions and gardens of the Summer Palace.
    <a href='https://www.nationalgeographic.com/travel/destination/beijing' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Biking</li>
      <li>Historical Sites</li>
      <li>Restaurants and Dining</li>
    </ul>
  </div>

  <h2 class='destination heading-background'>3. Seoul, South Korea</h2>
  <div class='description'>The Korean capital is a city of contrasts. Fourteenth-century city gates squat in the shadow of 21st-century skyscrapers, while the broad Han River is back-dropped by granite mountains rising in the city center complete with alpine highways speeding around their contours and temples nestling among their crags. Fashionable, gadget-laden youths battle for sidewalk space with fortune-tellers and peddlers, while tiny neighborhoods of traditional cottages contrast with endless ranks of identical apartments.
    <a href='https://www.nationalgeographic.com/travel/destination/seoul' target='_blank'>Learn More</a>.
    <h5>Top Attractions</h5>
    <ul>
      <li>Parasailing</li>
      <li>Segway Tours</li>
      <li>Spas and Resorts</li>
    </ul>
  </div>

  <h2 class='heading-background'> More Destinations </h2>
  <ul>
    <li><h4 class='destination'>Jackson Hole, Wyoming</h4></li>
    <li><h4 class='destination'>Cape Town, South Africa</h4></li>
    <li><h4 class='destination'>La Paz, Bolivia</h4></li>
  </ul>

  <p>&mdash;Best of luck with your travels, and be sure to send pictures and stories. We'd love to hear them!</p>


</body>

</html>
```

``` css
* {
  border: 1px solid red;
}

p {
  color: green;
}

h1 {
  color: maroon;
}

.title {
  color: teal;
}

.uppercase {
  text-transform: uppercase;
}

#article-title {
  font-family: cursive;
}

a[href*='florence'] {
  color: lightgreen;
}

a[href*='beijing'] {
  color: lightblue;
}

a[href*='seoul'] {
  color: lightpink;
}

a:hover {
  color:darkorange;
}

.heading-background {
  background-color: aqua;
}

#publish-time {
  color: lightgray;
}

h5 {
  color: yellow;
}

.author-class {
  color: pink;
}

#author-id {
  color: cornflowerblue;
}

h2.destination {
  font-family: Tahoma;
}

.description h5 {
  color: blueviolet;
}

li h4 {
  color: gold;
}

h4 {
  color: dodgerblue;
}

li,
h5 {
  font-family: monospace;
}
```

# Visual Rules

## Introduction To Visual Rules

The purpose of CSS is to add style to web page, and each element on the
page can have many style properties. Some of the basic properties relate
to the size, style, and color of the element. In this lesson, you’ll
learn some fundamental CSS visual rules that you can use to start
styling web page elements!



Explore the code to the right. Think about how it relates to the web
page on the right side of the browser.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>The Rise of Soccer in The US</title>
  <link href='style.css' rel='stylesheet'>
</head>

<body>
  <div class='content'>
    <img src='https://content.codecademy.com/courses/web-101/unit-4/htmlcss1-img_writer-avatar.jpg' class='writer-img'>
    <h3 class='byline'>Article By: Jane Dover</h3>
    <h1>How the Rise of Soccer in the US Is Changing the Face of Youth Sports</h1>
    <h2>The focus on soccer in youth sports programs is exploding nation-wide</h2>
    <p>When the first World Cup arrived in the US in the 90's everyone officially declared that soccer was it. Well it's taken it's time but we can definitely see the influence of soccer, especially women's soccer, across the US. This year, 3 million kids
      played in youth soccer leagues with 2/3 of those leagues for girls. In fact, in the 12-17 age range the MLS has surpassed the MLB and NFL in popularity.</p>
    <p>Part of this meteoric rise can be attributed to the impressively soaring ad dollars being pumped into the Women's World Cup games in 2014. The women's games generated $40 million for Fox, that's definitely not chump change. And those advertisers,
      like ATT, Coca Cola, Verizon, Nike, Visa, and other heavy hitters, are working to make sure they see those numbers grow year after year by investing in youth soccer facilities and promoting programs across the country. </p>
    <p>Now that big business is involved you can be assured you'll see a continued rise in popularity in soccer across the country for years to come. </p>
  </div>

  <div class='image'>
    <p class='caption'>The local semi- pro soccer team in Seattle, WA plays an international friendly</p>
  </div>
</body>

</html>
```

``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
}

.content {
  padding: 40px;
}

.image {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-4/htmlcss1-img_soccer.jpeg");
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

## Font Family

If you’ve ever used word processing software, like Microsoft Word or
Google Docs, chances are that you probably also used a feature that
allowed you to change the font you were typing in. Font refers to the
technical term <a href="https://en.wikipedia.org/wiki/Typeface"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">typeface</a>, or *font family*.

To change the typeface of text on your web page, you can use the
`font-family` property.

``` css
h1 {
  font-family: Garamond;
}
```

In the example above, the font family for all main heading elements has
been set to `Garamond`.

When setting typefaces on a web page, keep the following points in mind:

- The font specified must be installed on the user’s computer or
  downloaded with the site.
- <a href="http://www.cssfontstack.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Web safe fonts</a> are a group of fonts
  supported across most browsers and operating systems.
- Unless you are using web safe fonts, the font you choose may not
  appear the same between all browsers and operating systems.
- When the name of a typeface consists of more than one word, it’s a
  best practice to enclose the typeface’s name in quotes, like so:

``` css
h1 {
  font-family: 'Courier New';
}
```

You’ll take a deeper look into typography in a later lesson!



**1.**

Inside **style.css**, set the font family of the main heading (`h1`) and
subheading (`h2`) to `Georgia`.

Note that certain font changes may be hard to recognize at first. Feel
free to remove and add the declaration a few times until you notice the
change!

**2.**

Next, add a style rule that sets the font family of the paragraph (`p`)
to `Helvetica`.



``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
}

.content {
  padding: 40px;
}

.image {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-4/htmlcss1-img_soccer.jpeg");
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

## Font Size

Changing the typeface isn’t the only way to customize the text.
Oftentimes, different sections of a web page are highlighted by
modifying the *font size*.

To change the size of text on your web page, you can use the `font-size`
property.

``` css
p {
  font-size: 18px;
}
```

In the example above, the `font-size` of all paragraphs was set to
`18px`. `px` means pixels, which is one way to measure font size.



**1.**

In **style.css**, set the `font-size` of paragraph (`p`) elements to 18
pixels.



``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
  font-family: Georgia;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
  font-family: Georgia;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
  font-family: Helvetica;
  font-size: 18px;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
}

.content {
  padding: 40px;
}

.image {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-4/htmlcss1-img_soccer.jpeg");
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

## Font Weight

In CSS, the `font-weight` property controls how bold or thin text
appears.

``` css
p {
  font-weight: bold;
}
```

In the example above, all paragraphs on the web page would appear
bolded.

The `font-weight` property has another value: `normal`. Why does it
exist?

If we wanted *all* text on a web page to appear bolded, we could select
all text elements and change their font weight to `bold`. If a certain
section of text was required to appear normal, however, we could set the
font weight of that particular element to `normal`, essentially shutting
off bold for that element.



**1.**

In **style.css**, set the font weight of paragraph (`p`) elements to
`bold`.



``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
  font-family: Georgia;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
  font-family: Georgia;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
  font-family: Helvetica;
  font-size: 18px;
  font-weight: bold;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
}

.content {
  padding: 40px;
}

.image {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-4/htmlcss1-img_soccer.jpeg");
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

## Text Align

No matter how much styling is applied to text (typeface, size, weight,
etc.), the text always appears on the left side of the container in
which it resides.

To align text we can use the `text-align` property. The `text-align`
property will align text to the element that holds it, otherwise known
as its *parent*.

``` css
h1 {
  text-align: right;
}
```

The `text-align` property can be set to one of the following commonly
used values:

- `left` — aligns text to the left side of its parent element, which in
  this case is the browser.
- `center` — centers text inside of its parent element.
- `right` — aligns text to the right side of its parent element.
- `justify`— spaces out text in order to align with the right and left
  side of the parent element.



**1.**

In **style.css**, set the `text-align` property of the main heading
(`h1`) so that it appears in the center.



``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
  font-family: Georgia;
  text-align: center;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
  font-family: Georgia;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
  font-family: Helvetica;
  font-size: 18px;
  font-weight: bold;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
}

.content {
  padding: 40px;
}

.image {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-4/htmlcss1-img_soccer.jpeg");
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

## Color and Background Color

Before discussing the specifics of color, it’s important to make two
distinctions about color. Color can affect the following design aspects:

- Foreground color
- Background color

Foreground color is the color that an element appears in. For example,
when a heading is styled to appear green, the *foreground color* of the
heading has been styled. Conversely, when a heading is styled so that
its background appears yellow, the *background color* of the heading has
been styled.

In CSS, these two design aspects can be styled with the following two
properties:

- `color`: this property styles an element’s foreground color
- `background-color`: this property styles an element’s background color

``` css
h1 {
  color: red;
  background-color: blue;
}
```

In the example above, the text of the heading will appear in red, and
the background of the heading will appear blue.



**1.**

Take a look at the caption on the image at the bottom of the page. In
**style.css**, set the background color in the `.caption` selector to
`white`.

**2.**

Then, in the same ruleset, set the color of the text to `black`. That
should make the text a bit easier to read!



``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
  font-family: Georgia;
  text-align: center;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
  font-family: Georgia;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
  font-family: Helvetica;
  font-size: 18px;
  font-weight: bold;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
  background-color: white;
  color: black;
}

.content {
  padding: 40px;
}

.image {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-4/htmlcss1-img_soccer.jpeg");
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

## Opacity

Opacity is the measure of how transparent an element is. It’s measured
from 0 to 1, with 1 representing 100%, or fully visible and opaque, and
0 representing 0%, or fully invisible.

Opacity can be used to make elements fade into others for a nice overlay
effect. To adjust the opacity of an element, the syntax looks like this:

``` css
.overlay {
  opacity: 0.5;
}
```

In the example above, the `.overlay` element would be 50% visible,
letting whatever is positioned behind it show through.



**1.**

Let’s give the caption on the image some transparency! In **style.css**,
set `.caption` to have `0.75` opacity.



``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
  font-family: Georgia;
  text-align: center;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
  font-family: Georgia;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
  font-family: Helvetica;
  font-size: 18px;
  font-weight: bold;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
  background-color: white;
  color: black;
  opacity: 0.75;
}

.content {
  padding: 40px;
}

.image {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-4/htmlcss1-img_soccer.jpeg");
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

## Background Image

CSS has the ability to change the background of an element. One option
is to make the background of an element an image. This is done through
the CSS property `background-image`. Its syntax looks like this:

``` css
.main-banner {
  background-image: url('https://www.example.com/image.jpg');
}
```

1.  The `background-image` property will set the element’s background to
    display an image.
2.  The value provided to `background-image` is a `url`. The `url`
    should be a URL to an image. The `url` can be a file within your
    project, or it can be a link to an external site. To link to an
    image inside an existing project, you must provide a <a
    href="https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/Dealing_with_files"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">relative file path</a>. If there was
    an image folder in the project, with an image named `mountains.jpg`,
    the relative file path would look like below:

``` css
.main-banner {
  background-image: url('images/mountains.jpg');
}
```



**1.**

In **style.css**, change the background image of the element with
the`.image` class. The image is stored in the following URL:
`https://content.codecademy.com/courses/freelance-1/unit-2/soccer.jpeg`



``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
  font-family: Georgia;
  text-align: center;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
  font-family: Georgia;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
  font-family: Helvetica;
  font-size: 18px;
  font-weight: bold;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
  background-color: white;
  color: black;
}

.content {
  padding: 40px;
}

.image {
  background-image: url('https://content.codecademy.com/courses/freelance-1/unit-2/soccer.jpeg');
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

## Important

`!important` can be applied to specific declarations, instead of full
rules. It will override *any* style no matter how specific it is. As a
result, it should almost never be used. Once `!important` is used, it is
very hard to override.

The syntax of `!important` in CSS looks like this:

``` css
p {
  color: blue !important;
}
 
.main p {
  color: red;
}
```

Since `!important` is used on the `p` selector’s `color` attribute, all
`p` elements will appear `blue`, even though there is a more specific
`.main p` selector that sets the `color` attribute to `red`.

One justification for using `!important` is when working with multiple
stylesheets. For example, if we are using the
<a href="https://getbootstrap.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Bootstrap</a> CSS framework and want to
override the styles for one specific HTML element, we can use the
`!important` property.



**1.**

Imagine `style-library.css` is a stylesheet that is full of good styles!
But, you don’t like how it is turning the color of `<h1>` yellow.

In `style.css`, add an `!important` rule to the color style of inside
the `h1` ruleset to change the color back to `#FFF` (white).



``` css
h1{
  color: yellow;
}

/* Imagine this is a CSS library that contains a lot of other good styles. */
```

``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF !important;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
  font-family: Georgia;
  text-align: center;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
  font-family: Georgia;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
  font-family: Helvetica;
  font-size: 18px;
  font-weight: bold;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
  background-color: white;
  color: black;
}

.content {
  padding: 40px;
}

.image {
  background-image: url('https://content.codecademy.com/courses/freelance-1/unit-2/soccer.jpeg');
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

## Review Visual Rules

Incredible work! You used CSS to alter text and images on a website.
Throughout this lesson, you learned concepts including:

- The `font-family` property defines the typeface of an element.
- `font-size` controls the size of text displayed.
- `font-weight` defines how thin or thick text is displayed.
- The `text-align` property places text in the left, right, or center of
  its parent container.
- Text can have two different color attributes: `color` and
  `background-color`. `color` defines the color of the text, while
  `background-color` defines the color behind the text.
- CSS can make an element transparent with the `opacity` property.
- CSS can also set the background of an element to an image with the
  `background-image` property.
- The `!important` flag will override any style, however it should
  almost never be used, as it is extremely difficult to override.



Feel free to experiment with the code and see what other changes you can
make!

If you want to see how to incorporate CSS visual rules in a project,
watch the video below and follow along with one of our experts:

[Learn CSS Visual Rules](https://www.youtube.com/watch?v=InA5Ff7mxrc)



``` html
<!DOCTYPE html>
<html>

<head>
  <title>The Rise of Soccer in The US</title>
  <link href='style.css' rel='stylesheet'>
  <link href='style-library.css' rel='stylesheet'>
</head>

<body>
  <div class='content'>
    <img src='https://content.codecademy.com/courses/web-101/unit-4/htmlcss1-img_writer-avatar.jpg' class='writer-img'>
    <h3 class='byline'>Article By: Jane Dover</h3>
    <h1>How the Rise of Soccer in the US Is Changing the Face of Youth Sports</h1>
    <h2>The focus on soccer in youth sports programs is exploding nation-wide</h2>
    <p>When the first World Cup arrived in the US in the 90's everyone officially declared that soccer was it. Well it's taken it's time but we can definitely see the influence of soccer, especially women's soccer, across the US. This year, 3 million kids
      played in youth soccer leagues with 2/3 of those leagues for girls. In fact, in the 12-17 age range the MLS has surpassed the MLB and NFL in popularity.</p>
    <p>Part of this meteoric rise can be attributed to the impressively soaring ad dollars being pumped into the Women's World Cup games in 2014. The women's games generated $40 million for Fox, that's definitely not chump change. And those advertisers,
      like ATT, Coca Cola, Verizon, Nike, Visa, and other heavy hitters, are working to make sure they see those numbers grow year after year by investing in youth soccer facilities and promoting programs across the country. </p>
    <p>Now that big business is involved you can be assured you'll see a continued rise in popularity in soccer across the country for years to come. </p>
  </div>

  <div class='image'>
    <p class='caption'>The local semi- pro soccer team in Seattle, WA plays an international friendly</p>
  </div>
</body>

</html>
```

``` css
body {
  /* Old browsers */
  background: #141E30;
  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(-45deg, #35577D, #141E30);
  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: linear-gradient(-45deg, #35577D, #141E30);
  margin: 0;
  padding: 0;
}

h1 {
  color: #FFF !important;
  font-size: 2em;
  padding-top: 100px;
  width: 100%;
  font-family: Georgia;
  text-align: center;
}

h2 {
  border-bottom: 1px solid rgba(255, 255, 255, 0.5);
  color: rgba(255, 255, 255, 0.5);
  font-weight: 100;
  font-size: 22px;
  line-height: 24px;
  padding-bottom: 30px;
  text-align: left;
  width: 70%;
  font-family: Georgia;
}

p {
  color: aliceblue;
  line-height: 1.3em;
  text-align: left;
  width: 100%;
  font-family: Helvetica;
  font-size: 18px;
  font-weight: bold;
}

.byline {
  font-family: Helvetica;
  color: rgba(255, 255, 255, 0.5);
  float: left;
  font-size: 14px;
  padding-left: 10px;
  text-transform: uppercase;
}

.caption {
  display: block;
  font-family: 'Playfair Display', serif;
  font-size: 14px;
  font-style: italic;
  line-height: 14px;
  margin-left: 20px;
  padding: 10px;
  position: relative;
  top: 80%;
  width: 60%;
  background-color: white;
  color: black;
}

.content {
  padding: 40px;
}

.image {
  background-image: url('https://content.codecademy.com/courses/freelance-1/unit-2/soccer.jpeg');
  background-size: cover;
  background-position: center;
  height: 300px;
}

.writer-img {
  -webkit-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  -moz-box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  box-shadow: 5px 0px 5px 0px rgba(0, 0, 50, 0.97);
  float: left;
  width: 50px;
}
```

``` css
h1{
  color: yellow;
}

/* Imagine this is a CSS library that contains a lot of other good styles. */
```

# Documentation: CSS

## [MDN](https://developer.mozilla.org/en-US/docs/Web/CSS)

The provided link goes directly to the go-to documentation for CSS
(Cascading Style Sheets). This is helpful if you would like a
comprehensive resource for understanding the key concepts of CSS and
understanding how to debug common CSS problems.

Instead of trying to remember it all, use the documentation as a readily
available resource for syntax or implementation help!

# Healthy Recipes

Using CSS selectors, you’ll give a recipe website some new style!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



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

## [Solution](css-selectors-1)

# Olivia Woodruff Portfolio

In this project, you’ll use your knowledge of CSS visual rules to create
rule sets and improve the appearance of a photography portfolio site!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

1\.

Look over **index.html** to review the different HTML elements you have
to work with, then navigate to **style.css**.

Start by making the header section stand out a bit more. Select the
`.header` element, and make its background color `CornflowerBlue` by
using the `background-color` property.

2\.

Now change how the text is aligned in the top `.header` section.

In your `.header` rule set, align the text in the center using the
`text-align` property.

3\.

Next, use CSS to make the paragraph below Olivia’s name have a larger
text size.

In **style.css**, select the `.about-me` element, and set its
`font-size` property to `20px`.

4\.

The `.about-me` paragraph looks a little dark against the light blue
background, maybe it would look nice if it blended more with the
background.

Within the `.about-me` selector, use the `opacity` property to make it
50% transparent.

5\.

In the Projects section, make the section titles bold.

Select the `.title` elements, and add a `font-weight` property to make
their text bold.

6\.

Change the main title color so that it matches the background color more
nicely. Set the `color` for `h1` elements to `Azure`.

7\.

Instead of the page being in the default Times font, change the font of
the entire page.

Select the `body` element and make the `font-family` of the page
`Georgia`.

8\.

Finally, let’s make the background of the page more interesting.

Within the `body` selector, set the `background-image` property to this
URL:

``` html
https://content.codecademy.com/courses/learn-css-selectors-visual-rules/hypnotize_bg.png
```

9\.

Great work! Feel free to keep coding and edit the visual rules to
personalize the site’s appearance!

## [Solution](css-visual-rules-project)

# The Box Model

## Introduction to the Box Model

Browsers load HTML elements with default position values. This often
leads to an unexpected and unwanted user experience while limiting the
views you can create. In this lesson, you will learn about the *box
model*, an important concept to understand how elements are positioned
and displayed on a website.

If you have used HTML and CSS, you have unknowingly seen aspects of the
box model. For example, if you have set the background color of an
element, you may have noticed that the color was applied not only to the
area directly behind the element but also to the area to the right of
the element. Also, if you have aligned text, you know it is aligned
relative to something. What is that something?

All elements on a web page are interpreted by the browser as “living”
inside of a box. This is what is meant by the box model.

For example, when you change the background color of an element, you
change the background color of its entire box.

In this lesson, you’ll learn about the following aspects of the box
model:

1.  The dimensions of an element’s box.
2.  The borders of an element’s box.
3.  The paddings of an element’s box.
4.  The margins of an element’s box.

Let’s begin!



Take some time to explore the code to the right. See if you can figure
out how these following CSS properties impact how an element is
displayed:

- `width`
- `height`
- `padding`
- `border`
- `margin`
- `overflow`



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  margin: 0 auto;
  padding: 40px;
  text-align: center;
  width: 400px;
  height: 1000px;
  overflow: scroll;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  padding: 20px 30px;
  margin: 30px 20px;
  text-align: center;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  margin-top: 60px;
  padding: 10px 20px;
}

.pull-quote {
  margin: 0 auto;
  width: 400px;
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  margin: 10px;
  padding: 14px;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## The Box Model

The box model comprises the set of properties that define parts of an
element that take up space on a web page. The model includes the content
area’s size (*width* and *height*) and the element’s *padding*,
*border*, and *margin*. The properties include:

1.  `width` and `height`: The width and height of the content area.
2.  `padding`: The amount of space between the content area and the
    border.
3.  `border`: The thickness and style of the border surrounding the
    content area and padding.
4.  `margin`: The amount of space between the border and the outside
    edge of the element.



Take a look at the image on the right—a visual representation of the box
model.

You can open <a
href="https://content.codecademy.com/courses/freelance-1/unit-4/diagram-boxmodel.svg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the box model image</a> in a new tab to
reference it as you move through the lesson.



<img src="https://content.codecademy.com/courses/updated_images/diagram-boxmodel_Updated_1-01.svg" alt="Image of the box model and its 4 components: content, padding, border, and margin" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Height and Width

An element’s content has two dimensions: a height and a width. By
default, the dimensions of an HTML box are set to hold the raw contents
of the box.

The CSS `height` and `width` properties can be used to modify these
default dimensions.

``` css
p {
  height: 80px;
  width: 240px;
}
```

In this example, the `height` and `width` of paragraph elements are set
to 80 pixels and 240 pixels, respectively — the `px` in the code above
stands for *pixels*.

Pixels allow you to set the exact size of an element’s box (width and
height). When the width and height of an element are set in pixels, it
will be the same size on all devices — an element that fills a laptop
screen will overflow a mobile screen.



**1.**

Add a height of 700 pixels to `#banner`.

**2.**

Set `.pull-quote` width to 350 pixels.

**3.**

Set the `#banner .content h1` width to 400 pixels.



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  width: 100%;
  height: 700px;
}

#banner .content h1 {
  position: relative;
  top: 50px;
  margin: 0 auto;
  width: 400px;
}

#main {
  padding: 40px;
  text-align: center;
  width: 400px;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  color: red;
  font-size: 14px;
  line-height: 48px;
  text-align: center;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
}

.pull-quote {
  width: 350px;
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Borders

A *border* is a line that surrounds an element, like a frame around a
painting. Borders can be set with a specific `width`, `style`, and
`color`:

- `width`—The thickness of the border. A border’s thickness can be set
  in pixels or with one of the following keywords: `thin`, `medium`, or
  `thick`.
- `style`—The design of the border. Web browsers can render any of <a
  href="https://developer.mozilla.org/en-US/docs/Web/CSS/border-style#Values"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">10 different styles</a>. Some of these
  styles include: `none`, `dotted`, and `solid`.
- `color`—The color of the border. Web browsers can render colors using
  a few different formats, including
  <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/color_value"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">140 built-in color keywords</a>.

``` css
p {
  border: 3px solid coral;
}
```

In the example above, the border has a width of 3 pixels, a style of
`solid`, and a color of `coral`. All three properties are set in one
line of code.

The default border is `medium none color`, where `color` is the current
color of the element. If `width`, `style`, or `color` are not set in the
CSS file, the web browser assigns the default value for that property.

``` css
p.content-header {
  height: 80px;
  width: 240px;
  border: solid coral;
}
```

In this example, the border style is set to `solid` and the color is set
to `coral`. The width is not set, so it defaults to `medium`.



**1.**

Add a dotted red border with 1-pixel thickness to all `h2` headings.

**2.**

Add a solid, white border, with a 3 pixel width, to the
`#banner .content h1` rule.



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
  border: 3px solid white;
}

#main {
  padding: 40px;
  text-align: center;
  width: 400px;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  color: red;
  font-size: 14px;
  line-height: 48px;
  text-align: center;
  border: 1px dotted red;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
}

.pull-quote {
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Border Radius

Ever since we revealed the borders of boxes, you may have noticed that
the borders highlight the true shape of an element’s box: square. Thanks
to CSS, a border doesn’t have to be square.

You can modify the corners of an element’s border box with the
`border-radius` property.

``` css
div.container {
  border: 3px solid blue;
  border-radius: 5px;
}
```

The code in the example above will set *all four corners* of the border
to a radius of 5 pixels (i.e. the same curvature that a circle with a
radius of 5 pixels would have).

You can create a border that is a perfect circle by first creating an
element with the same width and height, and then setting the radius
equal to half the width of the box, which is 50%.

``` css
div.container {
  height: 60px;
  width: 60px;
  border: 3px solid blue;
  border-radius: 50%;
}
```

The code in the example above creates a `<div>` that is a perfect
circle.



**1.**

In **style.css**, set the border radius of `#banner .content h1` to 15
pixels.

Additionally, try experimenting with other border-radius values and
running your code to see the result!



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: solid 3px white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
  border-radius: 15px;
}

#main {
  padding: 40px;
  text-align: center;
  width: 400px;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  text-align: center;
  border: 1px dotted red;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
}

.pull-quote {
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Padding

The space between the contents of a box and the borders of a box is
known as *padding*. Padding is like the space between a picture and the
frame surrounding it. In CSS, you can modify this space with the
`padding` property.

``` css
p.content-header {
  border: 3px solid coral;
  padding: 10px;
}
```

The code in this example puts 10 pixels of space between the content of
the paragraph (the text) and the borders, on all four sides.

The `padding` property is often used to expand the background color and
make the content look less cramped.

If you want to be more specific about the amount of padding on each side
of a box’s content, you can use the following properties:

- `padding-top`
- `padding-right`
- `padding-bottom`
- `padding-left`

Each property affects the padding on only one side of the box’s content,
giving you more flexibility in customization.

``` css
p.content-header {
  border: 3px solid fuchsia;
  padding-bottom: 10px;
}
```

In the example above, only the bottom side of the paragraph’s content
will have a `padding` of 10 pixels.



**1.**

In a single line, set the `.navigation li` elements to have 20 pixels of
padding.

Click “Run” and observe the changes.

**2.**

Look at the red boxes at the bottom of the web page. Set the `.share a`
elements to have 14 pixels of padding in **style.css** and run your
code.

Observe how the red boxes at the bottom of the page changed.

**3.**

Set the top and bottom padding of `h2` elements to 20 pixels and set the
left and right padding of `h2` elements to 30 pixels.



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  padding: 40px;
  text-align: center;
  width: 400px;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  text-align: center;
  padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 30px;
  padding-right: 30px;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
}

.pull-quote {
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  text-decoration: none;
  padding: 14px;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Padding Shorthand

Another implementation of the `padding` property lets you specify
exactly how much padding there should be on each side of the content in
a single declaration. A declaration that uses multiple properties as
values is known as a *shorthand property*.

Padding shorthand lets you specify all of the `padding` properties as
values on a single line:

- `padding-top`
- `padding-right`
- `padding-bottom`
- `padding-left`

You can specify these properties in a few different ways:

###### 4 Values

``` css
p.content-header {
  padding: 6px 11px 4px 9px;
}
```

In the example above, the four values `6px 11px 4px 9px` correspond to
the amount of padding on each side, in a clockwise rotation. In order,
it specifies the padding-top value (`6px`), the padding-right value
(`11px`), the padding-bottom value (`4px`), and the padding-left value
(`9px`) of the content.

###### 3 Values

``` css
p.content-header {
  padding: 5px 10px 20px;
}
```

If the left and right sides of the content can be equal, the padding
shorthand property allows for 3 values to be specified. The first value
sets the padding-top value (`5px`), the second value sets the
padding-left and padding-right values (`10px`), and the third value sets
the padding-bottom value (`20px`).

###### 2 Values

``` css
p.content-header {
  padding: 5px 10px;
}
```

And finally, if the top and bottom sides can be equal, and the left and
right sides can be equal, you can specify 2 values. The first value sets
the padding-top and padding-bottom values (`5px`), and the second value
sets the padding-left and padding-right values (`10px`).



**1.**

Change the individual padding declarations on the `h2` selector ruleset
to use padding shorthand with 2 values. Keep the padding for the top and
bottom at 20 pixels and the value for the left and right padding at 30
pixels.

**2.**

Using two values for the `padding` property, set the padding of the `p`
element to 10 pixels on the top and bottom and 20 pixels on the left and
right.



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  padding: 40px;
  text-align: center;
  width: 400px;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  text-align: center;
  padding: 20px 30px;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  padding: 10px 20px;
}

.pull-quote {
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  padding: 14px;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Margin

So far you’ve learned about the following components of the box model:
content, borders, and padding. The fourth and final component of the box
model is *margin*.

Margin refers to the space directly outside of the box. The `margin`
property is used to specify the size of this space.

``` css
p {
  border: 1px solid aquamarine;
  margin: 20px;
}
```

The code in the example above will place 20 pixels of space on the
outside of the paragraph’s box on all four sides. This means that other
HTML elements on the page cannot come within 20 pixels of the
paragraph’s border.

If you want to be even more specific about the amount of margin on each
side of a box, you can use the following properties:

- `margin-top`
- `margin-right`
- `margin-bottom`
- `margin-left`

Each property affects the margin on only one side of the box, providing
more flexibility in customization.

``` css
p {
  border: 3px solid DarkSlateGrey;
  margin-right: 15px;
}
```

In the example above, only the right side of the paragraph’s box will
have a margin of 15 pixels. It’s common to see margin values used for a
specific side of an element.



**1.**

Set the top margin of `p` elements to 60 pixels.

**2.**

Look at the three red boxes at the bottom of the web page. These
elements are anchor elements of class `.share`. Set these `.share a`
elements to have a margin of 10 pixels.



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  padding: 40px;
  text-align: center;
  width: 400px;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  padding: 20px 30px;
  text-align: center;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  padding: 10px 20px;
  margin-top: 60px;
}

.pull-quote {
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  padding: 14px;
  text-decoration: none;
  margin: 10px;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Margin Shorthand

What if you don’t want equal margins on all four sides of the box and
don’t have time to separate properties for each side? You’re in luck!
Margin can be written as a shorthand property as well. The shorthand
syntax for margins is the same as padding, so if you’re feeling
comfortable with that, skip to the instructions. Otherwise, read on to
learn how to use margin shorthand!

Similar to padding shorthand, *margin shorthand* lets you specify all of
the `margin` properties as values on a single line:

- `margin-top`
- `margin-right`
- `margin-bottom`
- `margin-left`

You can specify these properties in a few different ways:

###### 4 Values

``` css
p {
  margin: 6px 10px 5px 12px;
}
```

In the example above, the four values `6px 10px 5px 12px` correspond to
the thickness of the margin on each side, in a clockwise rotation. In
order, it specifies the margin-top value (`6px`), the margin-right value
(`10px`), the margin-bottom value (`5px`), and the margin-left value
(`12px`) of the content.

###### 3 Values

``` css
p {
  margin: 5px 12px 4px;
}
```

If the left and right sides of the content can be equal, the margin
shorthand property allows for 3 values to be specified. The first value
sets the margin-top value (`5px`), the second value sets the margin-left
and margin-right values (`12px`), and the third value sets the
margin-bottom value (`4px`).

###### 2 Values

``` css
p {
  margin: 20px 10px;
}
```

And finally, if the top and bottom sides can be equal, and the left and
right sides can be equal, you can specify 2 values. The first value sets
the margin-top and margin-bottom values (`20px`), and the second value
sets the margin-left and margin-right values (`10px`).



**1.**

Using two values, set the `h2` top and bottom margins to 30 pixels and
the left and right margins to 20 pixels.



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  padding: 40px;
  text-align: center;
  width: 400px;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  padding: 20px 30px;
  text-align: center;
  margin: 30px 20px;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  margin-top: 60px;
  padding: 10px 20px;
}

.pull-quote {
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  margin: 10px;
  padding: 14px;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Auto

The `margin` property also lets you center content. However, you must
follow a few syntax requirements. Take a look at the following example:

``` css
div.headline {
  width: 400px;
  margin: 0 auto;
}
```

In the example above, `margin: 0 auto;` will center the divs in their
containing elements. The 0 sets the top and bottom margins to 0 pixels.
The `auto` value instructs the browser to adjust the left and right
margins until the element is centered within its containing element.

In order to center an element, a width must be set for that element.
Otherwise, the width of the div will be automatically set to the full
width of its containing element, like the `<body>`, for example. It’s
not possible to center an element that takes up the full width of the
page, since the width of the page can change due to display and/or
browser window size.

In the example above, the width of the `div` is set to 400 pixels, which
is less than the width of most screens. This will cause the div to
center within a containing element that is greater than 400 pixels wide.



**1.**

Set the width of the `.pull-quote` class elements to 350 pixels.

**2.**

In one line, set the vertical (top and bottom) margins of the
`.pull-quote` class to `0` and the horizontal (left and right) margins
to `auto`.

**3.**

Set the vertical margins of the `#main` element to `0`, and the
horizontal margins to `auto`.



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  padding: 40px;
  text-align: center;
  width: 400px;
  margin: 0 auto;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  padding: 20px 30px;
  margin: 30px 20px;
  text-align: center;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  margin-top: 60px;
  padding: 10px 20px;
}

.pull-quote {
  width: 350px;
  margin: 0 auto;
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  margin: 10px;
  padding: 14px;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Margin Collapse

As you have seen, padding is space added inside an element’s border,
while margin is space added outside an element’s border. One additional
difference is that top and bottom margins, also called vertical margins,
*collapse*, while top and bottom padding does not.

Horizontal margins (left and right), like padding, are always displayed
and added together. For example, if two divs with ids `#div-one` and
`#div-two`, are next to each other, they will be as far apart as the sum
of their adjacent margins.

``` css
#img-one {
  margin-right: 20px;
}
 
#img-two {
  margin-left: 20px;
}
```

In this example, the space between the `#img-one` and `#img-two` borders
is 40 pixels. The right margin of `#img-one` (`20px`) and the left
margin of `#img-two` (`20px`) add to make a total margin of 40 pixels.

Unlike horizontal margins, vertical margins do not add. Instead, the
larger of the two vertical margins sets the distance between adjacent
elements.

``` css
#img-one {
  margin-bottom: 30px;
}
 
#img-two {
  margin-top: 20px;
}
```

In this example, the vertical margin between the `#img-one` and
`#img-two` elements is 30 pixels. Although the sum of the margins is 50
pixels, the margin collapses so the spacing is only dependent on the
`#img-one` bottom margin.

It may be helpful to think of collapsing vertical margins as a short
person trying to push a taller person. The tall person has longer arms
and can easily push the short person, while the person with short arms
cannot reach the person with long arms.



Study the graphic display to the right. Elements A and B have 20 pixels
of horizontal margin, the sum of each element’s margin. Elements A and C
have 30 pixels of vertical margin — the top margin of element C.



<img src="https://content.codecademy.com/courses/updated_images/diagram-verticalmargins_Updated_1-01.svg" alt="Diagram of box model vertical margins." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Minimum and Maximum Height and Width

Because a web page can be viewed through displays of differing screen
size, the content on the web page can suffer from those changes in size.
To avoid this problem, CSS offers two properties that can limit how
narrow or how wide an element’s box can be sized to:

- `min-width`—this property ensures a minimum width of an element’s box.
- `max-width`—this property ensures a maximum width of an element’s box.

``` css
p {
  min-width: 300px;
  max-width: 600px;
}
```

In the example above, the width of all paragraphs will not shrink below
300 pixels, nor will the width exceed 600 pixels.

Content, like text, can become difficult to read when a browser window
is narrowed or expanded. These two properties ensure that content is
legible by limiting the minimum and maximum widths of an element.

You can also limit the minimum and maximum *height* of an element:

- `min-height` — this property ensures a minimum height for an element’s
  box.
- `max-height` — this property ensures a maximum height of an element’s
  box.

``` css
p {
  min-height: 150px;
  max-height: 300px;
}
```

In the example above, the height of all paragraphs will not shrink below
150 pixels and the height will not exceed 300 pixels.

What will happen to the contents of an element’s box if the `max-height`
property is set too low? It’s possible for the content to spill outside
of the box, resulting in content that is not legible. You’ll learn how
to work around this issue in the next exercise.



**1.**

In **style.css**, set the minimum width of the `p` element to 200
pixels.

After you’ve done this successfully, resize the browser and notice how
the paragraph’s box will no longer shrink below 200 pixels.

**2.**

Next, set the maximum width of the `p` element to 800 pixels.

After you’ve done this successfully, resize the browser and notice how
the paragraph’s box will no longer expand beyond 800 pixels.

**3.**

In **style.css**, set the minimum height of the `p` element to 200
pixels.

After you’ve done this successfully, resize the browser and notice how
the height of paragraph’s box will no longer shrink below 200 pixels.

**4.**

In **style.css**, set the maximum height of the `p` element to 300
pixels.

After you’ve done this successfully, resize the browser and notice how
the height of paragraph’s box will no longer expand beyond 300 pixels.
You should see your text overflowing. In the next exercise, we will fix
that!



``` css


body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  padding: 40px;
  text-align: center;
  margin: 0 auto;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  padding: 20px 30px;
  margin: 30px 20px;
  text-align: center;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  margin-top: 60px;
  padding: 10px 20px;
  min-width: 200px;
    max-width: 800px;
  min-height: 200px;
  max-height: 300px;
}

.pull-quote {
  width: 350px;
  margin: 0 auto;
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  margin: 10px;
  padding: 14px;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Overflow

All of the components of the box model comprise an element’s size. For
example, an image that has the following dimensions is 364 pixels wide
and 244 pixels tall.

- 300 pixels wide
- 200 pixels tall
- 10 pixels padding on the left and right
- 10 pixels padding on the top and bottom
- 2 pixels border on the left and right
- 2 pixels border on the top and bottom
- 20 pixels margin on the left and right
- 10 pixels margin on the top and bottom

The total dimensions (364px by 244px) are calculated by adding all of
the vertical dimensions together and all of the horizontal dimensions
together. Sometimes, these components result in an element that is
larger than the parent’s containing area.

How can we ensure that we can view all of an element that is larger than
its parent’s containing area?

The `overflow` property controls what happens to content that spills, or
overflows, outside its box. The most commonly used values are:

- `hidden`—when set to this value, any content that overflows will be
  hidden from view.
- `scroll`—when set to this value, a scrollbar will be added to the
  element’s box so that the rest of the content can be viewed by
  scrolling.
- `visible`—when set to this value, the overflow content will be
  displayed outside of the containing element. Note, this is the default
  value.

``` css
p {
  overflow: scroll; 
}
```

In the example above, if any of the paragraph content overflows (perhaps
a user resizes their browser window), a scrollbar will appear so that
users can view the rest of the content.

The overflow property is set on a parent element to instruct a web
browser on how to render child elements. For example, if a div’s
overflow property is set to `scroll`, all children of this div will
display overflowing content with a scroll bar.

For a more in-depth look at `overflow`, including additional properties
like `overflow-x` and `overflow-y` that separate out the horizontal and
vertical values, head over to the MDN
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/overflow"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>.



**1.**

In order to see the impact of `overflow: scroll`, first change the
height of the `#main` element to 1000 pixels.

**2.**

Set the overflow of the `#main` element to scroll.

When you scroll down, a second scroll bar should appear over the
paragraph section. You may have to expand the browser component in order
to see this behavior clearly.



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  margin: 0 auto;
  padding: 40px;
  text-align: center;
  width: 400px;
  height: 1000px;
  overflow: scroll;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  padding: 20px 30px;
  margin: 30px 20px;
  text-align: center;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  margin-top: 60px;
  padding: 10px 20px;
}

.pull-quote {
  margin: 0 auto;
  width: 400px;
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  margin: 10px;
  padding: 14px;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Resetting Defaults

All major web browsers have a default stylesheet they use in the absence
of an external stylesheet. These default stylesheets are known as *user
agent stylesheets*. In this case, the term
*<a href="https://en.wikipedia.org/wiki/User_agent"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">user agent</a>* is a technical term for
the browser.

User agent stylesheets often have default CSS rules that set default
values for padding and margin. This affects how the browser displays
HTML elements, which can make it difficult for a developer to design or
style a web page.

Many developers choose to reset these default values so that they can
truly work with a clean slate.

``` css
* {
  margin: 0;
  padding: 0;
}
```

The code in the example above resets the default margin and padding
values of all HTML elements. It is often the first CSS rule in an
external stylesheet.

Note that both properties are set to `0`. When these properties are set
to `0`, they do not require a unit of measurement.



**1.**

In **style.css**, reset the default margin and padding values for the
body. What happens to the web page in the browser?



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
  margin: 0;
  padding: 0;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  margin: 0 auto;
  padding: 40px;
  text-align: center;
  width: 400px;
  height: 1000px;
  overflow: scroll;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  padding: 20px 30px;
  margin: 30px 20px;
  text-align: center;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  margin-top: 60px;
  padding: 10px 20px;
}

.pull-quote {
  margin: 0 auto;
  width: 400px;
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  margin: 10px;
  padding: 14px;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Visibility

Elements can be hidden from view with the `visibility` property.

The `visibility` property can be set to one of the following values:

- `hidden` — hides an element.
- `visible` — displays an element.
- `collapse` — collapses an element.

``` html
<ul>
  <li>Explore</li>
  <li>Connect</li>
  <li class="future">Donate</li>
</ul>
```

``` css
.future {
  visibility: hidden;
}
```

In the example above, the list item with a class of `future` will be
hidden from view in the browser.

Keep in mind, however, that users can still view the contents of the
list item (e.g., `Donate`) by viewing the source code in their browser.
Furthermore, the web page will *only* hide the contents of the element.
It will still leave an empty space where the element is intended to
display.

**Note:** What’s the difference between `display: none` and
`visibility: hidden`? An element with `display: none` will be completely
removed from the web page. An element with `visibility: hidden`,
however, will not be visible on the web page, but the space reserved for
it will.



**1.**

Take a look at the list items in **index.html**. Notice that the list
item `Donate` has a class of `donate`.

In **style.css**:

1.  Add a class selector ruleset for `donate`.
2.  Set the visibility to `hidden`.



``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
  margin: 0;
  padding: 0;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

.donate {
  visibility: hidden;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  margin: 0 auto;
  padding: 40px;
  text-align: center;
  width: 400px;
  height: 1000px;
  overflow: scroll;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  padding: 20px 30px;
  margin: 30px 20px;
  text-align: center;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  margin-top: 60px;
  padding: 10px 20px;
}

.pull-quote {
  margin: 0 auto;
  width: 400px;
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  margin: 10px;
  padding: 14px;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

## Review

In this lesson, we covered the four properties of the box model: height
and width, padding, borders, and margins. Understanding the box model is
an important step towards learning more advanced HTML and CSS topics.
Let’s take a minute to review what you learned:

- The box model comprises a set of properties used to create space
  around and between HTML elements.
- The height and width of a content area can be set in pixels or
  percentages.
- Borders surround the content area and padding of an element. The
  color, style, and thickness of a border can be set with CSS
  properties.
- Padding is the space between the content area and the border. It can
  be set in pixels or percent.
- Margin is the amount of spacing outside of an element’s border.
- Horizontal margins add, so the total space between the borders of
  adjacent elements is equal to the sum of the right margin of one
  element and the left margin of the adjacent element.
- Vertical margins collapse, so the space between vertically adjacent
  elements is equal to the larger margin.
- `margin: 0 auto` horizontally centers an element inside of its parent
  content area, if it has a width.
- The `overflow` property can be set to `display`, `hide`, or `scroll`,
  and dictates how HTML will render content that overflows its parent’s
  content area.
- The `visibility` property can hide or show elements.



Make some adjustments to the code in the code editor. See if you can
improve the appearance of the page by changing the following properties:

- `width`
- `height`
- `padding`
- `border`
- `margin`
- `overflow`



``` html
<!DOCTYPE html>
<html>
<head>
  <title>The Terminal - Your Source for Fact-Based News</title>
  <link href="https://fonts.googleapis.com/css?family=Amatic+SC|Raleway:100,200,600,700" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <nav class="navigation">
    <ul>
      <li>LOCAL</li>
      <li>NATIONAL</li>
      <li class="logo">THE TERMINAL</li>
      <li>GLOBAL</li>
      <li>OPED</li>
      <li class="donate">DONATE</li>
    </ul>
  </nav>

  <div id="banner">
    <div class="content">
      <h1>Conservation Efforts at Lake Tahoe Being Praised by Nation's Leaders</h1>
    </div>
  </div>

  <div id="main" class="content">
    <h3>THE STATE'S LATEST CONSERVATION EFFORTS ARE BEING HERALDED BY NATION'S TOP LEADERS AS GROUNDBREAKING AND FORWARD THINKING.</h3>
    <span class="byline">WRITTEN BY: JAMES JAYCE</span>
    <p>Until recently, construction on the banks of the Lake had been largely under the control of real estate developers. Construction activities have resulted in a clouding of the lake's blue waters. Currently, the Tahoe Regional Planning Agency is regulating construction along the shoreline and has won two Federal Supreme Court battles over recent decisions. These regulations are unpopular with many residents, especially those in the Tahoe Lakefront Homeowners Association.</p>

    <p>The League to Save Lake Tahoe (Keep Tahoe Blue) has been an environmental watchdog in the Lake Tahoe Basin for 50 years. Founded when a proposal to build a four-lane highway around the lake (with a bridge over the entrance to Emerald Bay) was proposed in 1957, the League has thwarted poorly designed development projects and environmentally unsound planning. The League embraces responsible and diversified use of the Lake's resources while protecting and restoring its natural attributes.</p>

    <div class="pull-quote">
      <h2>"THE LEAGUE EMBRACES RESPONSIBLE AND DIVERSIFIED USE OF THE LAKE'S RESOURCES WHILE PROTECTING AND RESTORING ITS NATURAL ATTRIBUTES"</h2>
    </div>

    <p>Since 1980, the Lake Tahoe Interagency Monitoring Program (LTIMP) has been measuring stream discharge and concentrations of nutrients and sediment in up to 10 tributary streams in the Lake Tahoe Basin, California-Nevada. The objectives of the LTIMP are to acquire and disseminate the water quality information necessary to support science-based environmental planning and decision making in the basin. The LTIMP is a cooperative program with support from 12 federal and state agencies with interests in the Tahoe Basin. This data set, together with more recently acquired data on urban runoff water quality, is being used by the Lahontan Regional Water Quality Control Board to develop a program (mandated by the Clean Water Act) to limit the flux of nutrients and fine sediment to the Lake.</p>

    <p>UC Davis remains a primary steward of the lake. The UC Davis Tahoe Environmental Research Center is dedicated to research, education and public outreach, and to providing objective scientific information for restoration and sustainable use of the Lake Tahoe Basin. Each year, it produces a well-publicized "State of the Lake" assessment report.</p>
  </div>

  <div class="share">
    <a href="#">SHARE</a>
    <a href="#">FAVORITE</a>
    <a href="#">READ</a>
  </div>

</body>
</html>
```

``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
  margin: 0;
  padding: 0;
}

.navigation ul {
  margin: 0;
  padding: 0;
  text-align: center;
}

.navigation li {
  font-weight: 100;
  letter-spacing: 2px;
  padding: 20px;
}

.navigation  li.logo {
  color: black;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 4px;
}

.donate{
  visibility: hidden;
}

#banner {
  background-image: url("https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_tahoe.jpeg");
  background-size: cover;
  background-position: bottom center;
  height: 700px;
  width: 100%;
}

#banner .content h1 {
  border: 3px solid white;
  position: relative;
  top: 50px;
  width: 400px;
  margin: 0 auto;
}

#main {
  margin: 0 auto;
  padding: 40px;
  text-align: center;
  width: 400px;
  height: 1000px;
  overflow: scroll;
}

h1 {
  color: white;
  font-size: 42px;
  font-weight: 600;
  text-align: center;
}

h2 {
  border: 1px dotted red;
  color: red;
  font-size: 14px;
  line-height: 48px;
  padding: 20px 30px;
  margin: 30px 20px;
  text-align: center;
}

h3 {
  color: red;
  font-size: 26px;
  font-weight: 700;
  padding: 20px 10px;
}

p {
  color: grey;
  font-size: 16px;
  line-height: 48px;
  margin-top: 60px;
  padding: 10px 20px;
}

.pull-quote {
  margin: 0 auto;
  width: 400px;
}

.byline {
  border-bottom: 1px solid LightGrey;
  border-top: 1px solid LightGrey;
  color: DarkGrey;
  font-size: 14px;
  font-weight: 200;
}

.share {
  border: 1px solid LightGrey;
  padding: 40px 0px;
  position: relative;
  text-align: center;
  width: 100%;
}

.share a {
  background: red;
  border: 1px solid red;
  border-radius: 3px;
  color: white;
  display: inline-block;
  margin: 10px;
  padding: 14px;
  text-decoration: none;
}

.share a:hover {
  background: white;
  border: 1px solid red;
  color: red;
}
```

# Changing the Box Model

## Why Change the Box Model?

The last lesson focused on the most important aspects of the box model:
box dimensions, borders, padding, and margin.

The box model, however, has an awkward limitation regarding box
dimensions. This limitation is best illustrated with an example.

``` html
<h1>Hello World</h1>
```

``` css
h1 {
  border: 1px solid black;
  height: 200px;
  width: 300px;
  padding: 10px;
}
```

In the example above, a heading element’s box has solid, black, 1 pixel
thick borders. The height of the box is 200 pixels, while the width of
the box is 300 pixels. A padding of 10 pixels has also been set on all
four sides of the box’s content.

Unfortunately, under the current box model, the border thickness and the
padding will affect the dimensions of the box.

The 10 pixels of padding increases the height of the box to 220 pixels
and the width to 320 pixels. Next, the 1-pixel thick border increases
the height to 222 pixels and the width to 322 pixels.

Under this box model, the border thickness and padding are added to the
overall dimensions of the box. This makes it difficult to accurately
size a box. Over time, this can also make all of a web page’s content
difficult to position and manage.

In this brief lesson, you’ll learn how to use a different technique that
avoids this problem altogether.



We’ll be using the app provided to demonstrate how to work with the box
model. Click “Next” to continue.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Let's Test Your Memory!</title>
  <link href="https://fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  
  <h2>Classic Memory Game</h2>
  <h1>Let's Test Your Memory!</h1>
  <p>Click on a tile below to reveal a symbol. Click on another tile to try and reveal two of the same symbols. The game is over when all the cards have been matched.</p>

  <div class="actions">
    <a href="#">Reset Game</a>
    <a href="#">Invite a Friend!</a>
    <a href="#">Save This Game</a>
  </div>

  <div id="gameboard">
    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>
  </div>

</body>
</html> 
```

``` css
body {
  background-color: #FFF;
  margin: 0px;
  padding: 50px 60px;
}

h1 {
  color: #004E89;
  font-family: 'Yantramanav', sans-serif;
  font-size: 50px;
  font-weight: 400;
  margin: 0;
  text-align: center;
}

h2 {
  color: #AAA;
  font-family: 'Yantramanav', sans-serif;
  font-size: 16px;
  font-weight: 100;
  letter-spacing: 2px;
  margin: 0;
  text-align: center;
  text-transform: uppercase;
}

p {
  color: #333;
  font-family: 'Yantramanav', sans-serif;
  font-size: 16px;
  font-weight: 100;
  margin: 0;
  text-align: center;
}

.actions {
  text-align: center;
  margin-top: 30px;
}

.actions a {
  background-color: #9DD1F1;
  border-radius: 3px;
  color: #004E89;
  font-family: 'Yantramanav', sans-serif;
  font-size: 16px;
  font-weight: 300;
  display: inline-block;
  margin: 10px;
  padding: 12px;
  text-align: center;
  text-decoration: none;
  text-transform: uppercase;
}

#gameboard {
  position: relative;
  text-align: center;
  top: 30px;
}

.card {
  
  border: 2px solid #9DD1F1;
  display: inline-block;
  height: 200px;
  margin-top: 4px;
  padding: 30px auto;
  text-align: center;
  width: 215px;
}

.card:hover {
  background-color: #004E89;
  border-color: #004E89;
}

.card img {
  padding-top: 40px;
}
```

## Box Model: Content-Box

Many properties in CSS have a default value and don’t have to be
explicitly set in the stylesheet.

For example, the default `font-weight` of text is `normal`, but this
property-value pair is not typically specified in a stylesheet.

The same can be said about the box model that browsers assume. In CSS,
the `box-sizing` property controls the type of box model the browser
should use when interpreting a web page.

The default value of this property is `content-box`. This is the same
box model that is affected by border thickness and padding.



Study the diagram to the right. It illustrates the default box model
used by the browser, `content-box`. When you’re done, continue to the
next exercise.



<img src="https://content.codecademy.com/courses/updated_images/htmlcssdiagram_contentbox_Updated_1.svg" alt="Content box diagram." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Box Model: Border-Box

Fortunately, we can reset the entire box model and specify a new one:
`border-box`.

``` css
* {
  box-sizing: border-box;
}
```

The code in the example above resets the box model to `border-box` for
all HTML elements. This new box model avoids the dimensional issues that
exist in the former box model you learned about.

In this box model, the height and width of the box will remain fixed.
The border thickness and padding will be included inside of the box,
which means the overall dimensions of the box do not change.

``` html
<h1>Hello World</h1>
```

``` css
* {
  box-sizing: border-box;
}
 
h1 {
  border: 1px solid black;
  height: 200px;
  width: 300px;
  padding: 10px;
}
```

In the example above, the height of the box would remain at 200 pixels
and the width would remain at 300 pixels. The border thickness and
padding would remain entirely *inside* of the box.



Study the diagram to the right. It illustrates the new box model,
`border-box`. Pay attention to how the total width (`200px`) and the
padding affect the inner width of the element.



<img src="https://content.codecademy.com/courses/web-101/htmlcss1-diagram__borderbox.svg" alt="diagraming showing an element in the shape of a box used to demonstrate the box model that has a width of 200px, left and right paddings of 20px each, and an inner width of `auto`.  " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## The New Box Model

Now that you know about the new box model, let’s actually implement it
in the browser.

``` css
* {
  box-sizing: border-box;
}
```

It’s that simple! In the example above, the universal selector (`*`)
targets all elements on the web page and sets their box model to the
`border-box` model.



**1.**

In **style.css**, change the box model for all elements on the web page
to the new box model.

You probably didn’t see a difference in the web page to the right -
that’s ok! The new box model simply makes sure that the dimensions of
elements remains the same regardless of border width and padding.



``` css
* {
  box-sizing: border-box;
}

body {
  background-color: #FFF;
  margin: 0px;
  padding: 50px 60px;
}

h1 {
  color: #004E89;
  font-family: 'Yantramanav', sans-serif;
  font-size: 50px;
  font-weight: 400;
  margin: 0;
  text-align: center;
}

h2 {
  color: #AAA;
  font-family: 'Yantramanav', sans-serif;
  font-size: 16px;
  font-weight: 100;
  letter-spacing: 2px;
  margin: 0;
  text-align: center;
  text-transform: uppercase;
}

p {
  color: #333;
  font-family: 'Yantramanav', sans-serif;
  font-size: 16px;
  font-weight: 100;
  margin: 0;
  text-align: center;
}

.actions {
  text-align: center;
  margin-top: 30px;
}

.actions a {
  background-color: #9DD1F1;
  border-radius: 3px;
  color: #004E89;
  font-family: 'Yantramanav', sans-serif;
  font-size: 16px;
  font-weight: 300;
  display: inline-block;
  margin: 10px;
  padding: 12px;
  text-align: center;
  text-decoration: none;
  text-transform: uppercase;
}

#gameboard {
  position: relative;
  text-align: center;
  top: 30px;
}

.card {
  
  border: 2px solid #9DD1F1;
  display: inline-block;
  height: 200px;
  margin-top: 4px;
  padding: 30px auto;
  text-align: center;
  width: 215px;
}

.card:hover {
  background-color: #004E89;
  border-color: #004E89;
}

.card img {
  padding-top: 40px;
}
```

## Review: Changing the Box Model

In this lesson, you learned about an important limitation of the default
box model: box dimensions are affected by border thickness and padding.

Let’s review what you learned:

1.  In the default box model, box dimensions are affected by border
    thickness and padding.
2.  The `box-sizing` property controls the box model used by the
    browser.
3.  The default value of the `box-sizing` property is `content-box`.
4.  The value for the new box model is `border-box`.
5.  The `border-box` model is not affected by border thickness or
    padding.



Take some time to experiment with your new knowledge of the box model in
**style.css**. When you’re done, proceed to the next unit.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Let's Test Your Memory!</title>
  <link href="https://fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  
  <h2>Classic Memory Game</h2>
  <h1>Let's Test Your Memory!</h1>
  <p>Click on a tile below to reveal a symbol. Click on another tile to try and reveal two of the same symbols. The game is over when all the cards have been matched.</p>

  <div class="actions">
    <a href="#">Reset Game</a>
    <a href="#">Invite a Friend!</a>
    <a href="#">Save This Game</a>
  </div>

  <div id="gameboard">
    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>

    <div class="card">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_star.png">
    </div>
  </div>

</body>
</html> 
```

``` css
body {
  background-color: #FFF;
  margin: 0px;
  padding: 50px 60px;
}

h1 {
  color: #004E89;
  font-family: 'Yantramanav', sans-serif;
  font-size: 50px;
  font-weight: 400;
  margin: 0;
  text-align: center;
}

h2 {
  color: #AAA;
  font-family: 'Yantramanav', sans-serif;
  font-size: 16px;
  font-weight: 100;
  letter-spacing: 2px;
  margin: 0;
  text-align: center;
  text-transform: uppercase;
}

p {
  color: #333;
  font-family: 'Yantramanav', sans-serif;
  font-size: 16px;
  font-weight: 100;
  margin: 0;
  text-align: center;
}

.actions {
  text-align: center;
  margin-top: 30px;
}

.actions a {
  background-color: #9DD1F1;
  border-radius: 3px;
  color: #004E89;
  font-family: 'Yantramanav', sans-serif;
  font-size: 16px;
  font-weight: 300;
  display: inline-block;
  margin: 10px;
  padding: 12px;
  text-align: center;
  text-decoration: none;
  text-transform: uppercase;
}

#gameboard {
  position: relative;
  text-align: center;
  top: 30px;
}

.card {
  
  border: 2px solid #9DD1F1;
  display: inline-block;
  height: 200px;
  margin-top: 4px;
  padding: 30px auto;
  text-align: center;
  width: 215px;
}

.card:hover {
  background-color: #004E89;
  border-color: #004E89;
}

.card img {
  padding-top: 40px;
}
```

# The Box Model in DevTools

View and edit an HTML element’s box using Chrome DevTools.

## Introduction

All HTML elements are boxes made up of four components: a content
container, padding, border, and margin. In our <a
href="https://www.codecademy.com/courses/learn-css/lessons/box-model-intro/exercises/box-model-intro"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Box Model lesson</a> we introduce these four properties
and use them to position elements on a website. If you have not taken
this lesson, we recommend you do so now, before continuing.

In this article, we will introduce how Google Chrome’s DevTools can be
used to view the box around each element on a web page.

#### 1. View Box Model Dimensions with DevTools

You can use Google Chrome’s DevTools to view the box around every
element on a web page. There are a few different ways to open DevTools,
depending on your platform:

**Mac**

- <span class="kbd">command</span> + <span class="kbd">option</span> + i
- View \> Developer \> Developer Tools
- Chrome 3 dot menu ⋮ \> More Tools \> Developer Tools

**Windows**

- <span class="kbd">control</span> + <span class="kbd">shift</span> + i
- <span class="kbd">F12</span>
- Chrome 3 dot menu ⋮ \> More Tools \> Developer Tools

Use whichever method works best for you. When you have the DevTools
open, navigate to the **Elements** tab.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-4/img-elements.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Elements Tab" />

In this tab you can view all of the elements on the current page. From
this view, you can select the element of interest, which will open a new
column on the right side of DevTools. Select the tab labeled
**Computed** on the top of the rightmost column.

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Box-Model-in-DevTools/DevToolsTabs.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Computed Tab" />

The selected element’s box should appear at the top of the pane.
Hovering over each property of the box will cause the property to be
highlighted in the web page.

If you know the element you want to inspect, going through all of the
steps listed above is unnecessary. Instead, you can right click the
element you want to observe and select the Inspect button. This will
display DevTools on the right side of the browser with the element
selected in the Elements tab. To view the element’s box, you can select
the Computed tab.

If you’d like some more info or a refresher on how to use Google Dev
Tools, take a look at <a href="https://youtu.be/VuQ4pF_hfag"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this video</a>.

**Exercise I: View a Website’s Box Model Dimensions**

Complete the following steps within the current web browser view.

1.  In a new tab navigate to the Codecademy
    <a href="https://en.wikipedia.org/wiki/Codecademy"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Wikipedia</a> page.
2.  Right click (or `Ctrl` and click simultaneously) the Contents
    navigation box displayed in the image below:

<img
src="https://content.codecademy.com/courses/freelance-1/unit-4/img-inspect.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Dropdown image" />

1.  Select **Inspect**.
2.  Select the Computed tab at the top of the rightmost column.
3.  Hover over the different properties of the logo’s box. The
    corresponding space on the web page should be highlighted when you
    do this.

#### 2. Modify Box Dimensions

Now that you know how to view the box of an element we’ll modify the
box’s values with DevTools.

To modify the values of the box double click the property value, assign
it a new number, and press enter. You can also adjust the value
incrementally by double clicking the value and using the up or down
arrow keys.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-4/img-boxmodel.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Selecting Values" />

In the image above, the border on each side is set to `1` and the
padding is set to `7`. These values can be changed by double clicking
the values in the box and assigning them new numbers, or using the up or
down arrow keys on your keyboard.

**Note:** If you inspect an element and find that the border is set to
`-`, adding a numerical value will not make a border appear. The border
color, style, and width must be set in the CSS document in order to see
the border.

**Exercise II: Modify a Website’s Box Model Dimensions**

Pick up where you left off in Exercise 1.

1.  Double click the top padding of the element.
2.  Use the up and down arrows to adjust the element’s padding. Observe
    how the appearance changes on the web page.
3.  Change the left margin to 200. Observe how the element’s appearance
    changes.

**Remember** the changes you make in DevTools are not saved. If you are
using DevTools to make adjustments to a personal project, make sure to
adjust values in the HTML and CSS documents.

# The Box Model in DevTools

[The Box Model in Chrome
DevTools](https://www.youtube.com/watch?v=uQi8TK-GDO4)

# The Box Model: Davie’s Burgers

In this project, you will follow step-by-step instructions to fix a
fictional restaurant’s website. All of the HTML and most of the CSS is
intact, but the box model properties have yet to be set. You’ll use
knowledge of `height`, `width`, `padding`, `border`, and `margin` to
complete this project.

The website’s existing **index.html** and **style.css** files are
displayed in the text editor to the right. As you work, use both to see
which elements you are selecting and styling. Most of the elements that
you’ll need to add styles for already have rule sets in **style.css** to
which you can add additional declarations.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

1\.

You’ll go through Davie’s Burger’s menu item roughly from top to bottom.
Let’s begin with styling the `<nav>` element containing the logo and
navigation elements.

- Set the width of the `img` to 180 pixels.
- Center the `img` horizontally using the `margin` property.

2\.

Set margin of `span` elements inside the `nav` to 10 pixels on the top
and bottom, and 0 pixels on the left and right.

3\.

Now set some rules for the element with the class `content`. This
element is a container for all the elements not included in `<nav>`.

- Set the height to 500 pixels.
- Create 10-pixel vertical margins and automatic horizontal margins.
- Set `.body` elements inside `.content` to have no vertical margin and
  automatic horizontal margins so that it is centered.

4\.

With a 500-pixel height for `.content`, some elements will overflow out
of its box if the browser window is made too small.

- Make `.content` scrollable with the `overflow` property.
- Resize the browser window so it is very skinny and notice that this
  section is now scrollable.

5\.

Now it’s time to tackle the `.header` and its `h1` text: ‘BBQ BACON
BURGER’.

- Set the height of the `.header` class to 320 pixels.
- Create a 20-pixel padding for the `h1` element inside the `.header`.
- Set vertical margins to 0 pixels and the horizontal margins to be
  determined automatically for the same `h1` element.

6\.

Now add some box-model formatting to the ‘ORDER NOW’ `.button` element.
As you make each change, make sure to scroll down if necessary to view
the effect on the button.

- Set the width to 200 pixels.
- Set the padding to 20 pixels.
- Set the vertical margins to 40 pixels and the horizontal margins to
  automatic.
- Give the button a 1-pixel, solid, blue border.

7\.

Finally, style the nutrition facts section at the bottom. In the element
selected with `ul.nutrition`:

- Set the padding of the `ul.nutrition` element to 20 pixels.
- Set the width of `li` elements within the `ul.nutrition` to 200
  pixels.
- Set a 10-pixel vertical padding and 20-pixel horizontal padding to the
  same elements.
- Add a 3-pixel bottom margin to the same elements.

8\.

Good job—this menu item is looking great, and the layout and spacing is
much more readable. If you’d like, you can continue refining the design
or add your own spin!

## [Solution](box-model-on)

# Display and Positioning

## Flow of HTML

A browser will render the elements of an HTML document that has no CSS
from left to right, top to bottom, in the same order as they exist in
the document. This is called the *flow* of elements in HTML.

In addition to the properties that it provides to style HTML elements,
CSS includes properties that change how a browser *positions* elements.
These properties specify where an element is located on a page, if the
element can share lines with other elements, and other related
attributes.

In this lesson, you will learn five properties for adjusting the
position of HTML elements in the browser:

- `position`
- `display`
- `z-index`
- `float`
- `clear`

Each of these properties will allow us to position and view elements on
a web page. They can be used in conjunction with any other styling
properties you may know.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Please Participate in Our Survey!</title>
  <link href="https://fonts.googleapis.com/css?family=Oswald:300,700|Varela+Round" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <header>
    <ul>
      <li>Question 1</li>
      <li>Question 2</li>
      <li>Question 3</li>
      <li>Question 4</li>
      <li>Question 5</li>
    </ul>
  </header>
  
  <div class="welcome">
    <h1>Welcome to our survey!</h1>
    <p>We're looking forward to getting your answers so we can make sure our products and services are the best they can be!</p>
  </div>

  <div class="question">
    <h4>Question 1</h4>
    <h2>I like participating in physical activity such as running, swimming, or biking.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 2</h4>
    <h2>I try to keep up to date with the latest fashion in active wear.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 3</h4>
    <h2>I purchase clothing online regularly.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 4</h4>
    <h2>I try to buy goods that are designed and/or manufactured in my home country.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 5</h4>
    <h2>I look to famous athletes when trying to choose what to wear when training.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

</body>
</html>
```

``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
}

.question {
  text-align: center;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Position

Take a look at the *block-level* elements in the image below:

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Display-Position/Position-updated.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Diagram of block-level elements" />

Block-level elements like these boxes create a *block* the full width of
their parent elements, and they prevent other elements from appearing in
the same horizontal space.

Notice the block-level elements in the image above take up their own
line of space and therefore don’t overlap each other. In the browser to
the right, you can see block-level elements also consistently appear on
the left side of the browser. This is the default *position* for
block-level elements.

The default position of an element can be changed by setting its
`position` property. The `position` property can take one of five
values:

- `static` - the default value (it does not need to be specified)
- `relative`
- `absolute`
- `fixed`
- `sticky`

In the next few exercises, you’ll learn about the values in the list
above. For now, it’s important to understand that if you favor the
default position of an HTML element, you don’t need to set its
`position` property.



**1.**

In **style.css**, add a declaration to the `.question` ruleset that sets
the position to static.

Notice that setting `position` to `static` does nothing. That’s because
`static` simply refers to the default behavior.



``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
}

.question {
  text-align: center;
  position: static;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Position: Relative

One way to modify the default position of an element is by setting its
`position` property to `relative`.

This value allows you to position an element *relative* to its default
static position on the web page.

``` css
.green-box {
  background-color: green;
  position: relative;
}
```

Although the code in the example above instructs the browser to expect a
relative positioning of the `.green-box` element, it does not specify
where the `.green-box` element should be positioned on the page. This is
done by accompanying the `position` declaration with one or more of the
following *offset properties* that will move the element away from its
default static position:

- `top` - moves the element down from the top.
- `bottom` - moves the element up from the bottom.
- `left` - moves the element away from the left side (to the right).
- `right` - moves the element away from the right side (to the left).

You can specify values in pixels, ems, or percentages, among others, to
dial in exactly how far you need the element to move. It’s also
important to note that offset properties will not work if the element’s
`position` property is the default `static`.

``` css
.green-box {
  background-color: green;
  position: relative;
  top: 50px;
  left: 120px;
}
```

In the example above, the element of `green-box` class will be moved
down 50 pixels, and to the right 120 pixels, from its default static
position. The image below displays the new position of the box.

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Display-Position/Relative.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Diagram of an element with relative position" />

Offsetting the relative element will not affect the positioning of other
elements.



**1.**

In **style.css**, inside the `.question` ruleset, change the `position`
property to `relative`.

**2.**

Next, in **style.css**, offset `.question` 40 pixels from the top.



``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase;
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
}

.question {
  text-align: center;
  position: relative;
  top: 40px;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Position: Absolute

Another way of modifying the position of an element is by setting its
position to `absolute`.

When an element’s position is set to `absolute`, all other elements on
the page will ignore the element and act like it is not present on the
page. The element will be positioned relative to its closest positioned
parent element, while offset properties can be used to determine the
final position from there. Take a look at the image below:

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Display-Position/position-absolute.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Diagram of an element with absolute position, as described in the following paragraph" />

The “This website is in progress. Please come back later!” text is
displaced from its static position at the top left corner of its parent
container. It has offset property declarations of `top: 300px;` and
`right: 0px;`, positioning it 300 pixels down, and 0 pixels from the
right side of the page.



**1.**

In **style.css**, set the `position` inside of the `header` ruleset to
`absolute`.

Notice how it’s now removed from the normal flow of the document, and
covering the welcome section.

**2.**

When you changed the position to absolute, you may have noticed that the
header shrunk horizontally. We’ll learn why in a later exercise. For
now, set the `width` property of the header to `100%`.



``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
  position: absolute;
  width: 100%;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
}

.question {
  text-align: center;
  position: relative;
  top: 40px;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Position: Fixed

When an element’s position is set to `absolute`, as in the last
exercise, the element will scroll with the rest of the document when a
user scrolls.

We can *fix* an element to a specific position on the page (regardless
of user scrolling) by setting its position to `fixed`, and accompanying
it with the familiar offset properties `top`, `bottom`, `left`, and
`right`.

``` html
.title {
  position: fixed;
  top: 0px;
  left: 0px;
}
```

In the example above, the `.title` element will remain fixed to its
position no matter where the user scrolls on the page, like in the image
below:

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Display-Position/Fixed.gif"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Diagram of position fixed" />

This technique is often used for navigation bars on a web page.



**1.**

In **style.css**, change the `position` property inside of the `header`
rule to `fixed`. Scroll up and down the web page. What do you notice?

**2.**

Notice that part of the “Welcome” section is now covered up by the
header. That’s because when we changed the position of the header to
fixed, we removed it from the flow of the html document. Let’s fix that.
Set the `position` of the `.welcome` element to `relative`.

**3.**

Offset the “Welcome” section by 200 pixels from the top. Everything
might not be displaying correctly just yet; we’ll fix it in a later
exercise.



``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
  position: fixed;
  width: 100%;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
  position: relative;
  top: 200px;
}

.question {
  text-align: center;
  position: relative;
  top: 40px;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Position: Sticky

Since `static` and `relative` positioned elements stay in the normal
flow of the document, when a user scrolls the page (or parent element)
these elements will scroll too. And since `fixed` and `absolute`
positioned elements are removed from the document flow, when a user
scrolls, these elements will stay at their specified offset position.

The `sticky` value is another position value that keeps an element in
the document flow as the user scrolls, but *sticks* to a specified
position as the page is scrolled further. This is done by using the
`sticky` value along with the familiar offset properties, as well as one
new one.

``` css
.box-bottom {
  background-color: darkgreen;
  position: sticky;
  top: 240px;
}
```

In the example above, the `.box-bottom` `<div>` will remain in its
relative position, and scroll as usual. When it reaches 240 pixels from
the top, it will stick to that position until it reaches the bottom of
its parent container where it will “unstick” and rejoin the flow of the
document.

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Display-Position/Sticky.gif"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Diagram of an element with sticky position" />



**1.**

Inside **style.css**, change the position of the elements with the class
`question` to `sticky`.



``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
  position: fixed;
  width: 100%;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
  position: relative;
  top: 200px;
}

.question {
  text-align: center;
  position: sticky;
  top: 40px;
  border: 15px solid #DBE9EE;
  background-color: white;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Z-Index

When boxes on a web page have a combination of different positions, the
boxes (and therefore, their content) can overlap with each other, making
the content difficult to read or consume.

``` css
.blue-box {
  background-color: blue;
}
 
.green-box {
  background-color: green;
  position: relative;
  top: -170px;
  left: 170px;
}
```

In the example above, the `.green-box` element overlaps on top of the
`.blue-box` element.

The `z-index` property controls how far back or how far forward an
element should appear on the web page when elements overlap. This can be
thought of as the *depth* of elements, with deeper elements appearing
behind shallower elements.

The `z-index` property accepts integer values. Depending on their
values, the integers instruct the browser on the order in which elements
should be layered on the web page.

``` css
.blue-box {
  background-color: blue;
  position: relative;
  z-index: 1;
}
 
.green-box {
  background-color: green;
  position: relative;
  top: -170px;
  left: 170px;
}
```

In the example above, we set the `.blue-box` position to `relative` and
the z-index to 1. We changed position to `relative`, because the
`z-index` property does *not* work on static elements. The z-index of
`1` moves the `.blue-box` element forward, because the `z-index` value
has not been explicitly specified for the `.green-box` element, which
means it has a default `z-index` value of 0. Take a look at the example
image below:

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Display-Position/Z-index.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Diagram of z-index" />



**1.**

In **style.css**, set the `z-index` of the `header` to `10`. Notice how
the header is no longer covered by other elements when you scroll!



``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
  position: fixed;
  width: 100%;
  z-index: 10;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
  position: relative;
  top: 200px;
}

.question {
  text-align: center;
  position: relative;
  top: 40px;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Inline Display

Every HTML element has a default `display` value that dictates if it can
share horizontal space with other elements. Some elements fill the
entire browser from left to right regardless of the size of their
content. Other elements only take up as much horizontal space as their
content requires and can be directly next to other elements.

In this lesson, we’ll cover three values for the `display` property:
`inline`, `block`, and `inline-block`.

The default `display` for some elements, such as `<em>`, `<strong>`, and
`<a>`, is called *inline*. Inline elements have a box that wraps tightly
around their content, only taking up the amount of space necessary to
display their content and not requiring a new line after each element.
The height and width of these elements cannot be specified in the CSS
document. For example, the text of an anchor tag (`<a>`) will, by
default, be displayed on the same line as the surrounding text, and it
will only be as wide as necessary to contain its content. `inline`
elements cannot be altered in size with the `height` or `width` CSS
properties.

    To learn more about <em>inline</em> elements, read <a href="#">MDN documentation</a>.   

In the example above, the `<em>` element is `inline`, because it
displays its content on the same line as the content surrounding it,
including the anchor tag. This example will display:

To learn more about *inline* elements, read <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Inline_elements"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN documentation</a>.

The CSS `display` property provides the ability to make any element an
inline element. This includes elements that are not inline by default
such as paragraphs, divs, and headings.

``` css
h1 {
  display: inline;
}
```

The CSS in the example above will change the display of all `<h1>`
elements to `inline`. The browser will render `<h1>` elements on the
same line as other inline elements immediately before or after them (if
there are any).



**1.**

In **index.html**, add opening and closing `<strong></strong>` tags
around the word “Welcome”. Notice that the element does not move. That’s
because `<strong>` elements are inline, so they can share lines with
other elements.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Please Participate in Our Survey!</title>
  <link href="https://fonts.googleapis.com/css?family=Oswald:300,700|Varela+Round" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <header>
    <ul>
      <li>Question 1</li>
      <li>Question 2</li>
      <li>Question 3</li>
      <li>Question 4</li>
      <li>Question 5</li>
      <li>Question 6</li>
    </ul>
  </header>
  
  <div class="welcome">
    <h1><strong>Welcome</strong> to our survey!</h1>
    <p>We're looking forward to getting your answers so we can make sure our products and services are the best they can be!</p>
  </div>

  <div class="question">
    <h4>Question 1</h4>
    <h2>I like participating in physical activity such as running, swimming, or biking.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 2</h4>
    <h2>I try to keep up to date with the latest fashion in active wear.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 3</h4>
    <h2>I purchase clothing online regularly.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 4</h4>
    <h2>I try to buy goods that are designed and/or manufactured in my home country.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 5</h4>
    <h2>I look to famous athletes when trying to choose what to wear when training.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

</body>
</html>
```

## Display: Block

Some elements are not displayed in the same line as the content around
them. These are called *block-level* elements. These elements fill the
entire width of the page by default, but their `width` property can also
be set. Unless otherwise specified, they are the height necessary to
accommodate their content.

Elements that are block-level by default include all levels of heading
elements (`<h1>` through `<h6>`), `<p>`, `<div>` and `<footer>`. For a
complete list of block level elements, visit <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Block-level_elements"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the MDN documentation</a>.

``` css
strong {
  display: block;
}
```

In the example above, all `<strong>` elements will be displayed on their
own line, with no content directly on either side of them even though
their contents may not fill the width of most computer screens.



**1.**

In **index.html**, add a `<footer>` element at the bottom of the
document, right above the closing `</body>` tag.

**2.**

Nothing changed! That’s because the `<footer>` element is empty. Add an
`<h3>` element inside of the footer that says “Thanks for taking our
survey!”

**3.**

To improve the appearance of the web page, set the height of the footer
to 100 pixels in **style.css**.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Please Participate in Our Survey!</title>
  <link href="https://fonts.googleapis.com/css?family=Oswald:300,700|Varela+Round" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <header>
    <ul>
      <li>Question 1</li>
      <li>Question 2</li>
      <li>Question 3</li>
      <li>Question 4</li>
      <li>Question 5</li>
      <li>Question 6</li>
    </ul>
  </header>
  
  <div class="welcome">
    <h1><strong>Welcome</strong> to our survey!</h1>
    <p>We're looking forward to getting your answers so we can make sure our products and services are the best they can be!</p>
  </div>

  <div class="question">
    <h4>Question 1</h4>
    <h2>I like participating in physical activity such as running, swimming, or biking.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 2</h4>
    <h2>I try to keep up to date with the latest fashion in active wear.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 3</h4>
    <h2>I purchase clothing online regularly.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 4</h4>
    <h2>I try to buy goods that are designed and/or manufactured in my home country.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 5</h4>
    <h2>I look to famous athletes when trying to choose what to wear when training.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>
  <footer>
    <h3>Thanks for taking our survey!</h3>
  </footer>
</body>
</html>
```

``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
  position: fixed;
  width: 100%;
  z-index: 10;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
  height: 100px;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
  position: relative;
  top: 200px;
}

.question {
  text-align: center;
  position: relative;
  top: 40px;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Display: Inline-Block

The third value for the `display` property is `inline-block`.
Inline-block display combines features of both inline and block
elements. Inline-block elements can appear next to each other and we can
specify their dimensions using the `width` and `height` properties.
Images are the best example of default inline-block elements.

For example, the `<div>`s below will be displayed on the same line and
with the specified dimensions:

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Display-Position/display-inline-block.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="inline block example" />

Let’s take a look at the code:

``` html
<div class="rectangle">
  <p>I’m a rectangle!</p>
</div>
<div class="rectangle">
  <p>So am I!</p>
</div>
<div class="rectangle">
  <p>Me three!</p>
</div>
```

``` css
.rectangle {
  display: inline-block;
  width: 200px;
  height: 300px;
}
```

There are three rectangular divs that each contain a paragraph of text.
The `.rectangle` `<div>`s will all appear inline (provided there is
enough space from left to right) with a width of 200 pixels and height
of 300 pixels, even though the text inside of them may not require 200
pixels by 300 pixels of space.



**1.**

Let’s fix the display of the list elements in the menu at the top of the
page.

Set the `display` property of `<li>` elements to `inline-block`.

**2.**

Set the width of the `li` elements to 80 pixels.

**3.**

Now, we can reduce the top offset of the “Welcome” section. Set it to 50
pixels.

**4.**

Set the `display` property of `.answer` elements to `inline-block`.



``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
  position: fixed;
  width: 100%;
  z-index: 10;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
  display: inline-block;
  width: 80px;  
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
  height: 100px;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
  position: relative;
  top: 50px;
}

.question {
  text-align: center;
  position: relative;
  top: 40px;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
  display: inline-block;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Float

So far, you’ve learned how to specify the exact position of an element
using offset properties. If you’re simply interested in moving an
element as far left or as far right as possible in the container, you
can use the `float` property.

The `float` property is commonly used for wrapping text around an image.
Note, however, that moving elements left or right for layout purposes is
better suited for tools like CSS grid and flexbox, which you’ll learn
about later on.

The `float` property is often set using one of the values below:

- `left` - moves, or floats, elements as far left as possible.
- `right` - moves elements as far right as possible.

``` css
.green-section {
  width: 50%;
  height: 150px;
}
 
.orange-section {
  background-color: orange;
  width: 50%;
  float: right;
}
```

In the example above, we float the `.orange-section` element to the
`right`. This works for static and relative positioned elements. See the
result of the code below:

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Display-Position/Float.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Diagrm of an element floating on the right" />

Floated elements must have a width specified, as in the example above.
Otherwise, the element will assume the full width of its containing
element, and changing the float value will not yield any visible
results.



**1.**

Add a declaration to the `.answer` ruleset that sets the `float`
property to `left`.



``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
  position: fixed;
  width: 100%;
  z-index: 10;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
  display: inline-block;
  width: 80px;  
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
  height: 100px;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
  position: relative;
  top: 50px;
}

.question {
  text-align: center;
  position: relative;
  top: 40px;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
  display: inline-block;
  float: left;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Clear

The `float` property can also be used to float multiple elements at
once. However, when multiple floated elements have different heights, it
can affect their layout on the page. Specifically, elements can “bump”
into each other and not allow other elements to properly move to the
left or right.

The `clear` property specifies how elements should behave when they bump
into each other on the page. It can take on one of the following values:

- `left`—the left side of the element will not touch any other element
  within the same containing element.
- `right`—the right side of the element will not touch any other element
  within the same containing element.
- `both`—neither side of the element will touch any other element within
  the same containing element.
- `none`—the element can touch either side.

``` css
div {
  width: 200px;
  float: left;
}
 
div.special {
  clear: left;
}
```

In the example above, all `<div>`s on the page are floated to the left
side. The element with class `special` did not move all the way to the
left because a taller `<div>` blocked its positioning. By setting its
`clear` property to `left`, the `special` `<div>` will be moved all the
way to the left side of the page.



**1.**

Take a look at the `.answer` divs on the web page. They have been
floated to the left, but the `.question` divs are touching the `.answer`
divs on the right, let’s fix this.

In the `.question` selector, set the `clear` property to `left`. Notice
how the questions moved.

**2.**

On second thought, this layout is not looking so good. Remove the
`float` property from `.answer` selector ruleset.



``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
  position: fixed;
  width: 100%;
  z-index: 10;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
  display: inline-block;
  width: 80px;  
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
  height: 100px;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
  position: relative;
  top: 50px;
}

.question {
  text-align: center;
  position: relative;
  top: 40px;
  clear: left;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
  display: inline-block;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

## Review: Layout

Great job! In this lesson, you learned how to control the positioning of
elements on a web page.

Let’s review what you’ve learned so far:

- The `position` property allows you to specify the position of an
  element.
- When set to `relative`, an element’s position is relative to its
  default position on the page.
- When set to `absolute`, an element’s position is relative to its
  closest positioned parent element. It can be pinned to any part of the
  web page, but the element will still move with the rest of the
  document when the page is scrolled.
- When set to `fixed`, an element’s position can be pinned to any part
  of the web page. The element will remain in view no matter what.
- When set to `sticky`, an element can stick to a defined offset
  position when the user scrolls its parent container.
- The `z-index` of an element specifies how far back or how far forward
  an element appears on the page when it overlaps other elements.
- The `display` property allows you to control how an element flows
  vertically and horizontally in a document.
- `inline` elements take up as little space as possible, and they cannot
  have manually adjusted `width` or `height`.
- `block` elements take up the width of their container and can have
  manually adjusted `height`s.
- `inline-block` elements can have set `width` and `height`, but they
  can also appear next to each other and do not take up their entire
  container width.
- The `float` property can move elements as far left or as far right as
  possible on a web page.
- You can clear an element’s left or right side (or both) using the
  `clear` property.

When combined with an understanding of the box model, positioning can
create visually appealing web pages. So far, we’ve focused on adding
content in the form of text to a web page. In the next unit, you’ll
learn how to add and manipulate images to a web page.



Take some time to experiment with your new knowledge of positioning in
**style.css**.

When you’re done, proceed to the next unit.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Please Participate in Our Survey!</title>
  <link href="https://fonts.googleapis.com/css?family=Oswald:300,700|Varela+Round" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <header>
    <ul>
      <li>Question 1</li>
      <li>Question 2</li>
      <li>Question 3</li>
      <li>Question 4</li>
      <li>Question 5</li>
      <li>Question 6</li>
    </ul>
  </header>
  
  <div class="welcome">
    <h1><strong>Welcome</strong> to our survey!</h1>
    <p>We're looking forward to getting your answers so we can make sure our products and services are the best they can be!</p>
  </div>

  <div class="question">
    <h4>Question 1</h4>
    <h2>I like participating in physical activity such as running, swimming, or biking.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 2</h4>
    <h2>I try to keep up to date with the latest fashion in active wear.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 3</h4>
    <h2>I purchase clothing online regularly.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 4</h4>
    <h2>I try to buy goods that are designed and/or manufactured in my home country.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>

  <div class="question">
    <h4>Question 5</h4>
    <h2>I look to famous athletes when trying to choose what to wear when training.</h2>

    <div class="answer">
      <h3>Disagree</h3>
    </div>

    <div class="answer">
      <h3>Neutral</h3>
    </div>

    <div class="answer">
      <h3>Agree</h3>
    </div>
  </div>
  <footer>
    <h3>Thanks for taking our survey!</h3>
  </footer>

</body>
</html>
```

``` css
body {
  background-color: #FFF;
  margin: 0 auto;
}

header {
  background-color: #466995;
  border-bottom: 1px solid #466995;
  position: fixed;
  width: 100%;
  z-index: 10;
}

ul {
  margin: 30px auto;
  padding: 0 20px;
  text-align: center;
}

li {
  color: #FFF;
  font-family: 'Oswald', sans-serif;
  font-size: 16px;
  font-weight: 300;
  text-transform: uppercase;
  display: inline-block;
  width: 80px;  
}

li:hover {
  color: #DBE9EE;
}

h1 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
}

h2 {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 26px;
  font-weight: 100;
  margin: 0 auto 20px auto;
}

h3 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
  padding: 30px;
}

h4 {
  color: #466995;
  font-family: 'Oswald', sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333;
  font-family: 'Varela Round', sans-serif;
  font-size: 18px;
}

footer {
  background-color: #DBE9EE;
  text-align: center;
  height: 100px;
}

.welcome {
  background-color: #DBE9EE;
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
  width: 100%;
  position: relative;
  top: 50px;
}

.question {
  text-align: center;
  position: relative;
  top: 40px;
}

.answer {
  border: 1px solid #466995;
  margin: 20px;
  display: inline-block;
}

.answer:hover {
  background: #C0D6DF;
  color: #FFF;
}
```

# Broadway

In this project, you will use properties such as `display` and
`position` to improve the layout of the landing page for a fictional
design firm, Broadway Design.

The site has some style rules to begin with. You will improve the layout
and positioning of the navigation menu at the top of the page and the
three supporting sections (Design, Develop, Deploy) below the image.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

1\.

The `<header>` currently scrolls with the rest of the document.

Set its `position` property so that it stays stuck to the top of the
window when the document is scrolled.

2\.

The `<header>` has shrunk!

Change the width of the same element so that it stretches across its
entire parent element.

3\.

List items (`<li>`) inside of the navigation section (`<nav>`) are
currently displayed as a list.

Set their `display` property so that they can appear next to each other
horizontally (but so that you still set their `width` in the next task).

4\.

Set the width of the same elements to 80 pixels.

5\.

After changing the `position` of the `<header>` element to `fixed`, the
contents of the entire site after it shifted upwards.

Set the `position` of `<main>` so that we can position it relatively.

6\.

The `<header>` has disappeared behind the `<main>`.

Use `z-index` to make the `<header>` visible.

7\.

Now the navigation bar looks good, but it is blocking the title at the
top of the page.

Offset `<main>` by 80 pixels from the top.

8\.

Now, fix up the supporting element style below the image.

Add a declaration to the `.supporting .col` rule set so that these
elements can appear horizontally next to each other but have defined
`height` and `width`.

9\.

Inspect the `.supporting .col` elements—they don’t seem to be flowing
horizontally yet because they have no set `width`. Set the width and
height of `.supporting .col` elements to 200 pixels.

10\.

Great work, the Broadway Design site looks much better!

If you want to continue coding, challenge yourself to make the
`<footer>` element also fixed to the bottom of the page regardless of
scrolling.

## [Solution](broadway-design)
