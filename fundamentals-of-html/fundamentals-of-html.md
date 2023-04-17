# Introduction: Fundamentals of HTML

In this unit, you will be introduced to the fundamentals of HTML.

The goal of this unit is to introduce you to the fundamentals of HTML,
one of the languages essential to developing websites.

After this unit, you will be able to:

- Understand how HTML is used for web development
- Use HTML to build a structure for a website
- Create tables in HTML documents
- Write clearer, more accessible HTML using Semantic HTML tags

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

# Introduction to HTML

## Introduction to HTML

Welcome to the world of code! Last year, millions of learners from our
community started with HTML. Why? HTML is the skeleton of all web pages.
It’s often the first language learned by developers, marketers, and
designers and is core to front-end development work. If this is your
first time touching code, we’re excited for what you’re about to create.

So what exactly is HTML? HTML provides structure to the content
appearing on a website, such as images, text, or videos. Right-click on
any page on the internet, choose “Inspect,” and you’ll see HTML in a
panel of your screen.

HTML stands for HyperText Markup Language:

- A *markup* language is a computer language that defines the structure
  and presentation of raw text.
- In HTML, the computer can interpret *raw text* that is wrapped in HTML
  elements.
- *HyperText* is text displayed on a computer or device that provides
  access to other text through links, also known as *hyperlinks*. You
  probably clicked on a couple of hyperlinks on your way to this
  Codecademy course.

Learning HTML is the first step in creating websites, but even a bit of
knowledge can help you inject code snippets into newsletter, blog or
website templates. As you continue learning, you can layer HTML with CSS
and JavaScript to create visually compelling and dynamic websites. But
for now, we’re going to focus on how to add and modify basic content on
a page, like text, images, and videos. Don’t worry if the websites look
ugly — we’re just getting started.



**1.**

In the code editor to the right, type your name in between `<h1>` and
`</h1>`, then press **Run**.



``` html
<h1>Your Name</h1>
```

## HTML Anatomy

HTML is composed of <a
href="https://www.codecademy.com/resources/docs/html/elements?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">elements</a>. These elements structure the webpage and
define its content. Let’s take a look at how they’re written.

The diagram to the right displays an HTML paragraph element. As we can
see, the paragraph element is made up of:

- An *opening tag* (`<p>`)
- The content (“Hello World!” text)
- A *closing tag* (`</p>`)

A *tag* and the *content* between it is called an HTML element. There
are many tags that we can use to organize and display text and other
types of content, like images.

Let’s quickly review each part of the element pictured:

- HTML element (or simply, element) — a unit of content in an HTML
  document formed by HTML tags and the text or media it contains.

- HTML Tag — the element name, surrounded by an opening (`<`) and
  closing (`>`) angle bracket.

- Opening Tag — the first HTML tag used to start an HTML element. The
  tag type is surrounded by opening and closing angle brackets.

- Content — The information (text or other elements) contained between
  the opening and closing tags of an HTML element.

- Closing tag — the second HTML tag used to end an HTML element. Closing
  tags have a forward slash (`/`) inside of them, directly after the
  left angle bracket.



Study the diagram to the right to learn about the anatomy of HTML
syntax. When you’re done, continue to the next exercise.



<img src="https://content.codecademy.com/courses/learn-html/elements-and-structure/html%20lesson%20image.svg" alt="HTML Element Diagram" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## The Body

One of the key HTML elements we use to build a webpage is the *body*
element. Only content inside the opening and closing body tags can be
displayed to the screen. Here’s what opening and closing body tags look
like:

``` html
<body>
 
</body>
```

Once the file has a body, many different types of content – including
text, images, and buttons – can be added to the body.

``` html
<body>
  <p>What's up, doc?</p>
</body>
```



**1.**

Add a body to your web page using the `<body>` element.

**2.**

Add the following code between your opening and closing body tags:

``` html
<p>"Life is very short and what we have to do must be done in the now." - Audre Lorde</p>
```

**Note**: While some browsers may render some content outside body tags
as well to accommodate the occasional mistake in your HTML, not all
browsers do this! The best way to ensure that all your HTML renders the
same way in all browsers is to ensure that your elements remain within
the opening and closing body tags.



``` html
<body>
  <p>"Life is very short and what we have to do must be done in the now." - Audre Lorde</p>
</body>
```

## HTML Structure

HTML is organized as a collection of family tree relationships. As you
saw in the last exercise, we placed `<p>` tags within `<body>` tags.
When an element is contained inside another element, it is considered
the *child* of that element. The child element is said to be *nested*
inside of the *parent* element.

``` html
<body>
  <p>This paragraph is a child of the body</p>
</body>
```

In the example above, the `<p>` element is nested inside the `<body>`
element. The `<p>` element is considered a child of the `<body>`
element, and the `<body>` element is considered the parent. You can also
see that we’ve added two spaces of indentation (using the
<span class="kbd">space</span> bar) for better readability.

Since there can be multiple levels of nesting, this analogy can be
extended to grandchildren, great-grandchildren, and beyond. The
relationship between elements and their ancestor and descendent elements
is known as *hierarchy*.

Let’s consider a more complicated example that uses some new tags:

``` html
<body>
  <div>
    <h1>Sibling to p, but also grandchild of body</h1>
    <p>Sibling to h1, but also grandchild of body</p>
  </div>
</body>
```

In this example, the `<body>` element is the parent of the `<div>`
element. Both the `<h1>` and `<p>` elements are children of the `<div>`
element. Because the `<h1>` and `<p>` elements are at the same level,
they are considered siblings and are both grandchildren of the `<body>`
element.

Understanding HTML hierarchy is important because child elements can
inherit behavior and styling from their parent element. You’ll learn
more about webpage hierarchy when you start digging into CSS.



**1.**

Add the paragraph below as a child of the `div` element.

``` html
<p>This paragraph is a child of the div element and a grandchild of the body element</p>
```



``` html
<body>
  <h1>Hello World</h1>
  <p>This paragraph is a child of the body element</p>
  <div>
    <p>This paragraph is a child of the div element and a grandchild of the body element</p>
  </div> 
</body>
```

## Headings

Headings in HTML are similar to headings in other types of media. For
example, in newspapers, large headings are typically used to capture a
reader’s attention. Other times, headings are used to describe content,
like the title of a movie or an educational article.

HTML follows a similar pattern. In HTML, there are six different
*headings*, or *heading elements*. <a
href="https://www.codecademy.com/resources/docs/html/headings?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Headings</a> can be used for a variety of purposes, like
titling sections, articles, or other forms of content.

The following is the list of heading elements available in HTML. They
are ordered from largest to smallest in size.

1.  `<h1>` — used for main headings. All other smaller headings are used
    for subheadings.
2.  `<h2>`
3.  `<h3>`
4.  `<h4>`
5.  `<h5>`
6.  `<h6>`

The following example code uses a headline intended to capture a
reader’s attention. It uses the largest heading available, the main
heading element:

``` html
<h1>BREAKING NEWS</h1>
```



**1.**

Now that you know how to structure HTML elements, we’ll spend the rest
of the lesson building an informational website using some of the most
common HTML elements. We’ve put some elements in to get you started, but
you’ll write the rest of the page on your own.

Below the `<h3>` heading that says `Features`, add an `<h2>` heading
that says `Habitat`.

**2.**

Below the `Habitat` heading, add an `<h3>` heading that says
`Countries with Large Brown Bear Populations`.

**3.**

On the next line, add one more `<h3>` heading that says
`Countries with Small Brown Bear Populations`.

**4.**

Finally, on the next line add an `<h2>` heading that says `Media`.



``` html
<body>
  <h1>The Brown Bear</h1>
  <h2>About Brown Bears</h2>
  <h3>Species</h3>
  <h3>Features</h3>
  <h2>Habitat</h2>
  <h3>Countries with Large Brown Bear Populations</h3>
  <h3>Countries with Small Brown Bear Populations</h3>
  <h2>Media</h2>
</body>
```

## Divs

One of the most popular elements in HTML is the `<div>` element. <a
href="https://www.codecademy.com/resources/docs/html/elements/div?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<div\></code></a> is short for
“division” or a container that divides the page into sections. These
sections are very useful for grouping elements in your HTML together.

``` html
<body>
  <div>
    <h1>Why use divs?</h1>
    <p>Great for grouping elements!</p>
  </div>
</body>
```

`<div>`s don’t inherently have a visual representation, but they are
very useful when we want to apply custom styles to our HTML elements.
`<div>`s allow us to group HTML elements to apply the same styles for
all HTML elements inside. We can also style the `<div>` element as a
whole. You can see how this can be done in the
<a href="https://www.codecademy.com/learn/learn-css"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn CSS</a> course.

`<div>`s can contain any text or other HTML elements, such as links,
images, or videos. Remember to always add two spaces of indentation when
you nest elements inside of `<div>`s for better readability.



**1.**

Below the `<h1>` heading that says `The Brown Bear`, add an opening
`<div>` tag.

Place the closing `</div>` tag after the `<h3>` element that says
`Features`.

Remember to use your <span class="kbd">space</span> bar to add two
spaces of indentation when you nest elements.

**2.**

Above the `<h2>` element that says `Habitat`, add an opening `<div>`
tag.

Close the `</div>` tag after the `<h3>` element that says
`Countries with Small Brown Bear Populations`.

**3.**

Above the `<h2>` element that says `Media`, add an opening `<div>` tag.

Place the closing `</div>` tag right above the closing `</body>` tag.



``` html
<body>
  <h1>The Brown Bear</h1>
  <div>
    <h2>About Brown Bears</h2>
    <h3>Species</h3>
    <h3>Features</h3>
  </div>
  <div>
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <h3>Countries with Small Brown Bear Populations</h3>
  </div>
  <div>
    <h2>Media</h2>
  </div>
</body>
```

## Attributes

If we want to expand an element’s tag, we can do so using an attribute.
<a
href="https://www.codecademy.com/resources/docs/html/attributes?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Attributes</a> are content added to the opening tag of
an element and can be used in several different ways, from providing
information to changing styling. Attributes are made up of the following
two parts:

- The *name* of the attribute
- The *value* of the attribute

One commonly used attribute is the `id`. We can use the `id` attribute
to specify different content (such as `<div>`s) and is really helpful
when you use an element more than once. `id`s have several different
purposes in HTML, but for now, we’ll focus on how they can help us
identify content on our page.

When we add an `id` to a `<div>`, we place it in the opening tag:

``` html
<div id="intro">
  <h1>Introduction</h1>
</div>
```



**1.**

Add an `id` attribute with the value `"introduction"` to the `<div>` tag
that’s below the `The Brown Bear` `<h1>` heading.

**2.**

Add an `id` attribute with the value `"habitat"` to the opening `<div>`
tag that has the `Habitat` `<h2>` heading as a child.

**3.**

Add an `id` attribute with the value `"media"` to the opening `<div>`
tag that has the `Media` `<h2>` heading as a child.



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <h3>Species</h3>
    <h3>Features</h3>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <h3>Countries with Small Brown Bear Populations</h3>
  </div>
  <div id="media">
    <h2>Media</h2>
  </div>
</body>
```

## Displaying Text

If you want to display text in HTML, you can use a *paragraph* or
*span*:

- <a
  href="https://www.codecademy.com/resources/docs/html/paragraphs?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><em>Paragraphs</em> (<code
  class="code__2rdF32qjRVp7mMVBHuPwDS">\<p\></code>)</a> contain a block
  of plain text.
- <a
  href="https://www.codecademy.com/resources/docs/html/elements/span?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">\<span\></code></a> contains
  short pieces of text or other HTML. They are used to separate small
  pieces of content that are on the same line as other content.

Take a look at each of these elements in action below:

``` html
<div>
  <h1>Technology</h1>
</div>
<div>
  <p><span>Self-driving cars</span> are anticipated to replace up to 2 million jobs over the next two decades.</p>
</div>
```

In the example above, there are two different `<div>`. The second
`<div>` contains a `<p>` with `<span>Self-driving cars</span>`. This
`<span>` element separates “Self-driving cars” from the rest of the text
in the paragraph.

It’s best to use a `<span>` element when you want to target a specific
piece of content that is *inline*, or on the same line as other text. If
you want to divide your content into *blocks*, it’s better to use a
`<div>`.



**1.**

Below the `<h2>` element that says `About Brown Bears`, add `<p>`
opening and closing tags, and inside of the tags put the following text:

> The brown bear (Ursus arctos) is native to parts of northern Eurasia
> and North America. Its conservation status is currently Least Concern.
> There are many subspecies within the brown bear species, including the
> Atlas bear and the Himalayan brown bear.

Remember to always add two spaces of indentation when you nest elements
inside of `<div>`s for better readability.

**2.**

Below the `<h3>` element that says `Features`, add a paragraph with the
following text:

> Brown bears are not always completely brown. Some can be reddish or
> yellowish. They have very large, curved claws and huge paws. Male
> brown bears are often 30% larger than female brown bears. They can
> range from 5 feet to 9 feet from head to toe.

**3.**

Under the `<h3>` element that says:

`Countries with Small Brown Bear Populations`

Add a paragraph with the following text:

> Some countries with smaller brown bear populations include Armenia,
> Belarus, Bulgaria, China, Finland, France, Greece, India, Japan,
> Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (Ursus arctos) is native to parts of northern Eurasia and North America. Its conservation status is currently Least Concern. There are many subspecies within the brown bear species, including the Atlas bear and the Himalayan brown bear.</p>
    <h3>Species</h3>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
  </div>
</body>
```

## Styling Text

You can also style text using HTML tags. The `<em>` tag emphasizes text,
while the `<strong>` tag highlights important text.

Later, when you begin to style websites, you will decide how you want
browsers to display content within `<em>` and `<strong>` tags. Browsers,
however, have built-in style sheets that will generally style these tags
in the following ways:

- The `<em>` tag will generally render as *italic* emphasis.
- The `<strong>` will generally render as **bold** emphasis.

Take a look at each style in action:

``` html
<p><strong>The Nile River</strong> is the <em>longest</em> river in the world, measuring over 6,850 kilometers long (approximately 4,260 miles).</p>
```

In this example, the `<strong>` and `<em>` tags are used to emphasize
the text to produce the following:

**The Nile River** is the *longest* river in the world, measuring over
6,850 kilometers long (approximately 4,260 miles).

As we can see, “The Nile River” is bolded and “longest” is in italics.



**1.**

In the first paragraph that starts “The brown bear…”, emphasize
`Ursus arctos` using the `<em>` tag.

