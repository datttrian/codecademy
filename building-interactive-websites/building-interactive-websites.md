# Introduction: Building Interactive Websites

In this unit, you will learn how to use JavaScript to build interactive
websites.

The goal of this unit is to learn how JavaScript is used to add
interactive experiences to a website.

After this unit, you will be able to:

- Add JavaScript to a website for interactivity
- Describe what the DOM is
- Explain what DOM Events are
- Create forms using HTML and validate them using JavaScript

You will put all of this knowledge into practice with an upcoming
Portfolio Project. You can complete the Portfolio Project either in
parallel with or after taking the prerequisite content — it’s up to you!

Whatever you’re working on, be sure to connect with the Codecademy
community in the <a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like code review on your
project work and what material you will need to accomplish your goals.

# The Script Element

## JavaScript and HTML

HTML defines the structure of a web page by using page elements as the
building blocks. However, HTML by itself can not produce web page
interactivity, that’s where JavaScript comes in.

Below, we see a post-it with a typical stick figure on it. We can think
of this as the HTML, with the head, body, and limbs as the elements on
the page:

<img
src="https://content.codecademy.com/courses/script/Javascript_stick_figure.png"
class="img__1JGFO2nlisObc3KeOSGPRp" />

In web development, CSS provides the style to our HTML structure. Below,
the stick figure is now dressed in a nice tuxedo:

<img
src="https://content.codecademy.com/courses/script/Javascript_stick_figure_2.png"
class="img__1JGFO2nlisObc3KeOSGPRp" />

If HTML and CSS provide structure and style in this analogy, JavaScript
provides interactivity, allowing our stick figure to move. Below, the
stick figure moves, swaying up and down, thanks to JavaScript:

<img
src="https://content.codecademy.com/courses/script/stick_figure_v2.gif"
class="img__1JGFO2nlisObc3KeOSGPRp" />

Web programmers use JavaScript to make web pages dynamic and
interactive. This powerful scripting language is encapsulated in its own
HTML element: the `<script>` element. You can think of this `<script>`
element as the door to JavaScript for HTML. This lesson will dig deeper
into what the `<script>` element can do for your websites and best
practices on how and where to insert JavaScript in your HTML files.



In the diagram to the right, we display HTML as the architecture of a
web page, or the house structure. The script tag serves as the door
opener connecting JavaScript to the HTML file.



<img src="https://content.codecademy.com/courses/script/ScriptHTMLJS.png" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## The \<script\> tag

The `<script>` element allows you to add JavaScript code inside an HTML
file. Below, the `<script>` element embeds valid JavaScript code:

``` html
<h1>This is an embedded JS example</h1>
<script>
  function Hello() {
    alert ('Hello World');
  }
</script>
```

Frankly, without the `<script>` tag, websites would be unclickable and a
bit boring.

The `<script>` element, like most elements in *HTML*, has an opening and
closing angle bracket. The closing tag marks the end of the content
inside of the `<script>` element. Just like the `<style>` tag used to
*embed* CSS code, you use the `<script>` tag to *embed* valid JavaScript
code.



**1.**

Copy this JavaScript code and paste it between the opening and closing
`<script>` tags.

``` html
function blooming() {
  var image = document.getElementById('myImage');
  if (image.src.match("normal")) {
    image.src = "flower.png";
  } else {
    image.src = "normal.png";
  }    
}    
```

Then, click **Run** when you are finished and click on the Codecademy
logo.



``` html
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
</head>
  
<body>
    <section class = "container">
    <img src = "normal.png" id= "myImage">
    <p onclick="blooming()">Codecademy</p>
    </section>

  <!-- Paste your code in the script element below:  -->
  <script>
        function blooming() {
      var image = document.getElementById('myImage');
      if (image.src.match('normal')) {
        image.src = 'flower.png';
      } else {
        image.src = 'normal.png';
      }    
    }    
  </script>
</body>  
</html>
```

## The src attribute

Since you know how to use a `<script>` element with embedded code, let’s
talk about linking code. Linking code is preferable because of a
programming concept called Separation of Concerns (SoC). Instead of
having messy code that is all in the same file, web developers separate
their code into different files, making each “concern” easier to
understand and more convenient when changes must be made.

For this exercise, instead of writing JavaScript in our HTML file, we
are going to write it in its own file, and then reference this code with
a *file path name*. We will do this using an attribute that may jog your
memory: the `src` attribute!

If this seems familiar, that’s because you may have been linking to
external files with the `<img>` and `<link>` elements. The attribute is
exactly the same, but now its value specifies the location of your
script file.

If the file is in the same project folder, the `src` value will be a
*relative path* name. Below is an example of providing a relative path
for a JavaScript file.

``` html
<script src="./exampleScript.js"></script>
```

The `<script>` above would look for a file called **exampleScript.js**
that is in the same folder/directory as our **index.html** file.

If you must refer to JavaScript hosted externally, or in a
<a href="https://developer.mozilla.org/en-US/docs/Glossary/CDN"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">CDN</a>, you can also link to that file
location.



**1.**

Add a `<script>` element with a `src` attribute that points to
**script.js**.

**2.**

Now, click on the Codecademy logo repeatedly to see random font families
and font colors. The source attribute allows our HTML file to access all
of this magical JavaScript with little code.

Once you have clicked the Codecademy logo several times, click **Run**
to move on to the next exercise.



``` html
<!DOCTYPE html>
<html> 
  <head>
    <link rel="stylesheet" href="style.css">
    <!-- Add your script tag here -->
    <script src="script.js"></script>
  </head>

  <body onclick="newStyle();">
    
    <p class="centered" id="logo">Codecademy</p>

    </body>

</html>
  
```

``` javascript
function newStyle() {
  let newColor = '';
  let newFont = ''; 
  let x = Math.floor(Math.random()*7); 
  switch (x){
    case 0:
      newColor = 'red';
      newFont = 'Times New Roman'; 
      break;
    case 1: 
      newColor = 'blue';
      newFont = 'Florence, cursive'; 
      break;
    case 2:
      newColor = 'yellow';
      newFont = 'Verdana';
      break; 
    case 3:
      newColor= 'purple';
      newFont = 'Courier New';
      break
    case 4:
      newColor = 'cyan';
      newFont = 'Georgia'; 
      break;
    case 5:
        newColor = 'maroon';
        newFont = 'Palatino';
        break;
    case 6: 
        newColor = 'lime';
        newFont = 'Impact';
        break;
  }
  var elem = document.getElementById('logo');
  elem.style.color = newColor;
  elem.style.fontFamily = newFont; 
}
```

## How are scripts loaded?

A quick recap: the `<script>` element allows HTML files to load and
execute JavaScript. The JavaScript can either go embedded inside of the
`<script>` tag or the script tag can reference an external file. Before
we dive deeper, let’s take a moment to talk about how browsers parse
HTML files into web pages. This informs where to include a `<script>`
element inside your HTML file.

Browsers come equipped with *HTML parsers* that help browsers render the
elements accordingly. Elements, including the `<script>` element, are by
default, parsed in the order they appear in the HTML file. When the
*HTML parser* encounters a `<script>` element, it loads the script then
executes its contents before parsing the rest of the HTML. The two main
points to note here are that:

- The *HTML parser* does NOT process the next element in the HTML file
  until it loads and executes the `<script>` element, thus leading to a
  delay in load time and resulting in a poor user experience.
- Additionally, scripts are loaded sequentially, so if one script
  depends on another script, they should be placed in that very order
  inside the HTML file.

The GIF below displays two scripts being loaded. The first script makes
a `Watering Can` appear, the second script makes a `Flower` appear. This
shows how scripts are loaded sequentially, and how they pause the *HTML
parser*, which is why “Blooming” appears at the end. <img
src="https://content.codecademy.com/courses/script/ScriptNoAttribute.gif"
class="img__1JGFO2nlisObc3KeOSGPRp" width="400"
alt="Image showing a flower bloom" />



**1.**

Oops! In the code editor **script2.js** depends on a variable in
**script1.js** causing an error (we actually want our text to be blue
instead of pink). Switch the order of the scripts so that they load
appropriately.



``` html
<!DOCTYPE html> 
<html> 
  <head>
    <link rel="stylesheet" href="style.css">
  </head>

  <body>
    <p class="centered" id="logo">Codecademy</p>
    
    <script src="script1.js"></script>
    <script src="script2.js"></script>
  </body>
</html>
  
```

``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

p {
  text-align: center;
  font-size: 10vw;
  color: pink; 
  top: 40%;
  left: 50%; 
  position: absolute; 
  transform: translateX(-50%) translateY(-50%);
}
```

``` javascript
let newColor = 'blue';
```

``` javascript
var elem = document.getElementById('logo');
elem.style.color = newColor;
```

## Defer attribute

When the HTML parser comes across a `<script>` element, it stops to load
its content. Once loaded, the JavaScript code is executed and the HTML
parser proceeds to parse the next element in the file. This can result
in a slow load time for your website. HTML4 introduced the defer and
async attributes of the `<script>` element to address the user wait-time
in the website based on different scenarios.

The *defer attribute* specifies scripts should be executed after the
HTML file is completely parsed. When the HTML parser encounters a
`<script>` element with the `defer` attribute, it loads the script but
defers the actual execution of the JavaScript until after it finishes
parsing the rest of the elements in the HTML file.

Here is an example of the `defer` tag:

``` html
<script src="example.js" defer></script> 
```

When is `defer` useful?

When a script contains functionality that requires interaction with the
DOM, the `defer` attribute is the way to go. This way, it ensures that
the entire HTML file has been parsed before the script is executed.



**1.**

We want the “Codecademy” to be blue, not yellow! Each script tag
re-styles the Codecademy logo, but the **turnYellow.js** executes last,
making the font color `'yellow'`. Add a `defer` attribute to the
**turnBlue.js** script to make it the last script that is downloaded and
executed.



``` html
<!DOCTYPE html> 
<html>
 
  <head>
    <link rel="stylesheet" href="style.css">
    <!--  Add the defer attribute to the script below:  -->
    <script id="blue" defer src="turnBlue.js"></script>
  </head>

  <body>        
    <p class="centered" id="logo">Codecademy</p>

    <script id="yellow" src="turnYellow.js"></script>
  </body>
</html>
  
```

``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

p {
  text-align: center;
  font-size: 10vw; 
  top: 40%;
  left: 50%; 
  position: absolute; 
  transform: translateX(-50%) translateY(-50%);
}
```

``` javascript
const elemLogo = document.getElementById('logo');

elemLogo.style.color = 'cyan';
```

``` javascript
const elem = document.getElementById('logo');

elem.style.color = 'yellow';
```

## Async attribute

The `async` attribute loads and executes the script asynchronously with
the rest of the webpage. This means that, similar to the `defer`
attribute, the HTML parser will continue parsing the rest of the HTML as
the script is downloaded in the background. However, with the `async`
attribute, the script will not wait until the entire page is parsed: it
will execute immediately after it has been downloaded. Here is an
example of the `async` tag:

``` html
<script src="example.js" async></script>
```

When is it useful?

`async` is useful for scripts that are independent of other scripts in
order to function accordingly. Thus, if it does not matter exactly at
which point the script file is executed, asynchronous loading is the
most suitable option as it optimizes web page load time.



**1.**

Currently our text is pink because in our **style.css** file, we have a
ruleset for that.

Add `async` attribute to the **turnBlue.js** script to optimize load
speed. Notice that once the **turnBlue.js** script is loaded, the text
turns blue!



``` javascript
<!DOCTYPE html> 
<html>
 
  <head>
    <link rel="stylesheet" href="style.css">
        <!-- Add the async attribute to the script below: -->
   <script id="blue" src="turnBlue.js" async></script>
  </head>
  
  <body>        
    <p class="centered" id="logo">Codecademy</p>
  </body>
</html>
```

## Review

Let’s review.

- HTML creates the skeleton of a webpage, but JavaScript introduces
  interactivity

- The `<script>` element has an opening and closing tag. You can embed
  JavaScript code inbetween the opening and closing `<script>` tags.

- You link to external JavaScript files with the **src** attribute in
  the opening `<script>` tag.

- By default, scripts are loaded and executed as soon as the HTML parser
  encounters them in the HTML file, the HTML parser waits to load the
  entire script before from proceeding to parse the rest of the page
  elements.

- The `defer` attribute ensures that the entire HTML file has been
  parsed before the script is executed.

- The `async` attribute will allow the *HTML parser* to continue parsing
  as the script is being downloaded, but will execute immediately after
  it has been downloaded.

The old convention was to put scripts right before the `</body>` tag to
prevent the script from blocking the rest of the HTML content. Now, the
convention is to put the script tag in the `<head>` element and to use
the `defer` and `async` attributes.



Congratulations on completing this lesson!



``` html
<!DOCTYPE html> 
<html>
 
  <head>
    <link rel="stylesheet" href="style.css">
        <script id="blue" src="turnBlue.js" async></script>
  </head>
  
  <body>        
    <p class="centered" id="logo">Codecademy</p>
  </body>
</html>
```

``` css
body {
  background-color: white;
  font-family: 'Raleway', sans-serif;
}

p {
  color: pink; 
  text-align: center;
  font-size: 10vw;
  top: 40%;
  left: 50%; 
  position: absolute; 
  transform: translateX(-50%) translateY(-50%);
}
```

``` javascript
const elem = document.getElementById('logo');

elem.style.color = 'cyan';
```

# What is the DOM?

