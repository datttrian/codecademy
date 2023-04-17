# Introduction to Web Apps with Flask

Learn about the Flask microframework for creating web applications in
Python!

Welcome to the section of the course focused on getting started with
Flask. In this section, you will learn about the microframework Flask
and have the opportunity to build your own simple web application!

After creating your own application, dive into the world of templates,
which allow you to add complexity to the pages of your application by
injecting Python into your HTML.

Lastly, you will explore adding more functionality to your app with
forms, which allow you to ask users of your site for information.

Let’s get started!

# What is the Back-end?

## Front and Back

In this lesson, we’ll explain what makes up the back-end of a web
application or website. The back-end can feel very abstract, but it
becomes clearer when we explain it in terms of the front-end! To
oversimplify a bit, the front-end is the parts of a webpage that a
visitor can interact with and see.

Various tools and frameworks can be used to make a webpage, but, at its
core, the front-end is composed of JavaScript, CSS, HTML, and other
*static assets*, such as images or videos. Static assets are files that
don’t change. When a visitor navigates to a webpage, these assets are
sent to their browser.

Visiting a simple website is like ordering delivery from a restaurant:
we place an order for our meal, and, once it’s delivered to us, we have
it entirely in our possession. In this analogy, we can think of the
front-end as everything that’s dropped off with the delivery: the
containers, the utensils, and the food itself.

You’ll sometimes hear front-end development referred to as *client-side*
development. Our instinct might be to think of the client as the human
visitor or user of a website, but when referring to the client in web
development, we’re usually referring to the non-human requester of
content. In the case of visiting a website, the client is the browser,
but in other circumstances, a client might be another application, a
mobile device, or even a “smart” appliance!

While the front-end is the part of the website that makes it to the
browser, the back-end consists of all the behind-the-scenes processes
and data that make a website function and send resources to clients.



Watch the video to get a better understanding of the front-end.



[Front and
Back](https://content.codecademy.com/courses/server-side-web-dev/FrontEndCut_v1.mp4)

## The Web Server

We talked about how the front-end consists of the information sent to a
client so that a user can see and interact with a website, but where
does the information come from? The answer is a *web server*.

The word “server” can mean a lot of things in computing, but we’re going
to focus on web servers specifically. A *web server* is a process
running on a computer that listens for incoming requests for information
over the internet and sends back responses. Each time a user navigates
to a website on their browser, the browser makes a request to the web
server of that website. Every website has at least one web server. A
large company like Facebook has thousands of powerful computers running
web servers in facilities located all around the world which are
listening for requests, but we could also run a simple web server from
our own computer!

The specific format of a request (and the resulting response) is called
the *protocol*. You might be familiar with the protocol used to access
websites: HTTP. When a visitor navigates to a website on their browser,
similarly to how one places an order for takeout, they make
<a href="https://www.codecademy.com/articles/http-requests"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">an HTTP request</a> for the resources that make up that
site.

For the simplest websites, a client makes a single request. The web
server receives that request and sends the client a response containing
everything needed to view the website. This is called a *static
website*. This doesn’t mean the website is not interactive. As with the
individual static assets, a website is static because once those files
are received, they don’t change or move. A static website might be a
good choice for a simple personal website with a short bio and family
photos. A user navigating Twitter, however, wants access to new content
as it’s created, which a static website couldn’t provide.

A static website is like ordering takeout, but modern web applications
are like dining in person at a sit-down restaurant. A restaurant patron
might order drinks, different courses, make substitutions, or ask
questions of the waiter. To accomplish this level of complexity, an
equally complex back-end is required.



<img alt="Gif of a front-end making requests and a back-end responding to them." src="https://content.codecademy.com/courses/updated_images/NodeBackEndFrontEnd_Update_1.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## So What is the Back-end?

When a user navigates to google.com, their request specifies the URL but
not the filename for today’s
<a href="https://en.wikipedia.org/wiki/Google_Doodle"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google Doodle</a>. The web application’s
back-end will need to hold the logic for deciding which assets to send.
Moreover, modern web applications often cater to the specific user
rather than sending the same files to every visitor of a webpage. This
is known as *dynamic content*.

When we eat at a restaurant, we’ll order to our tastes, make
substitutions, etc; the result is a dining experience unique to us.
Aside from that, there’s a lot happening behind the scenes to make a
restaurant work: ingredients are ordered from suppliers, new menus are
designed, and employees’ schedules are created. Similarly, to make a web
application that runs smoothly, the back-end is doing a lot more than
simply sending assets to browsers.

The collection of programming logic required to deliver dynamic content
to a client, manage security, process payments, and myriad other tasks
is sometimes known as the “application” or *application server*. The
application server can be responsible for anything from sending an email
confirmation after a purchase to running the complicated algorithms a
search engine uses to give us meaningful results.



<img src="https://content.codecademy.com/courses/updated_images/Node_3_v2_text_Updated_1.svg" alt="people using computers." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Storing Data

You’ve probably heard that data is a big deal. By some measures, 90% of
the world’s data has been generated in just the past two years! From a
stored credit card number on an e-commerce site to the timestamp when
you hit pause on Netflix, modern web applications collect a lot of data.
For that data to be useful, it has to be organized and stored somewhere.

The back-ends of modern web applications include some sort of
*database*, often more than one. Databases are collections of
information. There are many different databases, but we can divide them
into two types:
<a href="https://www.codecademy.com/articles/what-is-rdbms-sql"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">relational databases</a> and
<a href="https://en.wikipedia.org/wiki/NoSQL"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">non-relational databases (also known as
NoSQL databases)</a>. Whereas relational databases store information in
tables with columns and rows, non-relational databases might use other
systems such as key-value pairs or a document storage model. *SQL*,
**S**tructured **Q**uery **L**anguage, is a programming language for
accessing and changing data stored in relational databases. Popular
relational databases include <a href="https://www.mysql.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MySQL</a> and
<a href="https://www.postgresql.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">PostgreSQL</a> while popular NoSQL
databases include <a href="https://www.mongodb.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MongoDB</a> and
<a href="https://redis.io/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Redis</a>.

In addition to the database itself, the back-end needs a way to
programmatically access, change, and analyze the data stored there.



<img src="https://content.codecademy.com/courses/updated_images/Node_4_v4_Updated_1.svg" alt="Illustration of a relational database (represented by a table) compared with an illustration of NoSQL databases (represented by Key-Value pairs and a tree)" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## What is an API?

When a user navigates to a specific item for sale on an e-commerce site,
the price listed for that item is stored in a database, and when they
purchase it, the database will need to be updated with the correct
inventory for that item type. In fact, much of what the back-end entails
is reading, updating, or deleting information stored in a database.

In order to have consistent ways of interacting with data, a back-end
will often include a *web API*. API stands for **A**pplication
**P**rogramming **I**nterface and can mean a lot of different things,
but a *web API* is a collection of predefined ways of, or rules for,
interacting with a web application’s data, often through an HTTP
request-response cycle. Unlike the HTTP requests a client makes when a
user navigates to a website’s URL, this type of request indicates how it
would like to interact with a web application’s data (create new data,
read existing data, update existing data, or delete existing data), and
it receives some data back as a response.

Let’s walk through the example of making an online purchase again, but
this time, we’ll imagine how the application’s web API might be used.
When a user presses the button to submit an order, that will trigger a
request to send them to a different view of the website, an order
confirmation page, but an additional request will be triggered from the
front-end, unseen by the user, to the web API so that the database can
be updated with the information from the order.

Some web APIs are open to the public.
<a href="https://www.instagram.com/developer/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Instagram</a>, for example, has an API
that other developers can use to access some of the data Instagram
stores. Others are only used by the web application internally—
Codecademy, for example, has a web API that employees use to accomplish
internal tasks.



<img alt="Node diagram." src="https://content.codecademy.com/courses/updated_images/Node_5v2__Updated_1.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Authorization and Authentication

Two other concepts we’ll want our server-side logic to handle are
*authentication* and *authorization*.

*Authentication* is the process of validating the identity of a user.
One technique for authentication is to use logins with usernames and
passwords. These credentials need to be securely stored in the back-end
on a database and checked upon each visit. Web applications can also use
external resources for authentication. You’ve likely logged into a
website or application using your Facebook, Google, or Github
credentials; that’s also an authentication process.

*Authorization* controls which users have access to which resources and
actions. Certain application views, like the page to edit a social media
personal profile, are only accessible to that user. Other activities,
like deleting a post, are often similarly restricted.

When building a robust web application back-end, we need to incorporate
both authentication (Who is this user? Are they who they claim to be?)
and authorization (Who is allowed to do and see what?) into our
server-side logic to make sure we’re creating secure, personalized, and
dynamic content.



<img src="https://content.codecademy.com/courses/server-side-web-dev/NodeAnimation_6.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Different Back-end Stacks

Unlike the front-end, which must be built using HTML, CSS, and
JavaScript, there’s a lot of flexibility in which technologies can be
used in order to create the back-end of a web application. Developers
can construct back-ends in many different languages like PHP, Java,
JavaScript, Python, and more.

You don’t need to reinvent the wheel to create a robust back-end.
Instead, most developers make use of *frameworks* which are collections
of tools that shape the organization of your back-end and provide
efficient ways of accomplishing otherwise difficult tasks.

There are numerous <a
href="https://developer.mozilla.org/en-US/docs/Learn/Server-side/First_steps/Web_frameworks#A_few_good_web_frameworks"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">back-end frameworks</a> from which
developers can choose. Here are a few examples:

| Framework                                                                                    | Language                                                                                                                                             |
|----------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="https://laravel.com/">Laravel</a>                                                   | <a href="http://www.php.net/">PHP</a>                                                                                                                |
| <a href="https://expressjs.com/">Express.js</a>                                              | <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript">JavaScript</a> (runs in the <a href="https://nodejs.org/en/">Node environment</a>) |
| <a href="https://rubyonrails.org">Ruby on Rails</a>                                          | <a href="https://www.ruby-lang.org/en/">Ruby</a>                                                                                                     |
| <a href="https://spring.io/">Spring</a>                                                      | <a href="https://www.oracle.com/java/">Java</a>                                                                                                      |
| <a href="https://www.oracle.com/technetwork/java/javaee/javaserverfaces-139869.html">JSF</a> | <a href="https://www.oracle.com/java/">Java</a>                                                                                                      |
| <a href="http://flask.pocoo.org/">Flask</a>                                                  | <a href="https://www.python.org/">Python</a>                                                                                                         |
| <a href="https://www.djangoproject.com/">Django</a>                                          | <a href="https://www.python.org/">Python</a>                                                                                                         |
| <a href="https://dotnet.microsoft.com/learn/aspnet/what-is-aspnet">ASP.NET</a>               | <a href="https://dotnet.microsoft.com/learn/csharp">C#</a>                                                                                           |

The collection of technologies used to create the front-end and back-end
of a web application is referred to as a *stack*. This is where the term
*full-stack developer* comes from; rather than working in either the
front-end or the back-end exclusively, a full-stack developer works in
both.

For example,
<a href="https://en.wikipedia.org/wiki/MEAN_(software_bundle)"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">the MEAN stack</a> is a technology stack
for building web applications that uses **M**ongoDB, **E**xpress.js,
**A**ngularJS, and **N**ode.js: MongoDB is used as the database, Node.js
with Express.js for the rest of the back-end, and Angular is used as a
front-end framework. While the
<a href="https://en.wikipedia.org/wiki/LAMP_(software_bundle)"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">LAMP Stack</a>, sometimes considered the
archetypal stack, uses **L**inux, **A**pache, **M**ySQL, and **P**HP.



<img src="https://content.codecademy.com/courses/updated_images/Coders-2_Updated_1.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0" alt="Art of coders coding.">

## Review

In order to deliver the front-end of a website or web application to a
user, a lot needs to happen behind the scenes on the back-end!
Understanding what makes up the back-end can be overwhelming because the
back-end has a lot of different parts, and different websites or web
applications can have dramatically different back-ends. We covered a lot
in this lesson, so let’s review what we learned:

- The front-end of a website or application consists of the HTML, CSS,
  JavaScript, and static assets sent to a client, like a web browser.
- A web server is a process running on a computer somewhere that listens
  for incoming requests for information over the internet and sends back
  responses.
- Storing, accessing, and manipulating data is a large part of a web
  application’s back-end
- Data is stored in databases which can be relational databases or NoSQL
  databases.
- The server-side of a web application, sometimes called the application
  server, handles important tasks such as authorization and
  authentication.
- The back-end of web application often has a web API which is a way of
  interacting with an application’s data through HTTP requests and
  responses.
- Together the technologies used to build the front-end and back-end of
  a web application are known as the stack, and many different languages
  and frameworks can be used to build a robust back-end.

Now that you have a sense for server-side web development and what the
back-end is, you’re ready to dive in and learn about the different parts
in more depth!



<img src="https://content.codecademy.com/courses/server-side-web-dev/Node_8.svg" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

# HTTP Requests

Understand the basics of how your web browser communicates with the
internet.

## Background:

This page is generated by a web of HTML, CSS, and Javascript, sent to
you by Codecademy via the internet. The internet is made up of a bunch
of resources hosted on different servers. The term “resource”
corresponds to any entity on the web, including HTML files, stylesheets,
images, videos, and scripts. To access content on the internet, your
browser must ask these servers for the resources it wants, and then
display these resources to you. This protocol of requests and responses
enables you view *this* page in your browser.

This article focuses on one fundamental part of how the internet
functions: HTTP.

## What is HTTP?

HTTP stands for Hypertext Transfer Protocol and is used to structure
requests and responses over the internet. HTTP requires data to be
transferred from one point to another over the network.

The transfer of resources happens using TCP (Transmission Control
Protocol). In viewing this webpage, TCP manages the channels between
your browser and the server (in this case, codecademy.com). TCP is used
to manage many types of internet connections in which one computer or
device wants to send something to another. HTTP is the command language
that the devices on both sides of the connection must follow in order to
communicate.

## HTTP & TCP: How it Works

When you type an address such as <a href="https://codecademy.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">www.codecademy.com</a> into your browser,
you are commanding it to open a TCP channel to the server that responds
to that URL (or Uniform Resource Locator, which you can read more about
on <a href="https://en.wikipedia.org/wiki/Uniform_Resource_Locator"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Wikipedia</a>). A URL is like your home
address or phone number because it describes how to reach you.