**2.**

In the paragraph under `About Brown Bears`, make the words
`Least Concern` strong using the `<strong>` tag.



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>. There are many subspecies within the brown bear species, including the Atlas bear and the Himalayan brown bear.</p>
    <h3>Species</h3>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
  </div>
</body>
```

## Line Breaks

The spacing between code in an HTML file doesn’t affect the positioning
of elements in the browser. If you are interested in modifying the
spacing in the browser, you can use HTML’s *line break* element: `<br>`.

The line break element is unique because it is only composed of a
starting tag. You can use it anywhere within your HTML code and a line
break will be shown in the browser.

``` html
<p>The Nile River is the longest river <br> in the world, measuring over 6,850 <br> kilometers long (approximately 4,260 <br> miles).</p>
```

The code in the example above will result in an output that looks like
the following:

The Nile River is the longest river  
in the world, measuring over 6,850  
kilometers long (approximately 4,260  
miles).



**1.**

Add two line breaks (`<br>`) after the sentence that ends with
`Least Concern`.



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>. <br><br> There are many subspecies within the brown bear species, including the Atlas bear and the Himalayan brown bear.</p>
    <h3>Species</h3>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
  </div>
</body>
```

## Unordered Lists

In addition to organizing text in paragraph form, you can also display
content in an easy-to-read list.

In HTML, you can use an *unordered list* tag (`<ul>`) to create a list
of items in no particular order. An unordered list outlines individual
*list items* with a bullet point.

The <a
href="https://www.codecademy.com/resources/docs/html/elements/ul?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<ul\></code> element</a> should
not hold raw text and won’t automatically format raw text into an
unordered list of items. Individual list items must be added to the
unordered list using the `<li>` tag. The `<li>` or list item tag is used
to describe an item in a list.

``` html
<ul>
  <li>Limes</li>
  <li>Tortillas</li>
  <li>Chicken</li>
</ul>
```

In the example above, the list was created using the `<ul>` tag and all
individual list items were added using `<li>` tags.

The output will look like this:

- Limes
- Tortillas
- Chicken



**1.**

Under the heading that says `Species`, create an unordered list.

Do not add any list items to the list just yet.

**2.**

Add the following list items to the unordered list:

- Arctos
- Collarus
- Horribilis
- Nelsoni (extinct)



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>. <br><br> There are many subspecies within the brown bear species, including the Atlas bear and the Himalayan brown bear.</p>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
  </div>
</body>
```

## Ordered Lists

<a
href="https://www.codecademy.com/resources/docs/html/elements/ol?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>Ordered lists</em> (<code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<ol\></code>)</a> are like
unordered lists, except that each list item is numbered. They are useful
when you need to list different steps in a process or rank items for
first to last.

You can create the ordered list with the `<ol>` tag and then add
individual list items to the list using `<li>` tags.

``` html
<ol>
  <li>Preheat the oven to 350 degrees.</li>
  <li>Mix whole wheat flour, baking soda, and salt.</li>
  <li>Cream the butter, sugar in separate bowl.</li>
  <li>Add eggs and vanilla extract to bowl.</li>
</ol>
```

The output will look like this:

1.  Preheat the oven to 350 degrees.
2.  Mix whole wheat flour, baking soda, and salt.
3.  Cream the butter, sugar in separate bowl.
4.  Add eggs and vanilla extract to bowl.



**1.**

Under the heading that says
`Countries with Large Brown Bear Populations`, add an ordered list.

Do not add any list items to the list just yet.

**2.**

Add the following list items to the ordered list:

- Russia
- United States
- Canada



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the Atlas bear and the Himalayan brown bear.</p>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <ol>
      <li>Russia</li>
      <li>United States</li>
      <li>Canada</li>
    </ol>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
  </div>
</body>
```

## Images

All of the elements you’ve learned about so far (headings, paragraphs,
lists, and spans) share one thing in common: they’re composed entirely
of text! What if you want to add content to your web page that isn’t
composed of text, like <a
href="https://www.codecademy.com/resources/docs/html/images?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">images</a>?

The `<img>` tag allows you to add an image to a web page. Most elements
require both opening and closing tags, but the `<img>` tag is a
*self-closing tag*. Note that the end of the `<img>` tag has a forward
slash `/`. Self-closing tags may include or omit the final slash — both
will render properly.

``` html
<img src="image-location.jpg" />
```

The `<img>` tag has a required *attribute* called `src`. The `src`
attribute must be set to the image’s *source*, or the location of the
image. In this case, the value of `src` must be the *uniform resource
locator* (URL) of the image. A URL is the web address or local address
where a file is stored.



**1.**

Under the `Media` `<h2>` heading, add an image. Use the following URL as
the source (`src`) for the image:

``` html
https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg
```



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the Atlas bear and the Himalayan brown bear.</p>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <ol>
      <li>Russia</li>
      <li>United States</li>
      <li>Canada</li>
    </ol>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
    <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" />
  </div>
</body>
```

## Image Alts

Part of being an exceptional web developer is making your site
accessible to users of all backgrounds. In order to make the Web more
inclusive, we need to consider what happens when assistive technologies
such as screen readers come across image tags.

The `alt` attribute, which means alternative text, brings meaning to the
images on our sites. The `alt` attribute can be added to the image tag
just like the `src` attribute. The value of `alt` should be a
description of the image.

``` html
<img src="#" alt="A field of yellow sunflowers" />
```

The `alt` attribute also serves the following purposes:

- If an image fails to load on a web page, a user can mouse over the
  area originally intended for the image and read a brief description of
  the image. This is made possible by the description you provide in the
  `alt` attribute.
- Visually impaired users often browse the web with the aid of screen
  reading software. When you include the `alt` attribute, the screen
  reading software can read the image’s description out loud to the
  visually impaired user.
- The `alt` attribute also plays a role in Search Engine Optimization
  (SEO), because search engines cannot “see” the images on websites as
  they crawl the internet. Having descriptive `alt` attributes can
  improve the ranking of your site.

If the image on the web page is not one that conveys any meaningful
information to a user (visually impaired or otherwise), the `alt`
attribute should be left empty.



**1.**

Add the `alt` attribute to the image and include a description. Make
sure the description accurately describes the image.



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the Atlas bear and the Himalayan brown bear.</p>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <ol>
      <li>Russia</li>
      <li>United States</li>
      <li>Canada</li>
    </ol>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
    <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" alt="A Brown Bear"/>
  </div>
</body>
```

## Videos

In addition to images, HTML also supports displaying <a
href="https://www.codecademy.com/resources/docs/html/videos?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">videos</a>. Like the `<img>` element, the `<video>`
element requires a `src` attribute with a link to the video source.
Unlike the `<img>` element however, the `<video>` element requires an
opening and a closing tag.

``` html
<video src="myVideo.mp4" width="320" height="240" controls>
  Video not supported
</video>
```

In this example, the video source (`src`) is `"myVideo.mp4"`. The source
can be a video file that is hosted alongside your webpage, or a URL that
points to a video file hosted on another webpage.

After the `src` attribute, the `width` and `height` attributes are used
to set the size of the video displayed in the browser. The `controls`
attribute instructs the browser to include basic video controls such as
pausing and playing.

The text, `Video not supported`, between the opening and closing video
tags will only be displayed if the browser is unable to load the video.



**1.**

Under the image, create a `<video>` tag and add the following video url
as the source:

    https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4

Be sure to create a closing tag as well with `</video>`.

**2.**

Define the `width` of the video as `"320"` and the `height` as `"240"`.
Make sure to also include the `controls` attribute.

**3.**

In between the opening and closing `<video>` tags, add the phrase
`Video not supported`, which will be displayed if the browser is unable
to load your video.



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the Atlas bear and the Himalayan brown bear.</p>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <ol>
      <li>Russia</li>
      <li>United States</li>
      <li>Canada</li>
    </ol>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
    <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" alt="A Brown Bear"/>
        <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" width="320" height="240" controls>Video not supported</video>
  </div>
</body>
```

## Review

Congratulations on completing the first lesson of HTML! You are well on
your way to becoming a skilled web developer.

Let’s review what you’ve learned so far:

- **HTML** stands for **H**yper**T**ext **M**arkup **L**anguage and is
  used to create the structure and content of a webpage.
- Most HTML elements contain opening and closing tags with raw text or
  other HTML tags between them.
- HTML elements can be nested inside other elements. The enclosed
  element is the child of the enclosing parent element.
- Any visible content should be placed within the opening and closing
  `<body>` tags.
- Headings and sub-headings, `<h1>` to `<h6>` tags, are used to provide
  titles for sections of content.
- `<p>`, `<span>` and `<div>` tags specify text or blocks.
- The `<em>` and `<strong>` tags are used to emphasize text.
- Line breaks are created with the `<br>` tag.
- Ordered lists (`<ol>`) are numbered and unordered lists (`<ul>`) are
  bulleted.
- Images (`<img>`) and videos (`<video>`) can be added by linking to an
  existing source.

Here are a few more resources to add to your toolkit:

- <a href="https://www.codecademy.com/resources/docs/html"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Codecademy Docs: HTML</a>
- <a href="https://www.codecademy.com/workspaces/new"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Codecademy Workspaces: HTML</a>

Make sure to bookmark these links so you have them at your disposal.

In the next lesson, we’ll take the content that you’ve added to this
website and transform it into an HTML document that’s ready to go on the
web.



We’ve left you with your final code. Feel free to play around and modify
it using the new elements you’ve learned!

If you want to review how to structure HTML in a project and use
semantically meaningful elements, watch the video below and follow along
with one of our experts:

[HTML Structure](https://www.youtube.com/watch?v=uxmB8MlO3m8)



``` html
<body>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the Atlas bear and the Himalayan brown bear.</p>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <ol>
      <li>Russia</li>
      <li>United States</li>
      <li>Canada</li>
    </ol>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
    <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" alt="A Brown Bear"/>
        <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" width="320" height="240" controls>Video not supported</video>
  </div>
</body>
```

# HTML Document Standards

## Preparing for HTML

Now that we’ve learned about some of the most common HTML elements, it’s
time to learn how to set up an HTML file.

HTML files require certain elements to set up the document properly. We
can let web browsers know that we are using HTML by starting our
document with a *document type declaration*.

The declaration looks like this:

``` html
<!DOCTYPE html>
```

This declaration is an instruction, and it must be the first line of
code in your HTML document. It tells the browser what type of document
to expect, along with what version of HTML is being used in the
document. For now, the browser will correctly assume that the `html` in
`<!DOCTYPE html>` is referring to HTML5, as it is the current standard.

In the future, however, a new standard will override HTML5. To make sure
your document is forever interpreted correctly, always include
`<!DOCTYPE html>` at the very beginning of your HTML documents.

Lastly, HTML code is always saved in a file with an **.html** extension.



**1.**

Add the `<!DOCTYPE html>` declaration as the very first line of code at
the top of the **index.html** file.



``` html
<!DOCTYPE html>
```

## The \<html\> tag

The `<!DOCTYPE html>` declaration provides the browser with two pieces
of information (the type of document and the HTML version to expect),
but it doesn’t actually add any HTML structure or content.

To create HTML structure and content, we must add opening and closing
`<html>` tags after declaring `<!DOCTYPE html>`:

``` html
<!DOCTYPE html>
<html>
 
</html>
```

Anything between the opening `<html>` and closing `</html>` tags will be
interpreted as HTML code. Without these tags, it’s possible that
browsers could incorrectly interpret your HTML code.



**1.**

Add the opening and closing `<html>` tags below the `<!DOCTYPE html>`
tag.



``` html
<!DOCTYPE html>
<html>

</html>
```

## The Head

So far you’ve done two things to set up the file properly:

- Declared to the browser that your code is HTML with `<!DOCTYPE html>`
- Added the HTML element (`<html>`) that will contain the rest of your
  code.

We have added these elements to the Brown Bears page you previously
created. Now, let’s also give the browser some information about the
page itself. We can do this by adding a <a
href="https://www.codecademy.com/resources/docs/html/elements/head?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<head\></code></a> element.

Remember the `<body>` tag? The `<head>` element is part of this HTML
metaphor. It goes above our `<body>` element.

The `<head>` element contains the *metadata* for a web page. Metadata is
information about the page that isn’t displayed directly on the web
page. Unlike the information inside of the `<body>` tag, the metadata in
the head is information about the page itself. You’ll see an example of
this in the next exercise.

The opening and closing head tags typically appear as the first item
after your first HTML tag:

``` html
<head>
</head>
```



**1.**

Place the `<head>` element below the opening `<html>` tag.



``` html
<!DOCTYPE html>
<html>
  <head>
    </head>
  <body>
    <h1>The Brown Bear</h1>
    <div id="introduction">
      <h2>About Brown Bears</h2>
      <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the
        Atlas bear and the Himalayan brown bear.</p>
      <h3>Species</h3>
      <ul>
        <li>Arctos</li>
        <li>Collarus</li>
        <li>Horribilis</li>
        <li>Nelsoni (extinct)</li>
      </ul>
      <h3>Features</h3>
      <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
    </div>
    <div id="habitat">
      <h2>Habitat</h2>
      <h3>Countries with Large Brown Bear Populations</h3>
      <ol>
        <li>Russia</li>
        <li>United States</li>
        <li>Canada</li>
      </ol>
      <h3>Countries with Small Brown Bear Populations</h3>
      <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
    </div>
    <div id="media">
      <h2>Media</h2>
      <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" />
      <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" width="320" height="240" controls>Video not supported</video>
    </div>
  </body>
</html>
```

## Page Titles

What kind of metadata about the web page can the `<head>` element
contain?

If you navigate to the Codecademy
<a href="https://www.codecademy.com/learn/all"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">catalog</a> and look at the top of your browser, you’ll
notice the words `All Courses & Tutorials | Codecademy`, which is the
*title* of the web page.

A browser’s tab displays the title specified in the `<title>` tag. The
`<title>` tag is always inside of the `<head>`.

``` html
<!DOCTYPE html>
<html>
  <head>
    <title>My Coding Journal</title>
  </head>