[What is the DOM?](https://www.youtube.com/watch?v=kd8zX-66FS0)

# The Document Object Model

## What is the DOM?

The *Document Object Model*, abbreviated DOM, is a powerful tree-like
structure that allows programmers to conceptualize hierarchy and access
the elements on a web page.

The DOM is one of the better-named acronyms in the field of Web
Development. In fact, a useful way to understand what DOM does is by
breaking down the acronym but out of order:

- The *DOM* is a logical tree-like **M**odel that organizes a web page’s
  HTML **D**ocument as an **O**bject.

The DOM is implemented by browsers to allow JavaScript to access,
modify, and update the structure of an HTML web page in an organized
way.

For this reason, we like to think of the DOM as the link between an HTML
web page and scripting languages.



The diagram to the right illustrates how an HTML document is modeled as
a tree-like structure accessed by scripting languages like Javascript.



<img src="https://content.codecademy.com/courses/dom/dom_revision_1.svg" alt="Diagram that uses arrows to depict the flow of information between the DOM, its HTML document, and the JavaScript file that accesses it." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## The DOM as a Tree Structure

Tree-like modeling is used in many fields, including evolutionary
science and data analytics. Perhaps you’re already familiar with the
concept of family trees: these charts represent the familial
relationships amongst the descendants of a given family name.

The DOM tree follows similar logic to that of a family tree. A family
tree is made up of family members and their relationships to the family
name. In computer science, we would call each family member a node.

We define a *node* as an intersecting point in a tree that contains
data.

In the DOM tree, the top-most node is called the *root node*, and it
represents the HTML document. The descendants of the root node are the
HTML tags in the document, starting with the `<html>` tag followed by
the `<head>` and `<body>` tags and so on.



The diagram to the right models the HTML document and labels the root
element, which is the document.

Observe the difference in the rectangular boxes and the curved boxes.
These denote a difference in the types of nodes in the DOM structure.



<img src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/DOM/domTreeEx2.svg" alt="A diagram showing the one to one relationship of elements in the HTML file and elements hierarchy visualized as a tree." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Parent Child Relationships in the DOM

Following the metaphor of a family tree, let’s define some key
terminology in the DOM hierarchy:

A *parent node* is any node that is a direct ancestor of another node.

A *child node* is a direct descendant of another node, called the parent
node.

Knowing these terms will allow you to understand and discuss the DOM as
a tree-like structure. In fact, you will also see this terminology used
when referring to the nesting structure of HTML code. Programmers refer
to elements nested inside other elements as the children elements and
parent elements respectively.



**1.**

Add the appropriate HTML elements to the **index.html** file so that it
reflects the tree-diagram on the far right.

Start by adding the `<title>` element. Make sure to nest the tags
correctly, so that the nodes follow the illustrated parent-child
relationships.

**2.**

Add the `<div>` element to **index.html** so that it reflects the DOM
diagram to the right.



``` javascript
<!DOCTYPE html>
<html>  
    <head>
    <title> the title </title>
    </head>

    <body>
    <h1>The heading</h1>
        <div>
        <p>A summary</p>
        <p>A description</p>
    </div>
    </body>
</html>
  
```

## Nodes and Elements in the DOM

As mentioned, a node is the equivalent of each family member in a family
tree. A node is an intersecting point in a tree that also contains data.

There are multiple types of node objects in the DOM tree. In our
diagram, the node objects with the sharp-edge rectangles are
<a href="https://developer.mozilla.org/en-US/docs/Web/API/Element"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><em>Element</em></a> nodes, while the
rounded edge rectangles are
<a href="https://developer.mozilla.org/en-US/docs/Web/API/Text"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><em>Text</em></a> nodes, because they
represent the text inside the HTML paragraph elements.

When trying to modify a web page, the script will mostly interact with
the DOM element nodes and occasionally text nodes.



In the diagram to the right, the DOM element nodes are highlighted red.
These correspond to elements in the HTML document. Move on to the next
exercise when you’re ready!



<img src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/DOM/domTreeEx4.svg" alt="A DOM tree that reflects the HTML document presented in the code editor. In the DOM tree, element nodes are highlighted in red." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Attributes of Element Node

DOM element nodes model elements in an HTML document.

Much like an element in an HTML page, the DOM allows us to access a
node’s attributes, such as its `class`, `id`, and inline `style`.

In the diagram to the right, we have highlighted the paragraph element
with an `id` of `'bio'` in the HTML document. If we were accessing that
element node in our script, the DOM would allow us to tweak each of
those attributes, or simply access them to check their value in the
code.



After studying the diagram on the right, feel free to click on to the
next exercise.



<img src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/DOM/domTreeEx5.svg" alt="A diagram showing the one to one relationship of elements in the HTML file and element hierarchy visualized as a tree. In the HTML file, a paragraph element with `id` and `style` attributes is highlighted. The DOM tree highlights these attributes on the corresponding paragraph node, with the caption, “DOM allows scripts to access the many attributes of HTML elements.” " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Review

Congratulations on completing our introduction to the Document Object
Model, or DOM, as a structure!

Let’s review what you’ve learned so far:

- The DOM is a structural model of a web page that allows for scripting
  languages to access that page.
- The system of organization in the DOM mimics the nesting structure of
  an HTML document.
- Elements nested within another are referred to as the children of that
  element. The element they are nested within is called the parent
  element of those elements.
- The DOM also allows access to the attributes of an HTML element such
  as `style`, `id`, etc.

With this understanding, you can begin to leverage the power of
scripting languages to create, update, and maintain web pages!



Click next when you are ready to move on to the last exercise!



<img src="https://content.codecademy.com/courses/dom/dom_revision_1.svg" alt="Diagram that uses arrows to depict the flow of information between the DOM, its HTML document, and the JavaScript file that accesses it." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

# JavaScript and the DOM

## The Document Keyword

The *Document Object Model*, abbreviated DOM, is a powerful tree-like
structure that organizes the elements on a web page and allows scripting
languages to access them. This lesson will focus on some of the most
useful methods and properties of the <a
href="https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">DOM interface</a> in JavaScript. This
interface is implemented by every modern browser.

First things first! The `document` object in JavaScript is the door to
the DOM structure. The `document` object allows you to access the root
node of the DOM tree. Before you can access a specific element in the
page, first you must access the document structure itself. The
`document` object allows scripts to access children of the DOM as
properties.

For example, if you want to access the `<body>` element from your
script, you can access it as a property of the `document` object by
using `document.body`. This property will return the body element of
that DOM.

Similarly, you could access the `<title>` element with the `.title`
property. Here is a
<a href="https://developer.mozilla.org/en-US/docs/Web/API/Document"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">comprehensive list</a> of all `document`
properties.



The diagram to the right illustrates that the `document` keyword points
to the root node of the Document Object Model (DOM). The `document.body`
and `document.head` properties act as though you were directly accessing
the `html` DOM element. Click “Next” when you’re ready!



<img src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/DOM/domTreeEx2.svg" alt="Diagram that presents a sample HTML file and its corresponding layout using the DOM Interface" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Tweak an Element

When using the DOM in your script to access an HTML element, whether
it’s an `<li>` element or the entire `<body>` element, you also have
access to all of that element’s properties.

This includes the ability to modify the contents of the element as well
as its attributes and properties, which can range from modifying the
text inside a `<p>` element to assigning a new background color to a
`<div>`. For example, the `.innerHTML` property allows you to access and
set the contents of an element.

Let’s take a look at how we can reassign the contents of the `<body>`
element to the text `'The cat loves the dog'`:

``` html
document.body.innerHTML = 'The cat loves the dog.';
```

The `.innerHTML` property can also add any valid HTML elements. The
following example replaces the contents of the `<body>` element by
assigning an `<h2>` element as a child inside the `<body>` element:

``` html
document.body.innerHTML = '<h2>This is a heading</h2>'; 
```



**1.**

Use the `.innerHTML` property to modify the content of the `<body>`
element to display an `<h1>` heading with the text
`'This is now the heading of the body element'`.

Notice how the previous content inside of the `<body>` element has been
replaced!



``` javascript
document.body.innerHTML = '<h1>This is now the heading of the body element</h1>';
```

## Select and Modify Elements

In the previous exercise, we accessed the `<body>` element with the
`document` keyword!

What if we wanted to select a specific element besides the entire
`<body>` element? The DOM interface allows us to access a specific
element with CSS selectors.

*CSS selectors* define the elements to which a set of CSS rules apply,
but we can also use these same selectors to access DOM elements with
JavaScript! Selectors can include a tag name, a class, or an ID.

The `.querySelector()` method allows us to specify a CSS selector as a
string and returns the first element that matches that selector. The
following code would return the first paragraph in the document.

``` html
document.querySelector('p');
```

Along with `.querySelector()`, JavaScript has more targeted methods that
select elements based on their class, id, or tag name.

For example, if you want to access an element directly by its `id`, you
can use the aptly named `.getElementById()` method:

``` html
document.getElementById('bio').innerHTML = 'The description';
```

In this example, we’ve selected the element with an ID of `'bio'` and
set its `.innerHTML` to the text `'The description'`. Notice that the ID
is passed as a string, wrapped in quotation marks (`' '`).

There are also the `.getElementsByClassName()` and
`.getElementsByTagName()` methods which return an array of elements,
instead of just one element. You can use bracket notation to access
individual elements of an array:

``` html
// Set first element of .student class as 'Not yet registered'
document.getElementsByClassName('student')[0].innerHTML = 'Not yet registered';
 
// Set second <li> tag as 'Cedric Diggory'
document.getElementsByTagName('li')[1].innerHTML = 'Cedric Diggory`;
```

In the above example code, the first element with the `'student'` class
and the second `<li>` element have had their inner HTML changed.



**1.**

Use the `.querySelector()` method to select the first `'h1'` element.
Access that element’s `.innerHTML` property to change the `h1` title to
`'Most popular Harry Potter characters'`.

**2.**

Use the `.getElementById()` method to access the element with an ID of
`'fourth'`. Set that element’s inner HTML to read `'Professor Snape'`.

**3.**

Use the `.getElementsByClassName()` method to access the first element
with the class name of `'slytherin'`. Replace that element’s inner HTML
with the text `'Salazar Slytherin'`.

**4.**

Use the `.getElementsByTagName()` method to access the first element
with the `<li>` tag. Access that element’s `.innerHTML` to replace the
content to read `'Dobby'`.



``` javascript
document.querySelector('h1').innerHTML = 'Most popular Harry Potter characters';

document.getElementById('fourth').innerHTML = 'Professor Snape';

document.getElementsByClassName('slytherin')[0].innerHTML = 'Salazar Slytherin';

document.getElementsByTagName('li')[0].innerHTML = 'Dobby';
```

## Style an Element

Another way to modify an element is by changing its CSS style. The
`.style` property of a DOM element provides access to the inline style
of that HTML tag.

The syntax follows an `element.style.property` format, with the
`property` representing a CSS property. For example, the following code
selects the first element with a `class` of `blue` and assigns blue as
the `background-color`:

``` html
let blueElement = document.querySelector('.blue');
blueElement.style.backgroundColor = 'blue';
```

Unlike CSS, the DOM `.style` property does not implement a hyphen such
as `background-color`, but rather camel case notation,
`backgroundColor`. Check out this <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Properties_Reference"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN reference page</a> to see a list of
how CSS properties are converted into JavaScript.

The following *chaining* syntax would also work:

``` html
document.querySelector('.blue').style.fontFamily = 'Roboto';
```



**1.**

Style the `backgroundColor` of the `<body>` element in the blog post to
`'#201F2E'` to match the Codecademy text editor.

**2.**

Next, change the font family of the element with the `heading` class to
`'Roboto'`.



``` javascript
document.body.style.backgroundColor = '#201F2E';

document.querySelector('.heading').style.fontFamily = 'Roboto'
```

## Traversing the DOM

Let’s recap the parent and children relationship in the DOM hierarchy. A
*parent node* is any node that is a direct ancestor of another node. A
*child node* is a direct descendant of another node, called the parent
node.

These relationships follow the nested structure of the HTML code.
Elements nested within one HTML element are children of that parent
element.

Each element has a `.parentNode` and `.children` property. The <a
href="https://developer.mozilla.org/en-US/docs/Web/API/Node/parentNode"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.parentNode</code> property</a>
returns the parent of the specified element in the DOM hierarchy. Note
that the `document` element is the *root node* so its `.parentNode`
property will return `null`. The `.children` property returns an array
of the specified element’s children. If the element does not have any
children, it will return `null`.

``` html
<ul id='groceries'>
  <li id='must-have'>Toilet Paper</li>
  <li>Apples</li>
  <li>Chocolate</li>
  <li>Dumplings</li>
</ul>
```

In the HTML code above, we have an `<ul>` element with the ID of
`groceries` with four `<li>` elements inside.

``` html
let parentElement = document.getElementById('must-have').parentNode; // returns <ul> element
let childElements = document.getElementById('groceries').children; // returns an array of <li> elements
```

Here, the `parentElement` variable stores the `.parentNode` of the
`<li>` element with the ID of `must-have`, which will be the `<ul>`
element with the ID of `groceries`. The `childElements` variable is set
to the children of the `<ul>` element with the ID of `groceries`, which
will be an array of four `<li>` elements.



**1.**

First, create a variable called `first` and set it to the first child of
the document body.

Then, set the inner HTML of the `first` element to
`'BROWN BEARS ARE AWESOME!'`. Take a moment to note which element has
been modified.

**2.**

Use the `.parentNode` property to access the parent element of the
variable `first` and modify its `.style.backgroundColor` to `'beige'`.

Take a moment to notice the change in the web page.



``` html
<ul id='groceries'>
  <li id='must-have'>Toilet Paper</li>
  <li>Apples</li>
  <li>Chocolate</li>
  <li>Dumplings</li>
</ul>
```

## Create and Insert Elements

Just as the DOM allows scripts to modify existing elements, it also
allows for the creation of new ones.

The <a
href="https://developer.mozilla.org/en-US/docs/Web/API/Document/createElement"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.createElement()</code> method</a>
creates a new element based on the specified tag name passed into it as
an argument. However, it does not append it to the document. It creates
an empty element with no inner HTML.

``` html
let paragraph = document.createElement('p');
```

In the example code above, the `.createElement()` method takes `'p'` as
its argument which creates an empty `<p>` element and stores it as the
`paragraph` variable.

We can assign values to the properties of the newly created element like
how we’ve done previously with existing elements.

``` html
paragraph.id = 'info'; 
paragraph.innerHTML = 'The text inside the paragraph';
```

Above, we use the `.id` property to assign `'info'` as ID and the
`.innerHTML` property to set `'The text inside the paragraph'` as the
content of the `<p>` element.

In order to create an element and add it to the web page, you must
assign it to be the child of an element that already exists on the DOM,
referred to as the parent element. We call this process *appending*. The
`.appendChild()` method will add a child element as the parent element’s
last child node. The following code appends the `<p>` element stored in
the `paragraph` variable to the document body.

``` html
document.body.appendChild(paragraph);
```

The `.appendChild()` method does not replace the content inside of the
parent, in this case, `body`. Rather, it appends the new element as the
last child of that parent.



**1.**

Create a `<li>` element using the `.createElement()` method and save it
in a variable called `newAttraction`.

**2.**

On the following line, assign the `newAttraction` element an `id` of
`'vespa'`.

**3.**

Next, assign the `newAttraction` element the text `'Rent a Vespa'` as
its inner HTML.

**4.**

Lastly, append the `newAttraction` element to the list of top
attractions with the ID of `italy-attractions`.



``` javascript
let newAttraction = document.createElement('li');

newAttraction.id = 'vespa';
newAttraction.innerHTML = 'Rent a Vespa';

document.getElementById('italy-attractions').appendChild(newAttraction);
```

## Remove an Element

In addition to modifying or creating an element from scratch, the DOM
also allows for the removal of an element. The `.removeChild()` method
removes a specified child from a parent.

``` html
let paragraph = document.querySelector('p');
document.body.removeChild(paragraph);
```

In the above example code, the `.querySelector()` method returns the
first paragraph in the document. Then, the `paragraph` element is passed
as an argument of the `.removeChild()` method chained to the parent of
the paragraph—`document.body`. This removes the first paragraph from the
document body.

If you want to hide an element rather than completely deleting it, the
<a
href="https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/hidden"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.hidden</code> property</a> allows
you to hide it by setting the property as `true` or `false`:

``` html
document.getElementById('sign').hidden = true;
```

The code above did not remove the element with ID of `'sign'` from the
DOM but rather, hid it.



**1.**

First, save the element with the ID of `vespa` as a variable named
`elementToRemove`.

**2.**

The `elementToRemove` element is a child of the list of top attractions
with the ID of `italy-attractions`.

Remove the `elementToRemove` element from its parent.



``` javascript
let elementToRemove = document.getElementById('vespa');
document.getElementById('italy-attractions').removeChild(elementToRemove);
```

## Add Click Interactivity

You can add interactivity to DOM elements by assigning a function to run
based on an
<a href="https://developer.mozilla.org/en-US/docs/Web/Events"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">event</a>. Events can include anything
from a click to a user mousing over an element. We will learn more about
events in the upcoming <a
href="https://www.codecademy.com/courses/build-interactive-websites/lessons/dom-events"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">DOM Events with JavaScript</a> lesson. For now, let’s
take a look at how to modify an element when a click event happens.

The `.onclick` property allows you to assign a function to run on when a
click event happens on an element:

``` html
let element = document.querySelector('button');
 
element.onclick = function() { 
  element.style.backgroundColor = 'blue' 
};
```

You can also assign the `.onclick` property to a function by name:

``` html
let element = document.querySelector('button');
 
function turnBlue() {
   element.style.backgroundColor = 'blue';
}
 
element.onclick = turnBlue;
```

In the above example code, when the `<button>` element detects a click
event, the `backgroundColor` will change to `'blue'`.



**1.**

Inside the `turnButtonRed()` function, add the code to modify the button
stored in the `element` variable as follows:

1.  Assign the `.style.backgroundColor` to `'red'`
2.  Assign the `.style.color` to `'white'`
3.  Modify the `.innerHTML` to `'Red Button'`

**2.**

Below our `turnButtonRed()` function definition, trigger the
`turnButtonRed()` function when the `element` detects a click event.



``` javascript
let element = document.querySelector('button');

function turnButtonRed(){
  element.style.backgroundColor = 'red';
  element.style.color = 'white';
  element.innerHTML = 'Red Button';
}

element.onclick = turnButtonRed;
```

## Review

In this lesson, you manipulated a webpage structure by leveraging the
Document Object Model (DOM) interface in JavaScript.

Let’s review what we learned:

- The `document` keyword grants access to the root of the DOM in
  JavaScript.
- The DOM Interface allows you to select a specific element with CSS
  selectors by using the `.querySelector()` method.
- You can access an element directly by its ID with the
  `.getElementById()` method which returns a single element.
- You can access an array of elements with the
  `.getElementsByClassName()` and `.getElementsByTagName()` methods,
  then call a single element by referencing its placement in the array.
- The `.innerHTML` and `.style` properties allow you to modify an
  element by changing its contents or style respectively.
- You can create, append, and remove elements by using the
  `.createElement()`,`.appendChild()` and `.removeChild()` methods
  respectively.
- The `.onclick` property can add interactivity to a DOM element based
  on a click event.
- The `.children` property returns a list of an element’s children and
  the `.parentNode` property returns the element’s closest connected
  node in the direction towards the root.



Feel free to practice what we’ve learned in this lesson. When you are
ready, click “Next” to continue!



``` javascript
let first = document.body.children[0];
first.innerHTML = 'BROWN BEARS ARE AWESOME!';

first.parentNode.style.backgroundColor = 'beige';
```

# Create Your First JavaScript Website

[Create your first HTML/CSS/JS
project](https://www.youtube.com/watch?v=iwNUJU5D3aI)

# DOM Events with JavaScript

## What is an Event?

When you refresh your email inbox, double tap on a post, or scroll
through a newsfeed — something cool happens in your browser. These
actions are known as *events*!

Events on the web are user interactions and browser manipulations that
you can program to trigger functionality. Some other examples of events
are:

- A mouse clicking on a button
- Webpage files loading in the browser
- A user swiping right on an image

When a user does any of the above actions, they’re causing the event to
be *fired* or be *triggered*. As in, “a click event fired when the
button was clicked”. Being able to respond to these events makes your
website interactive and therefore *dynamic*.



Check out the recipe webpage — interact with the page and see how it
responds. What events do you think are firing?

You’ll learn more about each event as you progress in the lesson, but
here’s a quick overview:

1.  Click the `+` button to increase the measurements of the
    ingredients.
2.  Hover over the instructions to see the estimated cook time.
3.  Click on highlighted ingredients in the instructions for facts about
    the foods in the ingredient list.
4.  Click the bar at the bottom (footer) to change its background color.

## “Firing” Events

After a specific event fires on a specific element in the <a
href="https://www.codecademy.com/paths/web-development/tracks/build-interactive-websites/modules/web-dev-interactive-websites/lessons/intro-dom/exercises/what-is-the-dom"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">document object model</a> (or DOM), an *event handler*
function can be created to run as a response. In this lesson, we will
learn about event handler functions that modify and update DOM elements
after an event fires.

Let’s compare the firing of events to something more familiar: a dog
trained to eat when they hear the sound of a bell! (This is known as the
<a href="https://en.wikipedia.org/wiki/Classical_conditioning"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Pavlovian conditioning</a>.)

As you can see in the diagram, the ringing of the bell is analogous to a
JavaScript event *firing*. The dog is trained to anticipate the ringing
of the bell and this action is analogous to creating an *event
listener*. After the dog hears the bell, it’ll come over and eat its
food! This response is like an *event handler function* that executes
code which, in a website, could change an element’s color, text, and
much more!”

Most events in the browser take place without being noticed — the events
are undetected because there is no event handler associated with the
event to execute an action. Event handlers are crucial for creating
interactive websites with JavaScript.



Check out the diagram to see the event firing process of a dog trained
to eat when they hear the sound of a bell.



<img src="https://content.codecademy.com/courses/javascript-dom-events/pavlovs_dog.svg" alt="The dog responds to the detected event by coming over to eat their food! This response is like an event handler function that executes code which could change a DOM element's color, text, and much more!" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Event Handler Registration

You’re doing great! Now it’s time to dive into using event handler
functions to create interactivity.

Using the `.addEventListener()` method, we can have a DOM element listen
for a specific event and execute a block of code when the event is
detected. The DOM element that listens for an event is called the *event
target* and the block of code that runs when the event happens is called
the *event handler*.

Let’s take a look at the code below:

``` html
let eventTarget = document.getElementById('targetElement');
 
eventTarget.addEventListener('click', function() {
  // this block of code will run when click event happens on eventTarget element
});
```

Let’s break this down!

- We selected our event target from the DOM using
  `document.getElementById('targetElement')`.
- We used the `.addEventListener()` method on the `eventTarget` DOM
  element.
- The `.addEventListener()` method takes two arguments: an event name in
  *string* format and an event handler function. We will learn about
  different values we can use as event names in a later lesson.
- In this example, we used the `'click'` event, which fires when the
  user clicks on `eventTarget`.
- The code block in the event handler function will execute when the
  `'click'` event is detected.

Instead of using an anonymous function as the event handler, it’s best
practice to create a named event handler function. Your code will remain
organized and reusable this way, even if your code gets complex. Check
out the syntax:

``` html
function eventHandlerFunction() {
  // this block of code will run when click event happens
}
 
eventTarget.addEventListener('click', eventHandlerFunction);
```

The named function `eventHandlerFunction` is passed as the second
argument of the `.addEventListener()` method instead of defining an
anonymous function within the method!



**1.**

Look at the browser and notice that there are two elements, one
containing informational text about JavaScript and a button. When the
button is clicked, there should be more text that appears. Currently,
clicking the button doesn’t seem to do anything. You are going to create
an event handler to fix this!

First, create a function called `showInfo()` which we will use as the
event handler function to make the hidden element containing the
additional informational text (`moreInfo`) appear when the `'click'`
event fires.

Inside the function, create a statement that changes the `.display`
style property of the `moreInfo` element to `'block'`.

**2.**

Now, create an event handler for a click event using
`.addEventListener()`. Use `readMore` as the event target and `showInfo`
as the event handler function.

Run your code and fire your event once you’re done.



``` html
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>

<body>
  <section id='container'>
    <p id='info'>JavaScript is the programming language of the web. You can use it to add dynamic behavior and store information.
  </p>
  <p id='more-info'>JavaScript can also handle requests and responses on a website. It's a great language to master for front-end and back-end web development.
  </p>  
    <button id='read-more'>Read More</button>
  </section>
  <script  src="main.js"></script>

</body>
</html>
```

``` css
body{
  margin: 0;
  padding: 0;
  font-family: 'Nunito';
}
#container{
  background: #141c3a;
  margin: 0;
  display: block;
  float: left;
  width: 100vw;
  height: 100vh;
}
#read-more{
  width: 200px;
  height: 50px;
  font-size: 24px;
  border: none;
  display: block;
  background-color: #6df0c2;
  margin: 0 auto;
  margin-top: 20px;
  margin-bottom: 20px;
}
#info, #more-info{
  display: block;
  margin: 0 auto;
  width: 350px;
  height: 120px;
  padding: 20px;
  font-size: 20px;
  text-align: center;
  display: block;
  background-color: #fd4d3f;
  color: white;
  margin-top: 20px;
}
#more-info{
  display: none;
}
```

``` javascript
let readMore = document.getElementById('read-more');
let moreInfo = document.getElementById('more-info');