In this situation, your computer, which is making the request, is called
the client. The URL you are requesting is the address that belongs to
the server.

Once the TCP connection is established, the client sends a HTTP *GET*
request to the server to retrieve the webpage it should display. After
the server has sent the response, it closes the TCP connection. If you
open the website in your browser again, or if your browser automatically
requests something from the server, a new connection is opened which
follows the same process described above. GET requests are one kind of
HTTP method a client can call. You can learn more about the other common
ones (*POST*, *PUT* and *DELETE*) in
<a href="https://www.codecademy.com/articles/what-is-rest"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">this article</a>.

Let’s explore an example of how GET requests (the most common type of
request) are used to help your computer (the client) access resources on
the web.

Suppose you want to check out the latest course offerings from
<a href="http://codecademy.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://codecademy.com</a>. After you type
the URL into your browser, your browser will extract the `http` part and
recognize that it is the name of the network protocol to use. Then, it
takes the domain name from the URL, in this case “codecademy.com”, and
asks the internet Domain Name Server to return an Internet Protocol (IP)
address.

Now the client knows the destination’s IP address. It then opens a
connection to the server at that address, using the `http` protocol as
specified. It will initiate a GET request to the server which contains
the IP address of the host and optionally a data payload. The GET
request contains the following text:

    GET / HTTP/1.1
    Host: www.codecademy.com

This identifies the type of request, the path on
<a href="https://codecademy.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">www.codecademy.com</a> (in this case,
“/“) and the protocol “HTTP/1.1.” HTTP/1.1 is a revision of the first
HTTP, which is now called HTTP/1.0. In HTTP/1.0, every resource request
requires a separate connection to the server. HTTP/1.1 uses one
connection more than once, so that additional content (like images or
stylesheets) is retrieved even after the page has been retrieved. As a
result, requests using HTTP/1.1 have less delay than those using
HTTP/1.0.

The second line of the request contains the address of the server which
is `"www.codecademy.com"`. There may be additional lines as well
depending on what data your browser chooses to send.

If the server is able to locate the path requested, the server might
respond with the header:

    HTTP/1.1 200 OK
    Content-Type: text/html

This header is followed by the content requested, which in this case is
the information needed to render <a href="https://codecademy.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">www.codecademy.com</a>.

The first line of the header, `HTTP/1.1 200 OK`, is confirmation that
the server understands the protocol that the client wants to communicate
with (`HTTP/1.1`), and an
<a href="https://en.wikipedia.org/wiki/List_of_HTTP_status_codes"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">HTTP status code</a> signifying that the
resource was found on the server. The second line,
`Content-Type: text/html`, shows the type of content that it will be
sending to the client.

If the server is not able to locate the path requested by the client, it
will respond with the header:

    HTTP/1.1 404 NOT FOUND

In this case, the server identifies that it understands the HTTP
protocol, but the `404 NOT FOUND` status code signifies that the
specific piece of content requested was not found. This might happen if
the content was moved or if you typed in the URL path incorrectly or if
the page was removed. You can read more about the 404 status code,
commonly called a 404 error,
<a href="https://www.codecademy.com/articles/http-errors-404"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">here</a>.

## An Analogy:

It can be tricky to understand how HTTP functions because it’s difficult
to examine what your browser is actually doing. (And perhaps also
because we explained it using acronyms that may be new to you.) Let’s
review what we learned by using an analogy that could be more familiar
to you.

Imagine the internet is a town. You are a client and your address
determines where you can be reached. Businesses in town, such as
Codecademy.com, serve requests that are sent to them. The other houses
are filled with other clients like you that are making requests and
expecting responses from these businesses in town. This town also has a
crazy fast mail service, an army of mail delivery staff that can travel
on trains that move at the speed of light.

Suppose you want to read the morning newspaper. In order to retrieve it,
you write down what you need in a language called HTTP and ask your
local mail delivery staff agent to retrieve it from a specific business.
The mail delivery person agrees and builds a railroad track (connection)
between your house and the business nearly instantly, and rides the
train car labeled “TCP” to the address of the business you provided.

Upon arriving at the business, she asks the first of several free
employees ready to fulfill the request. The employee searches for the
page of the newspaper that you requested but cannot find it and
communicates that back to the mail delivery person.

The mail delivery person returns on the light speed train, ripping up
the tracks on the way back, and tells you that there was a problem “404
Not Found.” After you check the spelling of what you had written, you
realize that you misspelled the newspaper title. You correct it and
provide the corrected title to the mail delivery person.

This time the mail delivery person is able to retrieve it from the
business. You can now read your newspaper in peace until you decide you
want to read the next page, at which point, you would make another
request and give it to the mail delivery person.

## What is HTTPS?

Since your HTTP request can be read by anyone at certain network
junctures, it might not be a good idea to deliver information such as
your credit card or password using this protocol. Fortunately, many
servers support HTTPS, short for HTTP Secure, which allows you to
encrypt data that you send and receive. You can read more about HTTPS on
<a href="https://en.wikipedia.org/wiki/HTTPS#Difference_from_HTTP"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Wikipedia</a>.

HTTPS is important to use when passing sensitive or personal information
to and from websites. However, it is up to the businesses maintaining
the servers to set it up. In order to support HTTPS, the business must
apply for a certificate from a
<a href="https://en.wikipedia.org/wiki/Certificate_authority"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Certificate Authority</a>.

# Build Your First Flask App

## Introduction

<a href="https://flask.palletsprojects.com/en/1.1.x/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Flask</a> is a popular Python framework
for developing web applications. Classified as a *microframework*, it
comes with minimal built-in components and requirements, making it easy
to get started and flexible to use. At the same time, Flask is by no
means limited in its ability to produce a fully featured app. Rather, it
is designed to be easily extensible, and the developer has the liberty
to choose which tools and libraries they want to utilize. As such, Flask
is capable of creating both simple static websites as well as more
complex apps that involve database integration, accounts and
authentication, and more!

In this lesson, we’ll start by looking at an example of a minimal Flask
application. It will display the text, `Hello, World!` on the webpage.
You’ll learn how to create this and build on top of it in the following
exercises.

Let’s get started!



Click `Run` to start the app. Feel free to take a look at the code in
**app.py** and move on when you’re ready!

Notice that the app is being run in **<a href="http://localhost:5000/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/</a>** on the
embedded browser. For now, this app is just running locally and can only
be accessed there.



``` python
from flask import Flask

app = Flask(__name__)


@app.route('/')
def home():
    return 'Hello, World!'
```

## Instantiate Flask Class

We’ll now break down each step in creating a minimal Flask app. The
Python module that contains all the classes and functions needed for
building a Flask app is called `flask`.

We can begin building our app by importing the `Flask` class, which is
needed to create the main application object, from the `flask` module:

``` python
from flask import Flask
```

Now, we can create an instance of the `Flask` class. Let’s save the
application object in a variable called `app`:

``` python
app = Flask(__name__)
```

When creating a `Flask` object, we need to pass in the name of the
application. In this case, because we are working with a single module,
we can use the special Python variable, `__name__`.

The value of `__name__` depends on how the Python script is executed. If
we run a Python script directly, such as with `python app.py` in the
terminal, then `__name__` is equal to the string `'__main__'`. On the
other hand, if the script is being imported as a module into another
Python script, then `__name__` would be equal to its filename.

As we’ll see in the next exercise, this distinction can be useful when
we have code that we want to be run only if the script is executed a
particular way.



**1.**

Import the `Flask` class from the `flask` module at the top of
**app.py**.

**2.**

Create an instance of the `Flask` class, passing in `__name__`, and save
the object to a variable called `app`.

**3.**

At the bottom of the script, try printing `__name__`. Then, run
**app.py**.

What is the value of `__name__`?



``` python
from flask import Flask

app = Flask(__name__)

print(__name__)
```

## Routing

Each time we visit a URL in a browser, it makes a request to the web
server, which processes the request and returns a response back to the
browser. In our Flask app, we can create *endpoints* to handle the
various requests. Requests from different URLs can be directed to
different endpoints in a process called *routing*.

To build a route, we need to first define a function, known as a *view
function*, that contains the code for processing the request and
generating a response. The response could be something as simple as a
string of text. Then, we can use the `route()` decorator to bind a URL
to the view function such that the function will be triggered when the
URL is visited:

``` python
@app.route('/')
def home():
    return 'Hello, World!'
```

The `route()` decorator takes the URL path as parameter, or the part of
the URL that follows the domain name. All URL paths must start with a
leading slash. In the above example, if we visit
<a href="http://localhost:5000/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/</a> in the
browser, `Hello, World!` will be displayed on the webpage.

Multiple URLs can also be bound to the same view function:

``` python
@app.route('/')
@app.route('/home')
def home():
    return 'Hello, World!'
```

Now, both <a href="http://localhost:5000/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/</a> and
<a href="http://localhost:5000/home"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/home</a> will
display `Hello, World!`.



**1.**

Define a function called `home()` that returns `'Hello, World!'`

**2.**

Use the `route()` decorator to bind the URL path `'/'` to the view
function.

Run **app.py** and view your page at <a href="http://localhost:5000/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/</a> in the
browser. What do you see?

**3.**

Bind a second URL path `'/home'` to the `home()` function.

Navigate to <a href="http://localhost:5000/home"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/home</a> in the
browser.

**4.**

Let’s create another route! Define a function called `reporter()` that
returns `'Reporter Bio'` and is bound to the path `'/reporter`.

Navigate to <a href="http://localhost:5000/reporter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/reporter</a> in the
browser.



``` python
from flask import Flask

app = Flask(__name__)


@app.route('/')
@app.route('/home')
def home():
    return 'Hello, World!'


@app.route('/reporter')
def reporter():
    return 'Reporter Bio'
```

## Render HTML

The response we return from a view function is not limited to plain text
or data. It can also return HTML to be rendered on a webpage:

``` python
@app.route('/')
def home():
    return '<h1>Hello, World!</h1>'
```

We can use triple quotes to contain multi-line code:

``` python
@app.route('/')
@app.route('/home')
def home():
    return '''
    <h1>Hello, World!</h1>
    <p>My first paragraph.</p>
    <a href="https://www.codecademy.com">CODECADEMY</a>
    '''
```



**1.**

Update your `home()` function to return `Hello, World!` as a `<h1>`
heading.

Run **app.py** and view your page at <a href="http://localhost:5000/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/</a> in the
browser.

**2.**

Now, update `reporter()` to return `Reporter Bio` as a `<h2>` heading.

Navigate to <a href="http://localhost:5000/reporter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/reporter</a> in the
browser.

**3.**

Let’s add another tag to the HTML in `reporter()`! After the `<h2>`
heading, add an `<a>` tag with the text `Return to home page` that links
back to <a href="http://localhost:5000/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/</a>. To have the
code run properly in the learning environment, use just the relative
path `"/"` as the `href` attribute.

Run the app and try clicking on the link you created!



``` python
from flask import Flask

app = Flask(__name__)


@app.route('/')
@app.route('/home')
def home():
    return '<h1>Hello, World!</h1>'


@app.route('/reporter')
def reporter():
    return '''
    <h2>Reporter Bio</h2>
    <a href="/">Return to home page</a>
    '''
```

## Variable Rules

We’ve seen how the `route()` decorator can be used to bind one or more
static URLs to a view function. But what if we want to handle a set of
URLs that may be constantly changing? Let’s take a look at how we can
use variable rules to allow for dynamic URLs.

When specifying the URL to bind to a view function, we have the option
of making any section of the path between the slashes (`/`) variable by
indicating `<variable_name>`. These variable parts will then be passed
to the view function as arguments. For example:

``` python
@app.route('/orders/<user_name>/<int:order_id>')
def orders(user_name, order_id):
    return f'<p>Fetching order #{order_id} for {user_name}.</p>'
```

Now, URLs like `'/orders/john/1'` and `'/orders/jane/8'` can all be
handled by the `orders()` function.

Note that we can also optionally enforce the type of the variable being
accepted using the syntax: `<converter:variable_name>`. The possible
converter types are:

| string | accepts any text without a slash (default) |
|--------|--------------------------------------------|
| int    | accepts positive integers                  |
| float  | accepts positive floating point values     |
| path   | like string but also accepts slashes       |
| uuid   | accepts UUID strings                       |



**1.**

Update the `reporter` endpoint to handle requests from individual
reporter pages whose URL path follows the pattern `'/reporter/#'`.

Add a variable section called `reporter_id` to the URL passed to the
`route()` decorator. Use a converter to specify that the variable part
must be a positive integer.

**2.**

Next, update the `reporter()` function to take a parameter called
`reporter_id`. In the function body, modify the `<h2>` heading to read
`Reporter # Bio`, where `#` is the `reporter_id`.

**3.**

Run **app.py**. Try visiting various reporter pages such as
<a href="https://localhost/reporter/1"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">https://localhost/reporter/1</a> or
<a href="https://localhost/reporter/1000"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">https://localhost/reporter/1000</a>!



``` python
from flask import Flask

app = Flask(__name__)


@app.route('/')
@app.route('/home')
def home():
    return '<h1>Hello, World!</h1>'


@app.route('/reporter/<int:reporter_id>')
def reporter(reporter_id):
    return f'''
    <h2>Reporter {reporter_id} Bio</h2>
    <a href="/">Return to home page</a>
    '''
```

## Review

Congratulations on building your first Flask app!

You’ve learned to:

- Import the `Flask` class and create an application object

  ``` python
  from flask import Flask
  app = Flask(__name__)
  ```

- Define routes for handling requests sent from various URLs

  ``` python
  @app.route('/')
  def home():
    return '<h1>Hello, World!</h1>'
  ```

- Create variable rules to handle dynamic URLs

  ``` python
  @app.route('/orders/<user_name>/<int:order_id>')
  def orders(user_name, order_id):
    return f'<p>Fetching order #{order_id} for {user_name}.</p>'
  ```

Time to put what you’ve learned to the test!



**1.**

Define a third view function called `article()` that is bound to the URL
path `'/article'`. The function should return an `<a>` tag with the text
`Return back to home page` that links to `"/"`.

Run **app.py** in the terminal and navigate to
<a href="http://localhost:5000/article"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:5000/article</a> in the
browser.

**2.**

Now, add a variable rule such that a URL whose path follows the pattern
`'/article/X'` will trigger the `article()` function. Name the variable
part `article_name`.

**3.**