</html>
```

If we were to open a file containing the HTML code in the example above,
the browser would display the words `My Coding Journal` in the title bar
(or in the tab’s title).



**1.**

Add “Brown Bears” as the title of your web page by using the `<title>`
element,

Unfortunately, you won’t be able to see the title of your page in the
smaller browser to the right. We’ll show you what it would look like in
the next exercise.



``` html
<!DOCTYPE html>
<html>
  <head>
    <title>Brown Bears</title>
    </head>
  <body>
    <h1>The Brown Bear</h1>
    <div id="introduction">
      <h2>About Brown Bears</h2>
      <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the
        Atlas bear and the Himalayan brown bear.</p>
      <h3>Species</h3>
      <ul>
        <li>Arctos</li>
        <li>Collarus</li>
        <li>Horribilis</li>
        <li>Nelsoni (extinct)</li>
      </ul>
      <h3>Features</h3>
      <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
    </div>
    <div id="habitat">
      <h2>Habitat</h2>
      <h3>Countries with Large Brown Bear Populations</h3>
      <ol>
        <li>Russia</li>
        <li>United States</li>
        <li>Canada</li>
      </ol>
      <h3>Countries with Small Brown Bear Populations</h3>
      <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
    </div>
    <div id="media">
      <h2>Media</h2>
      <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" />
      <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" width="320" height="240" controls>Video not supported</video>
    </div>
  </body>
</html>
```

## Where Does the Title Appear?

Good work! Unfortunately, the browser panel used by the Codecademy
environment does not have a title bar, so the “Brown Bear” title you
wrote in the previous exercise will not be displayed. Outside of the
Codecademy environment, however, your title would appear as depicted in
the diagram to the right.

So far, we have learned about:

- `<!DOCTYPE html>`, the declaration specifying the version of HTML for
  the browser
- The `<html>` tags that enclose all of your HTML code
- The `<head>` tag that contains the metadata of a webpage, such as its
  `<title>`

Next, you will learn about new types of elements that go inside the
body.



<img src="https://content.codecademy.com/courses/updated_images/htmlcss1-diagram__sitetitle_Updated_1.svg" alt="Illustration of a browser panel with a title bar" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Linking to Other Web Pages

One of the powerful aspects of HTML (and the Internet), is the ability
to *link* to other web pages.

You can add links to a web page by adding an *anchor* element <a
href="https://www.codecademy.com/resources/docs/html/elements/a?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<a\></code></a> and including the
text of the link in between the opening and closing tags.

``` html
<a>This Is A Link To Wikipedia</a>
```

Wait a minute! Technically, the link in the example above is incomplete.
How exactly is the link above supposed to work if there is no URL that
will lead users to the actual Wikipedia page?

The anchor element in the example above is incomplete without the `href`
attribute. This attribute stands for *hyperlink reference* and is used
to link to a *path*, or the address to where a file is located (whether
it is on your computer or another location). The paths provided to the
`href` attribute are often URLs.

``` html
<a href="https://www.wikipedia.org/">This Is A Link To Wikipedia</a>
```

In the example above, the `href` attribute has been set to the value of
the URL `https://www.wikipedia.org/`. The example now shows the correct
use of an anchor element.

When reading technical documentation, you may come across the term
*hyperlink*. Not to worry, this is simply the technical term for link.
These terms are often used interchangeably.



**1.**

After the first paragraph, right above the heading that says `Species`,
add a link that says: `Learn More`. Don’t add the URL just yet.

**2.**

Add the following URL to the link:

    https://en.wikipedia.org/wiki/Brown_bear



``` html
<!DOCTYPE html>
<html>
  <head>
        <title>Brown Bears</title>
    </head>
  <body>
    <h1>The Brown Bear</h1>
    <div id="introduction">
      <h2>About Brown Bears</h2>
      <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the
        Atlas bear and the Himalayan brown bear.</p>
      <a href="https://en.wikipedia.org/wiki/Brown_bear">Learn More</a>
      <h3>Species</h3>
      <ul>
        <li>Arctos</li>
        <li>Collarus</li>
        <li>Horribilis</li>
        <li>Nelsoni (extinct)</li>
      </ul>
      <h3>Features</h3>
      <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
    </div>
    <div id="habitat">
      <h2>Habitat</h2>
      <h3>Countries with Large Brown Bear Populations</h3>
      <ol>
        <li>Russia</li>
        <li>United States</li>
        <li>Canada</li>
      </ol>
      <h3>Countries with Small Brown Bear Populations</h3>
      <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
    </div>
    <div id="media">
      <h2>Media</h2>
      <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" />
      <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" width="320" height="240" controls>Video not supported</video>
    </div>
  </body>
</html>
```

## Opening Links in a New Window

Have you ever clicked on a link and observed the resulting web page open
in a new browser window? If so, you can thank the `<a>` element’s
`target` attribute.

The `target` attribute specifies how a link should open.

It’s possible that one or more links on your web page link to an
entirely different website. In that case, you may want users to read the
linked website, but hope that they return to your web page. This is
exactly when the `target` attribute is useful!

For a link to open in a new window, the `target` attribute requires a
value of `_blank`. The `target` attribute can be added directly to the
opening tag of the anchor element, just like the `href` attribute.

``` html
<a href="https://en.wikipedia.org/wiki/Brown_bear" target="_blank">The Brown Bear</a>
```

In the example above, setting the `target` attribute to `"_blank"`
instructs the browser to open the relevant Wikipedia page in a new
window.

In this exercise, we’ve used the terminology “open in a new window.”
It’s likely that you are using a modern browser that opens up websites
in new *tabs*, rather than new windows. Before the advent of browsers
with tabs, additional browser windows had to be opened to view more
websites. The `target="_blank"` attribute, when used in modern browsers,
will open new websites in a new tab.



**1.**

In the link that reads `Learn More`, add the `target` attribute and set
it equal to `_blank`.



``` html
<!DOCTYPE html>
<html>
  <head>
        <title>Brown Bears</title>
    </head>
  <body>
    <h1>The Brown Bear</h1>
    <div id="introduction">
      <h2>About Brown Bears</h2>
      <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the
        Atlas bear and the Himalayan brown bear.</p>
      <a href="https://en.wikipedia.org/wiki/Brown_bear" target="_blank">Learn More</a>
      <h3>Species</h3>
      <ul>
        <li>Arctos</li>
        <li>Collarus</li>
        <li>Horribilis</li>
        <li>Nelsoni (extinct)</li>
      </ul>
      <h3>Features</h3>
      <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
    </div>
    <div id="habitat">
      <h2>Habitat</h2>
      <h3>Countries with Large Brown Bear Populations</h3>
      <ol>
        <li>Russia</li>
        <li>United States</li>
        <li>Canada</li>
      </ol>
      <h3>Countries with Small Brown Bear Populations</h3>
      <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
    </div>
    <div id="media">
      <h2>Media</h2>
      <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" />
      <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" width="320" height="240" controls>Video not supported</video>
    </div>
  </body>
</html>
```

``` html
<!DOCTYPE html>

<html>
<head>
  <title>About Me</title>
</head>
<body>
  <nav>
    <a href="/">Brown Bear</a>
     <!-- web browsers respond to index.html and / the same way -->
    <a href="aboutme.html">About Me</a>
  </nav>

<h1>About Me</h1>
<h3>Michael Doliner</h3>
<img src="https://content.codecademy.com/courses/web-101/htmlcss1-img_brown-bear-2.jpeg">

  <!-- A section that describes the brown bear -->
  <p>Hey, my name is Michael, and there's little I find more exciting than bears! I've spent most of my young life traveling to the edges of Earth to take videos of these wonderful creatures.   <br /> <br />

    Family, Country, Bears, <br /> <br />
    Michael D.

  </p>
</body>
</html>
```

## Linking to Relative Page

Thus far you have learned how to link to external web pages. Many sites
also link to internal web pages like Home, About, and Contact.

Before we learn how to link between internal pages, let’s establish
where our files are stored. When making multi-page static websites, web
developers often store HTML files in the *root directory*, or a main
folder where all the files for the project are stored. As the size of
the projects you create grows, you may use additional folders within the
main project folder to organize your code.

    project-folder/
    |—— about.html
    |—— contact.html
    |—— index.html

The example above shows three different files — **about.html**,
**contact.html**, and **index.html** in one folder.

HTML files are often stored in the same folder, as shown in the example
above. If the browser is currently displaying **index.html**, it also
knows that **about.html** and **contact.html** are in the same folder.
Because the files are stored in the same folder, we can link web pages
together using a *relative path*.

``` html
<a href="./contact.html">Contact</a>
```

In this example, the `<a>` tag is used with a relative path to link from
the current HTML file to the `contact.html` file in the same folder. On
the web page, `Contact` will appear as a link.

A relative path is a filename that shows the path to a *local file* (a
file on the same website, such as `./index.html`) versus an absolute
path (a full URL, like `https://www.codecademy.com/learn/learn-html`
which is stored in a different folder). The `./` in `./index.html` tells
the browser to look for the file in the current folder.



**1.**

Directly below the opening `<body>` tag within **index.html**, add an
anchor tag that links to **index.html** with a relative path. The link
should say `Brown Bear`.

**2.**

Under the link to **index.html**, add an anchor tag that links to
**aboutme.html** using a relative path. The link should say `About Me`.
Notice that there is also another file in the code editor,
**aboutme.html**. Click the link to make sure it works!



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Brown Bears</title>
</head>

<body>
  <a href="./index.html">Brown Bear</a>
  <a href="./aboutme.html">About Me</a>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the
      Atlas bear and the Himalayan brown bear.</p>
    <a href="https://en.wikipedia.org/wiki/Brown_bear" target="_blank">Learn More</a>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <ol>
      <li>Russia</li>
      <li>United States</li>
      <li>Canada</li>
    </ol>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
    <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" />
    <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" height="240" width="320" controls>Video not supported</video>
  </div>
</body>

</html>
```

``` html
<!DOCTYPE html>

<html>
<head>
  <title>About Me</title>
</head>
<body>
  <nav>
    <a href="/">Brown Bear</a>
    <!-- web browsers respond to index.html and / the same way -->
    <a href="./aboutme.html">About Me</a>
  </nav>

<h1>About Me</h1>
<h3>Michael Doliner</h3>
<img src="https://content.codecademy.com/courses/web-101/htmlcss1-img_brown-bear-2.jpeg">

  <!-- A section that describes the brown bear -->
  <p>Hey, my name is Michael, and there's little I find more exciting than bears! I've spent most of my young life traveling to the edges of Earth to take videos of these wonderful creatures.   <br /> <br />

    Family, Country, Bears, <br /> <br />
    Michael D.

  </p>
</body>
</html>
```

## Linking At Will

You’ve probably visited websites where not all links were made up of
text. Maybe the links you clicked on were images or some other form of
content.

So far, we’ve added links that were made up of only text, like the
following:

``` html
<a href="https://en.wikipedia.org/wiki/Opuntia" target="_blank">Prickly Pear</a>
```

Text-only links, however, would significantly decrease your flexibility
as a web developer!

Thankfully, HTML allows you to turn nearly any element into a link by
wrapping that element with an anchor element. With this technique, it’s
possible to turn images into links by simply wrapping the <a
href="https://www.codecademy.com/resources/docs/html/elements/img?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<img\></code></a> element with an
`<a>` element.

``` html
<a href="https://en.wikipedia.org/wiki/Opuntia" target="_blank"><img src="https://www.Prickly_Pear_Closeup.jpg" alt="A red prickly pear fruit"/></a>
```

In the example above, an image of a prickly pear has been turned into a
link by wrapping the outside of the `<img>` element with an `<a>`
element.



**1.**

In **index.html**, transform the image on your page into a link by
wrapping the image element with an anchor element. Set the `target`
attribute so that the link opens in a new window.

Your image element should be a nested tag inside your anchor element.

Use the same URL as before:

    https://en.wikipedia.org/wiki/Brown_bear



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Brown Bears</title>
</head>

<body>
  <a href="./index.html">Brown Bear</a>
  <a href="./aboutme.html">About Me</a>
  <h1>The Brown Bear</h1>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the
      Atlas bear and the Himalayan brown bear.</p>
    <a href="https://en.wikipedia.org/wiki/Brown_bear" target="_blank">Learn More</a>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <ol>
      <li>Russia</li>
      <li>United States</li>
      <li>Canada</li>
    </ol>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
    <a href="https://en.wikipedia.org/wiki/Brown_bear" target="_blank"><img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg"/></a>
    <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" height="240" width="320" controls>Video not supported</video>
  </div>
</body>

</html>
```

## Linking to Same Page

At this point, we have all the content we want on our page. Since we
have so much content, it doesn’t all fit on the screen. How do we make
it easier for a user to jump to different portions of our page?

When users visit our site, we want them to be able to click a link and
have the page automatically scroll to a specific section.

In order to link to a *target* on the same page, we must give the target
an *id*, like this:

``` html
<p id="top">This is the top of the page!</p>
<h1 id="bottom">This is the bottom! </h1>
```

In this example, the `<p>` element is assigned an `id` of “top” and the
`<h1>` element is assigned “bottom.” An `id` can be added to most
elements on a webpage.

An `id` should be descriptive to make it easier to remember the purpose
of a link. The target link is a string containing the `#` character and
the target element’s `id`.

``` html
<ol>
  <li><a href="#top">Top</a></li>
  <li><a href="#bottom">Bottom</a></li>
</ol>
```

In the example above, the links to `<p id="top">` and `<h1 id="bottom">`
are embedded in an ordered list. These links appear in the browser as a
numbered list of links. An `id` is especially helpful for organizing
content belonging to a `div`!



**1.**

Under the `<h1>` element that says `The Brown Bear`, create an unordered
list with the following three list items:

- Introduction
- Habitat
- Media

**2.**

Wrap the text of each list item in the unordered list in an `anchor`
element. Each anchor tag should link to the corresponding `<div>` on the
page (The `<a>` element that contains the text “Introduction” links to
`#introduction`).



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Brown Bears</title>
</head>

<body>
  <a href="./index.html">Brown Bear</a>
  <a href="./aboutme.html">About Me</a>
  <h1>The Brown Bear</h1>
  <ul>
    <li><a href="#introduction">Introduction</a></li>
    <li><a href="#habitat">Habitat</a></li>
    <li><a href="#media">Media</a></li>
  </ul>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the
      Atlas bear and the Himalayan brown bear.</p>
    <a href="https://en.wikipedia.org/wiki/Brown_bear" target="_blank">Learn More</a>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <ol>
      <li>Russia</li>
      <li>United States</li>
      <li>Canada</li>
    </ol>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
    <a href="https://en.wikipedia.org/wiki/Brown_bear" target="_blank"><img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg"/></a>
    <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" height="240" width="320" controls>Video not supported</video>
  </div>
</body>

