# The Convenience of Templates

Django makes it easier for developers to create templates!

Django uses templates to display information to users. In conventional
web development, web pages are written with HTML. But if templates were
written in pure HTML then we don’t really need Django.

Rather, Django gives us
<a href="https://docs.djangoproject.com/en/3.1/ref/templates/language/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><em>Django Template Language</em></a>
(DTL) which lets us inject variables, logic, and control flow inside of
our HTML - supercharging our HTML files to do so much more than provide
static content.

<img
src="https://static-assets.codecademy.com/skillpaths/django/first_app/django_mtv_diagram_bg.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Django&#39;s MTV design pattern showing how models supply the data, views determine what data to show, and templates displaying the data" />

Templates play an integral part of Django’s MTV design pattern, so you
will look into finer detail, how this component relates to the overall
process of creating a web app.

# Templates

## What is a Template?

In Django, _templates_ are going to be the user facing content. These
templates are made mostly of HTML, and are usually just HTML files.
However, Django templates usually have added _Django Template Language_,
or _DTL_, modifications. We’ll be going into DTL later though, so don’t
worry too much about it right now.

In order to create templates, they have to be stored in the application
in a folder called **templates/**. Another folder needs to be created
inside of this **templates/** folder that uses the same name of the
application. All of the templates will go into this folder named after
the application. The full file path to a template should look like this:

```python
projectname/
 |-- appname/
     |-- templates/
          |-- appname/
              |-- first_template.html
```

In this lesson we’ll go over creating templates and getting the full use
of the DTL inside of those templates to make it easier to design the
front end of any Django application.



<img alt="A GIF showing how DTL could work, where there is an HTML file with blanks and these blanks can get filled in using model information. The GIF showcases two &quot;user&quot; models that have their own information plugged into the same HTML structure. " src="https://static-assets.codecademy.com/skillpaths/django/templates/django_templates_nobg.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Revisiting Our First Template

The first template usually made is the homepage of the application.
Templates can be plain HTML files and are stored inside of
**appname/templates/appname/**. While the template can usually be left
as a normal HTML file, most of the time _Django Template Language_ or
_DTL_ will be added to the template to assist with the creation of the
application. If you want to go into more detail regarding how to build
the application using plain HTML, check out our
<a href="https://www.codecademy.com/learn/learn-html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">course here</a>. Please note that this lesson will be
using DTL and HTML throughout the exercises.

When any template is referenced later, it will be done by calling
`appname/template_name.html`. This is to help the Django engine find the
template because DTL will not look in any sub folders in the template
folder for files.

Once the template is made, some of the code in **views.py** will have to
be modified in order to _render_ the template. Rendering the template is
the Django application taking the template and displaying it as a normal
HTML page in a web browser.

Inside of **views.py**, we need functions, or classes, that tell the
template what information to include. For example, one function
(`homepage()`) will be created that takes in one parameter called
`request`. The `homepage()` function will return another function called
`render()` that takes two arguments. The first being the `request` that
gets passed into `homepage()`, and the name of the template. Just as a
refresher, the final method in **views.py** should look like the one
below:

```python
def homepage(request):
  return render(request, "app_name/sample_template.html")
```

These modifications to **views.py** will be covered in more detail in a
later lesson. In this lesson, the code for **views.py** will be provided
so that we can focus primarily on templates and not the views.



**1.**

**Note:** To save you some work and time, we’ve reorganized the
structure of our Django project to have you automatically working in the
root folder. We’ve also made it so your development server is
automatically running!

**home.html** is opened in the code editor, notice that it’s now empty.
That’s because we will be building this from scratch with DTL in mind.

For now, add a heading (`<h1>`) that says `Welcome to Vet Office!` and a
paragraph (`<p>`) that says `Welcome!`. Don’t worry, everything else
will be added back later.



```html
<!--This is home.html-->
<!--Put all of the HTML below here-->
<h1>Welcome to Vet Office!</h1>
<p>Welcome!</p>
```

## Creating a Base Template

We’ve now created a simple home page, but we’re missing some elements
like a helpful a navigation bar to move around the application. An basic
navigation bar looks like the following. (Please note that we’ll be
ignoring CSS for now)

```python
<div class="topnav" id="pageTopNav">
  <a href="#home" class="active">Home</a>
  <a href="#contact">Contact</a>
</div>
```

Now imagine if we included even more links, this navigation bar could
grow really large! This means each page that contains this code would
continue to grow along with it. Django solves this issue of copying and
pasting the same reused code from each template into something one
template called a _base template_. Some elements that might go into the
base template are: headings, navigation bars, footers, etc — these
elements show up on most, if not all of the web pages for the
application.

A base template is created the same way as a normal template, starting
with an HTML file. By convention, the base template is usually called
something like **base.html** or **base_template.html**. For this lesson,
we’ll be using **base.html** as the name.

Once the common elements have been moved to **base.html**, we can start
talking about adding page-specific content. Since the **base.html** will
be used across several templates, we need to tell the application where
we want our page-specific content to go. To do this, we add _tags_ to
the body of the base template. Tags are used to help extend the base
template to other templates. We’ll be going over this in more detail in
another exercise, but for now, we just need to know that tags are
created using the `{%` and `%}` symbols. Inside of these tags, we’ll be
adding `block content`, and later another tag with the content
`endblock`. This creates a block that we can add code to in other
templates. This block gives us the ability to later insert content that
is specific to individual pages. It should look like this:

```html
{% block content %} {% endblock %}
```

Typically only page-specific content will go inside of these tags and is
added from other templates. These blocks are usually left empty in the
base template though. Multiple blocks can be created within the base
template and then used in other templates. Blocks can be put anywhere
within the base template. This is because not everything page-specific
will necessarily go in the body.



**1.**

Inside of the new template **base.html**, add the following HTML
elements:

- the `<!DOCTYPE html>`
- the `<html>` element with two elements nested inside:
  - the `<head>` element
  - the `<body>` element
- a heading (`<h1>`) to the body that says `Welcome to Vet Office!`

**2.**

After the heading (`<h1>`) element, add a set of `{% block content %}`
and `{% endblock %}` tags to the body of the **base.html** document.



```html
<!DOCTYPE html>
<html>
  <head> </head>

  <body>
    <h1>Welcome to Vet Office!</h1>
    {% block content %} {% endblock %}
  </body>
</html>
```

## Extending the Base Template

With our base template created, we can _refactor_ our other templates by
removing the common elements. Let’s say we wanted to refactor a template
for an `about/` page, it might look like:

```html
<p>Welcome to your local veterinarian's office!</p>

<p>Feel free to call us at 123-456-7890!</p>
```

To use our base template in other templates, we need to include
`{% extends "appname/base.html" %}` at the top of our `about/` page
template:

```html
{% extends "vetoffice/base.html" %}

<p>We're all about caring for pets!</p>
<p>Contact us at: 123-456-7890</p>
```

But this code isn’t complete, we still need to tell our **base.html**
what block of content to include. This can be done by adding two tags to
our document before and after the paragraphs that says `block content`
and `endblock`.

```html
{% extends "vetoffice/base.html" %} {% block content %}
<p>This will go inside the body</p>

<p>This will also be inside the body</p>
{% endblock %}
```

Notice that all we had to do was add three lines of DTL, and all of our
HTML from our base template is now added to the template.

Now that that both templates are set up, all of our common code can go
inside of **base.html**, and any page-specific content can go inside of
**template.html**. This will help with not only keeping the code
organized, but also help make the code cleaner as we’ll only be seeing
page-specific content in the templates from now on.



**1.**

Inside of **home.html**, remove the heading (`<h1>`) element but keep
the paragraph (`<p>`) element.

**2.**

Extend **vetoffice/base.html** to **home.html** using tags so that all
of the content can be displayed later from **base.html**.

**3.**

Add the blocks to the code that will let us add the current page content
to the base template. This should be one tag before the paragraph
element and one tag after the paragraph element.



```html
{% extends "vetoffice/base.html" %} {% block content %}
<p>Welcome!</p>
{% endblock %}
```

## Adding CSS to the Templates

In most applications, HTML files will usually use a CSS file to modify
how the webpage looks. While we won’t be covering CSS specifically in
this exercise, we will be covering how to add CSS files to our templates
as the process is different in Django templates compared to a normal
HTML document. To learn more about CSS, we recommend our
<a href="https://www.codecademy.com/learn/learn-css"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn CSS course</a>.

We need a folder to store our CSS files, this folder will be in the
application’s main folder and called **static/**. This folder will hold
assets like pictures and CSS files. Another folder will be created
inside of **static/** that will be named after our application. The full
path should look like the one below:

```
projectname/
 |-- appname/
     |-- templates/
     |-- static/
         |-- appname/
             |-- file.css
```

Once a CSS file is added to **static/appname**, it can be referenced
within our templates inside of blocks formed in the **base.html**
`<head>` elements. This is because static files will not be passed down
to children of the **base.html** template. The files in our **static/**
folder should be loaded in the `<header>`. Therefore, we’ll add another
block tag, like so:

```html
<!-- base.html -->
<!DOCTYPE html>
<head>
    {% block head %}   {% endblock %}
</head>
...
```

Inside of the template we’ll be using, we first need to load in static
files. This is typically done at the beginning of the file after
extending from **base.html**. This will let us access all of our static
files later. Then the block created from **base.html** can be added to
the document. This is the block where the CSS will be loaded in. This is
done by loading a CSS file as normal, except setting the `href` to a tag
that says `{% static 'appname/file.css' %}`. It should look like the
code below.

```html
<!-- template_example.html -->
{% load static %} {% block head %}
<link rel="stylesheet" href="{% static 'appname/file.css' %}" />
{% endblock %}
```



**1.**

Let’s go ahead and set up our folders and CSS file by doing the
following:

1.  In the **vetoffice/** folder, add a **static/** folder.
2.  In the created **static/** folder, add another folder named
    **vetoffice/**.
3.  In the newly added **vetoffice/**, add a CSS file called
    **style.css**.

Now that we have our **style.css** created, go ahead and change every
`<p>` element to have red text color with the following:

```css
p {
    color: red;
}
```

**2.**

Inside of **base.html**, add a block to the head (`<head>`) element
that’s called `head`. Add the end of the block inside of the head
element as well.

**3.**

**base.html** is now expecting some information from any file that
extends it (like **home.html**). So, let’s now set up **home.html**:

1.  Inside of **home.html**, load in static files under where
    **base.html** is extended from.
2.  Add a `head` block that will be used to fill in **base.html**‘s own
    `head` block.
3.  Inside your new `head` block, add a `<link>` with an `href` set to
    **style.css** using a tag (`{% %}`).



```html
<!DOCTYPE html>
<head>
  {% block head %}{% endblock %}
</head>
<body>
  <h1>Welcome to Vet Office!</h1>
  {% block content %}{% endblock %}
</body>
```

```html
{% extends 'vetoffice/base.html' %} {% load static %} {% block head %}
<link rel="stylesheet" href="{% static 'vetoffice/style.css' %}" />
{% endblock %} {% block content %}
<p>Welcome!</p>
{% endblock %}
```

## Variables in Templates

Let’s explore this _Django Template Language_, or _DTL_, we’ve been
using in the previous exercises. DTL, as its name implies, is a template
language created specifically for Django. Its primary purpose is to help
reduce the amount of code necessary for running a webpage. We’ve seen
how DTL can extend templates and load in CSS files. But, DTL can do so
much more for us, like grabbing variables from **views.py**, creating
loops, `if` statements, and more! In this exercise, we’ll start with
creating variables.

We’ll cover the specifics of how views provide variables for templates
in a later lesson. For now, we’ll just review the syntax for evaluating
variables — two symbols are needed, `{{` and `}}`, we call these symbols
_variable tags_. When we add a variable in between variable tags, Django
knows that we want the value of that variable from our **views.py**
file.

For example, if we had an application that wanted to output a specific
username, we would add our variable tags with the variable name inside
of these tags, that being `username`:

```html
<p>{{ username }}</p>
```

Dictionaries and variable tags work well together. In a single variable
tag, we can grab a dictionary and access all its properties! Imagine if
we stored our user’s information in a dictionary named `user`:

```html
<p>{{ users.username }}</p>
```

Notice we’re able to use dot notation to access the `.username` property
of `user`. In an actual app, there should be more properties we can
access. We’ll cover how to access each individual property later when we
discuss DTL loops but now it’s time to practice using variable tags.



**1.**

Inside of **home.html**, edit the `<p>` inside of the content block that
says `Welcome, ~value of name~!`. Replace `~value of name~` with a
variable tag that uses the `name` variable.



```html
{% extends 'vetoffice/base.html' %} {% load static %} {% block head %}
<link rel="stylesheet" href="{% static 'vetoffice/style.css' %}" />
{% endblock %} {% block content %}
<!-- Edit the <p> element below -->
<p>Welcome, {{ name }}!</p>
{% endblock %}
```

## Conditionals in Templates

Now that we have covered variables, we can start using `if` statements.
These `if` statements help customize web pages without having to create
separate templates for different instances. Imagine if we have an
application that shows information for different US cities. Making
individual templates for each city could take ages! Instead, we can use
`if` statements to determine what city’s information to display.

An `if` statement in DTL is very similar to Python `if` statements.
However, they consist of two necessary components and two optional
components. The major components are:

- An `if` keyword is used in every `if` statement and its purpose is
  the same as in Python.
- An `endif` keyword is used to let DTL know that we are at the end of
  the `if` statement.

The two optional components are:

- `elif` - which is used if we want to check more than one condition
  within the `if` statement.
- `else` - which will execute whenever the `if` and all `elif`s
  evaluates as false. It will be the last thing included in an `if`
  statement before the `endif`.

To add an `if` statement to the template, we’ll need to set it up inside
of _tags_. Remember, tags are the `{%` and `%}` symbols we used earlier
for extending our base template to other templates. Generally, tags are
used to tell the DTL that an expression needs to be executed or
evaluated. There is no need to use separate variable tags when accessing
a variable in normal tags. For instance, if we wanted to display
attractions for New York or Los Angeles, we could use the following
conditional:

```html
{% if city.name == "New York" %}
<p>Attractions for New York City are</p>
... {% elif city.name == "Los Angeles" %}
<p>Attractions for Los Angeles are</p>
... {% else %}
<p>We currently do not have any attractions for that city</p>
{% endif %}
```

Notice that we can use the same `{% %}` tags to create these
conditionals within the template, and help tell the DTL what to render.
This makes sure that only certain elements get rendered based off the
conditionals detailed.

Other conditionals can be used other than just `==`. Any conditional
that is conventionally used with Python conditional statements. Lessons
are available if you want <a
href="https://www.codecademy.com/courses/learn-python-3/lessons/python-control-flow/exercises/introduction"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">refresher on conditionals</a>.



**1.**

In the content block, create an `if` statement that checks if the
`pet.animal_type` is `"Dog"`. Inside the `if` statement, render a `<p>`
that says `The animal is a dog`.

**2.**

After the `if` statement, add an `elif` statement to the `if` statement
that checks to see if the animal type is `"Cat"`. If it is, have a `<p>`
that says `The animal is a cat`.

**3.**

After the `elif`, create an `else` statement that renders a `<p>` that
says `The animal is not a dog or cat`.

**4.**

After the `else`, end the `if` statement by adding an `endif` tag.



## Loops in Templates

When dealing with a dictionary in a Django template, we can save time by
taking advantage of DTL’s `for` loop to iterate over individual items.
Loops in DTL work like regular Python `for` loops but still require
tags.

To write a loop in DTL we’ll need to use our tags `{%` `%}` and insert
the syntax for a `for` loop. The syntax to start a `for` loop requires:

- The `for` keyword.
- The name of the new variables we’ll be creating in the loop.
- An indicator saying `in`
- The list we’ll be using in the loop.

Those will all be listed out in that order, and will be followed with an
`{% endfor %}` at the end of the loop. The loop syntax looks like:

```python
{% for item in list_name %}
  <p>{{ item }}</p>
{% endfor %}
```

Inside the loop’s body, during each iteration, we can access the current
key using the temporary variable `key` inside variable tags `{{` `}}`.
We’re free to manipulate the key as a variable using standard Python
syntax. If our list contains dictionaries, we could even access the
`value` of our dictionary if we change our loop:

```python
{% for key, value in dictionary_list %}
  <p>{{ key }} : {{ value }}</p>
{% endfor %}
```

Using loops, we can greatly reduce the amount of HTML we need to write
to display a lot of information!



**1.**

In **views.py**, we’re passing a list of dictionaries (`pets`) to the
`"home.html"` template. We can loop through this list to display all the
pets’ information on the page.

First, navigate to **home.html**, and inside this template:

- Create a `{% for %}` loop that:
  - has a temporary variable of `pet`
  - loops through `pets`
- Add the `{% endfor %}` tag as well

**2.**

Inside of the loop, add a `<p>` element that displays the pet’s name and
the type of animal, separated by a colon. For example, we would want it
to look like this: “Oreo: dog”.



```html
{% extends "vetoffice/base.html" %} {% load static %} {% block head %}
<link rel="stylesheet" href="{% static 'vetoffice/style.css' %}" />
{% endblock %} {% block content %}
<p>Welcome, {{name}}!</p>
<!-- Add your if statement below: -->
{% if pet.animal_type == "Dog" %}
<p>The animal is a dog</p>
{% elif pet.animal_type == "Cat" %}
<p>The animal is a cat</p>
{% else %}
<p>The animal is not a dog or cat</p>
{% endif %} {% endblock %}
```

## Adding URLs to a Template

When navigating between pages using HTML, we need the entire URL to be
written out in a
<a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">&lt;a&gt;</code> element’s</a>
`href` attribute. With Django, rather than using the full URL we get a
shortcut by using tags and the name of predefined paths! Later on, we’ll
also cover how to pass along data in the URL, however, let’s first see
the basic shortcut in action:

```html
<a href="{% url 'path_name' %}">Sample link</a>
```

As can be seen above, the link looks very similar to a typical HTML
link, except we modify the `href` to be set to a tag much like we did
with CSS files. This tag is set to the type `url` followed by the path
name as a string.

When a path requires arguments to get to, like a username, it can be
added to the `href` after the path. We won’t go into detail regarding
this, but it would look like this:

```html
<a href="{% url 'path_name' username %}">User Profile</a>
```

In this case, arguments provide additional information to the URL to
access more specific pages. Some DTL functions require arguments while
they can be optional in other places. The URL is a good instance of
where arguments are optional, but not necessary unless the path has an
argument. We’ll discuss arguments more in the next exercise.



**1.**

Notice that in **urls.py** we have a path for the home page with a
`name` of `"home"`.

Now, navigate to **base.html**. Inside the `<body>` element:

- Add an `<a>` element
- This anchor element should link to the `'home'` path (using `href`
  and a tag)
- The `<a>`‘s text should display `Vet Office`



```html
<!DOCTYPE html>
<head>
  {% block head %} {% endblock %}
</head>

<body>
  <a href="{% url 'home' %}">Vet Office</a>
  <h1>Welcome to Vet Office!</h1>
  {% block content %} {% endblock %}
</body>
```

## Filters in Templates

With Django, variables can be modified from within the template using a
_filter_. Filters modify variables passed in from **views.py** without
the use of traditional methods like JavaScript. There are plenty of
filters that can be found in the
<a href="https://docs.djangoproject.com/en/3.1/ref/templates/builtins/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django documentation</a>, but we’ll only
cover a few in this lesson. An example filter can be seen below:

```python
<p>{{ username|upper }}</p>
```

The filter is added onto a variable by using the `|` symbol inside of
the variable tags with the variable. The symbol goes after the variable
name, and is followed by the filter that you want to use. In the above
example, the <a
href="https://docs.djangoproject.com/en/3.1/ref/templates/builtins/#upper"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">upper</code> filter</a> converts
the variable’s value to all uppercase characters.

Some filters also require arguments, however, arguments are handled
differently with filters compared to how we handled arguments with URL.
A filter with an argument can be seen here:

```python
{{ description|truncatewords_html:2 }}
```

The <a
href="https://docs.djangoproject.com/en/3.1/ref/templates/builtins/#truncatewords-html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">truncatewords_html</code>
filter</a> requires an argument and will shorten text down to the
integer supplied by our argument. In our case, we want to display `2`
words max. Any other words in the `description` variable will be
replaced with `...`. We were able to supply our argument after the
filter name separated by a `:`.

Some filters also require certain data types in order to work. For
instance, the `time` filter requires a variable of data type
`datetime.datetime.Now()`, and will not work with any other data type.
It is recommended to check out the documentation for a filter before
using it to make sure you are using the proper data types and adding any
necessary arguments.



**1.**

Let’s first apply a filter to the `{{ name }}` variable — add a filter
that makes all the characters lowercased.

You can find the list of filters in
<a href="https://docs.djangoproject.com/en/3.1/ref/templates/builtins/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django’s documentation</a>.

**2.**

Now, let’s increase the complexity.

Apply a filter to `pets` variable inside the `for` loop:

- Use the <a
  href="https://docs.djangoproject.com/en/3.1/ref/templates/builtins/#dictsort"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">filter called <code
  class="code__2rdF32qjRVp7mMVBHuPwDS">dictsort</code></a>
- Provide the `dictsort` filter with an argument of `"petname"`



```html
{% extends 'vetoffice/base.html' %}
{% load static %}

{% block head %}
  <link rel="stylesheet" href="{% static 'vetoffice/style.css' %}">
{% endblock %}

{% block content %}
<!-- Edit name below to use a filter -->
<p>{{ name|lower }}</p>
  <!-- Edit the loop below to use a filter -->
  {% for key in pets|dictsort:"petname" %}
    <p>pet name : {{ key.petname }}</p>
  {% endfor %}
{% endblock %}
```

## Review

Templates are a great way to reduce the amount of HTML that needs to be
written in a website by allowing us to extend templates into the rest of
the website to reduce repeat code. The options provided to us can help
us in a number of ways including:

- Common elements should go inside of a base template, and any
  page-specific content should be in their own templates.
- Static files have to be loaded in the template they’ll be used in,
  as it won’t be passed on to child templates.
- Templates can also use DTL to help display variables, loop through
  and display dictionaries, and create conditionals within templates
  to reduce the number of templates needed for an application.
- CSS files can be added to a template after adding a **static/**
  folder to the application. Remember that inside of **static/** there
  should be another folder named after the application.
- Variables are great for grabbing data from **views.py** to display
  in a template.
- `if` statements can be used in DTL to conditionally display content.
- DTL can use `for` loops to go through lists.
- URLs can be referenced with just the path name if the page is within
  the application. This only works with predefined paths and you
  should watch for any arguments that need to be passed.
- Filters are useful for modifying variables within a template as you
  won’t have to write too much extra code to modify the variable
  yourself.
- Some filters require arguments, so make sure that any filter used
  does not require any arguments.
- Some filters also only work with specific data types, so make sure
  to research a filter before using one by looking at the
  documentation for the filter.

Great job on completing templates! Next time you write HTML in Django,
remember to take advantage of DTL to save yourself some time!



If you want to challenge yourself:

- Find different filters and apply them to variables
- Add more code to **base.html** and **home.html**
- Add another template

Or just run wild with your imagination!


# Tourist Attractions with Templates

You’ll be creating an application that allows for users to see a list of
tourist attractions in each state. Users can also specify the state that
they want to see more detailed attractions with as well. You’ll be
creating the templates for this website, meaning that you’ll be creating
everything the users see using Django!

This will be done using the knowledge gained from the templates lesson,
including extending off of base templates, adding static files, and
adding filters to variables being used within the template!

## Instructions

Mark the tasks as complete by checking them off

## Creating a Base Template

1\.

Before you start writing any code, take a look at the overall structure
of the application. We’ve provided some code for you already to allow
you to focus just on template creation!

Things to consider and explore:

- What’s the project name? app name?
- What functions are provided in **views.py**?
- What paths are in **urls.py**?

2\.

Now that you’ve got a general sense of the app, let’s start by creating
a base template. Right now we are getting a `TemplateDoesNotExist` error
when we try to load our application. This is Django telling us that it’s
not finding the template we’re telling it to render in the location we
told it to look. To fix this, all we have to do is add in the template.

Create **base.html** in
**tourist_attractions/templates/tourist_attractions**.

3\.

Remember that **base.html** should contain some common elements, so add
some structure.

Inside of **base.html**, add the doctype declaration, a `<head>`
element, and a `<body>` element.

4\.

One common feature in all apps is to allow users to be able to navigate
back to the home page.

Inside the `<body>` add a link (`<a>`) that users can click on to send
them to the `"home"` path. The text inside the link should read
`Take me home`.

5\.

Since you also want your **base.html** to be able to display
page-specific content, you’ll need to add some blocks!

- Inside the `<head>` element, add a block called `head`. This block
  will be used for loading assets.
- In the `<body>` element, under the `<a>` element, add another block
  called `content`. This block will be used to display page-specific
  content.

## Creating the Home Page

6\.

Now that we have our base template created, we can start making the
homepage for the application. This will be the home of every state and
every attraction.

Create a new HTML page called **home.html** in the same location as
**base.html**.

- Have it extend off of **base.html**
- Add a head block
- Add a content block

After implementing **home.html** the error in the browser should be gone
and you should see your link appear!

7\.

Currently, our page looks a little bland, to change this we need to add
some CSS files. This can be done by loading in the static files. Then,
load in the static file `'tourist_attractions/style.css'`.

You’ll know this is done correctly when the background color changes to
a light blue.

8\.

We want to welcome our users to the application and tell them what
they’ll be looking at. To do this, inside of the `content` block, add a
`<h1>` that says something like
`This is a list of attractions in America!`.

9\.

Now we want to show the users each attraction and what state that
attraction is in. The best way to do this would be to build a table.

Under the `<h1>` add:

- A `<table>` element
- Inside the table, a table row (`<tr>`) element
- Nested in the row, individual table headings (`<th>`) for
  `Attraction`, `State`, and `State details`.

By now you should have a table header on the webpage with three columns
being `Attraction`, `State`, and `State details`.

10\.

Now that we have the table mostly built, we need to go through every
attraction and display it.

To get started with the process:

- Inside the `<table>` and after the first row, add a `for` loop using
  DTL.
- Have it loop through each `item` in `attractions`.
- Sort `attractions` based on the `state` using the filter `dictsort`.
- Make sure to include the `endfor`.

11\.

Now that we have the loop set up, we want to show everything about that
attraction.

Inside of the `for` loop, we need to add some more HTML and DTL to
display everything about the attraction. Let’s add these elements:

- A table row (`<tr>`).
- Inside of the table row, add a table detail element (`<td>`)
- This `<td>` element should display `item.attraction_name`.

We’ll only see the first column displayed. But we’ll continue to work on
this table!

12\.

We still need to fill in two other columns.

Add another `<td>` element that will render `item.state`.

13\.

For the third column, “State details”, we’ll add a link to a separate
page that lists attractions only for a specific state using the
urlpattern named `details` that is pre-defined in **urls.py**.

In the table we created in **home.html**, create another `<td>` element
containing a link element, `<a>`, which displays the text “State
details”. The `href` attribute will use the <a
href="https://docs.djangoproject.com/en/3.2/ref/templates/builtins/#url"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">url</code></a> built-in tag, with
`'details'` as the pattern name. We can provide the state name as an
argument, using the <a
href="https://docs.djangoproject.com/en/3.2/ref/templates/builtins/#slugify"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">slugify</code></a> filter to remove
any spacing and capitalization.

## Creating the details page

14\.

Now that we have every state listed out and their attractions, we can
start going into details for each state in case a user wants to look at
attractions for specific states.

Create a template called **details.html**. Extend the template from
**base.html** and load in the CSS sheet like before.

15\.

Inside of the content block, add an `<h1>` that says
`This is a list of tourist attractions for` followed by the state name
with the `title` filter.

Once this is added, go ahead and click on one of the state details
buttons to see what this page looks like!

16\.

This page is going to look similar to the homepage.

Start by adding a table with the headers `Attraction` and `State` to the
`content` block.

17\.

We still want to go through each attraction. Therefore, create a loop
similar to the one from before that goes through every item in
`attractions`. This loop should also use the `dictsort:"state"` filter.

18\.

One thing we want to do differently here is that we only want to display
attractions in the selected state. We know what state we want to use
because we have a variable called `statename` passed in from
**views.py**.

To do this, we are going to want to add an `if` statement that checks to
see if the attractions state is the same as `statename`. However, we
need to add the `lower` filter to the attractions state since that is
capitalized, but `statename` is not capitalized.

19\.

Inside of the `if` statement, add a table row with two table details.
One displaying the attraction name and the other displaying the
attraction state.

If done correctly, when you click on the “State details” link, you’ll
get linked to a page that only displays that state’s attractions!

20\.

And that’s it! We now have a website that displays attractions for any
state! Go ahead and modify **views.py** to add more states and see how
our templates react! If you want, go ahead and try to add an image on
the homepage!

## Solution

[Django Project Tourist Attractions](https://www.youtube.com/watch?v=7DjKnlfACL8)

```bash
#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${green}>>> Removing project directory if exists${reset}"
rm -rf env
echo "${green}>>> Creating virtualenv${reset}"
python3 -m venv env
echo "${green}>>> Activating the venv${reset}"
source env/bin/activate
echo "${green}>>> Upgrading pip version${reset}"
pip install -U  --upgrade pip
echo "${green}>>> Installing Django${reset}"
pip install django
echo "${red}>>> Starting the Project${reset}"
project_name='touristAttractions'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the App ${reset}"
app_name="tourist_attractions"
python manage.py startapp $app_name
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${red}>>> Creating overall structure of the application${reset}"
sed -i '' '3,$d' $app_name/views.py
echo "$(cat <<-END
# This is the dictionary for all the attractions
attractions = [
  { 'attraction_name' : 'Niagra Falls', 'state' : 'New York'},
  { 'attraction_name' : 'Grand Canyon National Park', 'state' : 'Arizona'},
  { 'attraction_name' : 'Mall of America', 'state' : 'Minnesota'},
  { 'attraction_name' : 'Mount Rushmore', 'state' : 'South Dakota'},
  { 'attraction_name' : 'Times Square', 'state' : 'New York'},
  { 'attraction_name' : 'Walt Disney World', 'state' : 'Florida'}
]

def home(request):
  # The context is all of the variables we want passed into the template.
  context = {"attractions" : attractions}
  return render(request, 'tourist_attractions/home.html', context)

def details(request, statename):
  # We replace the dash with a space for later ease of use. The dash is there because of the slugify filter.
  context = {"attractions" : attractions, "statename" : statename.replace("-", " ")}
  return render(request, 'tourist_attractions/details.html', context)
END
)"  >> $app_name/views.py
cat << 'EOF' > $app_name/urls.py
from django.urls import path

from . import views

urlpatterns = [
    path('', views.home, name="home"),
    path('details/<statename>', views.details, name='details')
]
EOF
echo "${green}>>> Importing app’s URLconfig setup in the project’s URLconfig${reset}"
sed -i '' 's/from django.urls import/from django.urls import include,/g' $project_name/urls.py
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n    path\(\'$app_name\/\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py
echo "${red}>>> Creating static directory${reset}"
mkdir -p $app_name/static/$app_name
echo "${green}>>> Creating style.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/style.css
table, th, td {
  border: 1px solid black;
}
table {
  border-collapse: collapse;
  width: 100%;
}

tr:nth-child(even) {
  background-color: #eee;
}
tr:nth-child(odd) {
  background-color: #fff;
}

body {
  background-color: #e8f4f8;
  margin: 40px 20px 10px;
}
EOF
echo "${red}>>> Creating templates directory${reset}"
templates_path="$app_name"\/templates\/"$app_name"
mkdir -p $templates_path
echo "${green}>>> Creating a base template${reset}"
cat << 'EOF' > $templates_path/base.html
{% load static %}
<!DOCTYPE html>
<html>

<head>
    {% block head %}
    {% endblock %}
</head>

<body>
    <a href="{% url 'home' %}">Take me home</a>
    {% block content %}
    {% endblock %}
</body>

</html>
EOF
echo "${green}>>> Creating a home template${reset}"
cat << 'EOF' > $templates_path/home.html
{% extends 'tourist_attractions/base.html' %}

{% block head %}
{% endblock %}

{% block content %}
{% endblock %}
EOF
echo "${green}>>> Loading in the static files in home.html${reset}"
sed -i '' 's/{% extends '\''tourist_attractions\/base.html'\'' %}/{% extends '\''tourist_attractions\/base.html'\'' %}\
\
{% load static %}/g' $templates_path/home.html
echo "${green}>>> Loading in 'tourist_attractions/style.css' in home.html${reset}"
sed -i '' 's/{% block head %}/{% block head %}\
<link rel=\"stylesheet\" href=\"{% static '\''tourist_attractions\/style.css'\'' %}\">/g' $templates_path/home.html
echo "${green}>>> Adding a <h1> saying 'This is a list of attractions in America!' in home.html${reset}"
sed -i '' 's/{% block content %}/{% block content %}\
<h1>This is a list of attractions in America!<\/h1>/g' $templates_path/home.html
echo "${green}>>> Showing the users each attraction and what state that attraction is in; Going through and displaying all attractions in home.html${reset}"
sed -i '' 's/<h1>This is a list of attractions in America!<\/h1>/<h1>This is a list of attractions in America!<\/h1>\
<table>\
    <tr>\
        <th>Attraction State<\/th>\
        <th>State<\/th>\
        <th>State details<\/th>\
    <\/tr>\
    {% for item in attractions|dictsort:\"state\" %}\
    <tr>\
        <td>{{ item.attraction_name }}<\/td>\
        <td>{{ item.state }}<\/td>\
        <td><a href=\"{% url '\''details'\'' item.state|slugify %}\">State Details<\/a><\/td>\
    <\/tr>\
    {% endfor %}\
<\/table>/g' $templates_path/home.html
echo "${red}>>> Creating the details page${reset}"
echo "${green}>>> Create a template called details.html extending from base.html and load in the CSS${reset}"
cat << 'EOF' > $templates_path/details.html
{% extends 'tourist_attractions/base.html' %}

{% load static %}

{% block head %}
<link rel="stylesheet" href="{% static 'tourist_attractions/style.css' %}">
{% endblock %}
EOF
echo "${green}>>> Going into details for each state in details.html${reset}"
echo "$(cat <<-END
{% block content %}
<h1>This is a list of toursit attractions for {{statename}}</h1>
<table>
    <tr>
        <th>Attraction</th>
        <th>State</th>
        {% for item in attractions|dictsort:"state" %}
        {% if statename == item.state|lower%}
    <tr>
        <td>{{item.attraction_name}}</td>
        <td>{{item.state}}</td>
    </tr>
    {% endif %}
    {% endfor %}
    </tr>
</table>
{% endblock %}
END
)"  >> $templates_path/details.html
echo "${red}>>> We now have a website that displays attractions for any state!${reset}"
# List installed Python packages
pip freeze -l > requirements.txt
```