Update the `article()` function to take a parameter called
`article_name`. Since this value is the URL slug, assume `article_name`
will be all lower-cased with hyphens separating each word. For example,
`article_name` could look like this:

``` python
ten-ducks-enter-local-pond
```

In the function body, replace the hyphens with spaces and turn the text
to title-case. Then, before the `<a>` element in the returned HTML, add
a `<h2>` heading containing the formatted title. Check the hint for
guidance on how to make these formatting changes.

Try visiting various article pages such as
<a href="http://localhost:5000/article/my-first-flask-app"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"
rel="noopener">http://localhost:5000/article/my-first-flask-app</a>!



``` python
from flask import Flask

app = Flask(__name__)


@app.route('/')
@app.route('/home')
def home():
    return '<h1>Hello, World!</h1>'


@app.route('/reporter/<int:reporter_id>')
def reporter(reporter_id):
    return f'''
    <h2>Reporter {reporter_id} Bio</h2>
    <a href="/">Return to home page</a>
    '''
@app.route('/article/<article_name>')
def article(article_name):
  return f'''
  <h2>{article_name.replace('-', ' ').title()}</h2>
  <a href='/'>Return back to home page</a>
  '''
```

# Adopt a Pet

Imagine you are looking to add a new furry friend to your family! On the
pet adoption website, you browse through the categories of animals and
select the one you’re interested in, which brings you to another page
that contains a list of available pets. Then, you continue your search
by further clicking on an individual pet to view its profile page.

Every time you navigate to a different webpage, your browser is making a
request to the web server. Thanks to routing, the server knows exactly
which endpoint should handle the request and can return the correct HTML
page to display.

In this project, you’ll use Python’s Flask framework to create a simple
pet adoption site that contains multiple routes.

Let’s get started!

## Instructions

Mark the tasks as complete by checking them off

### Set up the Flask app

1\.

At the top of **app.py**, import the `Flask` class from the `flask`
module.

If you run your code now, you will see a `NoAppException` error, but we
will fix that in the next step when you create your app!

2\.

Create an instance of the `Flask` class, passing in `__name__`, and save
the object to a variable called `app`.

If you run your code now, you will see a URL not found error, but we
will fix that in the next step when you create your first route!

### Create the index route

3\.

To create the `index` route, first define a function called `index()`
that returns an HTML `<h1>` element with the text `Adopt a Pet!`.
Remember that HTML can be returned as a string.

4\.

Use the `route()` decorator to bind the URL path `'/'` to the `index()`
function.

Run your code now and you should see the heading displayed on the page!

5\.

Let’s add some more elements to the page. Right after the `<h1>`
element, add a `<p>` element that contains the text
`Browse through the links below to find your new furry friend:`.

6\.

Now after the `<p>` element, create an unordered list using `<ul>`. The
bulleted list should contain three items: `Dogs`, `Cats`, and `Rabbits`.
Remember to use `<li>` to create each item.

### Create the animals route

7\.

The site is looking good so far! The next step is to create individual
pages for each animal type and link them in the bulleted list. To do
that, we’ll add a new `animals` route.

First, define a function called `animals()`. In the function body,
create a string containing an `<h1>` element with the text
`List of pets`, and assign it to the variable `html`. Return `html` from
the function.

8\.

Use the `route()` decorator to associate the `animals()` function with
the URL pattern `'/animals/X'`, where `X` is a variable section of the
URL. Name the variable part `pet_type`.

9\.

Next, update the `animals()` function to take a parameter called
`pet_type`. In the function body, modify the `<h1>` heading to read
`List of X`, where `X` is `pet_type`.

10\.

We’re ready to create links on the index page that links to each
individual animal page! Inside the `index()` function, turn each
bulleted list item into a link by adding an `<a>` element within each
`<li>` element:

- `Dogs` should link to `'/animals/dogs'`
- `Cats` should link to `'/animals/cats'`
- `Rabbits` should link to `'/animals/rabbits'`

Now run your code and try clicking on the links!

### Populate page content

11\.

Using the file navigator near the top left corner of the code editor,
open up **helper.py**. This file contains a dictionary named `pets` that
contains some data that we can use to populate the webpages.

The `pets` dictionary contains three elements, one for each animal type.
The key is the animal type and the value is a list of dictionaries, each
of which contains info about an individual pet.

Start by importing the `pets` dictionary at the top of **app.py**.

12\.

Inside the `animals()` function, you’ll be modifying `html` to display
the names of all available pets that are of `pet_type`.

Right before the `return` statement, create a for loop that iterates
over each element in the list of pets. You can access the appropriate
list of pets in the `pets` dictionary by the key, `pet_type`. Inside the
loop, create a `<li>` element for each pet’s name and concatenate the
string to `html`.

Then, make sure to concatenate the opening `<ul>` tag to `html` before
the loop and the closing `</ul>` tag after the loop, such that the
`<li>` elements would be nested inside the `<ul>` element.

If you run your code and navigate to each animal page, you can see a
bulleted list of available pets!

### Create the pet route

13\.

The next step is to create and link to individual profile pages for each
pet. To do that, we’ll add a new `pet` route.

Define a function called `pet()` that is associated with the URL pattern
`'/animals/X/#'`, where `X` and `#` are variable sections of the URL.
The section indicated by `X` should be called `pet_type` and the section
indicated by `#` should be called `pet_id`. Use a converter to specify
that `pet_id` must be a positive integer.

Then, pass `pet_type` and `pet_id` to the `pet()` function.

14\.

In the function body, create a variable called `pet` that stores the
profile information of the pet who is of `pet_type` and has index
position `pet_id` in its list of pets.

In other words, first access the appropriate list of pets in the `pets`
dictionary by the key, `pet_type`. Then, access the appropriate
dictionary in the list of pets by the index position, `pet_id`.

Your resulting `pet` dictionary will look like this:

``` python
{
  'name': ...,
  'age': ...,
  'breed': ...,
  'description': ...,
  'url': ...
}
```

15\.

Return an HTML `<h1>` element containing the pet’s name from the `pet()`
function. You can access the pet’s name from the `pet` dictionary you
created in the previous step.

16\.

Now, we’re ready to create links on the animal page that links to each
individual pet profile page! Inside the `animals()` function, turn each
bulleted list item into a link by adding an `<a>` element within each
`<li>` element.

The URL we want to link to should follow the pattern `'/animals/X/#'`,
where `X` is `pet_type` and `#` is the index position. In order to get
the latter, we must modify the for loop by using `enumerate()` to
simultaneously loop over indices.

Once you’re done, run your code and try navigating to an individual
pet’s profile page.

17\.

Finally, let’s add some more content to the profile page! Inside the
`pet()` function, right after the `<h1>` element, add the following
elements to display the profile info stored in the `pet` dictionary:

- `<img>` to display the photo at the given URL
- `<p>` that contains the pet’s description
- `<ul>` with two `<li>` for the pet’s breed and age

## Solution

# Flask Templates

## Introduction

When you navigate through a website you may notice that many of the
pages on the site have a similar look and feel. This aspect of a website
can be achieved with the use of *templates*. In this lesson the term
*template* refers to an HTML file that can represent multiple web pages
with the same structure and functionality.

We will be using the Flask framework for our application in this lesson.
Flask uses the <a href="https://jinja.palletsprojects.com/en/2.11.x/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Jinja2 template engine</a> to render HTML
files that include application variables and control structures. The
Jinja2 template engine is a powerful tool that supports an organized and
growth oriented application.

In this lesson we will look at:

- How to organize our site file structure
- Use our application data with our templates
- Leverage control structures within our templates
- Share common elements across many templates

The application we will be building in the following exercises is a
cookbook site that consists of a main page and individual recipe pages.
Currently our app consists of 2 routes that return HTML strings for the
browser to display. Explore the application to begin your path to
learning templates!



**1.**

Let’s explore the cookbook Flask application. Right now our app has two
route functions, each returning a basic HTML string. Our routes are:

1.  The `index` route function for a title page and recipe list
2.  The `recipe` route function for details of a single recipe

Looking at the app’s import statement we can see our app contains a file
called **helper.py** which includes 4 dictionaries: `names`,
`descriptions`, `ingredients` and `instructions`. Using a recipe `id` as
a key, we can access the data in each dictionary.

Here is a description of our data given a specific recipe `id`:

- `recipes[id]` is a string and is the display name of the recipe.
- `descriptions[id]` is a string and is a brief description of the
  recipe.
- `ingredients[id]` is a list of ingredient strings.
- `instructions[id]` is a dictionary whose key correspond to the step
  number and the values are the step instructions.

We’ll be using these variables from **helper.py** throughout the lesson.
To access the correct recipe data we need to refresh our knowledge of
passing variables between routes through the URL. Run the code when
you’re ready!

**2.**

The `index` route HTML there is a hyperlink where the URL points to the
recipe route and the recipe `id` 1.

``` python
<a href="/recipe/1">Fried Egg</a>
```

The `id` is used as the key for all the data in **helper.py**, but we
need to be able access it first.

In the recipe route, add the variable `id` as an integer to receive the
correct recipe data.

- In the route decorator, add the variable to the URL making sure to
  specify the data type as an `int`.
- In the route function, add the variable as a parameter.

Run the code and navigate to the recipe page using the link. You can see
the recipe data from **helper.py** is output on separate lines in the
web browser. If you look back at the recipe route, each variable is
contained inside the HTML string. The list and dictionary are string
representations of the variables.

Proceed to the next exercise to begin working with templates!



``` python
from flask import Flask
from helper import recipes, descriptions, ingredients, instructions

app = Flask(__name__)

@app.route('/')
def index():
  return '''
    <!DOCTYPE html>
    <html>
      <body>
        <h1>Cooking By Myself</h1>
        <p>Welcome to my cookbook. These are recipes I like.</p>
        <a href="/recipe/1">Fried Egg</a>
      </body>
    </html>
    '''

#### Add the variable `id` to the route URL
#### and make it the sole function parameter
@app.route("/recipe/<int:id>")
def recipe(id):
  return '''
    <!DOCTYPE html>
    <html>
      <body>
        <a href="/">Back To Recipe List</a>
        <p>names[id] = ''' + recipes[id] + '''</p>
        <p>descriptions[id] = ''' + descriptions[id] + '''</p>
        <p>ingredients[id] = ''' + str(ingredients[id]) + '''</p>
        <p>instructions[id] = ''' + str(instructions[id]) + '''</p>
      </body>
    </html>
    '''
```

## Rendering Templates

Having routes return full web pages as strings is not a realistic way to
build our site. Containing our HTML in files is the standard and more
organized approach to structuring our web app.

To work with files, which we will call templates, we use the Flask
function `render_template()`. Used in the return statement, this
function takes a template file name as an argument and returns the
content to send to the client. It uses the Jinja2 template engine to
generate HTML using the template file as blueprint.

``` python
return render_template("my_template.html")
```

To use `render_template()` in our routes we need to import it from the
`flask`. A simple app with an index route would look like this.

``` python
from flask import Flask, render_template
 
app = Flask(__name__)
 
@app.route("/")
def index():
    return render_template("index.html")
```

Inside the application directory `render_template()` looks for templates
inside a directory called **templates**. All template files should be
kept inside this directory. To view the application file structure in
this exercise click the folder icon in the top left corner of the code
editor.



**1.**

First thing to do is familiarize yourself with the directory structure.
You can open the file picker by clicking the folder icon on the top left
of the code editor.

Inside the templates directory open **index.html**. You’ll notice the
HTML from the previous exercise is now in the file. Run the code when
you’re ready.

**2.**

In the `index` route replace the empty string with `render_template()`
to generate HTML from the **index.html** template.

**3.**

Along with **index.html** there is a recipe template called
**fried_egg.html**. In the `recipe` route’s return statement replace the
empty string with `render_template()` to generate the HTML from
**fried_egg.html**.

When you run the code you can navigate the site between the 2 routes.
The index HTML is the same as in the previous exercise except the HTML
is contained in a file. The data in **fried_egg.html** has been hard
coded in the file for this exercise.

Move on to the next exercise to see how we can start using variables to
bring our data dynamically to our files.



``` html
<!DOCTYPE html>
<html>
  <body>
    <h1>Cooking By Myself</h1>
    <p>Welcome to my cookbook. These are recipes I like.</p>
    <a href="/recipe/1">Fried Egg</a>
  </body>
</html>
```

``` html
<!DOCTYPE html>
<html>
    <body>
        <a href="/">Back To Recipe List</a>
        <h1>Fried Egg</h1>
        <p>A classic recipe.</p>
        <h3>Ingredients</h3>
      
        <ul>
            <li>1 Egg</li>
            <li>1/4 Tbsp Butter</li>
            <li>Pinch of Salt</li>
        </ul>

        <h3>Instructions</h3>
        <ol>
            <li>Melt butter in pan over medium-low heat</li>
            <li>Crack the egg into the buttered pan</li>
            <li>Sprinkle the pinch of salt onto cooking egg</li>
            <li>Flip egg after about a minute and a half</li>
            <li>Serve egg after about a minute and a half</li>
        </ol>
    </body>
</html>
```

``` python
from flask import Flask, render_template
from helper import recipes, descriptions, ingredients, instructions

app = Flask(__name__)

@app.route('/')
def index():
  
  #### Return a rendered index.html file
  return render_template("index.html")

@app.route("/recipe/<int:id>")
def recipe(id):
    
  #### Return a rendered index.html file
  return render_template("fried_egg.html")
```

``` python
recipes = {1: "fried egg", 2: "buttered toast"}
descriptions = {1: 'Egg fried in butter', 2: 'Toasted bread spread with butter'}
ingredients = {1: ['1 pad of butter', '1 Egg', 'A pinch of salt'], 2: ['1 pad of salted butter', '1 slice of bread']}
instructions = {1: {'Step 2': 'Crack the egg into the buttered pan', 'Step 5': 'Serve egg after about a minute and a half', 'Step 1': 'Melt butter in pan over medium-low heat', 'Step 4': 'Flip egg after about a minute and a half', 'Step 3': 'Sprinkle the pinch of salt onto cooking egg',},
                2: {'Step 3': 'Put the pad of butter on the toasted bread', 'Step 4': 'After a minute spread the melted butter onto the bread', 'Step 1': 'Put the bread in the toaster', 'Step 2': 'Take the toast out of the toaster'}}
```

## Template Variables

Instead of having an HTML file for each recipe, it would be a lot easier
having one file for many recipes. Being able to pass data to template
files is how we can begin to accomplish this goal.