</html>
```

## Whitespace

The rest of this lesson will focus on some tools developers use to make
code easier to interpret.

As the code in an HTML file grows, it becomes increasingly difficult to
keep track of how elements are related. Programmers use two tools to
visualize the relationship between elements: *whitespace* and
*indentation*.

Both tools take advantage of the fact that the position of elements in a
browser is independent of the amount of whitespace or indentation in the
**index.html** file.

For example, if you wanted to increase the space between two paragraphs
on your web page, you would *not* be able to accomplish this by adding
space between the paragraph elements in the **index.html** file. The
browser ignores *whitespace* in HTML files when it renders a web page,
so it can be used as a tool to make code easier to read and follow.

What makes the example below difficult to read?

``` html
<body><p>Paragraph 1</p><p>Paragraph 2</p></body>
```

You have to read the entire line to know what elements are present.
Compare the example above to this:

``` html
<body>
    <p>Paragraph 1</p>
    <p>Paragraph 2</p>
</body>
```

This example is easier to read, because each element is on its own line.
While the first example required you to read the entire line of code to
identify the elements, this example makes it easy to identify the body
tag and two paragraphs.

A browser renders both examples the same way:

    Paragraph 1
    Paragraph 2

In the next exercise you will learn how to use indentation to help
visualize nested elements.



**1.**

Use whitespace to make the code more readable by putting each element on
its own line.



``` html
<!DOCTYPE html>
<html>
    <body>
      <h1>Whitespace</h1>
      <p>
        Whitespace and indentation make html documents easier to ready
      </p>
  </body>
</html>
```

## Indentation

The second tool web developers use to make the structure of code easier
to read is *indentation*. The spaces are inserted using the
<span class="kbd">space</span> and <span class="kbd">tab</span> bars on
your keyboard.

The <a href="https://www.w3.org/Consortium/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">World Wide Web Consortium</a>, or W3C, is
responsible for maintaining the style standards of HTML. At the time of
writing, the W3C recommends 2 spaces of indentation when writing HTML
code. Although your code will work without exactly two spaces, this
standard is followed by the majority of professional web developers.
Indentation is used to easily visualize which elements are nested within
other elements.

``` html
<body>
  <p>Paragraph 1</p>
  <div>
    <p>Paragraph 2</p>
  </div>
</body>
```

In the example above, `Paragraph 1` and the `<div>` tag are nested
inside of the `<body>` tag, so they are indented two spaces. The
`Paragraph 2` element is nested inside of the `<div>` tag, so it is
indented an additional two spaces.



**1.**

Indent the code in **index.html** to match the W3C standards.



``` html
<body>
    <h1>Whitespace</h1>    
    <div>
        <p>Whitespace and indentation make html documents easier to read.</p>
    </div>  
</body>
```

## Comments

HTML files also allow you to add <a
href="https://www.codecademy.com/resources/docs/html/comments?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">comments</a> to your code.

Comments begin with `<!--` and end with `-->`. Any characters in between
will be ignored by your browser.

``` html
<!-- This is a comment that the browser will not display. -->
```

Including comments in your code is helpful for many reasons:

1.  They help you (and others) understand your code if you decide to
    come back and review it at a much later date.
2.  They allow you to experiment with new code, without having to delete
    old code.

``` html
<!-- Favorite Films Section -->
<p>The following is a list of my favorite films:</p>
```

In this example, the comment is used to denote that the following text
makes up a particular section of the page.

``` html
<!-- <p> Test Code </p> -->
```

In the example above, a valid HTML element (a paragraph element) has
been “commented out.” This practice is useful when there is code you
want to experiment with, or return to, in the future.



**1.**

Add a comment to **index.html** file.



``` html
<!DOCTYPE html>
<html>
  <!-- <p> History Quote Coding Assignment </p> -->
  <head>
    <title>Favorite Quotes</title>
  </head>
  <body>
    <p>Feet, what do I need you for when I have wings to fly?</p>
    <p>- Frida Kahlo</p>
  </body>
</html>
```

## HTML Tags

You now know all of the basic elements and set-up you need to structure
an HTML page and add different types of content. With the help of CSS,
very soon you’ll be creating beautiful websites!

While some tags have a very specific purpose, such as image and video
tags, most tags are used to describe the content that they surround,
which helps us modify and style our content later. There are seemingly
infinite numbers of tags to use (many more than we’ve taught). Knowing
when to use each one is based on how you want to describe the content of
your HTML. Descriptive, well-chosen tags are one key to high-quality web
development. A full list of available HTML tags can be found
<a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">in Mozilla documentation</a>.

Let’s review what you’ve learned this lesson:

1.  The `<!DOCTYPE html>` declaration should always be the first line of
    code in your HTML files. This lets the browser know what version of
    HTML to expect.
2.  The `<html>` element will contain all of your HTML code.
3.  Information about the web page, like the title, belongs within the
    `<head>` of the page.
4.  You can add a title to your web page by using the `<title>` element,
    inside of the head.
5.  A webpage’s title appears in a browser’s tab.
6.  Anchor tags (`<a>`) are used to link to internal pages, external
    pages or content on the same page.
7.  You can create sections on a webpage and jump to them using `<a>`
    tags and adding `id`s to the elements you wish to jump to.
8.  Whitespace between HTML elements helps make code easier to read
    while not changing how elements appear in the browser.
9.  Indentation also helps make code easier to read. It makes
    parent-child relationships visible.
10. Comments are written in HTML using the following syntax:
    `<!-- comment -->`.

Take some time to edit the workspace you created and observe how it
changes!



Congratulations on completing this lesson!

If you want to review how to use HTML in a project, watch the video
below and follow along with one of our experts:

[HTML Doc Standards](https://www.youtube.com/watch?v=B4tCt6elrU0)



``` html
<!DOCTYPE html>
<html>

<head>
  <title>Brown Bears</title>
</head>

<body>
  <nav>
    <a href="./index.html">Brown Bear</a>
    <a href="./aboutme.html">About Me</a>
  </nav>
  <h1>The Brown Bear</h1>
  <nav>
    <ul>
      <li><a href="#introduction">Introduction</a></li>
      <li><a href="#habitat">Habitat</a></li>
      <li><a href="#media">Media</a></li>
    </ul>
  </nav>
  <div id="introduction">
    <h2>About Brown Bears</h2>
    <p>The brown bear (<em>Ursus arctos</em>) is native to parts of northern Eurasia and North America. Its conservation status is currently <strong>Least Concern</strong>.<br /><br /> There are many subspecies within the brown bear species, including the
      Atlas bear and the Himalayan brown bear.</p>
    <a href="https://en.wikipedia.org/wiki/Brown_bear" target="_blank">Learn More</a>
    <h3>Species</h3>
    <ul>
      <li>Arctos</li>
      <li>Collarus</li>
      <li>Horribilis</li>
      <li>Nelsoni (extinct)</li>
    </ul>
    <h3>Features</h3>
    <p>Brown bears are not always completely brown. Some can be reddish or yellowish. They have very large, curved claws and huge paws. Male brown bears are often 30% larger than female brown bears. They can range from 5 feet to 9 feet from head to toe.</p>
  </div>
  <div id="habitat">
    <h2>Habitat</h2>
    <h3>Countries with Large Brown Bear Populations</h3>
    <ol>
      <li>Russia</li>
      <li>United States</li>
      <li>Canada</li>
    </ol>
    <h3>Countries with Small Brown Bear Populations</h3>
    <p>Some countries with smaller brown bear populations include Armenia, Belarus, Bulgaria, China, Finland, France, Greece, India, Japan, Nepal, Poland, Romania, Slovenia, Turkmenistan, and Uzbekistan.</p>
  </div>
  <div id="media">
    <h2>Media</h2>
    <img src="https://content.codecademy.com/courses/web-101/web101-image_brownbear.jpg" />
    <video src="https://content.codecademy.com/courses/freelance-1/unit-1/lesson-2/htmlcss1-vid_brown-bear.mp4" height="240" width="320" controls>Video not supported</video>
  </div>
</body>

</html>
```

``` html
<!DOCTYPE html>

<html>
<head>
  <title>About Me</title>
</head>
<body>
  <nav>
    <a href="/">Brown Bear</a>
    <!-- web browsers respond to index.html and / the same way -->
    <a href="./aboutme.html">About Me</a>
  </nav>

<h1>About Me</h1>
<h3>Michael Doliner</h3>
<img src="https://content.codecademy.com/courses/web-101/htmlcss1-img_brown-bear-2.jpeg">

  <!-- A section that describes the brown bear -->
  <p>Hey, my name is Michael, and there's little I find more exciting than bears! I've spent most of my young life traveling to the edges of Earth to take videos of these wonderful creatures.   <br /> <br />

    Family, Country, Bears, <br /> <br />
    Michael D.

  </p>