// Write your code here:
function showInfo(){
  moreInfo.style.display = 'block';
}

readMore.addEventListener('click', showInfo);
```

## Adding Event Handlers

We looked at registering event handlers using the `.addEventListener()`
method, but there is also another way!

Event Handlers can also be registered by setting an `.onevent` property
on a DOM element (event target). The pattern for registering a specific
event is to append an element with `.on` followed by the lowercased
event type name. For instance, if we want to register a click event with
this pattern, we would write:

``` html
eventTarget.onclick = eventHandlerFunction;
```

Here, we give the DOM element `eventTarget` the <a
href="https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers/onclick"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.onclick</code> property</a> and
set its value as the event handler function `eventHandlerFunction`.

It’s important to know that this `.onevent` property and
`.addEventListener()` will both register event listeners. With
`.onevent`, it allows for one event handler function to be attached to
the event target. However, with the `.addEventListener()` method , we
can add multiple event handler functions. In the later exercises, we’ll
be using the `.addEventListener()` syntax, but we wanted to also
introduce the `.onevent` syntax because both are widely used.



**1.**

Play around with the `view` and `close` elements to meet the Codecademy
mascot, Codey. Codey is super happy you made it this far and they need
your help!

Right now, the `open()` function makes the `codey` and `close` elements
visible by changing their `.display` properties to `'block'`. The
`hide()` function hides the same elements by assigning a `'none'` value
to the `.display` properties.

Codey wants you to create a function named `textChange()` that changes
the text in the `view` element to `'Hello, World!'`.

**2.**

Next, you must create a function named `textReturn()` that changes the
text of the `view` element variable back to `'View'`.

**3.**

Assign `textChange` as an event handler function to a `click` event
fired on the `view` variable and run your code.

**4.**

Assign `textReturn` as an event handler function to a `click` event
fired on the `close` variable. Then run your code and fire the events!



``` html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
</head>

<body>
  <section id='container'>
  <button id='view-button'>View</button>
  <img src="https://content.codecademy.com/courses/javascript-dom-events/Margot_medal.svg" id='codey'>
  <button id='close-button'>Close</button>
</section>
  
  <script  src="main.js"></script>

</body>
</html>
```

``` css
body{
  margin: 0;
  padding: 0;
  font-family: 'Nunito';
}
#container{
  background: #141c3a;
  margin: 0;
  display: block;
  float: left;
  width: 100vw;
  height: 100vh;
}
#view-button{
  width: 380px;
  height: 50px;
  font-size: 24px;
  border: none;
  display: block;
  background-color: #6df0c2;
  margin: 0 auto;
  margin-top: 20px;
  margin-bottom: 20px;
  cursor: pointer;
  font-family: 'Nunito';
}
#codey{
  display: none;
  width: 200px;
  margin: 0 auto;
}
#close-button{
  width: 380px;
  height: 50px;
  font-size: 24px;
  border: none;
  display: none;
  background-color: #fd4d3f;
  margin: 0 auto;
  margin-top: 20px;
  cursor: pointer;
  font-family: 'Nunito';
}
```

``` javascript
let view = document.getElementById('view-button');
let close = document.getElementById('close-button');
let codey = document.getElementById('codey');

let open = function() {
  codey.style.display = 'block';
  close.style.display = 'block';
};

let hide = function() {
  codey.style.display = 'none';
  close.style.display = 'none';
};

view.addEventListener('click', open);
close.addEventListener('click', hide);

// Write your code here
function textChange(){
  view.innerHTML = 'Hello, World!';
}

function textReturn(){
  view.innerHTML = 'View';
}

view.addEventListener('click', textChange);
close.addEventListener('click', textReturn);
```

## Removing Event Handlers

The `.removeEventListener()` method is used to reverse the
`.addEventListener()` method. This method stops the event target from
“listening” for an event to fire when it no longer needs to.
`.removeEventListener()` also takes two arguments:

1.  The event type as a string
2.  The event handler function

Check out the syntax of a `.removeEventListener()` method with a click
event:

``` html
eventTarget.removeEventListener('click', eventHandlerFunction);
```

Because there can be multiple event handler functions associated with a
particular event, `.removeEventListener()` needs both the exact event
type name and the name of the event handler you want to remove. If
`.addEventListener()` was provided an anonymous function, then that
event listener cannot be removed.



**1.**

Check out this website that shows your daily fortune. But the website is
broken! You should only be able to see your daily fortune once, but you
will see that you can keep pressing the button to get a new fortune. You
need to use the `.removeEventListener()` method after a fortune is
displayed.

Inside the `showFortune()` function, add a `.removeEventListener()` to
prevent a new fortune from being displayed when a user tries to click
the `button` element.



``` javascript
let fortunes = ['A beautiful, smart, and loving person will be coming into your life.',
  'A fresh start will put you on your way.',
  'A golden egg of opportunity falls into your lap this month.',
  'A smile is your personal welcome mat.',
  'All your hard work will soon pay off.'
]

let button = document.getElementById('fortuneButton');
let fortune = document.getElementById('fortune');

function fortuneSelector(){
  let randomFortune = Math.floor(Math.random() * fortunes.length);
  return fortunes[randomFortune];
}

function showFortune(){
  fortune.innerHTML = fortuneSelector();
  button.innerHTML = 'Come back tomorrow!';
  button.style.cursor = 'default';

  //add your code here
  button.removeEventListener('click', showFortune);
}

button.addEventListener('click', showFortune);
```

## Event Object Properties

JavaScript stores events as
<a href="https://developer.mozilla.org/en-US/docs/Web/API/Event"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">Event</code> objects</a> with their
related data and functionalities as properties and methods. When an
event is triggered, the event object can be passed as an argument to the
event handler function.

``` html
function eventHandlerFunction(event){
   console.log(event.timeStamp);
}
 
eventTarget.addEventListener('click', eventHandlerFunction);
```

In the example above, when the `'click'` event is triggered on the
`eventTarget`, the `eventHandlerFunction` receives `event`, the Event
object, which has information related to the `'click'` event. Then, we
log the time it took for the event to be triggered since the document
was loaded by accessing the `.timeStamp` property of the `event` object.

There are pre-determined properties associated with event objects. You
can call these properties to see information about the event, for
example:

- the
  <a href="https://developer.mozilla.org/en-US/docs/Web/API/Event/target"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">.target</code> property</a> to
  reference the element that the event is registered to.
- the
  <a href="https://developer.mozilla.org/en-US/docs/Web/API/Event/type"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">.type</code> property</a> to
  access the name of the event.
- the <a
  href="https://developer.mozilla.org/en-US/docs/Web/API/Event/timeStamp"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">.timeStamp</code> property</a> to
  access the number of milliseconds that passed since the document
  loaded and the event was triggered.



**1.**

Everyone loves a good puppy picture! Use what you’ve learned about event
object properties to share this puppy photo with your friends.

First, add a statement inside the `sharePhoto()` function that will
change the `.display` property of the event `.target` to `'none'`.

Remember that the event `.target` is a DOM element and you can access
the `.display` property by referencing the `.style` property first.

**2.**

Next, add a statement to the `sharePhoto` function that will modify the
`text` element to state the number of milliseconds from the DOM loading
to the event firing.

**3.**

Now, to create functionality for the event object, assign the
`sharePhoto` function to a `click` event on the `share` element.

Run your code!



``` javascript
let social = document.getElementById('social-media');
let share = document.getElementById('share-button');
let text = document.getElementById('text');

// Write your code below
let sharePhoto = function(event) {
  event.target.style.display = 'none';
  text.innerHTML = 'You shared the puppy photo in ' 
  + event.timeStamp + ' ms.';
}

share.addEventListener('click', sharePhoto);
```

## Event Types

Beyond the `click` event, there are all types of DOM events that can
fire in a browser! It’s important to know *most* events in the DOM take
place without being noticed because there are no event handlers
connected to them.

It’s also important to know some registered events don’t depend on user
interactions to fire. For instance, the `load` event fires after website
files completely load in the browser.

Browsers can fire many other events without a user — you can check out a
list of events on the
<a href="https://developer.mozilla.org/en-US/docs/Web/Events"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN Events Reference</a> page.

Many events need user interaction with the DOM to fire. One user
interaction event you’ve become familiar with is the `click` event. A
`click` event fires when the user presses and releases a mouse button on
an element in the DOM.

<img
src="https://content.codecademy.com/courses/javascript-dom-events/click-event.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Click Event Image" />

In the rest of this lesson, you’ll explore more user interaction event
types like the mouse and keyboard events. To explore more event types,
check out the
<a href="https://developer.mozilla.org/en-US/docs/Web/Events"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN Events Reference</a>.



**1.**

We made a really cool color generator to help people find different
colors — try it out! Uh oh, it seems to be broken. We need you to use
your new knowledge to fix the website.

Complete the `colorChange()` function, which will be used as an event
handler function, to randomly change the colors of the buttons when
specific events are fired on them.

First, add the following variable to the event handler function:

``` html
let randomColor = 'rgb(' + colorValue() + ',' + colorValue() + ',' + colorValue() + ')';
```

**2.**

Add a statement that changes the background color of the event target
and set it equal to `randomColor`.

**3.**

There are two elements that should change color on this web page. First,
create an event handler property on the `button` element that fires when
it’s clicked. Use `colorChange` as the event handler function.

Then run your code and fire the `click` event.

**4.**

Next, create an event handler property on the `mysteryButton` element.
This property needs an event that fires when you rotate the mouse wheel
or slide down on the mousepad. Use the <a
href="https://developer.mozilla.org/en-US/docs/Web/Events#Mouse_Events"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN Events Reference</a> page to find the
correct event type. Assign the same `colorChange` event handler function
to the event handler property.

Then run your code and fire the event.



``` javascript
// This variable stores the "Pick a Color" button
let button = document.getElementById('color-button');

// This variable stores the "Mystery Color" button
let mysteryButton = document.getElementById('next-button');

// This random number function will create color codes for the randomColor variable
function colorValue() {
  return Math.floor(Math.random() * 256);
}

function colorChange(event){
  let randomColor = 'rgb(' + colorValue() + ',' + colorValue() + ',' + colorValue() + ')';
  event.target.style.backgroundColor = randomColor;
}

button.addEventListener('click', colorChange);
mysteryButton.addEventListener('wheel', colorChange);
```

## Mouse Events

When you use a mouse device on a website, *mouse events* fire. You’ve
seen the `click` and `wheel` events, but, there are even more mouse
events to explore!

The `mousedown` event is fired when the user presses a mouse button
down. This is different from a `click` event because `mousedown` doesn’t
need the mouse button to be released to fire.

<img
src="https://content.codecademy.com/courses/javascript-dom-events/mousedown.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Mouse Down Event Image" />

The `mouseup` event is fired when the user releases the mouse button.
This is different from the `click` and `mousedown` events because
`mouseup` doesn’t depend on the mouse button being pressed down to fire.

<img
src="https://content.codecademy.com/courses/javascript-dom-events/mouseup.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Mouse Up Event Image" />

The `mouseover` event is fired when the mouse enters the content of an
element.

<img
src="https://content.codecademy.com/courses/javascript-dom-events/mouseover.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Mouse Over Event Image" />

The `mouseout` event is fired when the mouse leaves an element.

<img
src="https://content.codecademy.com/courses/javascript-dom-events/mouseout.gif"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Mouse Out Event Image" />



**1.**

In this exercise, you’ll modify the list elements using mouse events.
You can use the reset element that is already programmed to set the
other list element back to their default styles.

First, create a function called `increaseWidth()` that changes the
`.width` of `itemOne` to any size greater than `'400px'`.

**2.**

Now, create an event handler for `itemOne` that will trigger the
`increaseWidth()` function when the mouse hovers on it.

**3.**

Next, create a function called `changeBackground()` that changes the
`.backgroundColor` of `itemTwo`.

**4.**

Let’s use the `changeBackground()` function we just created as an event
handler for `itemTwo` that will be triggered when the mouse is released
over the element!

**5.**

Now, create a function called `changeText()` that changes the text of
`itemThree` to `'The mouse has left the element'`.

**6.**

Create an event handler for `itemThree` that will fire `changeText()`
function when the mouse leaves the element.

**7.**

Finally, let’s create a function called `showItem()` that makes the
`itemFive` element appear by changing the `.display` style property to
`'block'`.

**8.**

Now, create an event handler for `itemFour` that triggers the
`showItem()` function when the mouse is pressed down on the element.



``` javascript
// These variables store the boxes on the side
let itemOne = document.getElementById('list-item-one');
let itemTwo = document.getElementById('list-item-two');
let itemThree = document.getElementById('list-item-three');
let itemFour = document.getElementById('list-item-four');
let itemFive = document.getElementById('list-item-five');
let resetButton = document.getElementById('reset-button');