After the filename argument in `render_template()` we can add keyword
arguments to be used as variables within the template. These variables
are assigned values or app data we would like to access within the
template.

``` python
flask_variable = "Text for my template"
 
render_template("my_template.html", 
                 template_variable=flask_variable)
```

In this example we’re assigning the value of `flask_variable` to
`template_variable` which can be used in **my_template.html**. To add
more than one variable separate each assignment with a comma.

``` python
render_template("my_template.html", 
                template_var1="A string!", 
                template_var2=100)
```

Our template now has access to the variables `template_var1` and
`template_var2` which hold a string and an integer respectively.

App data can be passed as literal values or the values stored inside
variables. We can pass strings, integers, lists, dictionaries or any
other objects to our templates.

It is possible to give keyword arguments and the assignment variables
the same name `var1=var1`. For these exercises all variables from our
flask app will start with `flask` and all template variables will start
with `template`.

To access the variables in our templates we need to use the expression
delimiter: `{{ }}`.

``` python
{{ template_variable }}
```

The delimiter can be used inline with text and alongside HTML elements.

``` python
<h1>My Heading: {{ template_variable }}</h1>
```

Certain operations can be performed inside expression delimiters
`{{ }}`.

With `template_variable = 20`.

``` python
<p>Template number plus ten: {{ template_variable + 10 }}</p>
 
OUTPUT
Template number plus ten: 30
```

List and dictionary elements can be accessed individually inside the
expression delimiters `{{ }}`.

With `template_list = ["A", "B", "C"]`

``` python
<p>Element at index 1: {{ template_list[1] }}</p>
 
OUTPUT
Element at index 1: B
```



**1.**

We’ve replaced the **fried_egg.html** template with a new template,
**recipe.html**. This starts the process of using one template for many
web pages.

In **recipe.html** find the first delimiter `{{ }}` and note the
variable name `template_recipe`. The string inside this variable will be
used as the header for the page.

Go to **app.py** and add a keyword argument to the `recipe` route’s
`render_template()` function. Assign the value of `recipes[id]` to
`template_recipe`.

**2.**

Good job!!. Let’s add 2 more variable assignments to
`render_template()`.

- Assign `descriptions[id]` to `template_description`.
- Assign `ingredients[id]` to `template_ingredients`.

**3.**

Great!! Navigate to the recipe page in the web browser and you’ll see
the description is now showing, but the ingredients list is still empty.

Go to **recipe.html** and populate the ingredients list using explicit
indexes for `template_ingredients`. Add one element per `<li>` statement
in the template. Be sure to start your index at 0 and list all three
ingredients from the list.

Don’t forget to use the delimiters `{{ }}`.

Once you run the code you may start to see that even though there’s
currently one recipe, **recipe.html** can be used to display multiple
recipes.



``` html
<!DOCTYPE html>
<html>
  <body>
    <a href="/">Back To Recipe List</a>
    <h1>{{ template_recipe }}</h1>
    <p>{{ template_description }}</p>
    <h3>Ingredients</h3>
    <ul>
      <!-- Ingredients list elements
      should fill the <li> tags -->
      <li>{{ template_ingredients[0] }}</li>
      <li>{{ template_ingredients[1] }}</li>
      <li>{{ template_ingredients[2] }}</li>
    </ul>
  </body>
</html>
```

``` python
from flask import Flask, render_template
from helper import recipes, descriptions, ingredients

app = Flask(__name__)

@app.route('/')
def index():
  return render_template("index.html")

@app.route("/recipe/<int:id>")
def recipe(id):
  #### Add template variables as 
  #### variable assignment arguments
  return render_template("recipe.html", template_recipe=recipes[id], template_description=descriptions[id], template_ingredients=ingredients[id])
```

## Variable Filters

Now that we can use variables in our templates, let’s look at different
ways we can perform actions on them.

*Filters* are used by the template engine to act on template variables.
To use them simply follow the variable with the filter name inside the
delimiter and separate them with the `|` character.

    {{ variable | filter_name }}

The character `|` separating the variable and the filter is called a
*pipe* or *vertical bar*.

The filter `title` acts on a string variable and capitalizes the first
letter in every word. This is good for using as formatting on heading
strings. Given the variable assignment
`template_heading = "my very interesting website"`.

    {{ template_heading |  title }}
     
    OUTPUT
    My Very Interesting Website

Notice that the first letter of every word is now capitalized.

Filters can also take arguments. The `default` filter will output the
text in its argument when a variable isn’t passed to the template.
Consider if `no_template_variable` is missing from the
`render_template()` arguments.

    {{ no_template_variable | default("I am not from a variable.") }}
     
    OUTPUT
    I am not from a variable.

The `default` filter does not work on empty strings `""` or `None`
values. We will look at this scenario in the next exercise.

While filters perform more complex functions than simple operators, they
are still small, focused actions. Here is a list of commonly applied
filters and their descriptions. More information can be found in the <a
href="https://jinja.palletsprojects.com/en/2.11.x/templates/#builtin-filters"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Jinja2 documentation</a>

- `title`: Capitalizes the first letter of each word in a string, known
  as titlecase
- `capitalize`: Capitalizes the first character of a string, such as in
  a sentence
- `lower`/`uppercase`: Makes **all** the characters in a string
  lowercase/uppercase
- `int`/`float`: Changes any number variable to an integer/float
- `default`: Defines a default string if the variable is not defined
- `length`: Calculates the length of a string, list or dictionary
  variable
- `dictsort`: Sorts a dictionary by its keys



**1.**

Since the recipe names are stored in all lowercase characters you need
to capitalize the first letter of each word for the recipe heading.

In **recipe.html** apply a filter to `template_recipe` that capitalizes
the first letter of each word.

**2.**

The description argument in **app.py** has been removed. Use a filter to
make sure a proper description is displayed.

Use a filter on `template_description` that will display text even if
the variable isn’t passed through `render_template`.

If you want to utilize the recipe name in your message, you can pass the
filter a string such as:

    "A " + template_recipe + " recipe."

Once you run the code go to **app.py** and put `template_description`
variable assignment back in the `render_template()` function of the
recipe route.

**3.**

In the ingredients heading it might be important to display the number
of ingredients. This could help a prospective chef know how complicated
a recipe is.

In **recipe.html** create a separate delimiter block at the end of, but
still inside, the ingredients heading. Inside this block display the
length of `template_ingredients`.

For example the heading output can look like this: **Ingredients - 3**

**4.**

In the instructions section the dictionary has unsorted keys.

Use a filter to make sure the dictionary is output in sorted order.



``` html
<!DOCTYPE html>
<html>
  <body>
    <a href="/">Back To Recipe List</a>
    <!-- Make template_recipe title case -->
    <h1>{{ template_recipe | title }}</h1>
    <!-- Ensure a default description -->  
    <p>{{ template_description | default("A " + template_recipe + " recipe.") }}</p>
    <!-- Output number of ingredients --> 
    <h3>Ingredients {{ template_ingredients | length }}</h3>
    <ul>
      <li>{{ template_ingredients[0] }}</li>
      <li>{{ template_ingredients[1] }}</li>
      <li>{{ template_ingredients[2] }}</li>
    </ul>
    <!-- Ensure sorted instruction dictionary -->
    <h3>Instructions</h3>
    <ol>
      <li>{{ template_instructions | dictsort }}</li>
    </ol>
  </body>
</html>
```

``` python
from flask import Flask, render_template
from helper import recipes, descriptions, ingredients, instructions

app = Flask(__name__)

@app.route('/')
def index():
  return render_template("index.html")

@app.route("/recipe/<int:id>")
def recipe(id):
  return render_template("recipe.html", template_recipe=recipes[id], template_ingredients=ingredients[id], template_instructions=instructions[id])
```

## If Statements

Including *conditionals* such as if and if/else statements in our
templates allows us to control how data is handled.

Let’s say we have a string variable passed to our template. When the
variable contains an empty string will you want to output it or will you
want to output another string? Remember the `default` filter doesn’t
work in this situation so an if statement is needed.

Using if statements in a template happens inside a statement delimiter
block: `{% %}`.

``` html
{% if condition %}
  <p>This text will output if condition is True</p> 
{% endif %}
```

Notice the `{% endif %}` delimiter is necessary to close the `if`
statement.

The *condition* can include a variable that is tested using standard
comparison operators, `<`, `>`, `<=`, `>=`, `==`, `!=`.

``` html
{% if template_variable == "Hello" %}
  <p>{{template_variable}}, World!</p> 
{% endif %}
```

While inside statement delimiters `{% %}` we can access variables
without using the usual expression delimiter `{{ }}`.

Variables can also be tested on their own. A variable defined as `None`
or `False` or equates to `0` or contains an empty sequence such as `""`
or `[]` will test as `False`.

The `{% else %}` and `{% elif %}` delimiters can be included to create
multi-branch if statements.

Given the assignment `template_number = 20`.

``` html
{% if template_number < 20 %}
  <p>{{ template_number }} is less than 20.</p> 
{% elif template_number > 20 %}
   <p>{{ template_number }} is greater than 20.</p> 
{% else %}
   <p>{{ template_number }} is equal to 20.</p> 
{% endif %}
 
OUTPUT
20 is equal to 20.
```

As expected the `{% else %}` branch is the one that is followed.



**1.**

Let’s note the few changes made to our app:

- The recipe list has expanded to 2 recipes.
- The new recipe has a description of `None` which doesn’t engage the
  `default` filter.
- The list of ingredients is set up for 3 ingredients, but the new
  recipe only has 2.

With these points in mind run the code to explore the app and move on
when you are ready.

**2.**

In **recipe.html** we have 2 paragraphs for our description. We want one
paragraph to output `template_description` and the other to output a
default statement.

Start by surrounding BOTH paragraphs with an if statement that tests the
variable on its own.

Remember testing a variable on its own will be `False` if it is an empty
string or is `NoneType`.

When you run the code you will see that the recipe with a description
displays both paragraphs while the recipe with no description displays
nothing.

**3.**

Now separate the two paragraphs with an else statement.

This will now display only one message per recipe:
`template_description` or a default message.

**4.**

Now let’s use an if statement to fix the blank 3rd bullet in the list
when displaying the new recipe.

In the **Ingredients** section surround the 3rd ingredient `<li>` line
with an if statement. For the condition, test that the `length` of
`template_ingredients` is equal, `==`, to 3.

After completing this think about how limiting this task is. What if we
have an ingredients list greater than 3? What if there’s only one
ingredient? Run the code and move to the next exercise to find the
answer.



``` python
<!DOCTYPE html>
<html>
  <body>
    <a href="/">Back To Recipe List</a>
    <h1>{{ template_recipe | title }}</h1>
    <!-- Insert description if statement here -->
    {% if template_description %}
    <p>{{ template_description }}</p>
    <!-- Include else here -->
    {% else %}
    <p>A {{ template_recipe }} recipe.</p>
    <!-- Be sure to close with an endif block -->
    {% endif %}
    <h3>Ingredients - {{ template_ingredients | length}}</h3>
    <ul>
      <li>{{ template_ingredients[0] }}</li>
      <li>{{ template_ingredients[1] }}</li>
      <!-- Insert ingredient if statement -->
      {% if template_ingredients|length == 3 %}
      <li>{{ template_ingredients[2] }}</li>
      <!-- Be sure to close with an endif block -->
      {% endif %}
    </ul>

    <h3>Instructions</h3>
    <ol>
      <li>{{ template_instructions | dictsort }}</li>
    </ol>
  </body>
</html>
```

## For Loops

Repetitive tasks are standard in most computer applications and template
rendering is no different. Creating lists, tables or a group of images
are all repetitive tasks that can be solved using *for loops*.

Using the same statement delimiter block as if statements `{% %}`, for
loops step through a range of numbers, lists and dictionaries.

The following code will create an ordered list where each line will
output the index of the sequence:

    <ol>
    {% for x in range(3) %}
      <li>{{ x }}</li>
    {% endfor%}
    </ol>
     
    OUTPUT
    1. 0
    2. 1
    3. 2

The syntax is similar to a Python for loop where we define a loop
variable `x` to step through a series of numbers using `range(3)`. The
local loop variable can be used inside our loop with the expression
delimiter `{{x}}`.

Similar to the if statements we need to close the loop with an
`{%endfor%}` block.

The following are a few more applications of a for loop.

###### Iterate through a list variable:

    {% for element in template_list %}

###### Iterate through a string:

    {% for char_in_string in “Hello!” %}

###### Iterate through the keys of a dictionary variable:

    {% for key in template_dict %}

###### Iterate through keys **AND** values of a dictionary with `items()`:

    {% for key, value in template_dict.items() %}

Using the filter `dictsort` in a loop outputs the key/value pairs just
like `items()`



**1.**

Loops can help create lists based on the length of the data we have to
work with.

In **recipe.html** the ingredients section now has one `<li>` element.
Apply a for loop to create an HTML list based on the Python list
`template_ingredients`.

Note the variable name `ingredient` to be used as the loop variable.

**2.**

In the instructions section, remember that we are using the `dictsort`
filter on `template_instructions`. When used in a for loop `dictsort`
will give you access to both the key and value of the dictionary.

Using the `key` and `instruction` variables create a simple string
inside the `<p>` tag. The output should resemble something like this:

**Step 1: Put the bread in the toaster**

**3.**

Now let’s move to **index.html** and support the expansion of our recipe
list. The dictionary of ids and recipes names is now accessible in the
template through the variable `template_recipes`.

Create a `for` loop around the hyperlink and iterate through
`template_recipes.items()`. Name the key and value loop variables `id`
and `name` respectively.

**4.**

Use the `id` and `name` variables to complete the hyperlink URL and the
display string.

Once the code is run you can now add recipes to the application data and
automatically get a link on the index page that connects to a custom
recipe page.



``` html
<!DOCTYPE html>
<html>
  <body>
    <a href="/">Back To Recipe List</a>
    <h1>{{ template_recipe | title }}</h1>
    
    {% if template_description %}
      <p>{{ template_description }}</p>
    {%else%}
      <p>A {{ template_recipe }} recipe.</p>
    {% endif %}
    
    <h3>Ingredients - {{ template_ingredients | length}}</h3>
    <ul>
      <!-- Implement a for loop to iterate through 
      `template_ingredients`-->
      {% for ingredient in template_ingredients %}
      <li>{{ ingredient }}</li>
      {% endfor %}
    </ul>

    <h3>Instructions</h3>
    <ul>
    {% for key, instruction in template_instructions|dictsort %}
      <!-- Add the correct dictionary element to list 
      the instructions -->
      <p>{{ key }}: {{ instruction }}</p>
    {% endfor %}
    </ul>
  </body>
</html>
```