</body>
</html>
```

# Intro to Mozilla Developer Network

Learn how to search and use the Mozilla Developer Network documentation

## Introduction: The Mozilla Developer Network

When learning a topic, it’s often helpful to go straight to the source
to read more from the original documentation. For web development, one
of the most well-known names in the industry is the
<a href="https://developer.mozilla.org/en-US/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network</a>, or “MDN”
for short. This open-source network of documentation and tools has
information about a wide variety of topics related to web development,
including HTML, CSS, and JavaScript.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_homepage.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="MDN home page" />

MDN originally started with documentation for web browsers but has grown
to cover a wide variety of web-related topics over the years. Today,
companies like Microsoft and Google actively support MDN as the central
source of information about web technology.

While reading or using MDN documentation isn’t required to complete
Codecademy lessons or projects, it’s an important resource for you to be
aware of. As you start to put your skills to practical use by working on
projects off of Codecademy, knowing where to go for more information
will be essential to your growth and success as a developer.

This article will cover:

- How to search for MDN articles
- Identifying which sections relate to what you’re looking for

The examples provided will focus on HTML syntax, but this article will
give you a general idea of how to use MDN documentation.

## Searching for MDN Articles

To find documentation related to a topic you’re looking for, go to the
<a href="https://developer.mozilla.org/en-US/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">home page</a> and find the search bar in
the upper-righthand corner of the page.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_searchbar.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Home page of MDN Web Docs site with search bar highlighted" />

Type in the topic you’re searching for in the search bar, press
<span class="kbd">Enter</span> to display a list of results. (The more
specific the terms you use to search, the more likely you’ll get
relevant results.) In this example, we’ll look for documentation related
to the HTML section heading elements syntax:

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_search_results.gif"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Typing keywords into MDN search bar and search results displaying" />

Choose a result and you’ll be taken to a page displaying more detailed
information about the topic. The example here uses the article titled <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“\<h1\>–\<h6\>: The HTML Section Heading
elements”</a>.

## MDN Article Sections

MDN articles usually divide content into separate sections. The types of
sections will vary depending on the topic, but you will find the
following sections in HTML documentation:

- A definition and demo
- Attributes
- Usage notes
- Examples
- Accessibility concerns
- Specifications
- Browser compatibility
- Related topics

Except for the Related Topics sidebar, you can jump to the relevant
section you want to look at by clicking on the link in the menu, “On
this Page,” located at the top of the page.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_jump_to_section.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="On this Page section of the MDN article for HTML section heading elements" />

Each of these sections will be covered, starting with those that should
provide you with immediate help with syntax followed by the sections
that give more general information about HTML. One thing to note before
continuing is that it is not necessary to read through every section in
an article or to understand all the content in it. Feel free to pick and
choose sections to look at that make the most sense to you. There will
always be more information in documentation than is necessary for what
you need to do at any one time.

### Definition and Demo

At the top of an MDN article, you’ll see a written definition of the
article’s subject. Below the definition, you will find a demo, an
interactive example. Here the demo displays a variety of heading
elements showing the correct syntax.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_demo.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Definition and demo section of the MDN HTML section heading elements article" />

These demos allow you to run the example code given to you and see the
immediate result.

You can also interact with the example code including making changes to
it, allowing you to learn how the code works by testing code and
observing the result. The demo can be especially helpful if you prefer
to learn by reading through code and playing with it rather than a
written description.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_interactive_demo.gif"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Changing the content of a section heading element in the demo of the MDN HTML section heading elements article" />

### Attributes

Below the definition and demo is “Attributes.” This section describes
any attributes specific to the HTML element. In this case, there are
none except for global attributes like `class` or `id` that are used on
all HTML elements.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_attributes_section.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Attributes section of the MDN HTML section heading elements article" />

### Usage Notes

The section titled “Usage notes” gives helpful tips, including best
practices that will help your website follow certain standards.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_usage_notes_list.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Usage notes section of the MDN article" />

This section is particularly useful when working with unfamiliar syntax
and can help you avoid common mistakes. If any of the notes are unclear,
the examples in the next section should show code snippets that follow
the recommendations in the usage notes.

### Examples

This section provides you with even more examples. However, unlike the
interactive demo you saw at the top of the page you won’t be able to
change the code directly in this section.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_examples.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="A code example from the MDN article on HTML section heading elements showing all headings" />

The examples provide syntactically correct uses of HTML elements for you
to model your code on as well as the result of running these examples.

If the written definition and demo don’t provide clear guidance on what
an article subject is or how to use it, looking at the examples in this
section can be helpful. Like the written content, it’s not necessary to
understand every example shown or read through every example.

## Supporting Sections

The following sections aren’t essential to learning syntax but they
provide more detailed information about how to best and correctly use
the code shown in the previous sections. As mentioned earlier, there
will always be more information contained in documentation than you
need. However, going through these sections can help enlarge your
knowledge of a given topic or give some insight into how or why a
certain web technology was created.

### Accessibility Concerns

The accessibility concerns section goes over any issues that might
impact accessibility, or how easily people can use your website when
implementing the code or web technology shown in the article.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_accessibility.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Accessibility Concerns section of an MDN article " />

Similar to the usage notes, the accessibility concerns section covers
best practices that should be followed so that anyone visiting your
website can use it.

### Specifications

The specifications section provides links to resources that discuss the
article’s topic in more detail. This article’s section goes into the
design of these HTML elements, what their purpose is, and how they
should function.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_specifications.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Specifications section of an MDN article" />

### Browser Compatibility

This section displays information about which web browsers can support,
or properly display the HTML elements, discussed in the article. The
information found here is similar to the information you would find on a
website like <a href="https://caniuse.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">caniuse.com</a> although less detailed.

<img
src="https://static-assets.codecademy.com/Courses/reading-documentation/mdn_browser_compatibility.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Browser compatibility section of an MDN article" />

### Related Topics

There are two sections of this article that will show you additional,
related topics: the section “See also” and the sidebar under “Related
Topics.” Both provide linked articles that discuss topics related to the
subject of the current article.

## Recap

In this article you learned:

- How to search on MDN
- What sections provide practical help with syntax and style
- Where you can interact with examples
- What sections have more information about a topic, including new
  terminology and more complex contexts and uses

Introducing you to MDN documentation early on provides you with an
additional resource for looking up syntax and familiarizes you with one
of the most important sources of documentation about web technologies.
It also gives you the resources to enrich and extend your knowledge of a
topic or subject beyond a beginner-level. So when you’re stuck on
something, or you just want to learn a little more, try reading the
documentation. You might just find what you’re looking for!

# HTML on MDN Web Docs: Debugging

Learn about HTML debugging.

→ **<a
href="https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Debugging_HTML"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">HTML on MDN Web Docs: Debugging</a>**

In this article, you will learn about debugging HTML through the
documentation on the Mozilla Developer Network. This is helpful if you’d
like to understand how to fix common errors that developers make while
constructing HTML. After you finish reading the article, return to this
page and complete the following assessments.

Multiple choice

What is the error within this HTML snippet?

    <p> Why Debugging is Important </p>
    <ul>
      <li>Readability: If an element is <strong>not closed properly, then its effect can spread to areas you didn't intend.</li>
    </ul>

The `<ul>` and `<li>` tags need to be swapped.

There should not be space between the `<p></p>` tags and the text they
contain.

The `<strong>` element needs a closing `</strong>` tag.

Multiple choice

Why should a front-end developer be vigilant with HTML being
“permissive” code?

Syntax errors will not stop a website from being built.

HTML can permit you to debug live code via the “Inspect” option in the
browser.

A browser will not build any HTML that has syntax or logic errors.

You have to use a Markup Validation Service to confirm any errors within
your HTML code.

# Fashion Blog

Your friend Isa is a budding fashion blogger, and she’s asked you to
build her a new website, just in time for New York Fashion Week!

Use your new HTML knowledge to create the underlying structure of the
blog. Make sure to include plenty of pictures, links, lists, and other
HTML elements that you’ve learned so that her fans have plenty to read.

You can view a <a
href="https://content.codecademy.com/courses/learn-html/elements-and-structure/fashion.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">completed project</a> and see how it
compares to your work!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

1\.

To start, add the `<!DOCTYPE html>` declaration as the very first line
of code at the top of the `index.html` file. Add the `<html>` element
below.

2\.

Below the `<html>` opening tag, add a `<head>` element. Below the
`<head>` element, add the `<body>` element.

3\.

Within the `<head>` tags, add a `<title>` element. Title the website
“Everyday with Isa”.

4\.

Directly below the opening `<body>` tag, add an `<h1>` that says:

“An Insider’s Guide to NYFW”

Below that, add an `<h2>` that says:

“Getting Tickets & Picking the Shows”

Below that, add an `<h2>` that says:

“Dressing for the Shows”

5\.

Here’s Isa’s first dispatch from Fashion Week! Let’s add a blog post.
Between the `<h1>` and first `<h2>` tag, add a `<p>` tag that says:

“NYFW can be both amazingly fun & incredibly overwhelming, especially if
you’ve never been. Luckily, I’m here to give you an insider’s guide and
make your first show a pleasurable experience. By taking my tips and
tricks, and following your gut, you’ll have an unforgettable
experience!”

6\.

Between the first and second `<h2>` tags, add another paragraph to the
post using the `<p>` tag:

“If you’re lucky or connected you can get an invite, sans the price tag.
But I wasn’t so lucky or connected my first 2 years so I’m here to help
you out. First, plan out which shows are most important to you and make
a schedule and this is a biggie: SET A BUDGET. If you’re worrying about
blowing your cash the whole time you won’t have fun. Then check out
prices, days, and times and prioritize the designers you want to see
most. Lastly, purchase your tickets and get excited!”

7\.

After the last `<h2>` tag, add a final paragraph that says:

“Always be true to your own sense of style, if you don’t you’ll be
uncomfortable the whole time and it will show. Remember, NYFW is about
expressing yourself and taking in what the designers have chosen to
express through their new lines. Also it’s important to wear shoes
you’ll be comfortable in all day. Obviously you want to look good, but
you’ll be on your feet all day long, so be prepared.”

8\.

Of course, this wouldn’t be a fashion blog without some images. Above
each paragraph, add an `<img>` tag and set its `src` to be one of the
following links:

``` html
https://content.codecademy.com/courses/learn-html/elements-and-structure/image-one.jpeg
```

``` html
https://content.codecademy.com/courses/learn-html/elements-and-structure/image-two.jpeg
```

``` html
https://content.codecademy.com/courses/learn-html/elements-and-structure/image-three.jpeg
```

9\.

Your first blog post is complete! Now let’s add an image of Isa, so her
readers get to know her. Below the opening body tag, add an `<img>` tag
with the following source:

``` html
https://content.codecademy.com/courses/learn-html/elements-and-structure/profile.jpg
```

10\.

Below the `<img>` tag, add an `<h3>` that says “by Isabelle Rodriguez \|
1 day ago”

11\.

Isa wants her readers to know that she’s written a lot more than one
post. Let’s make a list of some related blog posts. Beneath the last
paragraph, add a `<h4>` tag that says “Related Content”. Underneath that
header tag, create an unordered list.

12\.

The unordered list should have the following four items:

- “How To Style Boyfriend Jeans”
- “When Print Is Too Much”
- “The Overalls Trend”
- “Fall’s It Color: Blush”

13\.

Let’s get Isa’s blog connected to the rest of the web! In the first
paragraph, turn ‘NYFW’ into a link and have it go to:
<a href="https://en.wikipedia.org/wiki/New_York_Fashion_Week"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"
rel="noopener">https://en.wikipedia.org/wiki/New_York_Fashion_Week</a>.

Make sure to include the `target="_blank"` attribute so that it opens in
a new page.

14\.

Isa wants to make sure that her friends can get in touch with her. At
the bottom of your body, add a new `<div>` and set its `id='contact'`.
Inside the `<div>`, create a new `<p>` tag and put the following contact
information inside of it:

email: <a href="mailto:isa@fashionblog.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">isa@fashionblog.com</a> \| phone: 917-555-1098 \|
address: 371 284th St, New York, NY, 10001

15\.

Inside the contact `<div>`, put `<strong>` opening and closing tags
around “email”, “phone”, and “address”.

16\.

Let’s make the profile picture a link to the contact section of the
webpage. Find the profile `<img>` tag, and surround it by opening and
closing `<a>` tags. In the `<a>` tag, set `href="#contact"`.

17\.

Congrats! You’ve got the beginnings of a solid fashion blog. Feel free
to make modifications and practice your HTML by adding more content.

## [Solution](html-fashion-blog)

# HTML Tables

## Introduction to Tables

There are many websites on the Internet that display information like
stock prices, sports scores, invoice data, and more. This data is
tabular in nature, meaning that a table is often the best way of
presenting the data.

In this part of the course, we’ll learn how to use the HTML `<table>`
element to present information in a two-dimensional table to the users.

Let’s get started!



Take a look at the code in the body of **index.html**. What new code do
you see?

Explore with the code in this file and try modifying something at
random. What happened?



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>

  <table>
    <thead>
      <tr>
        <th>Company Name</th>
        <th>Number of Items to Ship</th>
        <th>Next Action</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>Adam's Greenworks</th>
        <td>14</td>
        <td>Package Items</td>
      </tr>
      <tr>
        <th>Davie's Burgers</th>
        <td>2</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <th>Baker's Bike Shop</th>
        <td>3</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <th>Miss Sally's Southern</th>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <th>Summit Resort Rentals</th>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <th>Strike Fitness</th>
        <td>1</td>
        <td>Enter Order</td>
      </tr>
      </tbody>
  </table>

</body>
</html>
```

## Create a Table

Before displaying data, we must first create the table that will contain
the data by using the `<table>` element.

``` html
<table>
 
</table>
```

The `<table>` element will contain all of the tabular data we plan on
displaying.



**1.**

In **index.html**, create a table just above the closing `body` tag.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    
  </table>


</body>
</html>
```

## Table Rows

In many programs that use tables, the table is already predefined for
you, meaning that it contains the
<a href="https://en.wikipedia.org/wiki/Table_(information)"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">rows, columns, and cells that will hold
data</a>. In HTML, all of these components must be created.

The first step in entering data into the table is to add rows using the
*table row* element: `<tr>`.

``` html
<table>
  <tr>
  </tr>
  <tr>
  </tr>
</table>
```

In the example above, two rows have been added to the table.



**1.**

Add two rows to the table in **index.html**.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    
  </table>


</body>
</html>
```

## Table Data

Rows aren’t sufficient to add data to a table. Each cell element must
also be defined. In HTML, you can add data using the *table data*
element: `<td>`.

``` html
<table>
  <tr>
    <td>73</td>
    <td>81</td>
  </tr>
</table>
```

In the example above, two data points (`73` and `81`) were entered in
the one row that exists. By adding two data points, we created two cells
of data.

If the table were displayed in the browser, it would show a table with
one row and two columns.



**1.**

In the second row, add three cells of data. The cells should contain the
following data, in order:

- Adam’s Greenworks
- 14
- Package Items



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    <tr>
    </tr>
    <tr>
      <td>Adam's Greenworks</td>
      <td>14</td>
      <td>Package Items</td>
    </tr>
  </table>


</body>
</html>
```

## Table Headings

Table data doesn’t make much sense without titles to describe what the
data represents.

To add titles to rows and columns, you can use the *table heading*
element: `<th>`.

The table heading element is used just like a table data element, except
with a relevant title. Just like table data, a table heading must be
placed within a table row.

``` html
<table>
  <tr>
    <th></th>
    <th scope="col">Saturday</th>
    <th scope="col">Sunday</th>
  </tr>
  <tr>
    <th scope="row">Temperature</th>
    <td>73</td>
    <td>81</td>
  </tr>
</table>
```

What happened in the code above?

First, a new row was added to hold the three headings: a blank heading,
a `Saturday` heading, and a `Sunday` heading. The blank heading creates
the extra table cell necessary to align the table headings correctly
over the data they correspond to.

In the second row, one table heading was added as a row title:
`Temperature`.

When rendered, this code will appear similar to the image below: <img
src="https://content.codecademy.com/courses/learn-html-tables/table_example.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Table Example" />

Note, also, the use of the `scope` attribute, which can take one of two
values:

1.  `row` - this value makes it clear that the heading is for a row.
2.  `col` - this value makes it clear that the heading is for a column.

HTML code for tables may look a little strange at first, but analyzing
it piece by piece helps make the code more understandable.



**1.**

In the first row, add three table headings. The headings should contain
the following data, in order:

- Company Name
- Number of Items to Ship
- Next Action

These headings will add meaning to the rest of the data in the table.

**2.**

Now add a `scope` attribute to each of these new headings.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    <tr>
      <th scope='col'>Company Name</th>
      <th scope='col'>Number of Items to Ship</th>
      <th scope='col'>Next Action</th>
    </tr>
    <tr>
      <td>Adam's Greenworks</td>
      <td>14</td>
      <td>Package Items</td>
    </tr>
  </table>


</body>
</html>
```

## Table Borders

So far, the tables you’ve created have been a little difficult to read
because they have no borders.

In older versions of HTML, a border could be added to a table using the
`border` attribute and setting it equal to an integer. This integer
would represent the thickness of the border.

``` html
<table border="1">
  <tr>
    <td>73</td>
    <td>81</td>
  </tr>
</table>
```

The code in the example above is
<a href="https://en.wikipedia.org/wiki/Deprecation"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">deprecated</a>, so please don’t use it.
It’s meant to illustrate older conventions you may come across when
reading other developers’ code.

The browser will likely still interpret your code correctly if you use
the `border` attribute, but that doesn’t mean the attribute should be
used.

We use CSS to add style to HTML documents, because it helps us to
separate the structure of a page from how it looks. You can learn more
about CSS in our CSS courses.

You can achieve the same table border effect using CSS.

``` html
table, td {
  border: 1px solid black;
}
```

The code in the example above uses CSS instead of HTML to show table
borders.



**1.**

We’re going to need some more data in the table. Add the following data
to the table. Make sure to place it after the second table row.

``` html
<tr>
  <td>Davie's Burgers</td>
  <td>2</td>
  <td>Send Invoice</td>
</tr>
<tr>
  <td>Baker's Bike Shop</td>
  <td>3</td>
  <td>Send Invoice</td>
</tr>
<tr>
  <td>Miss Sally's Southern</td>
  <td>4</td>
  <td>Ship</td>
</tr>
<tr>
  <td>Summit Resort Rentals</td>
  <td>4</td>
  <td>Ship</td>
</tr>
<tr>
  <td>Strike Fitness</td>
  <td>1</td>
  <td>Enter Order</td>
</tr>
```



``` html
<!DOCTYPE html>
<html>
  <head>
    <title>Ship To It - Company Packing List</title>
    <link
      href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400"
      rel="stylesheet"
    />
    <link href="style.css" type="text/css" rel="stylesheet" />
  </head>
  <body>
    <ul class="navigation">
      <li>
        <img
          src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png"
          height="20px;"
        />
      </li>
      <li class="active">Action List</li>
      <li>Profiles</li>
      <li>Settings</li>
    </ul>

    <div class="search">Search the table</div>

    <table>
      <tr>
        <th scope="col">Company Name</th>
        <th scope="col">Number of Items to Ship</th>
        <th scope="col">Next Action</th>
      </tr>
      <tr>
        <td>Adam's Greenworks</td>
        <td>14</td>
        <td>Package Items</td>
      </tr>
      <tr>
        <td>Davie's Burgers</td>
        <td>2</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Baker's Bike Shop</td>
        <td>3</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Miss Sally's Southern</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Summit Resort Rentals</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Strike Fitness</td>
        <td>1</td>
        <td>Enter Order</td>
      </tr>
    </table>
  </body>
</html>
```

## Spanning Columns

What if the table contains data that spans multiple columns?

For example, a personal calendar could have events that span across
multiple hours, or even multiple days.

Data can span columns using the `colspan` attribute. The attribute
accepts an integer (greater than or equal to 1) to denote the number of
columns it spans across.

``` html
<table>
  <tr>
    <th>Monday</th>
    <th>Tuesday</th>
    <th>Wednesday</th>
  </tr>
  <tr>
    <td colspan="2">Out of Town</td>
    <td>Back in Town</td>
  </tr>
</table>
```