// This function programs the "Reset" button to return the boxes to their default styles
let reset = function() {
  itemOne.style.width = ''
  itemTwo .style.backgroundColor = ''
  itemThree.innerHTML = 'The mouse must leave the box to change the text'
  itemFive.style.display = "none"
};
resetButton.onclick = reset;

// Write your code here
function increaseWidth(){
  itemOne.style.width = '500px';
}

itemOne.addEventListener('mouseover', increaseWidth);

function changeBackground(){
  itemTwo.style.backgroundColor = 'green';
}

itemTwo.addEventListener('mouseup', changeBackground);

function changeText(){
  itemThree.innerHTML = 'The mouse has left the element';
}

itemThree.addEventListener('mouseout', changeText);

function showItem(){
  itemFive.style.display = 'block';
}

itemFour.addEventListener('mousedown', showItem);
```

## Keyboard Events

Other popular types of events are keyboard events! *keyboard events* are
triggered by user interaction with keyboard keys in the browser.

The `keydown` event is fired while a user presses a key down. <img
src="https://content.codecademy.com/courses/javascript-dom-events/keydown.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Key Down Event Image" />

The `keyup` event is fired while a user releases a key. <img
src="https://content.codecademy.com/courses/javascript-dom-events/keyup.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Key Up Event Image" />

The `keypress` event is fired when a user presses a key down and
releases it. This is different from using `keydown` and `keyup` events
together, because those are two complete events and `keypress` is one
complete event. <img
src="https://content.codecademy.com/courses/javascript-dom-events/keypress.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Key P ress Event Image" />

Keyboard events have unique properties assigned to their event objects
like the `.key` property that stores the values of the key pressed by
the user. You can program the event handler function to react to a
specific key, or react to any interaction with the keyboard.



**1.**

Now it’s time to create a game! Program this code to dribble the ball on
the platform using any key on a keyboard. When a user presses a key
down, it should lift the ball up. When the user releases the key, the
ball should drop.

First, make a function named `up()` that will raise the `.bottom`
position of the `ball` to `'250px'`.

**2.**

Next, make a function named `down()` that will lower the `.bottom`
position of the `ball` to `'50px'`.

**3.**

Create an event handler property that runs the `up()` function when a
`keydown` event fires on the `document` object, or anywhere on the DOM,
as the event target.

**4.**

Create an event handler property that runs the `down()` function when a
`keyup` event fires on the `document`.

Run your code and play around with the keyboard events to make the ball
bounce on the platform. You can try keys like the space bar, letter
keys, or number keys!



``` javascript
let ball = document.getElementById('float-circle');

// Write your code below
function up(){
  ball.style.bottom = '250px';
}

function down(){
  ball.style.bottom = '50px';
}

document.addEventListener('keydown', up);
document.addEventListener('keyup', down);
```

## Review

Congrats, you completed the lesson! Now you’ve learned about JavaScript
events and you can leverage these events on the DOM to create
interactivity with event handlers.

Let’s review what you’ve learned:

- You can register events to DOM elements using the `addEventListener()`
  method.
- The `addEventListener()` method takes two arguments: an event type and
  an event handler function.
- When an event is triggered on the event target, the registered event
  handler function executes.
- Event handler functions can also be registered as values of `onevent`
  properties of their event target.
- Event object properties like `.target`, `.type`, and `.timeStamp` are
  used to provide information about the event.
- The `addEventListener()` method can be used to add multiple event
  handler functions to a single event.
- The `removeEventListener()` method stops specific event handlers from
  “listening” for specific events firing.



<video class="video__3x64OqfSCxHWGr18MXnQON" autoplay="" loop="">
<source src="https://content.codecademy.com/courses/javascript-dom-events/output_CjjWGG.mp4">
</video>

# Piano Keys

You’re a web developer who has been hired by a music education company.
This client wants you to create an interactive game to help their
beginner-level piano students study. Create a piano player with DOM
events in JavaScript!

<img src="https://media.giphy.com/media/RccMM7hsUoW4w/giphy.gif"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Cat Playing Piano GIF" />

If you get stuck during this project, check out the **project
walkthrough video**, which can be found by selecting “Get Unstuck” in
the upper right-hand corner of this window.



Mark the tasks as complete by checking them off

## Create An Interactive Piano Game

1\.

At the beginning of the code, we have variable name assignments for the
`keys` array and the `notes` array. There is also a function looping
through the elements of the `keys` array and pushing them to the `notes`
array.

After the second comment, create a function named `keyPlay` that changes
the background color of the keys when they are pressed down.

Be sure to use the `.target` property in the function because the target
is being modified in this case.

2\.

Next, create a function named `keyReturn` that returns the background
color of the keys to their default with an empty string `''` when the
mouse is released on the element. Be sure to use the `.target` property.

3\.

Now that you have created two functions that change the color of the key
elements, you must assign them as the values of event handler
properties.

Create a named function and leave the code block blank for now. This
function will be used later on to assign events to the keys, so it
should take one parameter — you can call it `note`.

4\.

Inside the function, create an event handler that runs the `keyPlay` as
an event handler when a `mousedown` event fires on any `note`.

5\.

Inside the function, create a second event handler property that runs
the `keyReturn` when a `mouseup` event fires on any `note`.

6\.

At the beginning of the code, we have variable name assignments for the
`keys` array and the empty `notes` array. There is also a function
looping through the `keys` array and pushing the `keys` elements to the
`notes` array to be assigned a variable name.

Now, you must create a `.forEach` loop that will pass the elements in
the `notes` array through your event assignment function.

7\.

Now, the program knows what to do when each piano key has a `mousedown`
or `mouseup` event fired on it. Run your code and see how it works!

8\.

Next, there are variables that represent the progress buttons in the
song box below that allow students to progress the piano.

The `nextOne`, `nextTwo`, `nextThree`, and `startOver` change the lyrics
and musical notes of the song to help the student play along. In the
beginning of the song the only button the student needs is `nextOne`.
Because of this the `.hidden` properties of the other buttons are
assigned the value of `true`.

Now you must create events on all the progress buttons. First, create an
event handler property with a `click` event on the `nextOne` element.

9\.

To begin modifying the song box, you must switch the progress buttons
first.

Using an anonymous event handler function, make the following changes to
the button that appears after `nextOne` is clicked:

1.  Reveal the `nextTwo` button by changing the `.hidden` property to
    make the `nextTwo` button appear.
2.  Hide the `nextOne` button by changing the `.hidden` property to hide
    the `nextOne` button.

10\.

Next, a `click` event firing on the `nextOne` must change the music
notes that guide the piano student through the song.

Add the following changes to the `nextOne` event handler function so the
musical notes change when the button is clicked.

1.  Change the content of the element with an ID of `letter-note-five`
    to `D`.
2.  Change the content of the element with an ID of `letter-note-six` to
    `C`.

11\.

Create another event handler property with a `click` event on the button
element called `nextTwo`. Then assign the property to the value of an
anonymous event handler function.

12\.

Make the following changes to the button that appears when `nextTwo` is
clicked:

1.  Reveal the `nextThree` button by changing the `.hidden` property to
    make the `nextThree` button appear.
2.  Hide the `nextTwo` button by changing the `.hidden` property to hide
    the `nextTwo` button.

13\.

Once the student has reached this point of the <a
href="https://en.wikipedia.org/wiki/Happy_Birthday_to_You#%22Happy_birthday_to_you%22"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Happy Birthday song</a> the lyrics
changes from `HAP-PY BIRTH-DAY TO YOU` to
`HAP-PY BIRTH-DAY DEAR FRI-END`.

Make the following changes to the lyrics in the function when the button
is clicked:

1.  Change the content of the element with an ID of `word-five` to
    `DEAR`.
2.  Change the content of the element with an ID of `word-six` to
    `FRI-`.

14\.

Now you have the lyrics `HAP-PY BIRTH-DAY DEAR FRI-`. To finish the
line, you must add the `-END` to the song box under the piano.

The `-END` element is stored in the `lastLyric` variable.

Add a statement to the event handler function for `nextTwo` that changes
the display property of `lastLyric` to `'inline-block'`.

15\.

A `click` event firing on the second button must also change the music
notes to guide the piano student through the song.

Add the following changes to the `nextTwo` event handler function so the
musical notes change when the button is clicked:

1.  Change the content of the element with an ID of `letter-note-three`
    to `G`.
2.  Change the content of the element with an ID of `letter-note-four`
    to `E`.
3.  Change the content of the element with an ID of `letter-note-five`
    to `C`.
4.  Change the content of the element with an ID of `letter-note-six` to
    `B`.

16\.

Create an event handler property with a `click` event on the `nextThree`
element.

17\.

Using an anonymous event handler function, make the following changes to
the button that appears when `nextThree` is clicked:

1.  Reveal the `startOver` button by changing the `.hidden` property to
    make the `startOver` button appear.
2.  Hide the `nextThree` button by changing the `.hidden` property to
    hide the `nextThree` button.

18\.

Add the following changes to the `nextThree` event handler function so
the lyrics change when this button is clicked.

1.  Change the content of the element with an ID of `word-one` to
    `HAP-`.
2.  Change the content of the element with an ID of `word-two` to `PY`.
3.  Change the content of the element with an ID of `word-three` to
    `BIRTH`.
4.  Change the content of the element with an ID of `word-four` to `DAY`
5.  Change the content of the element with an ID of `word-five` to `TO`.
6.  Change the content of the element with an ID of `word-six` to
    `YOU!`.

19\.

Add the following changes to the `nextThree` event handler function so
the musical notes change when the button is clicked.

1.  Change the content of the element with an ID of `letter-note-one` to
    `F`.
2.  Change the content of the element with an ID of `letter-note-two` to
    `F`.
3.  Change the content of the element with an ID of `letter-note-three`
    to `E`.
4.  Change the content of the element with an ID of `letter-note-four`
    to `C`.
5.  Change the content of the element with an ID of `letter-note-five`
    to `D`.
6.  Change the content of the element with an ID of `letter-note-six` to
    `C`.

20\.

Now you have the lyrics`HAP-PY BIRTH-DAY TO YOU! -END` — that couldn’t
be right! To finish the line you must get rid of the “-end” in the song
box.

Add a statement to the event handler function for `nextThree` that
changes the `display` property of `lastLyric` back to `'none'`.

21\.

Congrats, you’ve completed the Piano Player! Play around with the piano
and the song box to fire all the events.

## [Solution](piano-keys)

# Introduction to Form Validation

## Introduction

Modern websites require a lot of information to function as intended.
Information like our usernames, passwords, “friends”, “likes”, credit
card information, and shopping orders all have to be provided by users
on the front-end and sent to the web applications’ servers so they can
be processed. This information is used to create a personalized
experience for the user.

User information is traditionally collected using HTML *forms*. If
you’ve ever entered text in a website, selected from options on a list,
or checked boxes and then hit enter or pressed a button, you likely
filled out and submitted an HTML form!

In order for the data submitted through forms to be useful, it’s
essential that the information is valid—if you were allowed to
accidentally submit your last name where your address was expected, your
package would never show up!

The process of checking that the information submitted through a form
adheres to expectations is called *form validation*. In this lesson,
we’ll explore the different techniques for validating form inputs.



Take a look at the form provided. It’s a bare-bones HTML page with no
validation. You can play around with it and get to know the different
types of inputs on an HTML form.

Think about any of the forms you’ve submitted today—did you log into any
sites? Use a search bar? Buy something online?



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <body>
    <h1>Welcome To This Form</h1>
    <form action="" method="POST">
          <label for="text">You can enter text here:</label>
                <input type="text" name="text">
        <hr>
          <label for="num">You can enter a number here:</label>
          <input type="number" name="num">
        <hr>
          <label for="slider">You can slide this:</label>
          <br>
          <span>Left</span>
          <input type="range" name="slider" value="3" min="1" max="5">
          <span>Right</span>
        <hr>
       <label for="boxes">You can check these:</label>
          <input type="checkbox" name="boxes" value="first">
          <label for="first">First</label>
          <input type="checkbox" name="boxes"  value="second">
          <label for="second">Second</label>
          <input type="checkbox" name="boxes" value="third">
          <label for="third">Third</label>
        <hr>
      <label for="radio">You can select one of these:</label>
          <input type="radio" name="radio" value="true">
          <label for="true">TRUE</label>
          <input type="radio" name="radio" value="false">
          <label for="false">FALSE</label>
        <hr>
          <label for="dropdown">You can select one of these</label>
          <select name="dropdown">
            <option value="first">First</option>
            <option value="second">Second</option>
            <option value="third">Third</option>
          </select>
        <hr>
          <input type="submit" value="Submit to Reset">
      </form>
  </body>
</html>
```

## Why Validate Forms?

Most data, once submitted, is stored by a website or web application.
It’s stored in a database on the server side. There are important
reasons for us to make sure the information that will be stored in the
database is accurate.

We want operations that depend on the data to work: Allowing a user to
enter an incorrectly formatted email address, either on purpose or by
accident, means that we won’t be able to contact that user later.
Allowing a user to sign up for an account with a username that is
already in use could cause numerous errors down the line. Making sure we
collect all the data we need and checking that the data are formatted
correctly can save a web application and its users a lot of trouble.

We want to keep our site secure: Unprotected data leaves entry points
for malicious actors to hurt our application or our users. Allowing a
user to submit a non-secure password means that their account will not
be protected. Unprotected forms can also allow bits of code to be
injected into our servers. This can potentially leave our users’
sensitive information exposed. The malicious actor could even gain
control of our site or corrupt our existing data!