``` html
<!DOCTYPE html>
<html>
  <body>
    <h1>Cooking By Myself</h1>
    <p>Welcome to my cookbook. These are recipes I like.</p>
    <!-- Implement a for loop using `template_recipes`-->
    {% for id, name in template_recipes.items() %}
    <p><a href="/recipe/{{ id }}">{{ name }}</a></p>
    {% endfor %}
  </body>
</html>
```

## Inheritance

If you go to any website you may notice certain elements exist across
different web pages.

The navigation bar is a good example of a common page element. This is
the banner at the top of most sites that has links to different pages.
No matter what page you’re on the navigation bar is there.

Imagine having separate files for each web page and wanting to make a
change to the navigation bar. Would you have to change the content of
every template of the site? No, that would take too long.

To solve this problem template files are used to share content across
multiple templates. The simplest case is a file that includes the top
portion of the templates through the `<body>` tag and then the closing
`</body>` and `</html>` tags. Jinja2 statement delimiters are then used
to identify the area of the template where specific content will be
substituted in.

``` html
<html>
  <head>
    <title>MY WEBSITE</title>
  </head>
  <body>
  {% block content %}{% endblock %}
  </body>
</html>
```

For this exercise we will name the above template **base.html**.

To inherit this content in another template we will use the `extends`
statement. The code to be substituted should then be surrounded by
`{%block content%}` and `{%endblock%}`. All together this looks like the
following template:

``` html
{% extends "base.html"  %}
 
{% block content %}
    <p>This is my paragraph for this page.</p>
{% endblock %}
```

This template is named **index.html**.

When a route returns `render_template("index.html")` the rendered page
will have this content.

``` html
<html>
  <head>
    <title>MY WEBSITE</title>
  </head>
  <body>
    <p>This is my paragraph for this page.</p>
  </body>
</html>
```



**1.**

Look in **index.html** and **recipe.html** and identify the common HTML
at the top and bottom of the templates.

Copy the common HTML from one of those files and paste it into the blank
**base.html** file. Don’t forget to include the closing tags, `</body>`
and `</html>`.

**2.**

Now in **base.html** identify where you want to put
`{%block content%}{%endblock%}`. It is your choice whether
`{%block content%}` and `{%endblock%}` are on the same line or separate
lines. Both work as long as there is nothing in between.

**3.**

Now go to **index.html** and:

- Delete the duplicate text
- Extend **base.html** at the top
- Surround the **index.html** specific template with an
  `{%block content%}` and `{%endblock%}`

Remember you start the block with `{%block content%}` and close it with
`{%endblock%}` with the HTML in between.

**4.**

Do the same in **recipe.html**. Be sure to extend **base.html** and
replace the duplicate text with the inheritance blocks.



``` html
<!DOCTYPE html>
<html>
  <body>
  {%block content%}{%endblock%}
  </body>
</html>
```

``` html
{% extends "base.html" %}
{% block content %}
    <h1>Cooking By Myself</h1>
    <p>Welcome to my cookbook. These are recipes I like.</p>
    {% for id, name in template_recipes.items() %}
      <p><a href="/recipe/{{ id }}">{{ name | title }}</a></p>
    {% endfor %}
{% endblock %}
```

``` html
{% extends "base.html" %}
{% block content %}
    <a href="/">Back To Recipe List</a>
    <h1>{{ template_recipe | title }}</h1>
    
    {% if template_description %}
      <p>{{ template_description }}</p>
    {%else%}
      <p>A {{ template_recipe }} recipe.</p>
    {% endif %}
    
    <h3>Ingredients - {{ template_ingredients | length}}</h3>
    <ul>
    {% for ingredient in template_ingredients %}
      <li>{{ ingredient }}</li>
    {% endfor %}
    </ul>

    <h3>Instructions</h3>
    <ul>
    {% for key, instruction in template_instructions|dictsort %}
      <li>{{ instruction }}</li>
    {% endfor %}
    </ul>
{% endblock %}
```

## Review

Congratulations, this concludes the lesson on Flask templates. In this
lesson we:

- Created a file structure that works with the Jinja2 template engine
- Rendered pages in our browser using files called templates
- Shared our application data for use within templates
- Applied filters to our data within our templates
- Utilized if statements to bring decision making to our templates
- Implemented for loops to perform repetitive tasks in our templates
- Moved common content to separate files to be shared by many templates

To show the power of what we have learned let’s add a simple navigation
bar to the app.



**1.**

Things added to our app are:

- an “about” route in **app.py**
- an **about.html** template inheriting from **base.html**
- the ‘Back To Recipe List’ link has been removed from **recipe.html**

Let’s create a navigation bar that will link to the about page and the
index page. In **base.html** add the following content just inside the
`<body>` tag.

``` python
<div>
  <a href="/">Recipes</a>
   | 
  <a href="/about">About</a>
</div>
```

Once complete run the code and you’ll see that each page in the site now
has a simple navigation bar including the new ‘About’ page.

Great work!



``` python
from flask import Flask, render_template
from helper import recipes, descriptions, ingredients, instructions

app = Flask(__name__)

@app.route('/')
def index():
  return render_template("index.html", template_recipes=recipes)

@app.route('/about')
def about():
  return render_template("about.html")

@app.route("/recipe/<int:id>")
def recipe(id):
  return render_template("recipe.html", template_recipe=recipes[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id])
```

``` html
<!DOCTYPE html>
<html>
  <body>
    <!-- Insert navigation bar
    HTML below -->
    <div>
      <a href="/">Recipes</a>
      | 
      <a href="/about">About</a>
    </div>
    {% block content %}
    {% endblock %}
  </body>
</html>
```

``` html
{% extends "base.html" %}
{% block content %}
  <h1>Cooking By Myself</h1>
  <p>Welcome to my cookbook. These are recipes I like.</p>
  {% for id, name in template_recipes.items() %}
    <p><a href="/recipe/{{ id }}">{{ name }}</a></p>
  {% endfor %}
{% endblock %}
```

``` html
{% extends "base.html" %}
{% block content %}
    <h1>{{ template_recipe | title }}</h1>
    
    {% if template_description %}
      <p>{{ template_description }}</p>
    {%else%}
      <p>A {{ template_recipe }} recipe.</p>
    {% endif %}
    
    <h3>Ingredients - {{ template_ingredients | length}}</h3>
    <ul>
    {% for ingredient in template_ingredients %}
        <li>{{ ingredient }}</li>
    {% endfor %}
    </ul>

    <h3>Instructions</h3>
    <ul>
    {% for key, instruction in template_instructions|dictsort %}
        <li>{{ instruction }}</li>
    {% endfor %}
    </ul>
{% endblock %}
```

``` html
{% extends "base.html" %}
{% block content %}
  <h1>About Myself</h1>
  <p>
    I like to cook, save recipes and share them with you.
  </p>
  <p>
    Thank you for visiting!!!
  </p>
{% endblock %}
```

# Flask Forms

## Introduction

An important role of websites is gathering information from the user.
Whether a user is signing into their Codecademy account, ordering
clothes online or leaving feedback for a company, web forms have
provided a simple way to enter and submit data over the internet.

The use of forms in a site can be an involved process. The designer must
gather the right information, display the fields in a pleasing manner
and ensure the data is collected correctly. Over the years this has
become easier thanks to frameworks like Flask, which help streamline the
process of displaying fields and gathering data.

This lesson assumes a foundational knowledge of web forms and the steps
involved in sending the data to the web server. In the following
exercises we are going to look at how Flask can help gather data from
regular web forms as well as create forms in an entirely new way.



To help us learn about forms we will be using a cookbook app that lists
recipes on a main page and links to individual recipe pages.

- The main Flask app is contained in **app.py** and has three routes:
  `index`, `recipe` and `about`. The `index` route has method `POST`
  added to handle form submission.
- The file **helper.py** contains the mock data for the app and has two
  functions, `add_ingredients()` and `add_instructions()` to help
  populate the data.
- The main web page is rendered from the template **index.html**. There
  is a title, list of recipes and a new recipe form. The form has fields
  for the recipe name, description, ingredients and instructions.
- The other template is **recipe.html** which renders each individual
  recipe using the mock data.

Review the site structure and head to the next exercise when you’re
ready.



``` python
recipes = {1: "fried egg", 2: "buttered toast"}
types = {1: "Breakfast", 2: "Breakfast"}
descriptions = {1: 'Egg fried in butter', 2: 'Toasted bread spread with butter'}
ingredients = {1: ['1 pad of butter', '1 Egg', 'A pinch of salt'], 2: ['1 pad of salted butter', '1 slice of bread']}
instructions = {1: {'Step 2': 'Crack the egg into the buttered pan', 'Step 5': 'Serve egg after about a minute and a half', 'Step 1': 'Melt butter in pan over medium-low heat', 'Step 4': 'Flip egg after about a minute and a half', 'Step 3': 'Sprinke the pinch of salt onto cooking egg',},
                2: {'Step 3': 'Put the pad of butter on the toasted bread', 'Step 4': 'After a minute spread the melted butter onto the bread', 'Step 1': 'Put the bread in the toaster', 'Step 2': 'Take the toast out of the toaster'}}
comments = {1: ['Yummy!!', 'Egg-cellent ;->'], 2: ['Toasty', 'What a great recipe!']}

def add_ingredients(recipe_id=None, text=None):
  if recipe_id and text:
    text_list = text.split('\n')
    ingredients[recipe_id] = text_list

def add_instructions(recipe_id=None, text=None):
  if recipe_id and text:
    text_list = text.split('\n')
    instructions_dict = {}
    for i, instruction in enumerate(text_list):
      instructions_dict['Step {}'.format(i+1)] = instruction

    instructions[recipe_id] = instructions_dict
```

``` python
from flask import Flask, render_template
from helper import recipes, descriptions, ingredients, instructions

app = Flask(__name__)

@app.route('/')
def index():
  return render_template("index.html", template_recipes=recipes)

@app.route("/recipe/<int:id>", methods=['GET', 'POST'])
def recipe(id):
  return render_template("recipe.html", template_recipe=recipes[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id])

@app.route('/about')
def about():
  return render_template("about.html")
```

``` html
<!DOCTYPE html>
<html>
  <body>
    <div>
      <a href="/">Recipes</a>
      | 
      <a href="/about">About</a>
    </div>
    {% block content %}
    {% endblock %}
  </body>
</html>
```

``` html
{% extends "base.html" %}
{% block content %}
  <h1>Cooking By Myself</h1>
  <p>Welcome to my cookbook. These are recipes I like.</p>
  {% for id, name in template_recipes.items() %}
    <p><a href="/recipe/{{ id }}">{{ name }}</a></p>
  {% endfor %}

  <form action="/" method="POST">
    <h3>Add Recipe</h3>
    <p>
      <label for="recipe">Name:</label>
      <input type="text" name="recipe"/>
    </p>
    <p>
      <label for="description">Description:</label>
      <textarea name="description"></textarea>
    </p>
    <p>
      <label for="ingredients">Ingredients:</label>
      <textarea name="ingredients"></textarea>
    </p>
    <p>
      <label for="instructions">Instructions:</label>
      <textarea name="instructions"></textarea>
    </p>
    <p><input type="submit" name="submit_recipe"/></p>
  </form>
{% endblock %}
```

``` html
{% extends "base.html" %}
{% block content %}
  <h1>{{ template_recipe | title }}</h1>
  
  {% if template_description %}
    <p>{{ template_description }}</p>
  {%else%}
    <p>A {{ template_recipe }} recipe.</p>
  {% endif %}
  
  <h3>Ingredients - {{ template_ingredients | length}}</h3>
  <ul>
  {% for ingredient in template_ingredients %}
    <li>{{ ingredient }}</li>
  {% endfor %}
  </ul>

  <h3>Instructions</h3>
  <ul>
  {% for key, instruction in template_instructions|dictsort %}
    <li>{{ instruction }}</li>
  {% endfor %}
  </ul>
{% endblock %}
```

## Flask Request Object

Every time a client communicates with a server it does so through a
*request*. By default our Flask routes only support GET requests. These
are requests for data such as what to display in a browser window. When
submitting a form through a website, the form data is sent as a POST
request. This type of request wants to add data to the app. Routes can
handle POST requests if it is specified in the `methods` argument of the
`route()` decorator.

``` python
@app.route("/", methods=["GET", "POST"])
```

The code above shows a route that now supports both GET and POST
requests. By default `methods` is set to $$“GET”$$. When adding “POST”
to a route’s `methods`, be sure to include “GET” if you plan for the
route to handle those requests as well.

Flask provides access to the data in the request through the `request`
object. Importing the `request` object allows us to access everything
about the requests to our app including form data and the request method
such as `GET` or `POST`.

``` python
from flask import request
```

When data is sent via a form submission it can be accessed using the
`form` attribute of the `request` object. The `form` attribute is a
dictionary with the form’s field names as the keys and the associated
data as the values. For example, if a text input had the name
`"my_text"`, then the data access would look like this.

``` python
text_in_field = request.form["my_text"]
```



**1.**

Before we begin with the form data, there are a few additions in the
`index()` function to note regarding the gathering of form data:

1.  The variable `new_id` is assigned an integer that’s one more than
    the length of the `recipes` dictionary we imported form
    **helper.py**. This variable will be used as the key for the new
    recipe data.
2.  The `if len(request.form) > 0` statement makes sure there is data in
    the `form` object before trying to access them. Without this, a
    `KeyError` would be raised when the route is accessed and the form
    is not submitted.

Review the changes and run the code when you are ready.

**2.**

In **app.py**, note the `request` object has been added to the import
section.

Working in the `index` route and using the `request` object, assign the
contents of the form’s `"recipe"` text field to `recipes[new_id]`.

After you run the code feel free to try out your work by refreshing the
browser. Keep in mind that not all data is processed yet so clicking on
the new recipe links will raise a `KeyError`.

**3.**

Repeat the same step for the `description` form data by assigning the
`description` field data to `descriptions[new_id]`.

**4.**