In the example above, the data `Out of Town` spans the `Monday` and
`Tuesday` table headings using the value `2` (two columns). The data
`Back in Town` appear only under the `Wednesday` heading.



**1.**

In **index.html**, span a `<td>` element across two columns.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    <tr>
      <th>Company Name</th>
      <th>Number of Items to Ship</th>
      <th>Next Action</th>
    </tr>
    <tr>
      <td colspan="2">Adam's Greenworks</td>
      <td>14</td>
      <td>Package Items</td>
    </tr>
    <tr>
      <td>Davie's Burgers</td>
      <td>2</td>
      <td>Send Invoice</td>
    </tr>
    <tr>
      <td>Baker's Bike Shop</td>
      <td>3</td>
      <td>Send Invoice</td>
    </tr>
    <tr>
      <td>Miss Sally's Southern</td>
      <td>4</td>
      <td>Ship</td>
    </tr>
    <tr>
      <td>Summit Resort Rentals</td>
      <td>4</td>
      <td>Ship</td>
    </tr>
    <tr>
      <td>Strike Fitness</td>
      <td>1</td>
      <td>Enter Order</td>
    </tr>
  </table>


</body>
</html>
```

## Spanning Rows

Data can also span multiple rows using the `rowspan` attribute.

The `rowspan` attribute is used for data that spans multiple rows
(perhaps an event goes on for multiple hours on a certain day). It
accepts an integer (greater than or equal to 1) to denote the number of
rows it spans across.

``` html
<table>
  <tr> <!-- Row 1 -->
    <th></th>
    <th>Saturday</th>
    <th>Sunday</th>
  </tr>
  <tr> <!-- Row 2 -->
    <th>Morning</th>
    <td rowspan="2">Work</td>
    <td rowspan="3">Relax</td>
  </tr>
  <tr> <!-- Row 3 -->
    <th>Afternoon</th>
  </tr>
  <tr> <!-- Row 4 -->
    <th>Evening</th>
    <td>Dinner</td>
  </tr>
</table>
```

In the example above, there are four rows:

1.  The first row contains an empty cell and the two column headings.
2.  The second row contains the `Morning` row heading, along with
    `Work`, which spans two rows under the `Saturday` column. The
    “Relax” entry spans three rows under the `Sunday` column.
3.  The third row only contains the `Afternoon` row heading.
4.  The fourth row only contains the `Dinner` entry, since “Relax” spans
    into the cell next to it.

If you’d like to see how the browser interprets the code above, feel
free to copy and paste it into the code editor to understand it a little
better.



**1.**

In **index.html**, span a `<td>` element across two rows.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    <tr>
      <th>Company Name</th>
      <th>Number of Items to Ship</th>
      <th>Next Action</th>
    </tr>
    <tr>
      <td colspan="2">Adam's Greenworks</td>
      <td>14</td>
      <td>Package Items</td>
    </tr>
    <tr>
      <td rowspan="2">Davie's Burgers</td>
      <td>2</td>
      <td>Send Invoice</td>
    </tr>
    <tr>
      <td>Baker's Bike Shop</td>
      <td>3</td>
      <td>Send Invoice</td>
    </tr>
    <tr>
      <td>Miss Sally's Southern</td>
      <td>4</td>
      <td>Ship</td>
    </tr>
    <tr>
      <td>Summit Resort Rentals</td>
      <td>4</td>
      <td>Ship</td>
    </tr>
    <tr>
      <td>Strike Fitness</td>
      <td>1</td>
      <td>Enter Order</td>
    </tr>
  </table>


</body>
</html>
```

## Table Body

Over time, a table can grow to contain a lot of data and become very
long. When this happens, the table can be sectioned off so that it is
easier to manage.

Long tables can be sectioned off using the *table body* element:
`<tbody>`.

The `<tbody>` element should contain all of the table’s data, excluding
the table headings (more on this in a later exercise).

``` html
<table>
  <tbody>
    <tr>
      <th></th>
      <th>Saturday</th>
      <th>Sunday</th>
    </tr>
    <tr>
      <th>Morning</th>
      <td rowspan="2">Work</td>
      <td rowspan="3">Relax</td>
    </tr>
    <tr>
     <th>Afternoon</th>
    </tr>
    <tr>
      <th>Evening</th>
      <td>Dinner</td>
    </tr>
  </tbody>
</table>
```

In the example above, all of the table data is contained within a table
body element. Note, however, that the headings were also kept in the
table’s body — we’ll change this in the next exercise.



**1.**

Enclose rows 2, 3, 4, 5, 6, and 7 of the table in a `<tbody>` element.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    <tr>
      <th>Company Name</th>
      <th>Number of Items to Ship</th>
      <th>Next Action</th>
    </tr>
    <tbody>
      <tr>
        <td>Adam's Greenworks</td>
        <td>14</td>
        <td>Package Items</td>
      </tr>
      <tr>
        <td>Davie's Burgers</td>
        <td>2</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Baker's Bike Shop</td>
        <td>3</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Miss Sally's Southern</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Summit Resort Rentals</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Strike Fitness</td>
        <td>1</td>
        <td>Enter Order</td>
      </tr>
    </tbody>
  </table>


</body>
</html>
```

## Table Head

In the last exercise, the table’s headings were kept inside of the
table’s body. When a table’s body is sectioned off, however, it also
makes sense to section off the table’s column headings using the
`<thead>` element.

``` html
<table>
  <thead>
    <tr>
      <th></th>
      <th scope="col">Saturday</th>
      <th scope="col">Sunday</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Morning</th>
      <td rowspan="2">Work</td>
      <td rowspan="3">Relax</td>
    </tr>
    <tr>
     <th scope="row">Afternoon</th>
    </tr>
    <tr>
      <th scope="row">Evening</th>
      <td>Dinner</td>
    </tr>
  </tbody>
</table>
```

In the example above, the only new element is `<thead>`. The table
headings are contained inside of this element. Note that the table’s
head still requires a row in order to contain the table headings.

Additionally, only the **column** headings go under the `<thead>`
element. We can use the `scope` attribute on `<th>` elements to indicate
whether a `<th>` element is being used as a `"row"` heading or a `"col"`
heading.



**1.**

Enclose the first row of the table in a `<thead>` element.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    <thead>
      <tr>
        <th>Company Name</th>
        <th>Number of Items to Ship</th>
        <th>Next Action</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Adam's Greenworks</td>
        <td>14</td>
        <td>Package Items</td>
      </tr>
      <tr>
        <td>Davie's Burgers</td>
        <td>2</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Baker's Bike Shop</td>
        <td>3</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Miss Sally's Southern</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Summit Resort Rentals</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Strike Fitness</td>
        <td>1</td>
        <td>Enter Order</td>
      </tr>
    </tbody>
  </table>


</body>
</html>
```

## Table Footer

The bottom part of a long table can also be sectioned off using the
`<tfoot>` element.

``` html
<table>
  <thead>
    <tr>
      <th>Quarter</th>
      <th>Revenue</th>
      <th>Costs</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Q1</th>
      <td>$10M</td>
      <td>$7.5M</td>
    </tr>
    <tr>
      <th>Q2</th>
      <td>$12M</td>
      <td>$5M</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th>Total</th>
      <td>$22M</td>
      <td>$12.5M</td>
    </tr>
  </tfoot>
</table>
```

In the example above, the footer contains the totals of the data in the
table. Footers are often used to contain sums, differences, and other
data results.



**1.**

Add a table footer at the bottom of the table using the `<tfoot>`
element. Inside of the footer, add the following data:

``` html
<td>Total</td>
<td>28</td>
 
```



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    <thead>
      <tr>
        <th>Company Name</th>
        <th>Number of Items to Ship</th>
        <th>Next Action</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Adam's Greenworks</td>
        <td>14</td>
        <td>Package Items</td>
      </tr>
      <tr>
        <td>Davie's Burgers</td>
        <td>2</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Baker's Bike Shop</td>
        <td>3</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Miss Sally's Southern</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Summit Resort Rentals</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Strike Fitness</td>
        <td>1</td>
        <td>Enter Order</td>
      </tr>
    </tbody>
    <tfoot>
      <td>Total</td>
            <td>28</td>
    </tfoot>
  </table>


</body>
</html>
```

## Styling with CSS

Tables, by default, are very bland. They have no borders, the font color
is black, and the typeface is the same type used for other HTML
elements.

<a href="https://www.codecademy.com/learn/learn-css"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">CSS</a>, or Cascading Style Sheets, is a language that
web developers use to style the HTML content on a web page. You can use
CSS to style tables. Specifically, you can style the various aspects
mentioned above.

``` css
table, th, td {
  border: 1px solid black;
  font-family: Arial, sans-serif;
  text-align: center;
}
```

The code in the example above demonstrates just some of the various
table aspects you can style using CSS properties.



**1.**

We’ve included a **.css** file containing instructions for styling the
HTML content in the **index.html** file.

In **style.css**, set the `font-size` of all table headings (`th`) and
table data (`td`) to 18 pixels (`18px`).



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    <thead>
      <tr>
        <th>Company Name</th>
        <th>Number of Items to Ship</th>
        <th>Next Action</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Adam's Greenworks</td>
        <td>14</td>
        <td>Package Items</td>
      </tr>
      <tr>
        <td>Davie's Burgers</td>
        <td>2</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Baker's Bike Shop</td>
        <td>3</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Miss Sally's Southern</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Summit Resort Rentals</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Strike Fitness</td>
        <td>1</td>
        <td>Enter Order</td>
      </tr>
    </tbody>
    <tfoot>
      <td>Total</td>
            <td>28</td>
    </tfoot>
  </table>


</body>
</html>
```

## Review

Great job! In this lesson, we learned how to create a table, add data to
it, and section the table into smaller parts that make it easier to
read.

Let’s review what we’ve learned so far:

- The `<table>` element creates a table.
- The `<tr>` element adds rows to a table.
- To add data to a row, you can use the `<td>` element.
- Table headings clarify the meaning of data. Headings are added with
  the `<th>` element.
- Table data can span columns using the `colspan` attribute.
- Table data can span rows using the `rowspan` attribute.
- Tables can be split into three main sections: a head, a body, and a
  footer.
- A table’s head is created with the `<thead>` element.
- A table’s body is created with the `<tbody>` element.
- A table’s footer is created with the `<tfoot>` element.
- All the CSS properties you learned about in this course can be applied
  to tables and their data.

Congratulations on completing HTML Tables!



Take some time to experiment with your new knowledge of tables in
**index.html**. When you’re done, proceed to the next unit.



``` html
<!DOCTYPE html>
<html>
<head>
  <title>Ship To It - Company Packing List</title>
  <link href="https://fonts.googleapis.com/css?family=Lato: 100,300,400,700|Luckiest+Guy|Oxygen:300,400" rel="stylesheet">
  <link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>

  <ul class="navigation">
    <li><img src="https://content.codecademy.com/courses/web-101/unit-9/htmlcss1-img_logo-shiptoit.png" height="20px;"></li>
    <li class="active">Action List</li>
    <li>Profiles</li>
    <li>Settings</li>
  </ul>

  <div class="search">Search the table</div>
  
  <table>
    <thead>
      <tr>
        <th>Company Name</th>
        <th>Number of Items to Ship</th>
        <th>Next Action</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Adam's Greenworks</td>
        <td>14</td>
        <td>Package Items</td>
      </tr>
      <tr>
        <td>Davie's Burgers</td>
        <td>2</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Baker's Bike Shop</td>
        <td>3</td>
        <td>Send Invoice</td>
      </tr>
      <tr>
        <td>Miss Sally's Southern</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Summit Resort Rentals</td>
        <td>4</td>
        <td>Ship</td>
      </tr>
      <tr>
        <td>Strike Fitness</td>
        <td>1</td>
        <td>Enter Order</td>
      </tr>
    </tbody>
    <tfoot>
      <td>Total</td>
            <td>28</td>
    </tfoot>
  </table>


</body>
</html>
```

# Wine Festival Schedule

The Aguillar Family is hosting their annual wine festival and they have
asked you to build a web page for the event schedule! Use your knowledge
of HTML to display a table to the attendees.

You can preview the final version <a
href="https://content.codecademy.com/courses/learn-html-tables/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">at this link</a>.

Let’s begin!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

1\.

In **index.html**, inside of the `<div>` element that has the attribute
`class` with a value of `"container"`, create a new `<table>` element.

2\.

Inside of the `<table>` element, add a section for table headings using
`<thead>`.

Then, add two rows inside of it using the *table row* element.

3\.

Inside the first table row element, from task 2, add a *table heading*
element.

Inside of that, include an `<h1>` with the following text:
`Wine Festival Schedule`.

4\.

Inside the second table row element, from task 2, add two `<th>`s:

- In the first, add an `<h2>` that says `Time`.

- In the second, add an `<h2>` that says `Event`.

5\.

You may notice that “Wine Festival Schedule” does not stretch across the
entire table. Let’s fix that!

In the opening `<th>` tag of this element, add `colspan="2"`.

6\.

Below the closing `</thead>` tag, section off the table using the *table
body* element.

7\.

Inside of the table body you created in the previous task, create 5 rows
using the *table row* element.

8\.

Inside each row, create two cells using the *table data* element.

The first table data in each row should have the attribute `class` with
the value `"left"`.

9\.

Inside each of the 5 `<td class="left">` elements, add `<h3>` elements
that include the times of the events:

- `12:00 PM`
- `01:00 PM`
- `02:00 PM`
- `03:00 PM`
- `04:00 PM`

Feel free to look back at the <a
href="https://content.codecademy.com/courses/learn-html-tables/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">live site</a> to compare.

10\.

Inside each of the `<td>` elements that does not have a `class`
attribute with a value of `"left"`, add `<h3>` elements that include the
name of events:

- `Welcome Reception`
- `Storytelling & Tasting`
- `Wine Luncheon`
- `Aguillar Family Wines`
- `Wine & Cheese Tasting`

You have created the events table. Cheers!

## [Solution](html-wine-festival-schedule)

# Semantic HTML

## Introduction to Semantic HTML

When building web pages, we use a combination of non-semantic HTML and
*Semantic HTML*. The word semantic means “relating to meaning,” so
semantic elements provide information about the content between the
opening and closing tags.

By using Semantic HTML, we select HTML elements based on their meaning,
not on how they are presented. Elements such as `<div>` and `<span>` are
not semantic elements since they provide no context as to what is inside
of those tags.

For example, instead of using a `<div>` element to contain our header
information, we could use a `<header>` element, which is used as a
heading section. By using a `<header>` tag instead of a `<div>`, we
provide context as to what information is inside of the opening and
closing tag.