[Cat Burglar](https://www.youtube.com/watch?v=69lYj1C6PtE)

## Regular Expressions

Data submitted through forms are stored as strings. Strings are a
fundamental data type in computer science representing a series of
characters “strung” together. As humans, we can intuitively recognize
patterns within strings, and this allows us to catch errors. Try to
notice what’s wrong in the following examples:

- ABCDEF2GHIJKLMNOPQRSTUVWXYZ
- My zip code is 9021
- The ct meowed
- `<h1> Hello, World! </h2>`

In the first example, we had the letters of the alphabet presented in
order but interrupted by an out of place `2`. In the second, we left off
the 5th digit of a famous zip code. In the third, we omitted the “a”
from the word cat. In the final example, we wrote some HTML with an
`<h1>` opening tag but an unmatching `</h2>` closing tag. If you picked
up on these mistakes, it’s because your brain has been trained to expect
patterns in certain types of data.

Unlike humans, who can get this training passively over time, computers
have to be precisely programmed to recognize patterns. To specify
patterns for the computer to recognize, we use a special language called
*regular expressions* — also known as regex or regexp. A regular
expression is a sequence of characters representing a pattern. We can
use that pattern to match a string, match parts of a string, confirm
that data is formatted acceptably, or even replace parts of strings with
different characters.



Try entering some patterns in the applet provided. If you enter `ello`,
you’ll notice how many of the examples include those characters. We
could fully match all of the expressions with the pattern `[^]*`. To
match the first four expressions, we could use a pattern like
`[hH]ello[^]*`. The pattern `[^]*\d{3}[^]*\d{3}-\d{4}` will match the
two example phone numbers.

## [Solution](https://content.codecademy.com/courses/PHP_FORMS/build/index.html)

## Client-side Validation: HTML

The first technique we can use to validate form data is to prevent
problematic inputs from being submitted in the first place. This is
called *client-side validation*. The client is the process interacting
with the server on behalf of a user—in the case of websites, the web
browser is the client. The logic for validating the form is included
with the code that displays the form on the user’s device. No
interaction with the back-end is required to perform client-side
validations.

Since form validation is so common, modern HTML provides some of these
validation features built-in. For example, we can use HTML to make parts
of a form `required` and others optional. We can also use HTML to set
minimum and maximum values for an input or minimum or maximum lengths
for a text input. We can even necessitate that the input match a
particular pattern, specified by a regular expression.

If any of the rules laid out in the HTML form validation aren’t
followed, the user will not be able to submit their form, and they’ll
receive an error message explaining why. With these checks in place, the
back-end is less likely to be sent incorrect data. HTML form validation
will also benefit the user—the client provides the user immediate
feedback, without having to wait for time-consuming communication with
the back-end.



The provided HTML form has three input fields that are `required`. Try
submitting the form without any one of them. Notice now a message
appears on the form. We didn’t have to design that ourselves. It’s built
into HTML.

Each input has additional requirements.

- The `"name"` input requires a text input with a length between 3 and
  100. 
- The `"age"` input requires a number value between 1 and 123.
- The `"code"` input requires an input of either `Codecademy` or
  `codecademy`.

Try out the form with correct and incorrect inputs for each field.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <body>
    <h1>Basic HTML Validation</h1>
    <form action="" method="POST">
      <label for="text">Enter your name here:</label>
        <input id="name" name="name" type="text" required minlength="3" maxlength="100">
      <br><br>
      <label for="number">Enter your age here:</label>
      <input type="number" name="age" id="age" required min="1" max="123">
      <br><br>
        <label for="code">Best place to learn to code: (hint: starts with a "C")</label>
  <input id="code" name="code" type="text" required pattern="[cC]odecademy">
      <br><br>
      <input type="submit" value="Submit">
    </form>
  </body>
</html>
```

## Client-side Validation: JavaScript

Client-side validation has two main advantages. First, it’s a better
experience for the user to be alerted to problematic data immediately
rather than having to wait for that information to come back from the
server and have to fill out the form again. Second, catching mistakes
earlier in the process saves the application time and resources as well.
But not all issues can be handled with the built-in HTML validations.

In order to truly customize validation or to perform more complex
validations, we can incorporate JavaScript form validations. We can do
this by either writing the JavaScript ourselves or by incorporating a
JavaScript library. If we have unique requirements for usernames on our
site, for example, we’ll have to provide these systems of validation
ourselves.

If we’re creating a relatively simple website, it makes sense to code
the form validation ourselves or use a simple vanilla JavaScript
library—<a href="https://www.npmjs.com/package/just-validate"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">just-validate, for example</a>. But most
basic validation libraries will involve directly accessing or
manipulating the DOM. This can get tricky when working with a framework
that relies on a virtual DOM—like React or Vue. In those situations, it
might be best to incorporate a library that works well with your
specific framework. For example, the
<a href="https://www.npmjs.com/package/formik"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">formik library</a> is a lightweight
library that simplifies validating forms in a React app.



Play around with the website we’ve provided. It’s a password validator
with some specific requirements. This validation is done completely on
the client-side using JavaScript. Specifically, it uses a library called
<a href="https://parsleyjs.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Parsley.js</a>.

## [Solution](https://content.codecademy.com/courses/PHP_FORMS/password_validator/html.html)

## Back-end Validation

No matter how complete the front-end validation of a website or
application seems, validations must also be completed on the back-end or
server-side. Front-end validations are easy to bypass—a malicious user
can simply turn off JavaScript on their browser, for example. There’s
also the potential for middleman attacks in which data is changed after
the request is submitted by a user but before it arrives at the server.
As a rule, the back-end should never trust the data it receives.

As the developer, once data is in the back-end, we have complete control
over it, luckily. Back-end validation has several advantages:

- It enables us to use validation code often on machines with more
  computing power.
- It allows us to write validation code that a user can’t see—if
  malicious users can’t see exactly *how* we validate the data, it’s
  much more difficult for them to find ways around it.
- We can validate the information against other data the front-end
  doesn’t have access to—for example, we can check our database to see
  if a given username is already in use.

There are two main ways to validate inputs on the server-side. The first
takes place while the user is still inputting data into the form on the
front-end. We can make asynchronous requests to the server with pieces
of their data and send feedback directly to the user before they’ve
submitted. This is slower than front-end validation and can be a design
challenge from a user-experience perspective.

The second is once the form has been submitted. Back-end form validation
is our application’s last defense against problematic data, and it’s
essential to verify the validity and safety of data before adding it to
a database. This is also an opportunity to “sanitize” the data: in order
for our database to be useful, it’s important that all data within it is
formatted consistently. This means that while we may want to be flexible
about the formatting we require from a user, we likely want to transform
inputs into a strict format before entering them in the database.



This video illustrates the process of validating forms on the back-end.



[BackEnd Validation](https://www.youtube.com/watch?v=E1oUSAhG-Vo)

## Review

In this lesson, we’ve explored form validation from many angles. Let’s
review what we covered:

- Modern websites require a lot of information from their users and they
  collect a lot of this information through HTML forms.
- It’s essential to validate the data submitted through forms to keep
  websites secure and to make sure they function correctly.
- Regular expressions are sequences of characters that define patterns
  to look for in text. They are an important tool used in validating
  input.
- Modern HTML comes with useful built-in methods for form validation.
- Custom and complicated client-side validation can be accomplished with
  JavaScript.
- Asynchronous requests to the server can perform back-end validations
  before a form has been submitted.
- A final back-end validation of all data is required to ensure an
  application’s security and sanitize all data.



Whew! You learned a lot. Now take a rest and enjoy this comic by
cartoonist Randall Munroe (<a href="https://xkcd.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">XKCD</a>). You deserve a laugh.



<img src="https://content.codecademy.com/courses/PHP_FORMS/exploits_of_a_mom_XKCD.png" alt="XKCD comic - a mother on the phone with a school admin explaining that her son is named &quot;Robert Drop Tables Students&quot;" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

# HTML Forms

## Introduction to HTML Forms

Forms are a part of everyday life. When we use a physical form in real
life, we write down information and give it to someone to process. Think
of the times you’ve had to fill out information for various applications
like a job, or a bank account, or dropped off a completed suggestion
card — each instance is a form!

Just like a physical form, an HTML `<form>` element is responsible for
collecting information to send somewhere else. Every time we browse the
internet we come into contact with many forms and we might not even
realize it. There’s a good chance that if you’re typing into a text
field or providing an input, the field that you’re typing into is part
of a `<form>`!

In this lesson, we’ll go over the structure and syntax of a `<form>` and
the many elements that populate it.



Look over the image, can you think of any other forms you’ve interacted
with? Go to the next exercise when you’re ready.



<img alt="Image of a website called 'Goooble' that resembles Google search engine. There is a search form and the text inside says, &quot;Is this search bar a form?&quot;" src="https://content.codecademy.com/courses/learn-html-forms/search%20bar.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## How a Form Works

We can think of the internet as a network of computers which send and
receive information. Computers need an *HTTP request* to know how to
communicate. The HTTP request instructs the receiving computer how to
handle the incoming information. More information can be found in our
article about
<a href="https://www.codecademy.com/articles/http-requests"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">HTTP requests</a>.

The <a
href="https://www.codecademy.com/resources/docs/html/forms?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<form\></code></a> element is a
great tool for collecting information, but then we need to send that
information somewhere else for processing. We need to supply the
`<form>` element with both the location of where the `<form>`’s
information goes and what HTTP request to make. Take a look at the
sample `<form>` below:

``` html
<form action="/example.html" method="POST">
</form>
```

In the above example, we’ve created the skeleton for a `<form>` that
will send information to **example.html** as a POST request:

- The `action` attribute determines where the information is sent.
- The `method` attribute is assigned a HTTP verb that is included in the
  HTTP request.

Note: HTTP verbs like POST do not need to be capitalized for the request
to work, but it’s done so out of convention. In the example above we
could have written `method="post"` and it would still work.

The `<form>` element can also contain child elements. For instance, it
would be helpful to provide a header so that users know what this
`<form>` is about. We could also add a paragraph to provide even more
detail. Let’s see an example of this in code:

``` html
<form action="/example.html" method="POST">
  <h1>Creating a form</h1>
  <p>Looks like you want to learn how to create an HTML form. Well, the best way to learn is to play around with it.</p>
</form>
```

The example above doesn’t collect any user input, but we’ll do that in
the next exercise. For now, let’s practice making the foundation of an
HTML `<form>`!



**1.**

In the `<section>` element, add a `<form>` element under the provided
comment. Assign the `<form>` with:

- an `action` attribute with a value of `"/practice.html"`
- a `method` attribute with a value of `"POST"`

**2.**

Right now we have a blank `<form>` on a burger site, let’s add some
context.

Add an `<h1>` inside the `<form>` element with text related to the site
between the opening and closing `<h1>` tags.

**3.**

Add some details to the form by inserting a `<p>` element below the
`<h1>` element. Write a relevant description within the `<p>` element.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>HTML Forms</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <!--Add your code below-->
      <form action="/practice.html" method="POST">
        <h1>Welcome to Davie's Burgers</h1>
        <p>We're excited to have you here!</p>
      </form>
    </section>
  </body>
</html>
```

## Text Input

If we want to create an input field in our `<form>`, we’ll need the help
of the <a
href="https://www.codecademy.com/resources/docs/html/elements/input?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<input\></code></a> element.

The `<input>` element has a `type` attribute which determines how it
renders on the web page and what kind of data it can accept.

The first value for the `type` attribute we’re going to explore is
`"text"`. When we create an `<input>` element with `type="text"`, it
renders a text field that users can type into. Note that the default
value of `type` is `"text"`. It’s also important that we include a
`name` attribute for the `<input>` — without the `name` attribute,
information in the `<input>` won’t be sent when the `<form>` is
submitted. We’ll explain more about submissions and the submit button in
a later exercise. For now, let’s examine the following code that
produces a text input field:

``` html
<form action="/example.html" method="POST">
  <input type="text" name="first-text-field">
</form>
```

Here’s a screen shot of how the rendered form looks like on a web page
for the Chrome browser (different browsers have different default
rendering). When initially loaded, it will be an empty box:

<img
src="https://content.codecademy.com/courses/learn-html-forms/textInput%20-%20unlabeled%20blank.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="rendered empty text field from input element type=&#39;text&#39;" />

After users type into the `<input>` element, the value of the `value`
attribute becomes what is typed into the text field. The value of the
`value` attribute is paired with the value of the `name` attribute and
sent as text when the form is submitted. For instance, if a user typed
in “important details” in the text field created by our `<input>`
element:

<img
src="https://content.codecademy.com/courses/learn-html-forms/textInput%20-%20unlabeled%20filled.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="rendered filled text field which reads &#39;important details&#39; " />

When the form is submitted, the text:
`"first-text-field=important details"` is sent to `/example.html`
because the value of the `name` attribute is `"first-text-field"` and
the value of `value` is `"important details"`.

We could also assign a default value for the `value` attribute so that
users have a pre-filled text field when they first see the rendered form
like so:

``` html
<form action="/example.html" method="POST">
  <input type="text" name="first-text-field" value="already pre-filled">
</form>
```

Which renders:

<img
src="https://content.codecademy.com/courses/learn-html-forms/textInput%20-%20unlabeled%20prefilled.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="pre-filled text box due to assigned `value` attribute" />

Time to put this knowledge into practice!



**1.**

Let’s start with creating a login form for our users.

Inside the provided `<form>` element, add an `<input>` element with a
`type` attribute of `"text"`.

**2.**

Even though we’re not submitting the form, let’s develop some good
habits by giving the `<input>` a `name` attribute with a value of
`"username"`.

**3.**

Let’s see what happens if we add a `value` attribute with a value of
`"Davie"`



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Adding a Text Input</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form>
                <h1>Login to start creating a burger!</h1>  
          <!--Add your code below-->
        <input type="text" name="username" value="Davie">

      </form>
    </section>
  </body>
</html>
```

## Adding a Label

In the previous exercise we created an `<input>` element but we didn’t
include anything to explain what the `<input>` is used for. For a user
to properly identify an `<input>` we use the appropriately named
`<label>` element.

The `<label>` element has an opening and closing tag and displays text
that is written between the opening and closing tags. To associate a
`<label>` and an `<input>`, the `<input>` needs an `id` attribute. We
then assign the `for` attribute of the `<label>` element with the value
of the `id` attribute of `<input>`, like so:

``` html
<form action="/example.html" method="POST">
  <label for="meal">What do you want to eat?</label>
  <br>
  <input type="text" name="food" id="meal">
</form>
```

The code above renders:

<img
src="https://content.codecademy.com/courses/learn-html-forms/label%20-%20text%20input.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="rendered form with labeled text field" />

Look, now users know what the `<input>` element is for! Another benefit
for using the `<label>` element is when this element is clicked, the
corresponding `<input>` is highlighted/selected.

Let’s see the `<label>` element in action!



**1.**

Add a `<label>` element that is associated with the included `<input>`
element in **index.html**. (use the `for` attribute!)

Then add text `Username` within the `<label>` element.

After clearing this checkpoint, click on the `Username` label in the web
browser to see the corresponding `<input>` field selected.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Labels</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form>
                <h1>Login to start creating a burger!</h1>
        <!--Add your code below-->
        <label for="username">Username</label>
        <input type="text" name="username" id="username">
      </form>
    </section>
  </body>
</html>
```

## Password Input

Think about all those times we have to put sensitive information, like a
password or PIN, into a `<form>`. We wouldn’t want our information to be
seen by anyone peeking over our shoulder! Luckily, we have the
`type="password"` attribute for `<input>`!

An `<input type ="password">` element will replace input text with
another character like an asterisk (\*) or a dot (•). The code below
provides an example of how to create a password field:

``` html
<form>
  <label for="user-password">Password: </label>
  <input type="password" id="user-password" name="user-password">
</form>
```

After a user types into the field, it would look like:

<img
src="https://content.codecademy.com/courses/learn-html-forms/pwInput%20-%20labeled%20filled.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="password field in a form with 6 dots showing text added to the field" />

Even though the password field obscures the text of the password, when
the form is submitted, the value of the text is sent. In other words, if
“hunter2” is typed into the password field, “user-password=hunter2” is
sent along with the other information on the form.



**1.**

To complete our login page in **index.html** we need a password field.
Add an `<input>` element under the second `<label>` element.

- Assign the `id` to the correct value to associate the second `<label>`
  with this new `<input>`.
- Set the newly created `<input>` element’s `type` attribute to
  `"password"`.
- Set the `name` attribute to `"user-pw"`.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Password Input</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form>
                <h1>Login to start creating a burger!</h1>
        <label for="username">Username:</label>
            <input type="text" name="username" id="username">
        <br>
        <label for="user-pw">Password:</label>
        <!--Add your code below-->
                <input id="user-pw" type="password" name="user-pw">
      </form>
    </section>
  </body>
</html>
```

## Number Input

We’ve now gone over two `type` attributes for `<input>` related to text.
But, we might want our users to type in a number — in which case we can
set the `type` attribute to… (you guessed it)… `"number"`!

By setting `type="number"` for an `<input>` we can restrict what users
type into the input field to just numbers (and a few special characters
like `-`, `+`, and `.`). We can also provide a `step` attribute which
creates arrows inside the input field to increase or decrease by the
value of the `step` attribute. Below is the code needed to render an
input field for numbers:

``` html
<form>
  <label for="years"> Years of experience: </label>
  <input id="years" name="years" type="number" step="1">
</form>
```

Which renders:

<img
src="https://content.codecademy.com/courses/learn-html-forms/numInput%20-%20labeled%20blank%20steps.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
style="border: 1px solid black;;width:100.0%"
alt="rendered number input field with arrows to the right hand side of the field" />

Now it’s time to apply this knowledge.



**1.**

In **index.html** we started a `<form>` for users to make a custom
burger. Right now we have a `<label>` for patties that needs an
associated `<input>` element.

Since we want users to enter a number, create an `<input>` and set the
attributes:

- Associate the `<input>` to the first `<label>` by assigning the
  correct value to `id`.
- `type="number"`
- `step="1"`
- `name` to `"amount"`.

**Note**: You may notice that we started adding `<section>`s and other
semantic HTML elements to help organize our `<form>` elements. If you
want to learn more about these elements, please take our <a
href="https://www.codecademy.com/courses/learn-html/lessons/semantic-html/exercises/introduction-to-semantic-html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Semantic HTML lesson</a>.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Range Input</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form>
        <h1>Create a burger!</h1>
                <section class="protein">
          <label for="patty">What type of protein would you like?</label>
                <input type="text" name="patty" id="patty" value="beef">
        </section>
        <hr>

        <section class="patties">
          <label for="amount">How many patties would you like?</label>
            <!--Add your code below-->
                    <input id="amount" type="number" step="1" name="amount">
          
        </section>
      </form>
    </section>
  </body>
</html>
```

## Range Input

Using an `<input type="number">` is great if we want to allow users to
type in any number of their choosing. But, if we wanted to limit what
numbers our users could type we might consider using a different `type`
value. Another option we could use is setting `type` to `"range"` which
creates a slider.

To set the minimum and maximum values of the slider we assign values to
the `min` and `max` attribute of the `<input>`. We could also control
how smooth and fluid the slider works by assigning the `step` attribute
a value. Smaller `step` values will make the slider move more fluidly,
whereas larger `step` values will make the slider move more noticeably.
Take a look at the code to create a slider:

``` html
<form>
  <label for="volume"> Volume Control</label>
  <input id="volume" name="volume" type="range" min="0" max="100" step="1">
</form>
```

The code above renders: <img
src="https://content.codecademy.com/courses/learn-html-forms/rangeInput%20-%20labeled.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="rendered slider for volume control" />

In the example above, every time the slider moves by one, the value of
the `<input>`’s `value` attribute changes.



**1.**

Let’s give our users an option for how they want to cook their patties.
We can do this by adding a slider to the existing `<form>`.

In the `<section>` with `class="cooked"`, add an `<input>` element. Set
the `id` and `name` to `"doneness"`. Also, set the `type` attribute to
`"range"`.

Since our `<form>` is getting long, you might have to scroll down to
find the provided `<section>`.

**2.**

For the newly created `<input>` set the:

- `min` attribute to `"0"`.
- `max` attribute to `"5"`.
- `step` attribute to `"0.5"`.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Range Input</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form>
        <h1>Create a burger!</h1>
                <section class="protein">
          <label for="patty">What type of protein would you like?</label>
                <input type="text" name="patty" id="patty">
        </section>
        <hr>
        <section class="patties">
          <label for="amount">How many patties would you like?</label>
          <input type="number" name="amount" id="amount">
        </section>
        <hr>
                
        <section class="cooked">
          <label for="doneness">How do you want your patty cooked</label>
          <br>
          <span>Rare</span>
               <!--Add your code below-->
          <input id="doneness" name="doneness" type="range" min="0" max="5" step="0.5">
          
          <span>Well-Done</span>
        </section>
        
      </form>
    </section>
  </body>
</html>
```

## Checkbox Input

So far the types of inputs we’ve allowed were all single choices. But,
what if we presented multiple options to users and allow them to select
any number of options? Sounds like we could use checkboxes! In a
`<form>` we would use the `<input>` element and set `type="checkbox"`.
Examine the code used to create multiple checkboxes:

``` html
<form>
  <p>Choose your pizza toppings:</p>
  <label for="cheese">Extra cheese</label>
  <input id="cheese" name="topping" type="checkbox" value="cheese">
  <br>
  <label for="pepperoni">Pepperoni</label>
  <input id="pepperoni" name="topping" type="checkbox" value="pepperoni">
  <br>
  <label for="anchovy">Anchovy</label>
  <input id="anchovy" name="topping" type="checkbox" value="anchovy">
</form>
```

Which renders: <img
src="https://content.codecademy.com/courses/learn-html-forms/checkboxInput%20-%20labeled.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="HTML form asking user to select pizza toppings and three topping selections as checkboxes" />

Notice in the example provided:

- there are assigned values to the `value` attribute of the checkboxes.
  These values are not visible on the form itself, that’s why it is
  important that we use an associated `<label>` to identify the
  checkbox.
- each `<input>` has the same value for the `name` attribute. Using the
  same `name` for each checkbox groups the `<input>`s together. However,
  each `<input>` has a unique `id` to pair with a `<label>`.

Alright, time to use checkboxes in our code!



**1.**

Time to add some toppings! In the `<section>` with `class="toppings"`,
there are two `<label>`s but no associated `<input>` elements. Add an
`<input>` element associated with the first `<label>`.

The created `<input>` should have:

- an `id` set to `"lettuce"`.
- a `name` attribute with a value of `"topping"`.
- a `type` set to `"checkbox"`
- a `value` of `"lettuce"`.

**2.**

Add another `<input>` element and associate it with the second
`<label>`.

The `<input>` element should have:

- an `id` set to `"tomato"`.
- a `type` set to `"checkbox"`.
- a `name` attribute with a value of `"topping"`.
- a `value` of `"tomato"`.

**3.**

Two choices are good, but it would be better to have even more.

Add another `<input type="checkbox">` and `<label>` pair. Assign the
`name` of the `<input>` to `"topping"`. You’re free to decide the
`value` and `id` but make sure that your new `<label>` and `<input>` are
associated.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Checkbox Input</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form>
        <h1>Create a burger!</h1>
        <section class="protein">
          <label for="patty">What type of protein would you like?</label>
                <input type="text" name="patty" id="patty">
        </section>
        <hr>
        <section class="patties">
          <label for="amount">How many patties would you like?</label>
          <input type="number" name="amount" id="amount">
        </section>
        <hr>
        <section class="cooked">
          <label for="doneness">How do you want your patty cooked</label>
          <br>
          <span>Rare</span>
          <input type="range" name="doneness" id="doneness" value="3" min="1" max="5">
          <span>Well-Done</span>
        </section>
        <hr>
        
        <section class="toppings">
          <span>What toppings would you like?</span>
          <br>
          <!--Add your code below for the first checkbox-->
                    <input id="lettuce" name="topping" type="checkbox" value="lettuce">
                    <label for="lettuce">Lettuce</label>
          <!--Add your code below for the second checkbox-->
                    <input id="tomato" name="topping" type="checkbox" value="tomato">
          <label for="tomato">Tomato</label>
          <!--Add your code below for the third checkbox-->
                    <input id="onion" name="topping" type="checkbox" value="onion">
          <label for="onion">Onion</label>
        </section>
        
      </form>
    </section>
  </body>
</html>
```

## Radio Button Input

Checkboxes work well if we want to present users with multiple options
and let them choose one or more of the options. However, there are cases
where we want to present multiple options and only allow for one
selection — like asking users if they agree or disagree with the terms
and conditions. Let’s look over the code used to create radio buttons:

``` html
<form>
  <p>What is sum of 1 + 1?</p>
  <input type="radio" id="two" name="answer" value="2">
  <label for="two">2</label>
  <br>
  <input type="radio" id="eleven" name="answer" value="11">
  <label for="eleven">11</label>
</form>
```

Which renders:

<img
src="https://content.codecademy.com/courses/learn-html-forms/radioInput%20-%20labeled.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="rendered form containing radio buttons" />

Notice from the code snippet, radio buttons (like checkboxes) do not
display their value. We have an associated `<label>` to represent the
value of the radio button. To group radio buttons together, we assign
them the same `name` and only one radio button from that group can be
selected.

Let’s see this in action by creating our own radio buttons.



**1.**

We can give our users the option to make the burger into a cheeseburger.
Let’s use radio buttons for that.

In `<section>` element with a `class` of `"cheesy"` there are two
`<label>`s that don’t have associated `<input>` elements. Add an
`<input>` element associated with the first `<label>`.

The created `<input>` should have:

- an `id` set to `"yes"`.
- a `type` set to `"radio"`.
- a `name` attribute with a value of `"cheese"`.
- a `value` of `"yes"`.

**2.**

Awesome, now add another `<input>` element to give users another choice.
The created `<input>` should have:

- an `id` set to `"no"`.
- a `type` set to `"radio"`.
- a `name` attribute with a value of `"cheese"`.
- a `value` of `"no"`.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Radio Input</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form>
        <h1>Create a burger!</h1>
        <section class="protein">
          <label for="patty">What type of protein would you like?</label>
                <input type="text" name="patty" id="patty">
        </section>
        <hr>
        <section class="patties">
          <label for="amount">How many patties would you like?</label>
          <input type="number" name="amount" id="amount">
        </section>
        <hr>
        <section class="cooked">
          <label for="doneness">How do you want your patty cooked</label>
          <br>
          <span>Rare</span>
          <input type="range" name="doneness" id="doneness" value="3" min="1" max="5">                          
          <span>Well-Done</span>
        </section>
        <hr>
        <section class="toppings">
          <span>What toppings would you like?</span>
          <br>
          <input type="checkbox" name="topping" id="lettuce" value="lettuce">
          <label for="lettuce">Lettuce</label>
          <input type="checkbox" name="topping" id="tomato" value="tomato">
          <label for="tomato">Tomato</label>
          <input type="checkbox" name="topping" id="onion" value="onion">
          <label for="onion">Onion</label>
        </section>
        <hr>

        <section class="cheesy">
          <span>Would you like to add cheese?</span>
          <br>
            <!--Add your first radio button below-->
                    <input id="yes" name="cheese" type="radio" value="yes">
          <label for="yes">Yes</label>
            <!--Add your second radio button below-->
          <input id="no" name="cheese" type="radio" value="no">
          <label for="no">No</label>
        </section>
        
      </form>
    </section>
  </body>
</html>
```

## Dropdown list

Radio buttons are great if we want our users to pick one option out of a
few visible options, but imagine if we have a whole list of options!
This situation could quickly lead to a lot of radio buttons to keep
track of.

An alternative solution is to use a dropdown list to allow our users to
choose one option from an organized list. Here’s the code to create a
dropdown menu:

``` html
<form>
  <label for="lunch">What's for lunch?</label>
  <select id="lunch" name="lunch">
    <option value="pizza">Pizza</option>
    <option value="curry">Curry</option>
    <option value="salad">Salad</option>
    <option value="ramen">Ramen</option>
    <option value="tacos">Tacos</option>
  </select>
</form>
```

Which renders: <img
src="https://content.codecademy.com/courses/learn-html-forms/dropdown%20list%20-%20concealed.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="rendered dropdown list with the first option showing" />

And if we click on the field containing the first option, the list is
revealed: <img
src="https://content.codecademy.com/courses/learn-html-forms/dropdown%20list%20-%20revealed.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="rendered dropdown list with the all options showing" />

Notice in the code that we’re using the element `<select>` to create the
dropdown list. To populate the dropdown list, we add multiple `<option>`
elements, each with a `value` attribute. By default, only one of these
options can be selected.

The text rendered is the text included between the opening and closing
`<option>` tags. However, it is the value of the `value` attribute that
is used in `<form>` submission (notice the difference in the text and
`value` capitalization). When the `<form>` is submitted, the information
from this input field will be sent using the `name` of the `<select>`
and the `value` of the chosen `<option>`. For instance, if a user
selected Pizza from the dropdown list, the information would be sent as
`"lunch=pizza"`.



**1.**

Let’s now give our users a choice of buns using a dropdown list.

In `<section>` element with a `class` of `"bun-type"` there is a
`<label>` that we can associate a `<select>` element with.

Add a `<select>` element with a name of `"bun"` and an `id` of `"bun"`.

**2.**

Inside the `<select>` element, add 3 `<option>`s.

- The first `<option>` should have a value of `"sesame"` and display the
  text `Sesame` on the webpage.
- The second `<option>` should have a value of `"potato"` and display
  the text `Potato` on the webpage.
- The third `<option>` can be a value that you choose and display text
  relevant to the value (make sure it’s not empty!)



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Dropdown List</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form>
        <h1>Create a burger!</h1>
        <section class="protein">
          <label for="patty">What type of protein would you like?</label>
                <input type="text" name="patty" id="patty">
        </section>
        <hr>
  <section class="patties">
          <label for="amount">How many patties would you like?</label>
          <input type="number" name="amount" id="amount">
        </section>
        <hr>
        <section class="cooked">
          <label for="doneness">How do you want your patty cooked</label>
          <br>
          <span>Rare</span>
          <input type="range" name="doneness" id="doneness" value="3" min="1" max="5">
          <span>Well-Done</span>
        </section>
        <hr>
        <section class="toppings">
          <span>What toppings would you like?</span>
          <br>
          <input type="checkbox" name="topping" id="lettuce" value="lettuce">
          <label for="lettuce">Lettuce</label>
          <input type="checkbox" name="topping" id="tomato" value="tomato">
          <label for="tomato">Tomato</label>
          <input type="checkbox" name="topping" id="onion" value="onion">
          <label for="onion">Onion</label>
        </section>
        <hr>
        <section class="cheesy">
          <span>Would you like to add cheese?</span>
          <br>
          <input type="radio" name="cheese" id="yes" value="yes">
          <label for="yes">Yes</label>
          <input type="radio" name="cheese" id="no" value="yes">
          <label for="no">No</label>
        </section>
        <hr>

        <section class="bun-type">
                    <label for="bun">What type of bun would you like?</label>
          <!--Add your code below-->
          <select id="bun" name="bun">
            <option value="sesame">Sesame</option>
            <option value="potato">Potato</option>
            <option value="pretzel">Pretzel</option>
          </select>
          
        </section>
        
      </form>
    </section>
  </body>
</html>
```

## Datalist Input

Even if we have an organized dropdown list, if the list has a lot of
options, it could be tedious for users to scroll through the entire list
to locate one option. That’s where using the `<datalist>` element comes
in handy.

The `<datalist>` is used with an `<input type="text">` element. The
`<input>` creates a text field that users can type into and filter
options from the `<datalist>`. Let’s go over a concrete example:

``` html
<form>
  <label for="city">Ideal city to visit?</label>
  <input type="text" list="cities" id="city" name="city">
 
  <datalist id="cities">
    <option value="New York City"></option>
    <option value="Tokyo"></option>
    <option value="Barcelona"></option>
    <option value="Mexico City"></option>
    <option value="Melbourne"></option>
    <option value="Other"></option>  
  </datalist>
</form>
```

Notice, in the code above, we have an `<input>` that has a `list`
attribute. The `<input>` is associated to the `<datalist>` via the
`<input>`’s `list` attribute and the `id` of the `<datalist>`.

From the code provided, the following form is rendered: <img
src="https://content.codecademy.com/courses/learn-html-forms/datalist%20-%20concealed.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="input field with a label &#39;Ideal city to visit?&#39;" />

And when field is selected: <img
src="https://content.codecademy.com/courses/learn-html-forms/datalist%20-%20revealed.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="clicking on the input field reveals a dropdown list" />

While `<select>` and `<datalist>` share some similarities, there are
some major differences. In the associated `<input>` element, users can
type in the input field to search for a particular option. If none of
the `<option>`s match, the user can still use what they typed in. When
the form is submitted, the value of the `<input>`’s `name` and the
`value` of the option selected, or what the user typed in, is sent as a
pair.

Now it’s time to make a `<datalist>` of our own!



**1.**

Time to add some sauce! Users might get creative with what sauce they
choose to put, so let’s use the `<datalist>` element.

In `<section>` element with a `class` of `"sauce-selection"`, we already
have the `<label>` and `<input>` set up. Add a `<datalist>` element with
an `id` of `"sauces"`.

**2.**

Inside the `<datalist>` element, add 3 `<option>`s.

- The first `<option>` should have a value of `"ketchup"`.
- The second `<option>` should have a value of `"mayo"`.
- The third `<option>` can be a value that you choose and display text
  relevant to the value (make sure it’s not empty!)



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Radio Input</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form>
        <h1>Create a burger!</h1>
        <section class="protein">
          <label for="patty">What type of protein would you like?</label>
                <input type="text" name="patty" id="patty" value="beef">
        </section>
        <hr>
        <section class="patties">
          <label for="amount">How many patties would you like?</label>
          <input type="number" name="amount" value="2" id="amount">
        </section>
        <hr>
        <section class="cooked">
          <label for="doneness">How do you want your patty cooked</label>
          <br>
          <span>Rare</span>
          <input type="range" name="doneness" id="doneness" value="3" min="1" max="5">
          <span>Well-Done</span>
        </section>
        <hr>
        <section class="toppings">
          <span>What toppings would you like?</span>
          <br>
          <input type="checkbox" name="topping" id="lettuce" value="lettuce">
          <label for="lettuce">Lettuce</label>
          <input type="checkbox" name="topping" id="tomato" value="tomato">
          <label for="tomato">Tomato</label>
          <input type="checkbox" name="topping" id="onion" value="onion">
          <label for="onion">Onion</label>
        </section>
        <hr>
        <section class="cheesy">
          <span>Would you like to add cheese?</span>
          <br>
          <input type="radio" name="cheese" id="yes" value="yes">
          <label for="yes">Yes</label>
          <input type="radio" name="cheese" id="no" value="yes">
          <label for="no">No</label>
        </section>
        <hr>
        <section class="bun-type">
          <label for="bun">What type of bun would you like?</label>
          <select name="bun" id="bun">
            <option value="sesame">Sesame</option>
            <option value="potato">Potato</option>
            <option value="pretzel">Pretzel</option>
          </select>
        </section>
        <hr>

        <section class="sauce-selection">
                    <label for="sauce">What type of sauce would you like?</label>
          <input type="text" list="sauces" id="sauce" name="sauce">
          <!--Add your code below-->
                    <datalist id="sauces">
            <option value="ketchup"></option>
            <option value="mayo"></option>
            <option value="mustard"></option>
          </datalist>
        </section>

      </form>
    </section>
  </body>
</html>
```

## Textarea element

An `<input>` element with `type="text"` creates a single row input field
for users to type in information. However, there are cases where users
need to write in more information, like a blog post. In such cases,
instead of using an `<input>`, we could use `<textarea>`.

The `<textarea>` element is used to create a bigger text field for users
to write more text. We can add the attributes `rows` and `cols` to
determine the amount of rows and columns for the `<textarea>`. Take a
look:

``` html
<form>
  <label for="blog">New Blog Post: </label>
  <br>
  <textarea id="blog" name="blog" rows="5" cols="30">
  </textarea>
</form>
```

In the code above, an empty `<textarea>` that is 5 rows by 30 columns is
rendered to the page like so:

<img
src="https://content.codecademy.com/courses/learn-html-forms/textarea%20-%20blank.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="rendered empty textarea element" />

If we wanted an even bigger text field, we could click and drag on the
bottom right corner to expand it.

When we submit the form, the value of `<textarea>` is the text written
inside the box. If we want to add a default value to `<textarea>` we
would include it within the opening and closing tags like so:

``` html
<textarea>Adding default text</textarea>
```

This code will render a `<textarea>` that contains pre-filled text:
“Adding default text”.

But don’t just take our word for it, let’s test it out!



**1.**

We covered a lot of options but users might still have other ideas.
Let’s make use of a `<textarea>` element to give users more freedom.

In `<section>` element with a `class` of `"extra-info"`, we have
provided a `<label>` element. Add a `<textarea>` with the following
attributes:

- `id` and `name` set to `"extra"`
- `rows` set to `"3"`
- `cols` set to `"40"`

**2.**

Now add some default text to the created `<textarea>`. You may add any
text you want, but it cannot be blank!



``` javascript
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Textarea element</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form action="submission.html" method="POST">
        <h1>Create a burger!</h1>
                <section class="protein">
          <label for="patty">What type of protein would you like?</label>
                <input type="text" name="patty" id="patty">
        </section>
        <hr>
        <section class="patties">
          <label for="amount">How many patties would you like?</label>
          <input type="number" name="amount" id="amount">
        </section>
        <hr>
        <section class="cooked">
          <label for="doneness">How do you want your patty cooked</label>
          <br>
          <span>Rare</span>
          <input type="range" name="doneness" id="doneness" value="3" min="1" max="5">
          <span>Well-Done</span>
        </section>
        <hr>
        <section class="toppings">
          <span>What toppings would you like?</span>
          <br>
          <input type="checkbox" name="topping" id="lettuce" value="lettuce">
          <label for="lettuce">Lettuce</label>
          <input type="checkbox" name="topping" id="tomato" value="tomato">
          <label for="tomato">Tomato</label>
          <input type="checkbox" name="topping" id="onion" value="onion">
          <label for="onion">Onion</label>
        </section>
        <hr>
        <section class="cheesy">
          <span>Would you like to add cheese?</span>
          <br>
          <input type="radio" name="cheese" id="yes" value="yes">
          <label for="yes">Yes</label>
          <input type="radio" name="cheese" id="no" value="yes">
          <label for="no">No</label>
        </section>
        <hr>
        <section class="bun-type">
          <label for="bun">What type of bun would you like?</label>
          <select name="bun" id="bun">
            <option value="sesame">Sesame</option>
            <option value="potatoe">Potato</option>
            <option value="pretzel">Pretzel</option>
          </select>
        </section>
        <hr>
        <section class="sauce-selection">
          <label for="sauce">What type of sauce would you like?</label>
          <input list="sauces" id="sauce" name="sauce">
          <datalist id="sauces">
            <option value="ketchup"></option>
            <option value="mayo"></option>
            <option value="mustard"></option>
          </datalist>
        </section>
        <hr>

        <section class="extra-info">
          <label for="extra">Anything else you want to add?</label>
          <br>
          <!--Add your code below-->
          <textarea id="extra" name="extra" rows="3" cols="40">No plastic utensils please!</textarea>
          
        </section>
        
      </form>
    </section>
  </body>
</html>
```

## Submit Form

Remember, the purpose of a form is to collect information that will be
submitted. That’s the role of the submit button — users click on it when
they are finished with filling out information in the `<form>` and
they’re ready to send it off. Now that we’ve gone over how to create
various input elements, let’s now go over how to create a submit button!

To make a submit button in a `<form>`, we’re going to use the reliable
`<input>` element and set the `type` to `"submit"`. For instance:

``` html
<form>
  <input type="submit" value="Send">
</form>
```

Which renders:

<img
src="https://content.codecademy.com/courses/learn-html-forms/submit%20button2.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="border: 1px solid black;"
alt="rendered submit button" />

Notice in the code snippet that the `value` assigned to the `<input>`
shows up as text on the submit button. If there isn’t a `value`
attribute, the default text, `Submit` shows up on the button.

Let’s now add this element to make our `<form>`s complete!



**1.**

At the bottom of the `<form>` inside the element
`<section class="submission">`, add a submit button using the `<input>`
element.

The text inside the submit button should read: `Submit`.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Textarea element</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form action="submission.html" method="POST">
        <h1>Create a burger!</h1>
                    <section class="protein">
          <label for="patty">What type of protein would you like?</label>
                <input type="text" name="patty" id="patty">
        </section>
        <hr>
        <section class="patties">
          <label for="amount">How many patties would you like?</label>
          <input type="number" name="amount" id="amount">
        </section>
        <hr>
        <section class="cooked">
          <label for="doneness">How do you want your patty cooked</label>
          <br>
          <span>Rare</span>
          <input type="range" name="doneness" id="doneness" value="3" min="1" max="5">
          <span>Well-Done</span>
        </section>
        <hr>
        <section class="toppings">
          <span>What toppings would you like?</span>
          <br>
          <input type="checkbox" name="topping" id="lettuce" value="lettuce">
          <label for="lettuce">Lettuce</label>
          <input type="checkbox" name="topping" id="tomato" value="tomato">
          <label for="tomato">Tomato</label>
          <input type="checkbox" name="topping" id="onion" value="onion">
          <label for="onion">Onion</label>
        </section>
        <hr>
        <section class="cheesy">
          <span>Would you like to add cheese?</span>
          <br>
          <input type="radio" name="cheese" id="yes" value="yes">
          <label for="yes">Yes</label>
          <input type="radio" name="cheese" id="no" value="yes">
          <label for="no">No</label>
        </section>
        <hr>
        <section class="bun-type">
          <label for="bun">What type of bun would you like?</label>
          <select name="bun" id="bun">
            <option value="sesame">Sesame</option>
            <option value="potatoe">Potato</option>
            <option value="pretzel">Pretzel</option>
          </select>
        </section>
        <hr>
        <section class="sauce-selection">
          <label for="sauce">What type of sauce would you like?</label>
          <input list="sauces" id="sauce" name="sauce">
          <datalist id="sauces">
            <option value="ketchup"></option>
            <option value="mayo"></option>
            <option value="mustard"></option>
          </datalist>
        </section>
        <hr>
        <section class="extra-info">
          <label for="extra">Anything else you want to add?</label>
          <br>
          <textarea id="extra" name="extra" rows="3" cols="40"></textarea>
        </section>
        <hr>

        <section class="submission">
          <!--Add your code below-->
          <input type="submit" value="Submit">
        </section>
        
      </form>
    </section>
  </body>
</html>
```

## Review

Nice work interacting with the extremely common and useful `<form>`
element!

In this lesson we went over:

- The purpose of a `<form>` is to allow users to input information and
  send it.
- The `<form>`’s `action` attribute determines where the form’s
  information goes.
- The `<form>`’s `method` attribute determines how the information is
  sent and processed.
- To add fields for users to input information we use the `<input>`
  element and set the `type` attribute to a field of our choosing:
  - Setting `type` to `"text"` creates a single row field for text
    input.
  - Setting `type` to `"password"` creates a single row field that
    censors text input.
  - Setting `type` to `"number"` creates a single row field for number
    input.
  - Setting `type` to `"range"` creates a slider to select from a range
    of numbers.
  - Setting `type` to `"checkbox"` creates a single checkbox that can be
    paired with other checkboxes.
  - Setting `type` to `"radio"` creates a radio button that can be
    paired with other radio buttons.
  - Setting `type` to `"text"` and adding the `list` attribute will pair
    the `<input>` with a `<datalist>` element if the `list` of `<input>`
    and the `id` of `<datalist>` are the same.
  - Setting `type` to `"submit"` creates a submit button.
- A `<select>` element is populated with `<option>` elements and renders
  a dropdown list selection.
- A `<datalist>` element is populated with `<option>` elements and works
  with an `<input>` to search through choices.
- A `<textarea>` element is a text input field that has a customizable
  area.
- When a `<form>` is submitted, the `name` of the fields that accept
  input and the `value` of those fields are sent as `name=value` pairs.

Using the `<form>` element in conjunction with the other elements listed
above allows us to create sites that take into consideration the wants
and needs of our users. Take the opportunity to take what you’ve
learned, and apply it!



If you want to challenge yourself:

- Create a form with multiple fields that accept user input.
- Add two separate sets of radio buttons or checkboxes.
- Search how to add *placeholder* (hint hint) to an input field. A
  placeholder shows ups when the field has no `value`, it disappears
  after the user types or selects something in the field.



``` javascript
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Forms Review</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <form action="submission.html" method="POST">
                <h1>Create a burger!</h1>
        <section class="protein">
          <label for="patty">What type of protein would you like?</label>
                <input type="text" name="patty" id="patty">
        </section>
        <hr>
        
        <section class="patties">
          <label for="amount">How many patties would you like?</label>
          <input type="number" name="amount" id="amount">
        </section>
        <hr>
        
        <section class="cooked">
          <label for="doneness">How do you want your patty cooked</label>
          <br>
          <span>Rare</span>
          <input type="range" name="doneness" id="doneness" value="3" min="1" max="5">
          <span>Well-Done</span>
        </section>
        <hr>
        
        <section class="toppings">
          <span>What toppings would you like?</span>
          <br>
          <input type="checkbox" name="topping" id="lettuce" value="lettuce">
          <label for="lettuce">Lettuce</label>
          <input type="checkbox" name="topping" id="tomato" value="tomato">
          <label for="tomato">Tomato</label>
          <input type="checkbox" name="topping" id="onion" value="onion">
          <label for="onion">Onion</label>
        </section>
        <hr>
        
        <section class="cheesy">
          <span>Would you like to add cheese?</span>
          <br>
          <input type="radio" name="cheese" id="yes" value="yes">
          <label for="yes">Yes</label>
          <input type="radio" name="cheese" id="no" value="yes">
          <label for="no">No</label>
        </section>
        <hr>
       
        <section class="bun-type">
          <label for="bun">What type of bun would you like?</label>
          <select name="bun" id="bun">
            <option value="sesame">Sesame</option>
            <option value="potatoe">Potato</option>
            <option value="pretzel">Pretzel</option>
          </select>
        </section>
        <hr>
        
        <section class="sauce-selection">
          <label for="sauce">What type of sauce would you like?</label>
          <input list="sauces" id="sauce" name="sauce">
          <datalist id="sauces">
            <option value="ketchup"></option>
            <option value="mayo"></option>
            <option value="mustard"></option>
          </datalist>
        </section>
        <hr>
        <section class="extra-info">
          <label for="extra">Anything else you want to add?</label>
          <br>
          <textarea id="extra" name="extra" rows="3" cols="40"></textarea>
        </section>
        <hr>

        <section class="submission">
          <input type="submit" value="Submit">
        </section>
      </form>
    </section>
  </body>
</html>
```

``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
    <title>Forms Review</title>
  </head>
  <body>
    <section id="overlay">
      <img src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg" alt="Davie's Burgers Logo" id="logo">
      <hr>
      <h1>Thanks for your submission!</h1>
      <img id="burger" src="https://content.codecademy.com/courses/learn-html-forms/burger.svg" alt="finished burger">
    </section>
  </body>
</html>
```

``` css
body {
  background-color: rgb(57, 169, 219);
  font-family: Rubik, Arial;
}

form {
  text-align: center;
  line-height: 30px;
  height: 80%;
  overflow: auto;
}

form hr {
  width: 15%;
}

h1 {
  text-align: center;
}

#burger {
  max-height: 30%;
}