The helper functions `add_ingredients()` and `add_instructions()` are
set up to add the contents of the variables `new_ingredients` and
`new_instructions` to the data. Currently both variables are set to
`None`.

Put the form data named `"ingredients"` and `"instructions"` into the
appropriate variables so the data is added to the app.



``` python
from flask import Flask, render_template, request
from helper import recipes, descriptions, ingredients, instructions, add_ingredients, add_instructions

app = Flask(__name__)

@app.route('/', methods=["GET", "POST"])
def index():
  new_id = len(recipes) + 1
  if len(request.form) > 0:
    #### Add the recipe name to recipes[new_id] 
    recipes[new_id] = request.form['recipe']
    #### Add the recipe description to descriptions[new_id]
    descriptions[new_id] = request.form['description']
    #### Add the values to new_ingredients and new_instructions
    new_ingredients = request.form['ingredients']
    new_instructions = request.form['instructions']
    add_ingredients(new_id, new_ingredients)
    add_instructions(new_id, new_instructions)
  return render_template("index.html", template_recipes=recipes)

@app.route("/recipe/<int:id>")
def recipe(id):
  return render_template("recipe.html", template_recipe=recipes[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id])

@app.route('/about')
def about():
  return render_template("about.html")
```

## Route Selection

As sites get larger and their file structure becomes more complex the
paths of Flask routes may change. In this case paths that are hard coded
into the navigation elements such as hyperlinks and forms may break.

Flask addresses the challenge of expanding file structures with
`url_for()`. The function `url_for()` takes a route’s function name as
an argument and returns the associated URL path. Given the following
Flask route declaration:

``` python
@app.route('/')
def index:
```

These two hyperlinks below are identical.

``` html
<a href="/">Index Link</a>
 
<a href="{{ url_for('index') }}">Index Link</a>
```

Breaking down the second line of above code, we can see a few things:

- `url_for()` is inside an expression delimiter
- the argument for `url_for()` is inside single quotes
- the entire statement is inside double quotes

Because of the last 2 points it is important to use one type of quotes
for the whole statement and the other type of quotes for the `url_for()`
argument.

To pass variables from the template to the app, keyword arguments can be
added to `url_for()`. They will be sent as arguments attached to the
URL. It can be accessed the same way as if it was added onto the path
manually.

``` html
<a href="{{ url_for('my_page', id=1) }}">One</a>
```

This line creates a link that sends the value `1` to the route with the
function name `my_page`. The route can access the variable through
`my_id`.

``` python
@app.route("/my_path/<int:my_id>"), methods=["GET", "POST"])
def my_page(my_id):
    # Access flask_name in this function
    new_variable = my_id
    ...
```



**1.**

Let’s look at replacing the URL strings in the navigation bar with
`url_for()`.

In **base.html** replace `/` with `url_for()` in the `href` attribute of
the <u>Recipes</u> link. For the argument use the `"index"` route
function name.

Remember to use the double curly brackets when using `url_for()`.

**2.**

Now replace the URL string in the “About” link with `url_for()` using
the `about` route function name.

**3.**

In **index.html** the recipe link `href` is blank. Remember that we want
to go to the `recipe` route and pass the `id` variable.

Insert `url_for()` into the blank `href` attribute passing the correct
route function name as well as the id variable.



``` html
<!DOCTYPE html>
<html>
  <body>
    <div>
      <!-- Replace URL string with url_for -->
      <a href="{{ url_for('index') }}">Recipes</a>
      | 
      <!-- Replace URL string with url_for -->
      <a href="{{ url_for('about') }}">About</a>
    </div>
    {% block content %}
    {% endblock %}
  </body>
</html>
```

``` html
{% extends "base.html" %}
{% block content %}
  <h1>Cooking By Myself</h1>
  <p>Welcome to my cookbook. These are recipes I like.</p>
  {% for id, name in template_recipes.items() %}
    <!-- Use url_for to pass the id variable -->
    <p><a href="{{ url_for('recipe', id=id) }}">{{ name }}</a></p>
  {% endfor %}

  <form action="/" method="POST">
    <h3>Add Recipe</h3>
    <p>
      <label for='recipe'>Name:</label>
      <input type='text' name='recipe'/>
    </p>
    <p>
      <label for='description'>Description:</label>
      <textarea name='description'></textarea>
    </p>
    <p>
      <label for='ingredients'>Ingredients:</label>
      <textarea name='ingredients'></textarea>
    </p>
    <p>
      <label for='instructions'>Instructions:</label>
      <textarea name='instructions'></textarea>
    </p>
    <input type='submit' name='submit_recipe'/>
  </form>
{% endblock %}
```

## FlaskForm Class

Flask provides an alternative to web forms by creating a form class in
the application, implementing the fields in the template and handling
the data back in the application.

A Flask form class inherits from the class `FlaskForm` and includes
attributes for every field:

``` python
class MyForm(FlaskForm):
    my_textfield = StringField("TextLabel")
    my_submit = SubmitField("SubmitName")
```

This simple class will enable the creation of a form with a text field
and a submit button.

The class inherits from the class `FlaskForm` which allows it to
implement the form as template variables and then collect the data once
submitted. `FlaskForm` is a part of
<a href="https://flask-wtf.readthedocs.io/en/0.15.x/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">FlaskWTF</a>.

Access to the fields of this form class is done through the attributes,
`my_textfield` and `my_submit`. The `StringField` and `SubmitField`
classes are the same as `<input type=text...` and
`<input type=submit...` respectively and are part of the
<a href="https://wtforms.readthedocs.io/en/2.3.x/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">WTForms library</a>.

Below is a simple Flask app with the form class.

``` python
from flask import Flask, render_template
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
 
app = Flask(__name__)
app.config["SECRET_KEY"] = "my_secret"
 
class MyForm(FlaskForm):
    my_textfield = StringField("TextLabel")
    my_submit = SubmitField("SubmitName")
 
@app.route("/")
def my_route():
    flask_form = MyForm()
    return render_template("my_template", template_form=flask_form)
```

First note the new import statements. `FlaskForm` is imported from the
`flask_wtf` module and both form fields import from `wtforms`.

The next new line is:

``` python
app.config["SECRET_KEY"] = "my_secret"
```

This line is a way to protect against CSRF or Cross-Site Request
Forgery. Without going into too much detail, CSRF is an attack that used
to gain control of a web application.

Next is the `MyForm` class definition. It inherits from `FlaskForm` and
has attributes for the text and submit fields. For each field the label
is passed as the only argument.

Lastly, in order to use this form in our template, we must create an
instance of it and pass it to the template using `render_template()`. We
will look at applying the form in the template in the next exercise.



**1.**

In **app.py** note the extra import statements and the setting of the
`"SECRET_KEY"`:

``` python
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
```

and

``` python
app.config["SECRET_KEY"] = "mysecret"
```

Other things to note moving forward:

- The `comments` dictionary is added to the `helper.py` import statement
- `methods=["GET", "POST"]` has been added to the recipe route
- The recipe route’s `render_template()` function call has a new keyword
  argument `template_comments=comments[id]`
- A comments unordered list has been added to the **recipe.html**
  template

Take a look at the changes and run the code to move on.

**2.**

Above the index route in **app.py**, create a class called `CommentForm`
that inherits from `FlaskForm`.

Add a class attribute named `comment` and assign it a `StringField` with
label `"Comment"`.

**3.**

Create a submit field inside the class with the label `"Add Comment"`
and assign it to a variable called, `submit`.

**4.**

Lastly, in the `recipe()` route you’ll see that `render_template` has
the argument `template_form=comment_form`. Just above
`render_template()` create the variable `comment_form` and assign it an
instance of `CommentForm`.



``` python
from flask import Flask, render_template, request
from helper import recipes, descriptions, ingredients, instructions, add_ingredients, add_instructions, comments
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField

app = Flask(__name__)
app.config['SECRET_KEY'] = 'mysecret'

#### Create form class here
class CommentForm(FlaskForm):
  comment = StringField("Comment")
  submit = SubmitField("Add Comment")

@app.route('/', methods=["GET", "POST"])
def index():
  return render_template("index.html", template_recipes=recipes)

@app.route("/recipe/<int:id>", methods=["GET", "POST"])
def recipe(id):
  #### Instantiate form class here
  comment_form = CommentForm()
  return render_template("recipe.html", template_recipe=recipes[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id], template_comments=comments[id], template_form=comment_form)

@app.route('/about')
def about():
  return render_template("about.html")
```

## Template Form Variables

Creating a form in the template is done by accessing attributes of the
form passed to the template.

Let’s use the following form as we work toward implementing it in a
template:

``` python
class MyForm(FlaskForm):
    my_textfield = StringField("TextLabel")
    my_submit = SubmitField("SubmitName")
```

In our application route we must instantiate the form and assign that
instance to a template variable.

``` python
my_form = MyForm()
 
return render_template(template_form=my_form)
```

Moving to the template, creating a form we simply use the form class
attributes as expressions.

``` html
<form action="/" method="post">
    {{ template_form.hidden_tag() }}
    {{ template_form.my_textfield.label }}
    {{ template_form.my_textfield() }}
    {{ template_form.my_submit() }}
</form>
```

Inside the standard `<form>` are all the FlaskForm objects accessed
through `template_form`.

The first line `{{ template_form.hidden_tag() }}` is the other end of
the CSRF protection. While not visible in the form, this field handles
the necessary tasks to protect from CSRF.

The next two lines are for the text box. The first accesses the `label`
of the field, which we specified as an argument when we created the
field. The second `my_textfield` line is the input field itself.

The last line of the form is the submit button. Just like the HTML
version, this will initiate sending the form data back to the server.

The HTML created from this form implementation is as follows:

``` html
<form action="/" method="post">
    <input id="csrf_token" name="csrf_token" type="hidden" value="ImI1YzIxZjUwZWMxNDg0ZDFiODAyZTY5M2U5MGU3MTg2OThkMTJkZjQi.XupI5Q.9HOwqyn3g2pveEHtJMijTu955NU">
    <label for="my_textfield">TextLabel</label>
    <input id="my_textfield" name="my_textfield" type="text" value="">
    <input id="my_submit" name="my_submit" type="submit" value="SubmitName">
</form>
```



**1.**

In **recipe.html** notice the beginning of a form near the bottom of the
file. In the form there is a line `{{ template_form.hidden_tag() }}`. As
mentioned this is the other end of the session encryption.

On the line following the `hidden_tag()` statement insert the `comment`
field `label`.

**2.**

Now add the `comment` input field in the following line.

**3.**

Finally, add the submit button to complete the form.



``` python
from flask import Flask, render_template, request
from helper import recipes, descriptions, ingredients, instructions, add_ingredients, add_instructions, comments
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField

app = Flask(__name__)
app.config['SECRET_KEY'] = 'mysecret'

class CommentForm(FlaskForm):
  comment =  StringField('Comment')
  submit = SubmitField('Add Comment')

@app.route('/', methods=["GET", "POST"])
def index():
  return render_template("index.html", template_recipes=recipes)

@app.route("/recipe/<int:id>", methods=["GET", "POST"])
def recipe(id):
  comment_form = CommentForm()
  return render_template("recipe.html", template_recipe=recipes[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id], template_comments=comments[id], template_form=comment_form)

@app.route('/about')
def about():
  return render_template("about.html")
```

``` html
{% extends "base.html" %}
{% block content %}
  <h1>{{ template_recipe | title }}</h1>
  {% if template_description %}
    <p>{{ template_description }}</p>
  {%else%}
    <p>A {{ template_recipe }} recipe.</p>
  {% endif %}
  <h3>Ingredients - {{ template_ingredients | length}}</h3>
  <ul>
  {% for ingredient in template_ingredients %}
      <li>{{ ingredient }}</li>
  {% endfor %}
  </ul>
  <h3>Instructions</h3>
  <ul>
  {% for key, instruction in template_instructions|dictsort %}
      <li>{{ instruction }}</li>
  {% endfor %}
  </ul>
  <h3>Comments</h3>
  <ul>
  {% for comment in template_comments %}
    <li>{{ comment }}</li>
  {% endfor %}
  </ul>
  <form method="post">
  {{ template_form.hidden_tag() }}
  <!-- Insert StringField elements here -->  
  {{ template_form.comment.label }}
  {{ template_form.comment() }}
  <!-- Insert SubmitField element here -->
  {{ template_form.submit() }}
  </form>
{% endblock %}
```

## Handling FlaskForm Data

Once a form is submitted, the data is sent back to the server through a
`POST` request. Previously we covered accessing this data through the
`request` object provided by Flask.

Using our FlaskForm class, data is now accessible through the form
instance in the Flask app. The data can be directly accessed by using
the `data` attribute associated with each field in the class.

``` python
form_data = flask_form.my_textfield.data
```

Keeping all the information and functionality attached to the form
object has streamlined the form creation and data gathering process.

Remember that when a route handles a form it is necessary to add the
`POST` method to the route decorator.

``` python
methods=["GET", "POST"]
```



**1.**

The data from the web form can now be accessed through the
`comment_form` instance within the `recipe` route. In that route in
**app.py** assign the `comment` field data to a variable called
`new_comment`.

**2.**

Now add the submitted comment to the specified recipe comment list by
appending `new_comment` to `comments[id]`.

When you’re done, give the form a try by adding some comments to the
recipe page. Head on to the next exercise when ready.



``` python
from flask import Flask, render_template, request
from helper import recipes, descriptions, ingredients, instructions, add_ingredients, add_instructions, comments
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField

app = Flask(__name__)
app.config['SECRET_KEY'] = 'mysecret'

class CommentForm(FlaskForm):
  comment =  StringField('Comment')
  submit = SubmitField('Add Comment')

@app.route('/', methods=["GET", "POST"])
def index():
  return render_template("index.html", template_recipes=recipes)

@app.route("/recipe/<int:id>", methods=["GET", "POST"])
def recipe(id):
  comment_form = CommentForm()
  #### Process data here
  new_comment = comment_form.comment.data
  comments[id].append(new_comment)
  return render_template("recipe.html", template_recipe=recipes[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id], template_comments=comments[id], template_form=comment_form)

@app.route('/about')
def about():
  return render_template("about.html")
```

## Validation

In order to submit a form, it is common that certain required text
fields must have data, date fields need to have a specific format, or a
checkbox agreeing to certain terms needs to be checked.

*Validation* is when form fields must contain data or a certain format
of data in order to move forward with submission. We enable validation
in our form class using the `validators` parameter in the form field
definitions.