**Why use Semantic HTML?**

- **Accessibility:** Semantic HTML makes webpages accessible for mobile
  devices and for people with disabilities as well. This is because
  screen readers and browsers are able to interpret the code better.

- **SEO:** It improves the website SEO, or *Search Engine Optimization*,
  which is the process of increasing the number of people that visit
  your webpage. With better SEO, search engines are better able to
  identify the content of your website and weight the most important
  content appropriately.

- **Easy to Understand:** Semantic HTML also makes the website’s source
  code easier to read for other web developers.

To better understand this, you can think of comparing non-semantic HTML
to going into a store with no signs on the aisles. Since the aisles
aren’t labeled, you don’t know what products are in those aisles.
However, stores that do have signs for each aisle make it a lot easier
to find the items you need, just like Semantic HTML.



Analyze the diagram and take note of key differences between
non-semantic and semantic code.



<img src="https://content.codecademy.com/courses/updated_images/SemanticVSNonSemantic_Diagram_Updated_1.svg" alt="Image shows non-semantic code full of random <div> elements. The semantic code is clean and easy to understand since everything is labeled. " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Header and Nav

Let’s take a look at some semantic elements that assist in the structure
of a web page. A <a
href="https://www.codecademy.com/resources/docs/html/semantic-html/header?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<header\></code></a> is a
container usually for either navigational links or introductory content
containing `<h1>` to `<h6>` headings.

The example below shows `<header>` in action:

``` html
<header>
  <h1>
     Everything you need to know about pizza!
  </h1>
</header>
```

This can be compared to the code below which uses a `<div>` tag instead
of a `<header>` tag:

``` html
<div id="header">
  <h1>
    Everything you need to know about pizza!
  </h1>
</div>
```

By using a `<header>` tag, our code becomes easier to read. It is much
easier to identify what is inside of the `<h1>`’s parent tags, as
opposed to a `<div>` tag which would provide no details as to what was
inside of the tag.

A <a
href="https://www.codecademy.com/resources/docs/html/semantic-html/nav?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<nav\></code></a> is used to
define a block of navigation links such as menus and tables of contents.
It is important to note that `<nav>` can be used inside of the
`<header>` element but can also be used on its own.

Let’s take a look at the example below:

``` html
<header> 
  <nav>
    <ul>
      <li><a href="#home">Home</a></li>
      <li><a href="#about">About</a></li>      
    </ul>
  </nav>
</header>
```

By using `<nav>` as a way to label our navigation links, it will be
easier for not only us, but also for web browsers and screen readers to
read the code.

Now that we’ve learned about the `<header>` and `<nav>` elements let’s
add them into our code!



**1.**

In the code editor, find the `<div id="header">` tag and change it to
`<header>`.

**Note:** When changing an opening tag, you must find the corresponding
closing tag and change that as well. If you don’t, you’ll see some red
in your code to indicate the error.

**2.**

Now, find the `<div id="nav">` tag and change it to `<nav>`.



``` html
<!DOCTYPE html>
<html>
  <body>
    <header>
      <h1>Navigational Links</h1>
      <nav>
        <ul>
          <li><a href="#home">Home</a></li>
          <li><a href="#posts">Posts</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>
  </body>
</html>
```

## Main and Footer

Two more structural elements are `<main>` and `<footer>`. These elements
along with `<nav>` and `<header>` help describe where an element is
located based on conventional web development standards.

The element <a
href="https://www.codecademy.com/resources/docs/html/semantic-html/main?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<main\></code></a> is used to
encapsulate the dominant content within a webpage. This tag is separate
from the <a
href="https://www.codecademy.com/resources/docs/html/semantic-html/footer?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<footer\></code></a> and the
`<nav>` of a web page since these elements don’t contain the principal
content. By using `<main>` as opposed to a `<div>` element, screen
readers and web browsers are better able to identify that whatever is
inside of the tag is the bulk of the content.

So how does `<main>` look when incorporated into our code? That’s a
great question.

``` html
<main>
  <header>
    <h1>Types of Sports</h1>
  </header>
  <article>
    <h3>Baseball</h3>
    <p>
      The first game of baseball was played in Cooperstown, New York in the summer of 1839.
    </p>
  </article>
</main>
```

As we see above, `<main>` contains an `<article>` and `<header>` tag
with child elements that hold the most important information related to
the page.

The content at the bottom of the subject information is known as the
*footer*, indicated by the <a
href="https://www.codecademy.com/resources/docs/html/semantic-html/footer?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<footer\></code></a> element. The
footer contains information such as:

- Contact information
- Copyright information
- Terms of use
- Site Map
- Reference to top of page links

For example:

``` html
<footer>
  <p>Email me at Codey@Codecademy.com</p>
</footer>
```

In the example above, the footer is used to contain contact information.
The `<footer>` tag is separate from the `<main>` element and typically
located at the bottom of the content.



**1.**

In the code editor, find the `<div id="main">` tag and change it to
`<main>`.

**2.**

Now, find the `<div id="footer">` tag and change it to `<footer>`.



``` html
<!DOCTYPE html>
<html>
  <body>
    <header>
      <h1>Navigational Links</h1>
      <nav>
        <ul>
          <li><a href="#home">Home</a></li>
          <li><a href="#posts">Posts</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    <main>
      <p>This is where the main content will go once the page is built out!</p>
    </main>
    
    <footer>
      <p>Contact me at +1 234 567 8910 </p>
    </footer>
    
  </body>
</html>
```

## Article and Section

Now that we covered the body of Semantic HTML, let’s focus on what can
go in the body. The two elements we’re going to focus on now are
`<section>` and `<article>`.

<a
href="https://www.codecademy.com/resources/docs/html/semantic-html/section?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<section\></code></a> defines
elements in a document, such as chapters, headings, or any other area of
the document with the same theme. For example, content with the same
theme such as articles about cricket can go under a single `<section>`.
A website’s home page could be split into sections for the introduction,
news items, and contact information.

Here is an example of how to use `<section>`:

``` html
<section>
  <h2>Fun Facts About Cricket</h2> 
</section>
```

In the code above we created a `<section>` element to encapsulate the
code. In `<section>` we added a `<h2>` element as a heading.

The <a
href="https://www.codecademy.com/resources/docs/html/semantic-html/article?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<article\></code></a> element
holds content that makes sense on its own. `<article>` can hold content
such as articles, blogs, comments, magazines, etc. An `<article>` tag
would help someone using a screen reader understand where the article
content (that might contain a combination of text, images, audio, etc.)
begins and ends.

Here is an example of how to use `<article>`:

``` html
<section>
  <h2>Fun Facts About Cricket</h2>
  <article>
    <p>A single match of cricket can last up to 5 days.</p>
  </article>
</section>
```

In the code above, the `<article>` element containing a fact about
cricket was placed inside of the `<section>` element. It is important to
note that a `<section>` element could also be placed in an `<article>`
element depending on the context.



**1.**

In the code find and replace `<div id="section">` with `<section>` and
replace the corresponding closing `</div>` with a closing `</section>`.

**Note:** When removing the `<div>` tag, make sure you remove the id
attached to it!

**2.**

Now encapsulate the `<h2>` and `<p>` tag with `<article>`.



``` html
<!DOCTYPE html>
<html>
  <body>
    <header>
      <h1>Navigational Links</h1>
      <nav>
        <ul>
          <li><a href="#home">Home</a></li>
          <li><a href="#posts">Posts</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    
    <main>
      <section>
        <article>
          <h2>Facts About Dogs</h2>
          <p>
          Dogs have a sense of time. It's been proven that they know the difference between a hour and five. If conditioned to, they can predict future events, such as regular walk times.
          </p>
        </article>
      </section>   
    </main>
    
    <footer>
      <p>Contact me at +1 234 567 8910 </p>
    </footer>
              
  </body>
</html>
```

## The Aside Element

The <a
href="https://www.codecademy.com/resources/docs/html/semantic-html/aside?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<aside\></code></a> element is
used to mark additional information that can enhance another element but
isn’t required in order to understand the main content. This element can
be used alongside other elements such as `<article>` or `<section>`.
Some common uses of the `<aside>` element are for:

- Bibliographies
- Endnotes
- Comments
- <a href="https://en.wikipedia.org/wiki/Pull_quote"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Pull quotes</a>
- Editorial sidebars
- Additional information

Here’s an example of `<aside>` being used alongside `<article>`:

``` html
<article>
  <p>The first World Series was played between Pittsburgh and Boston in 1903 and was a nine-game series.</p>
</article>
<aside>
  <p>
   Babe Ruth once stated, “Heroes get remembered, but legends never die.” 
  </p>
</aside>
```

As shown above, the information within the `<article>` is the important
content. Meanwhile the information within the `<aside>` enhances the
information in `<article>` but is not required in order to understand
it.



**1.**

Remove the `<div id="aside">` tag and replace it with `<aside>` tag.
Don’t forget about the closing tag!



``` html
<!DOCTYPE html>
<html>
  <body>
    <header>
      <h1>Navigational Links</h1>
      <nav>
        <ul>
          <li><a href="#home">Home</a></li>
          <li><a href="#posts">Posts</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    
    <main>
      <section>
        <article>
          <h2>Facts About Dogs</h2>
          <p>
          Dogs have a sense of time. It's been proven that they know the difference between a hour and five. If conditioned to, they can predict future events, such as regular walk times.
          </p>
        </article>
        <aside>
          <p>A study was conducted on dogs being away from their owners for varying hours and the studies show that dogs who were away from their owners the longest showed the greatest amount of affection!
          </p> 
        </aside>
      </section>   
    </main>
    
    <footer>
      <p>Contact me at +1 234 567 8910 </p>
    </footer>
              
  </body>
</html>
```

## Figure and Figcaption

With `<aside>`, we learned that we can put additional information next
to a main piece of content, but what if we wanted to add an image or
illustration? That is where `<figure>` and `<figcaption>` come in.

<a
href="https://www.codecademy.com/resources/docs/html/semantic-html/figure?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<figure\></code></a> is an element
used to encapsulate media such as an image, illustration, diagram, code
snippet, etc, which is referenced in the main flow of the document.

``` html
<figure>
  <img src="overwatch.jpg">
</figure>
```

In this code, we created a `<figure>` element so that we can encapsulate
our `<img>` tag. In `<figure>` we used the `<img>` tag to insert an
image onto the webpage. We used the `src` attribute within the `<img>`
tag so that we can link the source of the image.

It’s possible to add a caption to the image by using `<figcaption>`.

<a
href="https://www.codecademy.com/resources/docs/html/semantic-html/figcaption?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<figcaption\></code></a> is an
element used to describe the media in the `<figure>` tag. Usually,
`<figcaption>` will go inside `<figure>`. This is different than using a
`<p>` element to describe the content; if we decide to change the
location of `<figure>`, the paragraph tag may get displaced from the
figure while a `<figcaption>` will move with the figure. This is useful
for grouping an image with a caption.

``` html
<figure>
  <img src="overwatch.jpg">
  <figcaption>This picture shows characters from Overwatch.</figcaption>
</figure>
```

In the example above, we added a `<figcaption>` into the `<figure>`
element to describe the image from the previous example. This helps
group the `<figure>` content with the `<figcaption>` content.

While the content in `<figure>` is related to the main flow of the
document, its position is independent. This means that you can remove it
or move it somewhere else without affecting the flow of the document.



**1.**

Create an opening and closing `<figure>` tag under the closing
`</section>` tag.

**2.**

Add an image by using the `<img>` tag within `<figure>`. Use the
following URL as the source for the image:

``` html
https://content.codecademy.com/courses/SemanticHTML/dogimage.jpeg
```

**3.**

Create a `<figcaption>` under `<img>` and describe the image.



``` html
<!DOCTYPE html>
<html>
  <body>
    <header>
      <h1>Navigational Links</h1>
      <nav>
        <ul>
          <li><a href="#home">Home</a></li>
          <li><a href="#posts">Posts</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    
    <main>
      <section>
        <article>
          <h2>Facts About Dogs</h2>
          <p>
          Dogs have a sense of time. It's been proven that they know the difference between a hour and five. If conditioned to, they can predict future events, such as regular walk times.
          </p>
        </article>
        <aside>
          <p>A study was conducted on dogs being away from their owners for varying hours and the studies show that dogs who were away from their owners the longest showed the greatest amount of affection!
          </p> 
        </aside>
      </section> 
      <!--Create <figure> tag here -->
      <figure>
        <img src="https://content.codecademy.com/courses/SemanticHTML/dogimage.jpeg"/>
        <figcaption>A cute dog.</figcaption>
      </figure>  
    </main>
    
    <footer>
      <p>Contact me at +1 234 567 8910 </p>
    </footer>
              
  </body>
</html>
```

## Audio and Attributes

Now that we learned about text-based content, let us dig into <a
href="https://www.codecademy.com/resources/docs/html/elements/audio?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<audio\></code></a>! Surely
everyone needs `<audio>`—how else would you listen to your Korean hip
hop?

The `<audio>` element is used to embed audio content into a document.
Like `<video>`, `<audio>` uses `src` to link the audio source.

``` html
<audio>
  <source src="iAmAnAudioFile.mp3" type="audio/mp3">
</audio>
```

In this example, we created an `<audio>` element. Then we created a
`<source>` element to encapsulate our audio link. In this case,
`iAmAnAudioFile.mp3` is our audio file. Then we specified the type by
using `type` and named what kind of audio it is. Although not always
necessary, it’s recommended that we state the type of audio as it helps
the browser identify it more easily and determine if that type of audio
file is supported by the browser.

We linked our audio file into the browser but now we need to give it
controls. This is where *attributes* come in. <a
href="https://www.codecademy.com/resources/docs/html/attributes?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Attributes</a> provide additional information about an
element.

Attributes allow us to do many different things to our audio file. There
are many attributes for `<audio>` but today we’re going to be focusing
on `controls` and `src`.

- `controls`: automatically displays the audio controls into the browser
  such as play and mute.

- `src`: specifies the URL of the audio file.

As you might have noticed, we already used the `src` attribute in the
example code above. Most attributes go in the opening tag of `<audio>`.
For example, here’s how we could add both autoplay functionality and
audio controls:

``` html
<audio autoplay controls>
```

You can find other attributes here: <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio#Attributes"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Useful attributes</a>.



**1.**

In the code editor, create an `<audio>` tag with the attribute
`controls` directly under the commented line.

**2.**