#overlay {
  width: 80%;
  margin: 3% auto;
  height: 95vh;
  background-color: rgba(255, 255, 255, 0.9);
  border-radius: 40px;
}

#logo {
  height: 100px;
  display: block;
  margin: auto;
}


.toppings label, .cheesy label {
  margin-right: 25px;
}
```

``` javascript
console.log = () => {}
const { expect } = require('chai');
const rewire = require('rewire');
const Vue = require('vue');

describe('', function () {
    it('', function () {
        let appModule = rewire("../js/app.js");
        let vueApp = appModule.__get__("app");
        expect(vueApp).to.exist();
    });
});
```

# Form Validation

## Introduction to HTML Form Validation

Ever wonder how a login page actually works? Or why the combination of a
username and password grants you access to a website? The answers lie in
*validation*. Validation is the concept of checking user provided data
against the required data.

There are different types of validation. One type is *server-side
validation*, this happens when data is sent to another machine
(typically a server) for validation. An example of this type of
validation is the usage of a login page. The form on the login page
accepts username and password input, then sends the data to a server
that checks that the pair matches up correctly.

On the other hand, we use *client-side validation* if we want to check
the data on the browser (the client). This validation occurs before data
is sent to the server. Different browsers implement client-side
validation differently, but it leads to the same outcome.

Shared among the different browsers are the benefits of using HTML5’s
built-in client-side validation. It saves us time from having to send
information to the server and wait for the server to send back
confirmation or rejection of the data. This can also help us protect our
server from malicious code or data from a malicious user. It also allows
us to quickly give feedback to users for specific fields rather than
having them fill in a form again if the data they input into the form
was rejected.

In this lesson, we’ll learn how to add some validation checks to our
`<form>`s!



Press **Next** to get started on validations.



<img alt="Login Page" src="https://content.codecademy.com/courses/learn-html-forms/form%20validation.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Requiring an Input

Sometimes we have fields in our `<form>`s which are not optional, i.e.
there must be information provided before we can submit it. To enforce
this rule, we can add the `required` attribute to an `<input>` element.

Take for example:

``` html
<form action="/example.html" method="POST">
  <label for="allergies">Do you have any dietary restrictions?</label>
  <br>
  <input id="allergies" name="allergies" type="text" required>
  <br>
  <input type="submit" value="Submit">