Validators come from the `wtform.validators` module. Importing the
`DataRequired()` validator is accomplished like this:

``` python
from wtforms.validators import DataRequired
```

The `DataRequired()` validator simply requires a field to have something
in it before the form is submitted. Notifying the user that data is
required is handled automatically.

``` python
my_textfield = StringField("TextLabel", validators=[DataRequired()])
```

The `validators` argument takes a list of validator instances.

The `FlaskForm` class also provides a method called
`validate_on_submit()`, which we can used in our route to check for a
valid form submission.

``` python
if my_form.validate_on_submit():
    # get form data
```

As we saw in the second exercise pertaining to the `request` object, in
order to avoid gathering data on first access to the route we had to put
the data gathering code inside an `if` statement. The
`validate_on_submit()` function does this exact task.

The `validate_on_submit()` function returns `True` when there is a
`POST` request and all the associated form validators are satisfied. At
this point, the data can be gathered and processed. When the function
returns `False` the route function can move on to other tasks such as
rendering the template.



**1.**

In **app.py**, the data handling section in the `recipe` route has been
put inside an `if True:` block to mimic no validation. Run the code and
hit refresh on the recipe page and notice what happens to the comments
list.

**2.**

Every time the page refreshes the string “None” is appended to the
comments. This is because the data from the form is gathered every time
the page renders. Even when the form is not submitted.

In **app.py** add a `validate_on_submit()` check. Be sure to include the
data assignment logic but exclude the form instantiation.

**3.**

To ensure that we get a comment every time the button is hit you need to
put a validator on the string field. Note the `wtforms.validators`
import statement.

Inside the CommentForm class add a `validators` list with the validator
that requires data.

Run the code, refresh the page and try to submit an empty field. Note
that the changes have taken effect



``` python
from flask import Flask, render_template, request
from helper import recipes, descriptions, ingredients, instructions, add_ingredients, add_instructions, comments
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
#### Note the new import statement
from wtforms.validators import DataRequired

app = Flask(__name__)
app.config['SECRET_KEY'] = 'mysecret'

class CommentForm(FlaskForm):
  #### Add a validator argument in the StringField
  comment =  StringField('Comment', validators=[DataRequired()])
  submit = SubmitField('Add Comment')

@app.route('/', methods=["GET", "POST"])
def index():
  return render_template("index.html", template_recipes=recipes)

@app.route("/recipe/<int:id>", methods=["GET", "POST"])
def recipe(id):
  comment_form = CommentForm(csrf_enabled=False)
  #### Replace 'True' with form validation
  if comment_form.validate_on_submit():
    new_comment = comment_form.comment.data
    comments[id].append(new_comment)
  return render_template("recipe.html", template_recipe=recipes[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id], template_comments=comments[id], template_form=comment_form)

@app.route('/about')
def about():
  return render_template("about.html")
```

## More Form Fields

We’ve now covered the operation cycle of forms using FlaskWTF. Now let’s
look at some additional form fields included in WTForms.

###### TextAreaField

The TextAreaField is a text field that supports multi-line input. The
data returned from a `TextAreaField` instance is a string that may
include more whitespace characters such as newlines or tabs.

``` python
#### Form class declaration
my_text_area = TextAreaField("Text Area Label")
```

###### BooleanField

A checkbox element is created using the BooleanField object. The data
returned from a `BooleanField` instance is either `True` or `False`.

``` python
#### Form class declaration
my_checkbox = BooleanField("Checkbox Label")
```

###### RadioField

A radio button group is created using the `RadioField` object. Since
there are multiple buttons in this group, the instance declaration takes
an argument for the group label and a keyword argument `choices` which
takes a list of tuples.

Each tuple represents a button in the group and contains the button
identifier string and the button label string.

``` python
#### Form class declaration
my_radio_group = RadioField("Radio Group Label", choices=[("id1", "One"), ("id2","Two"), ("id3","Three")])
```

Since the RadioField() instance generally contains multiple buttons it
is necessary to iterate through it to access the components of the
subfields.



**1.**

A common practice when creating web forms with Flask is to define the
forms in a separate file and import them into the main app.

- `CommentForm` has been moved to the new file **forms.py**
- `RecipeForm` is fully functional and has been added to **forms.py**
- `RadioField` has been added to the `wtforms` import statement
- The list `recipe_categories` in `RecipeForm` holds the 3 radio button
  tuples.

Run the code to move on.

**2.**

In **forms.py** create a radio field instance and assign it to
`recipe_type`. The instance should have the label `"Type"` and
`recipe_categories` should be assigned to the keyword argument
`choices`.

**3.**

In **index.html** a table has been added to contain our radio buttons.
Inside the for loop that iterates through the 3 buttons, use the loop
variable `btn` to insert the button field in the first `<td>` tag and
the field label in the other `<td>` tag pair.

**4.**

Lastly, in the `index` route of **app.py** add the `recipe_type` data
from the form to `types[new_id]`.

When you’re done give the recipe form a try with the new radio buttons.



``` python
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, TextAreaField, RadioField
from wtforms.validators import DataRequired

class RecipeForm(FlaskForm):
  recipe_categories = [("Breakfast","Breakfast"), ("Lunch","Lunch"), ("Dinner","Dinner")]
  recipe = StringField("Recipe", validators=[DataRequired()])  
  #### Add `recipe_type` and assign it a new radio field instance
  recipe_type = RadioField("Type", choices=recipe_categories)
  description = StringField("Description")
  ingredients = TextAreaField("Ingredients")
  instructions = TextAreaField("Instructions")
  submit = SubmitField("Add Recipe")

class CommentForm(FlaskForm):
  comment = StringField("Comment", validators=[DataRequired()])
  submit = SubmitField("Add Comment")
```

``` html
{% extends "base.html" %}
{% block content %}
  <h1>Cooking By Myself</h1>
  <p>Welcome to my cookbook. These are recipes I like.</p>
  {% for id, name in template_recipes.items() %}
    <p><a href="{{ url_for('recipe', id=id) }}">{{ name }}</a></p>
  {% endfor %}
  <form action="/" method="POST">
    {{ template_form.hidden_tag() }}
    <p>{{ template_form.recipe.label }}
    {{ template_form.recipe() }}</p>
    <table><tr>
      {% for btn in template_form.recipe_type %}
      <!-- Put the button variable then the button label 
      in the following td tags-->
      <td>{{ btn() }}</td>
      <td>{{ btn.label }}</td>
    {% endfor %}
    </tr></table>
    <p>{{ template_form.description.label }}
    {{ template_form.description() }}</p>
    <p>{{ template_form.ingredients.label }}
    {{ template_form.ingredients() }}</p>
    <p>{{ template_form.instructions.label }}
    {{ template_form.instructions() }}</p>
    <p>{{ template_form.submit() }}</p>
  </form>
  {% endblock %}
```

``` python
from flask import Flask, render_template, request
from helper import recipes, types, descriptions, ingredients, instructions, add_ingredients, add_instructions, comments
from forms import RecipeForm, CommentForm

app = Flask(__name__)
app.config["SECRET_KEY"] = "mysecret"

@app.route("/", methods=["GET", "POST"])
def index():
  recipe_form = RecipeForm(csrf_enabled=False)
  if recipe_form.validate_on_submit():
    new_id = len(recipes)+1
    recipes[new_id] = recipe_form.recipe.data
    #### Add type data here
    types[new_id] = recipe_form.recipe_type.data
    descriptions[new_id] = recipe_form.description.data
    new_ingredients = recipe_form.ingredients.data
    new_instructions = recipe_form.instructions.data
    add_ingredients(new_id, new_ingredients)
    add_instructions(new_id, new_instructions)
    comments[new_id] = []
  return render_template("index.html", template_recipes=recipes, template_form=recipe_form)

@app.route("/recipe/<int:id>", methods=["GET", "POST"])
def recipe(id):
  comment_form = CommentForm(csrf_enabled=False)
  if comment_form.validate_on_submit():
    new_comment = comment_form.comment.data
    comments[id].append(new_comment)
  return render_template("recipe.html", template_recipe=recipes[id], template_type=types[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id], template_comments=comments[id], template_form=comment_form)

@app.route("/about")
def about():
  return render_template("about.html")
```

## Redirecting

Besides rendering templates from our routes, it can be important to move
from one route to another. This is the role of the function
`redirect()`.

Consider the case where we create our form in one route, but after the
form submission we want the user to end up in another route. While we
can set the `action` attribute in the HTML `<form>` tag go to any path,
`redirect()` is the best option to move from one route to another.

``` python
redirect("url_string")
```

Using this function inside another route will simply send us to the URL
we specify. In the case of a form submission, we can use `redirect()`
after we have processed and saved our data inside our
`validate_on_submit()` check.

Why don’t we just render a different template after processing our form
data? There are many reasons for this, one being that each route comes
with its own business logic prior to rendering its template. Rendering a
template outside the initial route would mean you need to repeat some or
all of this code.

Once again, to avoid possible URL string pitfalls, we can utilize
`url_for()` within `redirect()`. This allows us to navigate routes by
specifying the route function name instead of the URL path.

``` python
redirect(url_for("new_route", _external=True, _scheme='https'))
```

- we must add two new keyword arguments to our call of `url_for()`
- the keyword arguments `_external=True` and `_scheme='https'` ensure
  that the URL we redirect to is a secure HTTPS address and not an
  insecure HTTP address

Similarly, regular keyword arguments can be added if necessary.

``` python
redirect(url_for("new_route", new_var=this_var, _external=True, _scheme='https'))
```



**1.**

Note the added `flask` imports: `url_for` and `redirect`. These will be
used inside our route to change pages after the new recipe form
submission.

In the index route of **app.py** add a return statement still within
`if recipe_form.validate_on_submit():`. Start by returning the path
string we want to go to using `url_for()`. Use the `"recipe"` route
function as the main argument and set `id` to `new_id` as the keyword
argument.

Make sure to set and include the `_external` and `_scheme` keyword
arguments to load an HTTPS URL.

When submitting a recipe the browser should simply print the correct URL
string for the added recipe.

**2.**

Now that the URL string is set, let’s add `redirect()` to the `return`
statement and use the set `url_for()` as the argument.

When complete, the form submission should change the page to the recipe
that was just added. Good work!



``` python
from flask import Flask, render_template, request, redirect, url_for
from helper import recipes, types, descriptions, ingredients, instructions, add_ingredients, add_instructions, comments
from forms import RecipeForm, CommentForm

app = Flask(__name__)
app.config['SECRET_KEY'] = 'mysecret'

@app.route('/', methods=["GET", "POST"])
def index():
  recipe_form = RecipeForm(csrf_enabled=False)
  if recipe_form.validate_on_submit():
    new_id = len(recipes)+1
    recipes[new_id] = recipe_form.recipe.data
    types[new_id] = recipe_form.recipe_type.data
    descriptions[new_id] = recipe_form.description.data
    new_igredients = recipe_form.ingredients.data
    new_instructions = recipe_form.instructions.data
    add_ingredients(new_id, new_igredients)
    add_instructions(new_id, new_instructions)
    comments[new_id] = []
    #### Redirect to recipe route here
    return redirect(url_for("recipe", id=new_id, _external=True, _scheme='https'))
  return render_template("index.html", template_recipes=recipes, template_form=recipe_form)

@app.route("/recipe/<int:id>", methods=["GET", "POST"])
def recipe(id):
  comment_form = CommentForm(csrf_enabled=False)
  if comment_form.validate_on_submit():
    new_comment = comment_form.comment.data
    comments[id].append(new_comment)
  return render_template("recipe.html", template_recipe=recipes[id], template_type=types[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id], template_comments=comments[id], template_form=comment_form)

@app.route('/about')
def about():
  return render_template("about.html")
```

## Review

In this lesson we learned:

- How to access form data using the `request` object
- Control path selection with route function names using `url_for()`
- Create a web form structure using `FlaskForm` and WTForm fields
- Create a web form in the templates using `FlaskForm` variables
- Utilize field validators for increased data integrity
- Use `redirect()` to change paths easily within the app

Being able to utilize Python classes to handle forms is a very efficient
process. Organizing form data using the functionality of FlaskWTF and
WTForms can be easily achieved.

Navigate through the site and review the files to look at what you
accomplished in this lesson.



Great Work! Explore the app and move on when ready.



``` python
from flask import Flask, render_template, request
from helper import recipes, types, descriptions, ingredients, instructions, add_ingredients, add_instructions, comments
from forms import RecipeForm, CommentForm

app = Flask(__name__)
app.config["SECRET_KEY"] = "mysecret"

@app.route("/", methods=["GET", "POST"])
def index():
  recipe_form = RecipeForm(csrf_enabled=False)
  if recipe_form.validate_on_submit():
    new_id = len(recipes)+1
    recipes[new_id] = recipe_form.recipe.data
    types[new_id] = recipe_form.recipe_type.data
    descriptions[new_id] = recipe_form.description.data
    new_ingredients = recipe_form.ingredients.data
    new_instructions = recipe_form.instructions.data
    add_ingredients(new_id, new_ingredients)
    add_instructions(new_id, new_instructions)
    comments[new_id] = []
  return render_template("index.html", template_recipes=recipes, template_form=recipe_form)

@app.route("/recipe/<int:id>", methods=["GET", "POST"])
def recipe(id):
  comment_form = CommentForm(csrf_enabled=False)
  if comment_form.validate_on_submit():
    new_comment = comment_form.comment.data
    comments[id].append(new_comment)
  return render_template("recipe.html", template_recipe=recipes[id], template_type=types[id], template_description=descriptions[id], template_ingredients=ingredients[id], template_instructions=instructions[id], template_comments=comments[id], template_form=comment_form)

@app.route("/about")
def about():
  return render_template("about.html")
```

``` html
{% extends "base.html" %}
{% block content %}
  <h1>Cooking By Myself</h1>
  <p>Welcome to my cookbook. These are recipes I like.</p>
  {% for id, name in template_recipes.items() %}
    <p><a href="{{ url_for('recipe', id=id) }}">{{ name }}</a></p>
  {% endfor %}

  <form action="/" method="POST">
    {{ template_form.hidden_tag() }}
    <p>{{ template_form.recipe.label }}
    {{ template_form.recipe() }}</p>
    <tr>{% for btn in template_form.recipe_type %}
      <td>{{ btn }}</td>
      <td>{{ btn.label }}</td>
    {% endfor %}</tr>
    <p>{{ template_form.description.label }}
    {{ template_form.description() }}</p>
    <p>{{ template_form.ingredients.label }}
    {{ template_form.ingredients() }}</p>
    <p>{{ template_form.instructions.label }}
    {{ template_form.instructions() }}</p>
    <p>{{ template_form.submit() }}</p>
  </form>
  {% endblock %}
```