Add a source for the audio inside the `<audio>` tag by using this code:

``` html
<source src="" type="audio/mp3">
```

Use the following URL as the source for the audio:

``` html
https://content.codecademy.com/courses/SemanticHTML/dogBarking.mp3
```



``` html
<!DOCTYPE html>
<html>
  <body>
    <header>
      <h1>Navigational Links</h1>
      <nav>
        <ul>
          <li><a href="#home">Home</a></li>
          <li><a href="#posts">Posts</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    
    <main>
      <section>
        <article>
          <h2>Facts About Dogs</h2>
          <p>
          Dogs have a sense of time. It's been proven that they know the difference between a hour and five. If conditioned to, they can predict future events, such as regular walk times.
          </p>
        </article>
        <aside>
          <p>A study was conducted on dogs being away from their owners for varying hours and the studies show that dogs who were away from their owners the longest showed the greatest amount of affection!
          </p> 
        </aside>
      </section> 
      <figure>
        <img src="https://content.codecademy.com/courses/SemanticHTML/dogimage.jpeg"/>
        <figcaption>A cute dog.</figcaption>
      </figure>  
       <!-- Create <audio> tag here -->
      <audio controls>
        <source src="https://content.codecademy.com/courses/SemanticHTML/dogBarking.mp3" type="audio/mp3">
      </audio> 
    </main>
    
    <footer>
      <p>Contact me at +1 234 567 8910 </p>
    </footer>
              
  </body>
</html>
```

## Video and Embed

As demonstrated in the previous exercise, media content can be a useful
addition to a website. By using a `<video>` element, we can add videos
to our website. The <a
href="https://www.codecademy.com/resources/docs/html/videos?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<video\></code></a> element makes
it clear that a developer is attempting to display a video to the user.

Some attributes that can alter a video playback include:

- `controls`: When added in, a play/pause button will be added onto the
  video along with volume control and a fullscreen option.
- `autoplay`: The attribute which results in a video automatically
  playing as soon as the page is loaded.
- `loop`: This attribute results in the video continuously playing on
  repeat.

Below is an example of `<video>` being used with the controls attribute:

``` html
<video src="coding.mp4" controls>Video not supported</video>
```

In the code above, a video file named `coding.mp4` is being played. The
“Video not supported” will only show up if the browser is unable to
display the video.

Another tag that can be used to incorporate media content into a page is
the `<embed>` tag, which can embed any media content including videos,
audio files, and gifs from an external source. This means that websites
that have an embed button have some form of media content that can be
added to other websites. The `<embed>` tag is a self-closing tag, unlike
the `<video>` element. Note that `<embed>` is a deprecated tag and other
alternatives, such as `<video>`, `<audio>` and `<img>`, should be used
in its place, but is being taught for legacy purposes.

Below we’ll take a look at `<embed>` being used in action.

``` html
<embed src="download.gif"/>
```

In the example above, `<embed>` is being used to add in a gif from a
local file known as `download.gif`. Embed can be used to add local files
as well as media content straight from some other websites.



**1.**

Add the following video URL with the attribute `controls` and wrap it in
an opening and closing video tag.

``` html
https://content.codecademy.com/courses/SemanticHTML/dog-video.mp4
```

In between the opening and closing `<video>` tag, you can add a text
that will show up if the video is unable to load. This text is helpful
for screen readers as well!

**2.**

Add the following gif into your code using the `<embed>` tag and the
`src` attribute:

``` html
https://content.codecademy.com/courses/SemanticHTML/dog-on-beach.gif
```



``` html
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
    <header>
      <h1>Navigational Links</h1>
      <nav>
        <ul>
          <li><a href="#home">Home</a></li>
          <li><a href="#posts">Posts</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    
    <main>
      <section>
        <article>
          <h2>Facts About Dogs</h2>
          <p>
          Dogs have a sense of time. It's been proven that they know the difference between a hour and five. If conditioned to, they can predict future events, such as regular walk times.
          </p>
        </article>
        <aside>
          <p>A study was conducted on dogs being away from their owners for varying hours and the studies show that dogs who were away from their owners the longest showed the greatest amount of affection!
          </p> 
        </aside>
      </section> 
      <figure>
        <img src="https://content.codecademy.com/courses/SemanticHTML/dogimage.jpeg"/>
        <figcaption>A cute dog.</figcaption>
      </figure>  
      <audio controls>
        <source src="https://content.codecademy.com/courses/SemanticHTML/dogBarking.mp3" type="audio/mp3">
      </audio> 
  <!-- Create <video> and <embed> tag here -->
      <video src="https://content.codecademy.com/courses/SemanticHTML/dog-video.mp4" controls>
      </video>
      <embed src="https://content.codecademy.com/courses/SemanticHTML/dog-on-beach.gif"/>
         
    </main>
    
    <footer>
      <p>Contact me at +1 234 567 8910 </p>
    </footer>
              
  </body>
</html>
```

## Review

Congrats on completing this lesson on Semantic HTML! Now that you know
the benefits of Semantic HTML and how to use it, you can incorporate
semantic elements into your website to make it more accessible and to
make the code easier to read.

Let’s review some of the topics we covered throughout the lesson:

- Semantic HTML introduces meaning to a page through specific elements
  that provide context as to what is in between the tags.
- Semantic HTML is a modern standard and makes a website accessible for
  people who use screen readers to translate the webpage and improves
  your website’s SEO.
- `<header>`, `<nav>` , `<main>` and `<footer>` create the basic
  structure of the webpage.
- `<section>` defines elements in a document, such as chapters,
  headings, or any other area of the document with the same theme.
- `<article>` holds content that makes sense on its own such as
  articles, blogs, comments, etc.
- `<aside>` contains information that is related to the main content,
  but not required in order to understand the dominant information.
- `<figure>` encapsulates all types of media.
- `<figcaption>` is used to describe the media in `<figure>`.
- `<video>`, `<embed>`, and `<audio>` elements are used for media files.

Now, apply this knowledge to become a better Web Developer.



Now it’s time to use what you’ve learned to build a more accessible
website.



``` html
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
    <header>
      <h1>Navigational Links</h1>
      <nav>
        <ul>
          <li><a href="#home">Home</a></li>
          <li><a href="#posts">Posts</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
    </header>
    
    <main>
      <section>
        <article>
          <h2>Facts About Dogs</h2>
          <p>
          Dogs have a sense of time. It's been proven that they know the difference between a hour and five. If conditioned to, they can predict future events, such as regular walk times.
          </p>
        </article>
        <aside>
          <p>A study was conducted on dogs being away from their owners for varying hours and the studies show that dogs who were away from their owners the longest showed the greatest amount of affection!
          </p> 
        </aside>
      </section> 
      <figure>
        <img src="https://content.codecademy.com/courses/SemanticHTML/dogimage.jpeg"/>
        <figcaption>A cute dog.</figcaption>
      </figure>  
      <audio controls>
        <source src="https://content.codecademy.com/courses/SemanticHTML/dogBarking.mp3" type="audio/mp3">
      </audio> 
      <video src="https://content.codecademy.com/courses/SemanticHTML/dog-video.mp4" controls>
      </video>
      <embed src="https://content.codecademy.com/courses/SemanticHTML/dog-on-beach.gif"/>
         
    </main>
    
    <footer>
      <p>Contact me at +1 234 567 8910 </p>
    </footer>
              
  </body>
</html>
```

# New York City Blog

After researching New York City, you decide to create a blog for your
viewers who want to know more about the city. It’s time to create a blog
to show off how amazing the Big Apple is. You got this!

Don’t forget to save your code after each step. By pressing save to run
your code you will see the changes you’ve made in the browser.

**Note:** While you are developing the webpage, you will notice that the
elements are automatically assigned colors, borders, and positioned
properly. This is because of the CSS file. Don’t worry about CSS right
now, it’s only there so that the webpage looks nice.



Mark the tasks as complete by checking them off

## Navigation Bar

1\.

A common usage of a navigation bar is to create shortcuts for a webpage.
This will allow the user to go directly to the information they want to
access through the navigation links.

Create a `<nav>` element underneath the opening `<body>` tag.

2\.

Within the `<nav>` element, create a `<ul>` element to create an
unordered list.

The unordered list should contain the following three items:

- Blog
- Media
- About

Use an `<li>` element with `<a href=""></a>` nested within the `<li>`
element to link the content to the nav bar. You may notice that the
navbar doesn’t work right now but don’t worry, once the content is
added, the navbar will be fully functional!

**Note:** Save your work to see your progress.

## Blog Content

3\.

You need to title your blog, so people know what you’re writing about.
Create a `<header>` element under the closing `</nav>` tag.

Within the `<header>` element, create an `<h1>` element which should
contain the following:

``` html
New York City
```

4\.

Create a `<main>` element below the closing `</header>` tag.

Within the `<main>` element, create a `<section>` element with an id of
“blog”.

This `<section>` element will hold the main content of your webpage. You
are giving this element an id so that you can target it with the nav
bar.

5\.

Create an `<article>` element within the `<section>` element.

Then, create a `<p>` element within `<article>` that has the following:

``` html
New York City is made up of five boroughs which include Queens, Manhattan, Brooklyn, the Bronx, and Staten Island. The city is the home of approximately 8 million people. In 1876, France gifted the City of New York what is known as the Statue of Liberty, which is currently located on Liberty Island and commonly visited by tourists. However, it took 10 years to assemble and therefore wasn’t unveiled until 1886. Another tourist destination is Times Square. Times Square is commonly known for the big buildings, Broadway shows, and bright neon signs. This famous location was named after The New York Times after the Times moved to that location. Prior to that, it was named Longacre Square. New York City is also known for its bridges that connect the boroughs and allow ease of transportation.
```

**Note:** Save your work to see your progress.

6\.

Now that our blog has some content, the next step is adding media to
enhance our blog.

You can do this by using the `<figure>` element. Under the closing
`</section>` tag create a `<figure>` element.

7\.

Create an `<img>` tag within `<figure>` and use the following link as
the `src`:

<a
href="https://content.codecademy.com/courses/Semantic%20HTML/statue-of-liberty.jpeg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"
rel="noopener">https://content.codecademy.com/courses/Semantic%20HTML/statue-of-liberty.jpeg</a>

8\.

Let’s describe the image for those who don’t know what statue this is!

Using `<figcaption>` add this description of the image:

``` html
This is the Statue of Liberty, a popular tourist attraction located on Liberty Island.
```

**Note:** Save your work to see your progress.

## Aside Content

9\.

For our blog post, you need to add additional content to enhance the
post, you can do this by using the `<aside>` element.

Under the closing `</figure>` tag create an `<aside>` element.

Within `<aside>`, create a `<p>` element containing the following
information:

``` html
New York City is very popular for the variety of great food it has. Some of the top food items in NYC include:
```

10\.

New York is known for its amazing food. Our blog should list some of the
top food options in NYC. You can do this by creating an ordered list!

Create an ordered list by using the `<ol>` element within the `<aside>`
element. In an ordered list the first item is ranked one, the second
item is ranked two and so on.

The ordered list should contain the following seven items in this order:

1.  Pizza
2.  Bagels
3.  Burgers and Sandwiches
4.  Ramen
5.  Tacos
6.  Pasta
7.  Desserts

**Note:** Save your work to see your progress.

## Media

11\.

Right now our blog post consists of only one image. Adding more media
can help give a better visual representation of New York. Let’s create a
section for the media content.

Create a `<section>` element with an id of “media” under the closing
`</aside>` tag.

Within the new `<section>` element, create an `<article>` element.

Then, create an `<h2>` element within `<article>` that says:

``` html
The Scenery in NYC
```

12\.

You are going to add a little description to explain the media. Add a
`<p>` element directly underneath the closing `</h2>` tag but within the
`<article>` element with the following paragraph:

``` html
While the view in the city is beautiful, the sounds are not as lovely. Below you'll see an example of the view and the sounds you'll deal with in NYC on a daily basis.
```

**Note:** Save your work to see your progress.

13\.

New York City has a beautiful skyline, so let’s show that with a video.

Under the closing `</article>` tag, create a `<video>` element with the
attribute `controls`. Use the following URL as the `src`:
`"https://content.codecademy.com/courses/Semantic%20HTML/nyc-skyline-timelapse.mp4"`.

14\.

During the night time, the New York City skyline can light up the whole
sky! This time you are going to use `<embed>` to display an image of the
skyline.

Create an `<embed>` element under the closing `</video>` tag. Use the
following URL as the `src`:
`"https://content.codecademy.com/courses/Semantic%20HTML/nyc-skyline.jpeg"`.

15\.

New York City is known as “the city that never sleeps.” At any point in
the day, you can hear the traffic as you make your way through the city.
Let’s add an audio clip to show how loud NYC can be.

Create an `<audio>` tag with the attribute `controls` directly below the
`<embed>` element. (Don’t forget the closing tag.)

Inside the `<audio>` tag, insert an audio file with the following URL as
the `src`:
`"https://content.codecademy.com/courses/Semantic%20HTML/nyc-sounds.mov"`.

**Note:** Save your work to see your progress.

## Footer

16\.

At the bottom of a page, you can add a footer to credit you for the
creation of this blog!

Create a `<footer>` element with an id of “about” under the closing
`</main>` tag.

Inside, add the following content:

- A `<p>` tag with “Posted by:” followed by your name.

- A `<p>` tag that provides one type of contact information for people
  to reach you at. For example:

  ``` html
  Contact information: Blogger@NYC.com
  ```

## The Endgame!

17\.

Congratulations! You successfully created a webpage using only semantic
elements. Now that you’ve learned about the importance of Semantic HTML
along with its benefits, it’s time to incorporate this knowledge into
your future projects.

Think about ways you could improve this project or create your very own
project using semantic elements. Need some suggestions? Check the hint
for some ideas to get you started!

## [Solution](semantic-html-nyc-blog)

# Review: Fundamentals of HTML

In this unit, you learned about the fundamentals of HTML.

Congratulations! The goal of this unit was to get an introduction to the
fundamentals of HTML, one of the languages essential to developing
websites.

Having completed this unit, you are now able to:

- Understand how HTML is used for web development
- Use HTML to build a structure for a website
- Create tables in HTML documents
- Write clearer, more accessible HTML using Semantic HTML tags

If you are interested in learning more about these topics, here are some
additional resources:

- Book: <a
  href="https://bookshop.org/books/html-and-css-design-and-build-websites/9781118008188"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">HTML & CSS</a>, Jon Duckett, Chapters
  1-5 (pp. 12-124)

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