</form>
```

This renders a text box, and if we try to submit the `<form>` without
filling it out we get this message:

<img
src="https://content.codecademy.com/courses/learn-html-forms/required%20field.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="message pop up prompting user to fill in the field" />

The styling of the message varies from browser to browser, the picture
above depicts the message in a Chrome browser. We’ll also continue to
show these messages as they appear in Chrome in later exercises.

Let’s see how it shows up in your browser!



**1.**

Currently, in the provided `<form>`, the user can submit it without
putting any values inside the input field.

Let’s change that by adding a `required` attribute to the existing
`<input>`.

After you clear this checkpoint, try submitting the `<form>` without
filling out the fields.



``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Number Guessing</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Spicy+Rice" rel="stylesheet">
  </head>
  <body>
    <section class="overlay">
      <h1>Guess the right number!</h1>
      <form action="check.html" method="GET">
        <!--Add a required attribute to the input element-->
        <label for="guess">Enter a number between 1-10:</label>
        <br>
        <input type="number" name="guess" id="guess" required>
        <br>
        <input type="submit" id="submission" value="Submit">
      </form>
    </section>
  </body>
</html>
```

``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Required</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Spicy+Rice" rel="stylesheet">
    <script type="text/javascript" src="numCheck.js" defer></script>
  </head>
  <body>
    <section class="overlay">
      <h1 id="check"></h1>
      <a href="index.html">Go back</a>
    </section>
  </body>
</html>
```

``` css
body {
  background-color: #59CD90;
  color: #3FA7D6;
  font-family: Arial;
}

form {
  line-height: 25px;
}

h1 {
  font-family: Spicy Rice, Arial;
  font-size: 5em;
  overflow: break;
}

.overlay {
  width: 80%;
  min-width: 30%;
  margin: 3% auto;
  display: block;
  padding: 2%;
  height: 90vh;
  background-color: rgba(255, 255, 255, 0.9);
  border-radius: 40px;
  text-align: center;
}
```

``` javascript
const check = document.getElementById('check');
const guess = new URLSearchParams(window.location.search);
const num = guess.get('guess');
// const randomNum = Math.floor(Math.random() * 10) + 1;

if(num === "3"){
  check.innerHTML = 'You guessed correctly!';
} else {
  check.innerHTML = `Try again...`;
}
```

``` javascript
console.log = () => {}
const { expect } = require('chai');
const rewire = require('rewire');
const Vue = require('vue');

describe('', function () {
    it('', function () {
        let appModule = rewire("../js/app.js");
        let vueApp = appModule.__get__("app");
        expect(vueApp).to.exist();
    });
});
```

## Set a Minimum and Maximum

Another built-in validation we can use is to assign a minimum or maximum
value for a number field, e.g. `<input type="number">` and
`<input type="range">`. To set a minimum acceptable value, we use the
`min` attribute and assign a value. On the flip side, to set a maximum
acceptable value, we assign the `max` attribute a value. Let’s see this
in code:

``` html
<form action="/example.html" method="POST">
  <label for="guests">Enter # of guests:</label>
  <input id="guests" name="guests" type="number" min="1" max="4">
  <input type="submit" value="Submit">
</form>
```

If a user tries to submit an input that is less than 1 a warning will
appear: <img
src="https://content.codecademy.com/courses/learn-html-forms/min%20max%20attr.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="prompt on a number field for user to input a value greater than or equal to 1" />

A similar message will appear if a user tries to input a number greater
than 4. Let’s now see this action.



**1.**

Time to enforce the rules of the guessing game.

In the opening `<input>` tag, set:

- The `min` attribute to `"1"`
- The `max` attribute to `"10"`



``` javascript
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Number Guessing</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Spicy+Rice" rel="stylesheet">
  </head>
  <body>
    <section class="overlay">
      <h1>Guess the right number!</h1>
      <form action="check.html" method="GET">
        <label for="guess">Enter a number between 1-10:</label>
        <br>
        <!--Add the min and max attribute to the input-->
        <input type="number" name="guess" id="guess" required min="1" max="10">
        <br>
        <input type="submit" id="submission" value="Submit">
      </form>
    </section>
  </body>