``` html
{% extends "base.html" %}
{% block content %}
  <h1>{{ template_recipe | title }}</h1>
  <h4>{{ template_type }}</h4>
  {% if template_description %}
    <p>{{ template_description }}</p>
  {%else%}
    <p>A {{ template_recipe }} recipe.</p>
  {% endif %}
  
  <h3>Ingredients - {{ template_ingredients | length}}</h3>
  <ul>{% for ingredient in template_ingredients %}
    <li>{{ ingredient }}</li>
  {% endfor %}</ul>

  <h3>Instructions</h3>
  <ul>{% for key, instruction in template_instructions|dictsort %}
    <li>{{ instruction }}</li>
  {% endfor %}</ul>

  <h3>Comments</h3>
  <ul>{% for comment in template_comments %}
    <li>{{ comment }}</li>
  {% endfor %}</ul>

  <form method="POST">
    {{ template_form.hidden_tag() }}
    <p>{{ template_form.comment.label }}
    {{ template_form.comment(size=48) }}</p>
    <p>{{ template_form.submit() }}</p>
  </form>
{% endblock %}
```

# Tourist Attractions

Whenever you travel it is fun to make a list of places you want to
visit. The application you are about to create looks at making this list
and organizing locations into 3 categories: recommended places to visit,
decided places to visit and places that have been visited. Within each
category you will have the option to move a location up to the next
category and also remove a location. Lastly, there is also the option to
add new locations to any of the categories.

The application consists of 7 files, but we will only work on 3 of them.
Let’s go over the files we won’t be working on:

**/static/styles.css:** Basic css files to give the application some
style and show off the benefits of template inheritance.

**/templates/base.html:** Template header file that the main template
file will inherit from.

**data.csv:** Dummy data we will use to show of the functionality of the
application as we build it.

**location.py:** A module the application will rely on to add, modify
and delete location data. Our application will instantiate a
`Locations()` class from this module. With this instance we will rely on
3 methods:

- `add()`: Add a location to the data
- `moveup()`: Move the location up one category
- `delete()`: Delete a location from the data

The files we will be working with are as follows:

**app.py:** The Flask application which consists of 3 routes:

- `locations()`: The main route which will return return content
  associated with each category of location. This route is also
  responsible for handling the changing of categories and deletion of
  locations.
- `add_location()`: A form handling route which will process the add
  location form and then redirect back to the `locations()` route.
- `index()`: This route is the same path as the `locations()` route but
  without a category variable. It will automatically redirect to the
  recommended page of the `locations()` route.

**/templates/locations.html:** Template file that displays the tourist
attractions data.

**forms.py:** A module that defines the form used in the application.

Now that we have described each file, feel free to walk through them
yourself before you begin. This may help you understand what is
happening as we accomplish each task.

Good luck and have fun. Let’s get started!!!

## Instructions

Mark the tasks as complete by checking them off

### render_template() and Template Variables

1\.

To start let’s get some content in the web browser.

In **app.py** replace the empty string in the return statement of the
`locations()` route with a call to `render_template()`, using
**locations.html** as an argument.

2\.

Good job. Our web content doesn’t look like much, just a couple buttons
that are part of a web form. In order to work on our template we’ll need
to create some template variables and assign the application data to
them. Currently our application data consists of:

- `category`: The URL string variable that defines the current category
  page.
- `categories`: A dictionary with the `category`string as the keys and
  display ready categories as the items.
- `locations`: A list of `Location()` objects as defined in
  **locations.py**. This is a list of only the locations associated with
  the string variable `category`.

In **app.py** add 3 variables using keyword arguments:

1.  Create template variable `category` and assign it the app variable
    `category`
2.  Create template variable `categories` and assign it the app variable
    `categories`
3.  Create template variable `locations` and assign it the app variable
    `locations`

### Populate the Template

3\.

With access to the three variables, we can start work on the template.
Let’s start with the heading of the page. We will use the `category` and
`categories` variables to display a string for the page heading.

Inside the `<h1>` tags in **locations.html** insert the `categories`
dictionary using the `category` string as a key. Be sure to use
expression delimiters `{{ }}`.

When you are done, if you want to change the heading replace
“recommended” at the end of the URL in the browser component with
“tovisit” or “visited”. These are the 3 category pages we’ll be working
with in this project.

4\.

Since we have a heading that tells us what category page we’re on, let’s
create an easy way to move from page to page by creating a Navbar.

In **locations.html** implement the Navbar:

1.  Inside the `<div class="navbar">` tags create a `for` loop that
    surrounds the `<a>` tag
2.  Iterate through the keys and values of `categories` using the
    `items()` object method
3.  Set the loop variables `category` as each key and `label` as each
    value
4.  Inside the `for` loop, set the `href` attribute to `category` and
    the text of the link as `label`

**Be sure to:**

- Close the for loop
- Use statement delimiters `{% %}` with the for loops
- Use expression delimiters `{{ }}` for the standalone variables

5\.

Great work! You can now move to each category page using the Navbar.
Let’s now populate the list of locations in each category using the
`locations` variable.

In **locations.html** implement the locations list:

1.  Inside the `<tbody class="loctable">` tags create a `for` loop that
    surrounds the `<tr>` tags
2.  Iterate through the objects in `locations` and define a loop
    variable `location`
3.  Inside the `<td class="loc">` tags insert the `name` attribute of
    the `location` object
4.  Inside the `<td class="desc">` tags insert the `description`
    attribute of the `location` object

**Be sure to:**

- Close the for loop
- Use statement delimiters `{% %}` with the for loops
- Use expression delimiters `{{ }}`

6\.

In the web browser component, to the right of each location description
is a pair of buttons: one to move the location up one and one to delete
the location. In the template these are `<input type="submit"` tags
which are in the `<form>` that is inside the 3rd `<td>` tag. We need to
add a little more info to the form in order for our application to work.

In **locations.html** add the location name to each of the input
elements. You can do this by setting the name attribute for each
`<input type="submit"` in the form to the `name` attribute of the
`location` object.

**Be sure to:**

- Use expression delimiters `{{ }}`

7\.

We now have a clear heading to tell us what category page we’re on, a
Navbar, a list of locations and buttons to perform actions on our
locations. The button functionality is unnecessary for the visited
locations, so let’s keep them from appearing on that page.

In **locations.html** implement an `if` statement to only have the Move
Up and Delete buttons on the “recommended” and “tovisit” pages:

1.  Inside the `<td class="btns">` tags create an `if` statement that
    surrounds the `<form>` tags
2.  The `if` condition should check if the `category` attribute of the
    `location` object is in this list: `["recommended", "tovisit"]`

**Be sure to:**

- Close the if statement
- Use statement delimiters `{% %}` with the if statement

8\.

Now that the first part of the template is finished, let’s use
inheritance to complete the template and add some styling to the page.

In **locations.html** inherit from another template:

1.  At the top of **locations.html** insert an `extends` statement that
    extends **base.html**
2.  Now surround the rest of the content in **locations.html** with a
    `block` statement named `content`

**Be sure to:**

- Surround the filename with quotes
- Close the `block` statement
- Use statement delimiters `{% %}` with the `extends` and `block`
  statements

### Handle the Move Up and Delete Form

9\.

When the user pushes one of the location form buttons, a request will be
sent to the server with `name` and `value` attributes of the associated
`<input>`. One way to test for a form submission in our application is
to test the `method` attribute of the request object. If the `method` is
`"POST"` we know a form has been submitted.

In **app.py** test for a form submission. Inside the `locations()` route
function replace the `False` condition of the `if` statement with a
check that the `request` object’s `method` attribute equals `"POST"`

10\.

Excellent! Now we need to collect the data in order to process it. If
you look in the `locations()` route function of **app.py** you will see
that some of the data processing has been done already. The two things
to know about the submitted data are that the `form` attribute of the
request object is a dictionary and it will only contain one key-value
pair within it. Knowing this we can use the `items()` method to extract
that pair using a single line of code.

In **app.py** collect the `name` and `value` data from the submitted
form. Replace the `[(None, None)]` statement with the output of the
`items()` method of the `request` objects `form` attribute.

When you are done you can test out the functionality by clicking the
buttons next to each location. If you delete all the data you can
refresh it by running the code again.

### Create A Form in Python

11\.

Amazing! Already this is a properly functioning application.

Now it is time for us to create a form to add a location. We’ll define
the form in the **forms.py** file and add a name field, a description
field, radio buttons for the category and a submit button.

Note: Provided in **forms.py** is a new form class,
`FieldsRequiredForm`, that inherits from `FlaskForm`. This new type of
form will allow us to require data for radio button form fields.

In **forms.py** start by defining the form and adding a `StringField`

1.  Create a form class named `AddLocationForm()` that inherits from
    `FieldsRequiredForm`
2.  Define an attribute `name` and assign it an instance of
    `StringField()` with the label `"Location Name"` and a
    `DataRequired()` validator.

12\.

Good job! Now let’s complete the form.

In **forms.py** create 3 more field attributes:

1.  Define an attribute `description` and assign it an instance of
    `TextAreaField()` with the label `"Location Description"` and a
    `DataRequired()` validator
2.  Define an attribute `category` and assign it an instance of
    `RadioField()` with the label `"Category"` and set `choices` equal
    to the defined variable `categories`
3.  Define an attribute `submit` and assign it an instance of
    `SubmitField()` with the label `"Add Location"`

13\.

Now that the form is done let’s set it up in our application so we can
implement it in the template.

In **app.py** import the form and assign it to a template variable:

1.  Write an import statement that imports `AddLocationForm` from the
    forms file. Reference the `locations` import statement if necessary.
2.  Note that `app.config['SECRET_KEY']` is already set. Remember this
    is necessary to protect against a Cross-Site Request Forgery attack
3.  Now define a template variable in the call to `render_template()`
    within the `locations()` route. The template variable should be
    named `add_location` and assign it an instance of
    `AddLocationForm()`

### Implement the Form in the Template

14\.

Now that we have access to the form in the template we need to tell the
form what route will be handling the submission. We also need to
implement the other part of the CSRF protection by inserting the form’s
`hidden_tag()` method.

In **locations.html** initialize the add location form:

1.  Inside the `<form class="addform">` tag set the `action` attribute
    to `url_for()` with the `add_location` route as an argument
2.  On the following line use the form template variable `add_location`
    and call the `hidden_tag()` method

**Be sure to:**

- Use `url_for()` inside double quotes
- Use single quotes for the route function name
- Use expression delimiters `{{ }}`

15\.

The structure of the form is created using an HTML table. The first row
will be for the labels, the second for the fields and the third for the
submit button.

In **locations.html** populate the first row of the table with the field
labels:

1.  Insert the `name` field `label` into the first `<td>` tag using the
    `add_location` template variable
2.  Insert the `description` field `label` into the second `<td>` tag
    using the `add_location` template variable
3.  Insert the `category` field `label` into the third`<td>` tag using
    the `add_location` template variable

**Be sure to:**

- Use expression delimiters `{{ }}`

16\.

Now we’ll move onto inserting the `name` and `description` fields into
the second row of the table.

In **locations.html** start to populate the second row of the table with
the below fields:

1.  Insert the `name` field into the first `<td>` tag of the second row
    using the `add_location` template variable
2.  Insert the `description` field into the second `<td>` tag of the
    second row using the `add_location` template variable

**Be sure to:**

- Use expression delimiters `{{ }}`

17\.

For the `category` `RadioField()` buttons we need to iterate through the
variable to insert the button elements

In **locations.html** populate the third `<td>` column of the second row
of the table with the `RadioField()` elements:

1.  Create a for loop inside the third `<td>` tag in the second row,
    making sure to surround the `<div>` tags
2.  Iterate through the `category` field using the `add_location`
    template variable and create a loop variable `button`
3.  Inside the `<div>` tags insert the field using the loop variable
    `button`
4.  On the same line insert the field `label` using the loop variable
    `button`

**Be sure to:**

- Close the for loop
- Use statement delimiters `{% %}` with the for loops
- Not use parentheses `()` when iterating through the `category`
  variable
- Use expression delimiters `{{ }}` for the standalone variables

18\.

Now let’s finish the form with the submit button.

In **locations.html** populate the third row with an `add_location`
button. Insert the `submit` field into the single `<td>` tag of the
third row using the `add_location` template variable.

**Be sure to:**

- Use expression delimiters `{{ }}`

### Collect Form Data and Finalize Applicaiton

19\.

Great work! Now let’s finish the application off by implementing the
form collection.

In **app.py** inside the `add_location` route function create a form
instance and validate the submission:

1.  Create an `AddLocationForm()` instance with the argument
    `csrf_enabled=False` and assign it to a variable named `add_form`.
2.  Replace the `True` condition with the form instance’s
    `validate_on_submit()` function

20\.

Now its time to collect the data!

In **app.py** inside the `add_location()` route and within the `if`
statement, collect the form data:

1.  Replace the `None` and assign the variable `name` to the `name`
    field `data`
2.  Replace the `None` and assign the variable `description` to the
    `description` field `data`
3.  Replace the `None` and assign the variable `category` to the
    `category` field `data`

21\.

When a location is added we want to redirect to the category page the
location was added. We will also set up a redirect from the `/` path
without a variable.

In **app.py** use `redirect()` to complete the application flow:

1.  In the `add_location()` route function replace the empty string in
    the `return` statement with `redirect()`
2.  As the argument for `redirect` use `url_for()` and pass the
    `locations` route function and set the `category` keyword argument
    to the local variable `category`. Set the `_external` and `_scheme`
    keyword arguments to load an HTTPS URL.
3.  In the `index()` route function replace the empty string in the
    `return` statement with `redirect()`
4.  As the argument for `redirect` use `url_for()` and pass the
    `locations` route function and set the `category` keyword argument
    to `"recommended"`. Set the `_external` and `_scheme` keyword
    arguments to load an HTTPS URL.

## Solution

# Flask Environment Setup

[How to Build Flask Apps
Locally](https://www.youtube.com/watch?v=O0gcAh-cRvw)
