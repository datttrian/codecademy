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

# Learn

Templates

What is a Template?

In Django, *templates* are going to be the user facing content. These
templates are made mostly of HTML, and are usually just HTML files.
However, Django templates usually have added *Django Template Language*,
or *DTL*, modifications. We’ll be going into DTL later though, so don’t
worry too much about it right now.

In order to create templates, they have to be stored in the application
in a folder called **templates/**. Another folder needs to be created
inside of this **templates/** folder that uses the same name of the
application. All of the templates will go into this folder named after
the application. The full file path to a template should look like this:

``` pre__3_SOs7YT7NaHjnNunEArSM
projectname/
 |-- appname/
     |-- templates/
          |-- appname/
              |-- first_template.html
```

In this lesson we’ll go over creating templates and getting the full use
of the DTL inside of those templates to make it easier to design the
front end of any Django application.

### Solution

# Learn

Templates

Revisiting Our First Template

The first template usually made is the homepage of the application.
Templates can be plain HTML files and are stored inside of
**appname/templates/appname/**. While the template can usually be left
as a normal HTML file, most of the time *Django Template Language* or
*DTL* will be added to the template to assist with the creation of the
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
be modified in order to *render* the template. Rendering the template is
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

``` pre__3_SOs7YT7NaHjnNunEArSM
def homepage(request):
  return render(request, "app_name/sample_template.html")
```

These modifications to **views.py** will be covered in more detail in a
later lesson. In this lesson, the code for **views.py** will be provided
so that we can focus primarily on templates and not the views.

### Instructions

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

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Templates

Creating a Base Template

We’ve now created a simple home page, but we’re missing some elements
like a helpful a navigation bar to move around the application. An basic
navigation bar looks like the following. (Please note that we’ll be
ignoring CSS for now)

``` pre__3_SOs7YT7NaHjnNunEArSM
<div class="topnav" id="pageTopNav">
  <a href="#home" class="active">Home</a>
  <a href="#contact">Contact</a>
</div>
```

Now imagine if we included even more links, this navigation bar could
grow really large! This means each page that contains this code would
continue to grow along with it. Django solves this issue of copying and
pasting the same reused code from each template into something one
template called a *base template*. Some elements that might go into the
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
we want our page-specific content to go. To do this, we add *tags* to
the body of the base template. Tags are used to help extend the base
template to other templates. We’ll be going over this in more detail in
another exercise, but for now, we just need to know that tags are
created using the `{%` and `%}` symbols. Inside of these tags, we’ll be
adding `block content`, and later another tag with the content
`endblock`. This creates a block that we can add code to in other
templates. This block gives us the ability to later insert content that
is specific to individual pages. It should look like this:

``` pre__3_SOs7YT7NaHjnNunEArSM
{% block content %}
 
{% endblock %}
```

Typically only page-specific content will go inside of these tags and is
added from other templates. These blocks are usually left empty in the
base template though. Multiple blocks can be created within the base
template and then used in other templates. Blocks can be put anywhere
within the base template. This is because not everything page-specific
will necessarily go in the body.

### Instructions

**1.**

Inside of the new template **base.html**, add the following HTML
elements:

-   the `<!DOCTYPE html>`
-   the `<html>` element with two elements nested inside:
    -   the `<head>` element
    -   the `<body>` element
-   a heading (`<h1>`) to the body that says `Welcome to Vet Office!`

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

After the heading (`<h1>`) element, add a set of `{% block content %}`
and `{% endblock %}` tags to the body of the **base.html** document.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Templates

Extending the Base Template

With our base template created, we can *refactor* our other templates by
removing the common elements. Let’s say we wanted to refactor a template
for an `about/` page, it might look like:

``` pre__3_SOs7YT7NaHjnNunEArSM
<p>Welcome to your local veterinarian's office!</p>
 
<p>Feel free to call us at 123-456-7890!</p>
```

To use our base template in other templates, we need to include
`{% extends "appname/base.html" %}` at the top of our `about/` page
template:

``` pre__3_SOs7YT7NaHjnNunEArSM
{% extends "vetoffice/base.html" %}
 
<p> We're all about caring for pets!</p>
<p> Contact us at: 123-456-7890 </p>
```

But this code isn’t complete, we still need to tell our **base.html**
what block of content to include. This can be done by adding two tags to
our document before and after the paragraphs that says `block content`
and `endblock`.

``` pre__3_SOs7YT7NaHjnNunEArSM
{% extends "vetoffice/base.html" %}
 
{% block content %}
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

### Instructions

**1.**

Inside of **home.html**, remove the heading (`<h1>`) element but keep
the paragraph (`<p>`) element.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Extend **vetoffice/base.html** to **home.html** using tags so that all
of the content can be displayed later from **base.html**.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

Add the blocks to the code that will let us add the current page content
to the base template. This should be one tag before the paragraph
element and one tag after the paragraph element.

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Templates

Adding CSS to the Templates

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

``` pre__3_SOs7YT7NaHjnNunEArSM
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

``` pre__3_SOs7YT7NaHjnNunEArSM
<!-- base.html -->
<!DOCTYPE html>
<head>
  {% block head %}
 
  {% endblock %}
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

``` pre__3_SOs7YT7NaHjnNunEArSM
<!-- template_example.html -->
{% load static %}
 
{% block head %}
<link rel="stylesheet" href="{% static 'appname/file.css' %}">
{% endblock %}
```

### Instructions

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

``` pre__3_SOs7YT7NaHjnNunEArSM
p {
  color: red;
}
```

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Inside of **base.html**, add a block to the head (`<head>`) element
that’s called `head`. Add the end of the block inside of the head
element as well.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

**base.html** is now expecting some information from any file that
extends it (like **home.html**). So, let’s now set up **home.html**:

1.  Inside of **home.html**, load in static files under where
    **base.html** is extended from.
2.  Add a `head` block that will be used to fill in **base.html**‘s own
    `head` block.
3.  Inside your new `head` block, add a `<link>` with an `href` set to
    **style.css** using a tag (`{% %}`).

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Templates

Variables in Templates

Let’s explore this *Django Template Language*, or *DTL*, we’ve been
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
*variable tags*. When we add a variable in between variable tags, Django
knows that we want the value of that variable from our **views.py**
file.

For example, if we had an application that wanted to output a specific
username, we would add our variable tags with the variable name inside
of these tags, that being `username`:

``` pre__3_SOs7YT7NaHjnNunEArSM
<p>{{ username }}</p>
```

Dictionaries and variable tags work well together. In a single variable
tag, we can grab a dictionary and access all its properties! Imagine if
we stored our user’s information in a dictionary named `user`:

``` pre__3_SOs7YT7NaHjnNunEArSM
<p>{{ users.username }}</p>
```

Notice we’re able to use dot notation to access the `.username` property
of `user`. In an actual app, there should be more properties we can
access. We’ll cover how to access each individual property later when we
discuss DTL loops but now it’s time to practice using variable tags.

### Instructions

**1.**

Inside of **home.html**, edit the `<p>` inside of the content block that
says `Welcome, ~value of name~!`. Replace `~value of name~` with a
variable tag that uses the `name` variable.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Templates

Variables in Templates

Let’s explore this *Django Template Language*, or *DTL*, we’ve been
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
*variable tags*. When we add a variable in between variable tags, Django
knows that we want the value of that variable from our **views.py**
file.

For example, if we had an application that wanted to output a specific
username, we would add our variable tags with the variable name inside
of these tags, that being `username`:

``` pre__3_SOs7YT7NaHjnNunEArSM
<p>{{ username }}</p>
```

Dictionaries and variable tags work well together. In a single variable
tag, we can grab a dictionary and access all its properties! Imagine if
we stored our user’s information in a dictionary named `user`:

``` pre__3_SOs7YT7NaHjnNunEArSM
<p>{{ users.username }}</p>
```

Notice we’re able to use dot notation to access the `.username` property
of `user`. In an actual app, there should be more properties we can
access. We’ll cover how to access each individual property later when we
discuss DTL loops but now it’s time to practice using variable tags.

### Instructions

**1.**

Inside of **home.html**, edit the `<p>` inside of the content block that
says `Welcome, ~value of name~!`. Replace `~value of name~` with a
variable tag that uses the `name` variable.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Templates

Loops in Templates

When dealing with a dictionary in a Django template, we can save time by
taking advantage of DTL’s `for` loop to iterate over individual items.
Loops in DTL work like regular Python `for` loops but still require
tags.

To write a loop in DTL we’ll need to use our tags `{%` `%}` and insert
the syntax for a `for` loop. The syntax to start a `for` loop requires:

-   The `for` keyword.
-   The name of the new variables we’ll be creating in the loop.
-   An indicator saying `in`
-   The list we’ll be using in the loop.

Those will all be listed out in that order, and will be followed with an
`{% endfor %}` at the end of the loop. The loop syntax looks like:

``` pre__3_SOs7YT7NaHjnNunEArSM
{% for item in list_name %}
  <p>{{ item }}</p>
{% endfor %}
```

Inside the loop’s body, during each iteration, we can access the current
key using the temporary variable `key` inside variable tags `{{` `}}`.
We’re free to manipulate the key as a variable using standard Python
syntax. If our list contains dictionaries, we could even access the
`value` of our dictionary if we change our loop:

``` pre__3_SOs7YT7NaHjnNunEArSM
{% for key, value in dictionary_list %}
  <p>{{ key }} : {{ value }}</p>
{% endfor %}
```

Using loops, we can greatly reduce the amount of HTML we need to write
to display a lot of information!

### Instructions

**1.**

In **views.py**, we’re passing a list of dictionaries (`pets`) to the
`"home.html"` template. We can loop through this list to display all the
pets’ information on the page.

First, navigate to **home.html**, and inside this template:

-   Create a `{% for %}` loop that:
    -   has a temporary variable of `pet`
    -   loops through `pets`
-   Add the `{% endfor %}` tag as well

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Inside of the loop, add a `<p>` element that displays the pet’s name and
the type of animal, separated by a colon. For example, we would want it
to look like this: “Oreo: dog”.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Templates

Adding URLs to a Template

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

``` pre__3_SOs7YT7NaHjnNunEArSM
<a href="{% url 'path_name' %}">Sample link</a>
```

As can be seen above, the link looks very similar to a typical HTML
link, except we modify the `href` to be set to a tag much like we did
with CSS files. This tag is set to the type `url` followed by the path
name as a string.

When a path requires arguments to get to, like a username, it can be
added to the `href` after the path. We won’t go into detail regarding
this, but it would look like this:

``` pre__3_SOs7YT7NaHjnNunEArSM
<a href="{% url 'path_name' username %}">User Profile</a>
```

In this case, arguments provide additional information to the URL to
access more specific pages. Some DTL functions require arguments while
they can be optional in other places. The URL is a good instance of
where arguments are optional, but not necessary unless the path has an
argument. We’ll discuss arguments more in the next exercise.

### Instructions

**1.**

Notice that in **urls.py** we have a path for the home page with a
`name` of `"home"`.

Now, navigate to **base.html**. Inside the `<body>` element:

-   Add an `<a>` element
-   This anchor element should link to the `'home'` path (using `href`
    and a tag)
-   The `<a>`‘s text should display `Vet Office`

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Templates

Filters in Templates

With Django, variables can be modified from within the template using a
*filter*. Filters modify variables passed in from **views.py** without
the use of traditional methods like JavaScript. There are plenty of
filters that can be found in the
<a href="https://docs.djangoproject.com/en/3.1/ref/templates/builtins/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django documentation</a>, but we’ll only
cover a few in this lesson. An example filter can be seen below:

``` pre__3_SOs7YT7NaHjnNunEArSM
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

``` pre__3_SOs7YT7NaHjnNunEArSM
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

### Instructions

**1.**

Let’s first apply a filter to the `{{ name }}` variable — add a filter
that makes all the characters lowercased.

You can find the list of filters in
<a href="https://docs.djangoproject.com/en/3.1/ref/templates/builtins/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django’s documentation</a>.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Now, let’s increase the complexity.

Apply a filter to `pets` variable inside the `for` loop:

-   Use the <a
    href="https://docs.djangoproject.com/en/3.1/ref/templates/builtins/#dictsort"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">filter called <code
    class="code__2rdF32qjRVp7mMVBHuPwDS">dictsort</code></a>
-   Provide the `dictsort` filter with an argument of `"petname"`

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Templates

Review

Templates are a great way to reduce the amount of HTML that needs to be
written in a website by allowing us to extend templates into the rest of
the website to reduce repeat code. The options provided to us can help
us in a number of ways including:

-   Common elements should go inside of a base template, and any
    page-specific content should be in their own templates.
-   Static files have to be loaded in the template they’ll be used in,
    as it won’t be passed on to child templates.
-   Templates can also use DTL to help display variables, loop through
    and display dictionaries, and create conditionals within templates
    to reduce the number of templates needed for an application.
-   CSS files can be added to a template after adding a **static/**
    folder to the application. Remember that inside of **static/** there
    should be another folder named after the application.
-   Variables are great for grabbing data from **views.py** to display
    in a template.
-   `if` statements can be used in DTL to conditionally display content.
-   DTL can use `for` loops to go through lists.
-   URLs can be referenced with just the path name if the page is within
    the application. This only works with predefined paths and you
    should watch for any arguments that need to be passed.
-   Filters are useful for modifying variables within a template as you
    won’t have to write too much extra code to modify the variable
    yourself.
-   Some filters require arguments, so make sure that any filter used
    does not require any arguments.
-   Some filters also only work with specific data types, so make sure
    to research a filter before using one by looking at the
    documentation for the filter.

Great job on completing templates! Next time you write HTML in Django,
remember to take advantage of DTL to save yourself some time!

### Instructions

If you want to challenge yourself:

-   Find different filters and apply them to variables
-   Add more code to **base.html** and **home.html**
-   Add another template

Or just run wild with your imagination!

### Solution

# Learn

Build Python Web Apps with Django

Tourist Attractions with Templates

You’ll be creating an application that allows for users to see a list of
tourist attractions in each state. Users can also specify the state that
they want to see more detailed attractions with as well. You’ll be
creating the templates for this website, meaning that you’ll be creating
everything the users see using Django!

This will be done using the knowledge gained from the templates lesson,
including extending off of base templates, adding static files, and
adding filters to variables being used within the template!

### Instructions

Mark the tasks as complete by checking them off

## Creating a Base Template

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

1\.

Before you start writing any code, take a look at the overall structure
of the application. We’ve provided some code for you already to allow
you to focus just on template creation!

Things to consider and explore:

-   What’s the project name? app name?
-   What functions are provided in **views.py**?
-   What paths are in **urls.py**?

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

2\.

Now that you’ve got a general sense of the app, let’s start by creating
a base template. Right now we are getting a `TemplateDoesNotExist` error
when we try to load our application. This is Django telling us that it’s
not finding the template we’re telling it to render in the location we
told it to look. To fix this, all we have to do is add in the template.

Create **base.html** in
**tourist_attractions/templates/tourist_attractions**.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

3\.

Remember that **base.html** should contain some common elements, so add
some structure.

Inside of **base.html**, add the doctype declaration, a `<head>`
element, and a `<body>` element.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

4\.

One common feature in all apps is to allow users to be able to navigate
back to the home page.

Inside the `<body>` add a link (`<a>`) that users can click on to send
them to the `"home"` path. The text inside the link should read
`Take me home`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

5\.

Since you also want your **base.html** to be able to display
page-specific content, you’ll need to add some blocks!

-   Inside the `<head>` element, add a block called `head`. This block
    will be used for loading assets.
-   In the `<body>` element, under the `<a>` element, add another block
    called `content`. This block will be used to display page-specific
    content.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Creating the Home Page

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

6\.

Now that we have our base template created, we can start making the
homepage for the application. This will be the home of every state and
every attraction.

Create a new HTML page called **home.html** in the same location as
**base.html**.

-   Have it extend off of **base.html**
-   Add a head block
-   Add a content block

After implementing **home.html** the error in the browser should be gone
and you should see your link appear!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

7\.

Currently, our page looks a little bland, to change this we need to add
some CSS files. This can be done by loading in the static files. Then,
load in the static file `'tourist_attractions/style.css'`.

You’ll know this is done correctly when the background color changes to
a light blue.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

8\.

We want to welcome our users to the application and tell them what
they’ll be looking at. To do this, inside of the `content` block, add a
`<h1>` that says something like
`This is a list of attractions in America!`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

9\.

Now we want to show the users each attraction and what state that
attraction is in. The best way to do this would be to build a table.

Under the `<h1>` add:

-   A `<table>` element
-   Inside the table, a table row (`<tr>`) element
-   Nested in the row, individual table headings (`<th>`) for
    `Attraction`, `State`, and `State details`.

By now you should have a table header on the webpage with three columns
being `Attraction`, `State`, and `State details`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

10\.

Now that we have the table mostly built, we need to go through every
attraction and display it.

To get started with the process:

-   Inside the `<table>` and after the first row, add a `for` loop using
    DTL.
-   Have it loop through each `item` in `attractions`.
-   Sort `attractions` based on the `state` using the filter `dictsort`.
-   Make sure to include the `endfor`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

11\.

Now that we have the loop set up, we want to show everything about that
attraction.

Inside of the `for` loop, we need to add some more HTML and DTL to
display everything about the attraction. Let’s add these elements:

-   A table row (`<tr>`).
-   Inside of the table row, add a table detail element (`<td>`)
-   This `<td>` element should display `item.attraction_name`.

We’ll only see the first column displayed. But we’ll continue to work on
this table!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

12\.

We still need to fill in two other columns.

Add another `<td>` element that will render `item.state`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

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

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Creating the details page

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

14\.

Now that we have every state listed out and their attractions, we can
start going into details for each state in case a user wants to look at
attractions for specific states.

Create a template called **details.html**. Extend the template from
**base.html** and load in the CSS sheet like before.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

15\.

Inside of the content block, add an `<h1>` that says
`This is a list of tourist attractions for` followed by the state name
with the `title` filter.

Once this is added, go ahead and click on one of the state details
buttons to see what this page looks like!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

16\.

This page is going to look similar to the homepage.

Start by adding a table with the headers `Attraction` and `State` to the
`content` block.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

17\.

We still want to go through each attraction. Therefore, create a loop
similar to the one from before that goes through every item in
`attractions`. This loop should also use the `dictsort:"state"` filter.

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

18\.

One thing we want to do differently here is that we only want to display
attractions in the selected state. We know what state we want to use
because we have a variable called `statename` passed in from
**views.py**.

To do this, we are going to want to add an `if` statement that checks to
see if the attractions state is the same as `statename`. However, we
need to add the `lower` filter to the attractions state since that is
capitalized, but `statename` is not capitalized.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

19\.

Inside of the `if` statement, add a table row with two table details.
One displaying the attraction name and the other displaying the
attraction state.

If done correctly, when you click on the “State details” link, you’ll
get linked to a page that only displays that state’s attractions!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

20\.

And that’s it! We now have a website that displays attractions for any
state! Go ahead and modify **views.py** to add more states and see how
our templates react! If you want, go ahead and try to add an image on
the homepage!

### Solution