</html>
```

## Checking Text Length

In the previous exercise, we were able to use `min` and `max` to set
acceptable minimum and maximum values in a number field. But what about
text fields? There are certainly cases where we wouldn’t want our users
typing more than a certain number of characters (think about the
character cap for messages on Twitter). We might even want to set a
minimum number of characters. Conveniently, there are built-in HTML5
validations for these situations.

To set a minimum number of characters for a text field, we add the
`minlength` attribute and a value to set a minimum value. Similarly, to
set the maximum number of characters for a text field, we use the
`maxlength` attribute and set a maximum value. Let’s take a look at
these attributes in code:

``` html
<form action="/example.html" method="POST">
  <label for="summary">Summarize your feelings in less than 250 characters</label>
  <input id="summary" name="summary" type="text" minlength="5" maxlength="250" required>
  <input type="submit" value="Submit">
</form>
```

If a user tries to submit the `<form>` with less than the set minimum,
this message appears:

<img
src="https://content.codecademy.com/courses/learn-html-forms/minlength.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="prompt on a number field for user to length the input" />

And if a user tries to type in more than the maximum allowed number of
characters, they don’t get a warning message, but they can’t type it in!

Let’s add this validation to our `<form>`.



**1.**

For the login `<form>`, we want our users to have usernames that are at
least 3 characters and at most 15. Let’s add this validation to our
current `<form>`.

To the `<input>` with an `id` of `"username"`, add the following
attributes and values:

- a `minlength` of `"3"`
- a `maxlength` of `"15"`

**2.**

We also want passwords to have at least 8 characters and at most 15.

So, in the opening `<input>` tag that has an `id` of `"pw"`, add:

- a `minlength` of `"8"`
- a `maxlength` of `"15"`



``` javascript
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sign Up Page</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
  </head>
  <body>
    <section class="overlay">
      <h1>Sign Up</h1>
      <p>Create an account:</p>
      <form action="submission.html" method="GET">
        <!--Add the minlength and maxlength attributes to the input fields-->
        <label for="username">Username:</label>
        <br>
        <input id="username" name="username" type="text" required minlength="3" maxlength="15">
        <br>
        <label for="pw">Password:</label>
        <br>
        <input id="pw" name="pw" type="password" required minlength="8" maxlength="15">
        <br>
        <input type="submit" value="Submit">
      </form>
    </section>
  </body>
</html>
```

## Matching a Pattern

In addition to checking the length of a text, we could also add a
validation to check how the text was provided. For cases when we want
user input to follow specific guidelines, we use the `pattern` attribute
and assign it a *regular expression*, or regex. Regular expressions are
a sequence of characters that make up a search pattern. If the input
matches the regex, the form can be submitted.

Let’s say we wanted to check for a valid credit card number (a 14 to 16
digit number). We could use the regex: `[0-9]{14,16}` which checks that
the user provided only numbers and that they entered at least 14 digits
and at most 16 digits.

To add this to a form:

``` html
<form action="/example.html" method="POST">
  <label for="payment">Credit Card Number (no spaces):</label>
  <br>
  <input id="payment" name="payment" type="text" required pattern="[0-9]{14,16}">
  <input type="submit" value="Submit">
</form>
```

With the `pattern` in place, users can’t submit the `<form>` with a
number that doesn’t follow the regex. When they try, they’ll see a
validation message like so:

<img
src="https://content.codecademy.com/courses/learn-html-forms/pattern.png"
class="img__1JGFO2nlisObc3KeOSGPRp" style="width:100.0%"
alt="message prompting user to follow the requested format" />

If you want to find out more about Regex, read more at the <a
href="https://www.codecademy.com/resources/docs/javascript/regexp?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Docs RegEx</a> entry.

To see it in practice, let’s use the `pattern` attribute in our HTML!



**1.**

We might also want to limit usernames to only letters and numbers (and
not special characters like ! or @).

To add this validation, add a `pattern` attribute and set it to:
`"[a-zA-Z0-9]+"` in the first `<input>` element.



``` javascript
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sign Up Page</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
  </head>
  <body>
    <section class="overlay">
            <h1>Sign Up</h1>
      <p>Create an account:</p>
      <form action="submission.html" method="GET">
        <label for="username">Username:</label>
        <br>
                <!--Add the pattern attribute to the input below-->
                <input id="username" name="username" type="text" required minlength="3" maxlength="15" pattern="[a-zA-Z0-9]+">
        <br>
        <label for="pw">Password:</label>
        <br>
                <input id="pw" name="pw" type="password" required minlength="8" maxlength="15">
        <br>
        <input type="submit" value="Submit">
      </form>
    </section>
  </body>
</html>
```

## Review

Awesome job adding client-side validation to `<form>`s!

Let’s quickly recap:

- Client-side validations happen in the browser before information is
  sent to a server.
- Adding the `required` attribute to an input related element will
  validate that the input field has information in it.
- Assigning a value to the `min` attribute of a number input element
  will validate an acceptable minimum value.
- Assigning a value to the `max` attribute of a number input element
  will validate an acceptable maximum value.
- Assigning a value to the `minlength` attribute of a text input element
  will validate an acceptable minimum number of characters.
- Assigning a value to the `maxlength` attribute of a text input element
  will validate an acceptable maximum number of characters.
- Assigning a regex to `pattern` matches the input to the provided
  regex.
- If validations on a `<form>` do not pass, the user gets a message
  explaining why and the `<form>` cannot be submitted.

These quick checks help ensure that input data is correct and safe for
our servers. It also helps give users immediate feedback on what they
need to fix instead of having to wait for a server to send back that
information.



``` javascript
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sign Up Page</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
  </head>
  <body>
    <section class="overlay">
            <h1>Sign Up</h1>
      <p>Create an account:</p>
      <form action="submission.html" method="GET">
        <label for="username">Username:</label>
        <br>
                <input id="username" name="username" type="text" required minlength="3" maxlength="15">
        <br>
        <label for="pw">Password:</label>
        <br>
        <!--Add the pattern attribute to the input below-->
                <input id="pw" name="pw" type="password" required minlength="8" maxlength="15">
        <br>
        <input type="submit" value="Submit">
      </form>
    </section>
  </body>
</html>
```

``` html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Required</title>
    <link rel="stylesheet" href="style.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
    <script type="text/javascript" src="login.js" defer></script>
  </head>
  <body>
    <section class="overlay">
      <h1 id="message"></h1>
      <a href="index.html">Go back</a>
    </section>
  </body>
</html>
```

``` css
body {
  background-color: #59CD90;
  color: #3FA7D6;
  font-family: "Fjalla One", Arial;
}

form {
  line-height: 25px;
}

h1 {
  font-size: 3em;
  overflow: break;
}

.overlay {
  width: 80%;
  min-width: 30%;
  margin: 3% auto;
  display: block;
  padding: 2%;
  height: 90vh;
  background-color: rgba(255, 255, 255, 0.9);
  border-radius: 40px;
  text-align: center;
}
```

<style type="text/css">
body {
  background-color: #59CD90;
  color: #3FA7D6;
  font-family: "Fjalla One", Arial;
}
&#10;form {
  line-height: 25px;
}
&#10;h1 {
  font-size: 3em;
  overflow: break;
}
&#10;.overlay {
  width: 80%;
  min-width: 30%;
  margin: 3% auto;
  display: block;
  padding: 2%;
  height: 90vh;
  background-color: rgba(255, 255, 255, 0.9);
  border-radius: 40px;
  text-align: center;
}
&#10;</style>

``` javascript
const message = document.getElementById('message');
const param = new URLSearchParams(window.location.search);
const username = param.get('username');
const pw = param.get('pw');

if(username.toLowerCase() === 'codecademy' && pw === 'ilovecoding'){
  message.innerHTML = 'We love coding too!';
} else if(!username || !pw){
  message.innerHTML = 'Add some client-side validation!';
} else {
  message.innerHTML = 'Hurray for client-side validation!';
}
```

``` javascript
console.log = () => {}
const { expect } = require('chai');
const rewire = require('rewire');
const Vue = require('vue');

describe('', function () {
    it('', function () {
        let appModule = rewire("../js/app.js");
        let vueApp = appModule.__get__("app");
        expect(vueApp).to.exist();
    });
});
```

# Form a Story

Forms are great for collecting information on users, like job
applications or insightful surveys. However, we can also stretch our
creative muscles and have a little fun with forms. For this project,
we’ll use our knowledge of the HTML `<form>` and grab user input to put
a spin on a classic story!

The logic for parsing and inserting of user inputs is already taken care
of in **main.js** using JavaScript . We’ve also added some styling to
the page in **style.css**. You can find these files by click on the
folder icon located at the top of the code editor and selecting the
files you’re interested in.

What you have to do is now make a `<form>` capable of collecting the
correct information so that the newly crafted story makes sense!

Note: Save your code as you follow the steps to see your progress!

If you get stuck during this project, check out the **project
walkthrough video** which can be found in the help menu.



Mark the tasks as complete by checking them off

## Adding The Form

1\.

We’ll be collecting information from our users using a `<form>` so,
first, we have to add a `<form>` under the `<hr>` element inside the
`<body>` of **index.html**.

2\.

Assign the `<form>` an `action` of `"story.html"` and a `method` of
`"GET"`.

We’ll be sending information from our form to **story.html** using a GET
request.

3\.

In the `<form>`, create a submit button by adding an `<input>` with a
`type` of `"submit"`. Assign the `value` a value of `"Form My Story!"`.
Save your code to see the button rendered.

This might seem counterintuitive, but by creating this submit button and
submitting the form as you add more code, you can see how the final
result of the story evolves and debug in smaller chunks. Check the hint
for more debugging tips!

## Adding Text Input

4\.

Now we can populate our `<form>` with `<input>` elements that allow
users to type in their responses. We’ll also want to have associated
`<label>`s with these `<input>` elements so users know what they’re
filling in.

Add a `<label>` element and assign the `for` attribute a value of
`"animal-1"`. Have the `<label>` render the text `Animal:` on the
webpage.

Write your code so that the submit button always shows up at the bottom
of the `<form>`. As you add more code, the submit button should be kept
at the bottom.

5\.

Now we can create an `<input>` to associate our `<label>` element with.

Set the `id` of the `<input>` to `"animal-1"` and the `type` to
`"text"`. Assign the `name` to `"animal-1"`. Remember, the `name`
attribute is needed for information from this `<input>` to be sent with
the form during submission.

Speaking of submission, since we want our users to put in some value,
add the `required` attribute to the `<input>`.

6\.

We’re going to be adding more `<label>`s and `<input>`s so we should add
some spacing.

Below the `<input>` element, add a line break using `<br>`.

With the first input field and working submit button, type some text
into the field and submit it! Remember, in order for you to see the new
code rendered on the browser, you’re going to need to save your code.

7\.

Our story has quite a few blanks, so we’re going to need a lot more
`<label>`s and `<input>`s.

Add another `<label>` with a `for` attribute of `"animal-2"` that
renders `Another Animal:` to the webpage.

Underneath the `<label>`, create a new `<input>` with the attributes:

- `id` and `name` set to `"animal-2"`.
- `type` to `"text"`.
- `required`

Add another `<br>` for a line break.

8\.

There’s another animal in our story, so let’s add another `<label>` with
a `for` attribute of `"animal-3"` that renders `One More Animal:` to the
webpage.

Then, add a new `<input>` with the attributes:

- `id` and `name` set to `"animal-3"`.
- `type` to `"text"`.
- `required`

Remember to add another `<br>` for a line break.

9\.

Let’s have our users provide an adjective.

Add another `<label>` with a `for` attribute of `"adj-1"` that renders
the text `Adjective (ends in -ed):` to the webpage.

Then, add a new `<input>` with the attributes:

- `id` and `name` set to `"adj-1"`.
- `type` to `"text"`.
- `required`

Add another line break.

10\.

Let’s get a verb.

Create a `<label>` with has a `for` attribute set to `"verb-1"` that
renders the text `Verb (ends in -ing):`.

Follow the `<label>` with an `<input>` with the attributes:

- `id` and `name` set to `"verb-1"`.
- `type` to `"text"`.
- `required`

Also, add a line break.

## Other Inputs

11\.

Great, we have some `<input>`s set up that accept text, but we can use
some `<input>` with different `type`s in our `<form>`.

Let’s add a field that will accept a number. First add `<label>` with a
`for` attribute of `"num-1"`that renders the text `Number:` to the
webpage.

After the `<label>` element, add an `<input>` that has:

- `id` and `name` set to `"num-1"`.
- a `type` attribute of `"number"`.
- a `required` attribute.

Also, add a line break.

12\.

One of our blanks requires a “yes” or “no” answer— sounds like we can
use some radio buttons for that.

Before we can add the radio buttons, add a `<span>` element that has the
text `Yes or No:`.

13\.

For radio buttons, we want to add the `<input>` before the `<label>` to
render the radio button on the left of the text.

Add an `<input>` element with the following attributes:

- an `id` set to `"yes"`.
- a `type` with a value of `"radio"`.
- a `name` of `"answer"`.
- a `value` of `"yes"`.
- a `required` attribute.

Under the `<input>`, add a `<label>` with a `for` attribute assigned a
value of `"yes"` that renders the text `Yes` on the webpage.

14\.

We should now add a radio button that represents the “no” choice.

Add another `<input>` element that has the following attributes:

- an `id` set to `"no"`.
- a `type` with a value of `"radio"`.
- a `name` of `"answer"`.
- a `value` of `"no"`.

Under the just added `<input>`, add another `<label>` with a `for`
attribute assigned a value of `"no"` that renders the text `No` on the
webpage.

This time, add a line break!

15\.

The story that we’re creating this `<form>` for involves some sort of
speed, so let’s give our users a dropdown list of speed options.

Create a `<label>` and set the `for` attribute to `"speed"`. The
`<label>` should render the text: `Relative speed (ends in -er):`

Then add a `<select>` element with an `id` and `name` of `"speed"`. Add
the `required` attribute to make this field mandatory.

Insert a `<br>` after the closing `<select>` tag. The `<select>` element
will be empty for now.

16\.

Inside the `<select>` add a few `<option>`s for users to choose from.

One example of an `<option>` you could include is:

``` html
<option value="faster">Faster</option>
```

Add as many or as few as you’d like!

Remember to assign a `value` and include text between the opening and
closing `<option>` tags.

17\.

One of our story’s blank requires a quote. We could provide our users
with a few options but also give them the choice of adding their own
custom quote. To do this, we can use the `<datalist>` element.

To set up the `<datalist>` we need an accompanying `<label>` and
`<input>`.

Under the last `<br>`, add a `<label>` with a `for` attribute of
`"quote"`. Have the `<label>` render the text `Motivational Quote:`.

After the `<label>`, add an `<input>` with the follow attributes:

- an `id` and `name` assigned a value of `"quote"`.
- the `type` set to `"text"`.
- a `required` attribute.
- a `list` attribute of `"quote-choices"`.

18\.

Awesome, we should add the `<datalist>` now under the `<input>` element.
Assign the `<datalist>` an `id` of `"quote-choices"`.

Add a `<br>` after the closing `<datalist>` tag.

19\.

Let’s add a few `<option>`s with `value`s within the `<datalist>`
element. For example:

``` html
<option value="winner gets ice cream!"></option>
```

20\.

Every good story has a key takeaway, so let’s finish off this `<form>`
by having our users provide this message!

Add a `<label>` that has a `for` attribute of `"message"`. Have the
`<label>` render `Meaningful Message:` on the web page.

Under the `<label>` add a `<textarea>` that has an `id` and `name` of
`"message"`. Make the `<textarea>` a `required` field. The `<textarea>`
should have 8 rows and 40 columns. (Check the hint for a syntax
reminder).

Then add a line break after the `<textarea>` element.

## Project Extras

21\.

Fantastic job creating a `<form>` to fill in a story!

If you want to challenge yourself:

- Add pre-selected values for each input field.
- Add placeholder text that contains examples for users.
- Add some extra validations like `min`, `minlength`, or `pattern` to
  the elements that accept user input.

## [Solution](form-a-story)

# Review: Building Interactive Websites

In this unit, you learned how to build interactive websites using
JavaScript.

Congratulations! The goal of this unit was to use JavaScript to create
interactive websites that will respond to input from the user.

Having completed this unit, you are now able to:

- Add JavaScript to a website for interactivity
- Describe what the DOM is
- Explain what DOM Events are
- Create forms using HTML and validate them using JavaScript

If you are interested in learning more about these topics, here are some
additional resources:

- Article: <a
  href="https://www.digitalocean.com/community/tutorials/how-to-add-javascript-to-html"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">How To Add JavaScript to HTML</a>
- Article: <a
  href="https://developer.mozilla.org/en-US/docs/Learn/Forms/Form_validation"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">MDN Guide to Client-side form
  validation</a>
- Book: <a
  href="https://bookshop.org/books/html-and-css-design-and-build-websites/9781118008188"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">HTML & CSS</a>, Jon Duckett, Chapter 7
  (pp. 144-174)

Whatever you’re working on, be sure to connect with the Codecademy
community in the <a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like code review on your
project work and what material you will need to accomplish your goals.
