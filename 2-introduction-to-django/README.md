# Creating Your First Django App Introduction

Huzzah! You know about the recommended prerequisites and you’re ready to
see what Django has to offer. Well, strap in, because you’re going to
witness first-hand how quickly Django can create an application for you
from scratch!

In this module, you’ll start with nothing (except for having Django
installed on our platform) and create a web page that displays text and
has its own development server. With a few lines of code, you’ll get a
sense of how Django connects different components together to provide a
cohesive experience for users and a streamlined workflow for developers.

# What is the Back-end?

## Front and Back

In this lesson, we’ll explain what makes up the back-end of a web
application or website. The back-end can feel very abstract, but it
becomes clearer when we explain it in terms of the front-end! To
oversimplify a bit, the front-end is the parts of a webpage that a
visitor can interact with and see.

Various tools and frameworks can be used to make a webpage, but, at its
core, the front-end is composed of JavaScript, CSS, HTML, and other
_static assets_, such as images or videos. Static assets are files that
don’t change. When a visitor navigates to a webpage, these assets are
sent to their browser.

Visiting a simple website is like ordering delivery from a restaurant:
we place an order for our meal, and, once it’s delivered to us, we have
it entirely in our possession. In this analogy, we can think of the
front-end as everything that’s dropped off with the delivery: the
containers, the utensils, and the food itself.

You’ll sometimes hear front-end development referred to as _client-side_
development. Our instinct might be to think of the client as the human
visitor or user of a website, but when referring to the client in web
development, we’re usually referring to the non-human requester of
content. In the case of visiting a website, the client is the browser,
but in other circumstances, a client might be another application, a
mobile device, or even a “smart” appliance!

While the front-end is the part of the website that makes it to the
browser, the back-end consists of all the behind-the-scenes processes
and data that make a website function and send resources to clients.

### Instructions

Watch the video to get a better understanding of the front-end.

### Solution

[Front and Back](https://content.codecademy.com/courses/server-side-web-dev/FrontEndCut_v1.mp4)

## The Web Server

We talked about how the front-end consists of the information sent to a
client so that a user can see and interact with a website, but where
does the information come from? The answer is a _web server_.

The word “server” can mean a lot of things in computing, but we’re going
to focus on web servers specifically. A _web server_ is a process
running on a computer that listens for incoming requests for information
over the internet and sends back responses. Each time a user navigates
to a website on their browser, the browser makes a request to the web
server of that website. Every website has at least one web server. A
large company like Facebook has thousands of powerful computers running
web servers in facilities located all around the world which are
listening for requests, but we could also run a simple web server from
our own computer!

The specific format of a request (and the resulting response) is called
the _protocol_. You might be familiar with the protocol used to access
websites: HTTP. When a visitor navigates to a website on their browser,
similarly to how one places an order for takeout, they make
<a href="https://www.codecademy.com/articles/http-requests"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">an HTTP request</a> for the resources that make up that
site.

For the simplest websites, a client makes a single request. The web
server receives that request and sends the client a response containing
everything needed to view the website. This is called a _static
website_. This doesn’t mean the website is not interactive. As with the
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

### Solution

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
is known as _dynamic content_.

When we eat at a restaurant, we’ll order to our tastes, make
substitutions, etc; the result is a dining experience unique to us.
Aside from that, there’s a lot happening behind the scenes to make a
restaurant work: ingredients are ordered from suppliers, new menus are
designed, and employees’ schedules are created. Similarly, to make a web
application that runs smoothly, the back-end is doing a lot more than
simply sending assets to browsers.

The collection of programming logic required to deliver dynamic content
to a client, manage security, process payments, and myriad other tasks
is sometimes known as the “application” or _application server_. The
application server can be responsible for anything from sending an email
confirmation after a purchase to running the complicated algorithms a
search engine uses to give us meaningful results.

### Solution

<img src="https://content.codecademy.com/courses/updated_images/Node_3_v2_text_Updated_1.svg" alt="people using computers." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Storing Data

You’ve probably heard that data is a big deal. By some measures, 90% of
the world’s data has been generated in just the past two years! From a
stored credit card number on an e-commerce site to the timestamp when
you hit pause on Netflix, modern web applications collect a lot of data.
For that data to be useful, it has to be organized and stored somewhere.

The back-ends of modern web applications include some sort of
_database_, often more than one. Databases are collections of
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
systems such as key-value pairs or a document storage model. _SQL_,
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

### Solution

<img src="https://content.codecademy.com/courses/updated_images/Node_4_v4_Updated_1.svg" alt="Illustration of a relational database (represented by a table) compared with an illustration of NoSQL databases (represented by Key-Value pairs and a tree)" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## What is an API?

When a user navigates to a specific item for sale on an e-commerce site,
the price listed for that item is stored in a database, and when they
purchase it, the database will need to be updated with the correct
inventory for that item type. In fact, much of what the back-end entails
is reading, updating, or deleting information stored in a database.

In order to have consistent ways of interacting with data, a back-end
will often include a _web API_. API stands for **A**pplication
**P**rogramming **I**nterface and can mean a lot of different things,
but a _web API_ is a collection of predefined ways of, or rules for,
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

### Solution

<img alt="Node diagram." src="https://content.codecademy.com/courses/updated_images/Node_5v2__Updated_1.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Authorization and Authentication

Two other concepts we’ll want our server-side logic to handle are
_authentication_ and _authorization_.

_Authentication_ is the process of validating the identity of a user.
One technique for authentication is to use logins with usernames and
passwords. These credentials need to be securely stored in the back-end
on a database and checked upon each visit. Web applications can also use
external resources for authentication. You’ve likely logged into a
website or application using your Facebook, Google, or Github
credentials; that’s also an authentication process.

_Authorization_ controls which users have access to which resources and
actions. Certain application views, like the page to edit a social media
personal profile, are only accessible to that user. Other activities,
like deleting a post, are often similarly restricted.

When building a robust web application back-end, we need to incorporate
both authentication (Who is this user? Are they who they claim to be?)
and authorization (Who is allowed to do and see what?) into our
server-side logic to make sure we’re creating secure, personalized, and
dynamic content.

### Solution

<img src="https://content.codecademy.com/courses/server-side-web-dev/NodeAnimation_6.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Different Back-end Stacks

Unlike the front-end, which must be built using HTML, CSS, and
JavaScript, there’s a lot of flexibility in which technologies can be
used in order to create the back-end of a web application. Developers
can construct back-ends in many different languages like PHP, Java,
JavaScript, Python, and more.

You don’t need to reinvent the wheel to create a robust back-end.
Instead, most developers make use of _frameworks_ which are collections
of tools that shape the organization of your back-end and provide
efficient ways of accomplishing otherwise difficult tasks.

There are numerous <a
href="https://developer.mozilla.org/en-US/docs/Learn/Server-side/First_steps/Web_frameworks#A_few_good_web_frameworks"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">back-end frameworks</a> from which
developers can choose. Here are a few examples:

| Framework                                                                                    | Language                                                                                                                                             |
| -------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| <a href="https://laravel.com/">Laravel</a>                                                   | <a href="http://www.php.net/">PHP</a>                                                                                                                |
| <a href="https://expressjs.com/">Express.js</a>                                              | <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript">JavaScript</a> (runs in the <a href="https://nodejs.org/en/">Node environment</a>) |
| <a href="https://rubyonrails.org">Ruby on Rails</a>                                          | <a href="https://www.ruby-lang.org/en/">Ruby</a>                                                                                                     |
| <a href="https://spring.io/">Spring</a>                                                      | <a href="https://www.oracle.com/java/">Java</a>                                                                                                      |
| <a href="https://www.oracle.com/technetwork/java/javaee/javaserverfaces-139869.html">JSF</a> | <a href="https://www.oracle.com/java/">Java</a>                                                                                                      |
| <a href="http://flask.pocoo.org/">Flask</a>                                                  | <a href="https://www.python.org/">Python</a>                                                                                                         |
| <a href="https://www.djangoproject.com/">Django</a>                                          | <a href="https://www.python.org/">Python</a>                                                                                                         |
| <a href="https://dotnet.microsoft.com/learn/aspnet/what-is-aspnet">ASP.NET</a>               | <a href="https://dotnet.microsoft.com/learn/csharp">C#</a>                                                                                           |

The collection of technologies used to create the front-end and back-end
of a web application is referred to as a _stack_. This is where the term
_full-stack developer_ comes from; rather than working in either the
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

### Solution

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

### Solution

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
enables you view _this_ page in your browser.

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

Once the TCP connection is established, the client sends a HTTP _GET_
request to the server to retrieve the webpage it should display. After
the server has sent the response, it closes the TCP connection. If you
open the website in your browser again, or if your browser automatically
requests something from the server, a new connection is opened which
follows the same process described above. GET requests are one kind of
HTTP method a client can call. You can learn more about the other common
ones (_POST_, _PUT_ and _DELETE_) in
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

```
GET / HTTP/1.1
Host: www.codecademy.com
```

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

```
HTTP/1.1 200 OK
Content-Type: text/html
```

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

```
HTTP/1.1 404 NOT FOUND
```

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

# Creating Your First Django App

## Introduction to Django

Welcome to the world of Django!

Django, pronounced like JANG-go with a silent D, is a high-level web
framework that is written with Python — one of the most readable and
beginner-friendly programming languages. Django can be used to rapidly
build complex database-driven websites. Like Python, Django is often
considered to be strongly _opinionated_. An opinionated software has
guidelines and defaults, such as code structure, project structure, for
developing code. Django’s opinionated approach means specific ways of
writing code and a steeper learning curve to apply the “<a
href="https://docs.djangoproject.com/en/3.1/misc/design-philosophies/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django philosophy</a>“. However, it comes
with advantages when onboarding new teammates to a project and debugging
code because of how structured a Django project is.

Django is an open-source project, supported by the
<a href="https://www.djangoproject.com/foundation"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django Software Foundation</a>, and has a
strong community of contributors. It has been used by many well-known
data-heavy websites such as Instagram, Youtube, and Dropbox. In this
lesson, we’ll create together our first Django app! More importantly,
we’ll experience first-hand how its design helps to take applications
from concept to completion using its “batteries included” approach.

### Solution

<img src="https://static-assets.codecademy.com/skillpaths/django/first_app/django_slogan_white.svg" alt="Django logo and slogan: &quot;The web framework for perfectionists with deadlines.&quot;" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## What is a Web Framework?

Let’s first establish what it means when we say Django is a _web
framework_.

Web frameworks are a type of software development tool that makes it
easier and faster to develop web applications. They are a type of code
library that provides code and patterns for database access, as well as
templating systems for content. They promote code reuse, so we don’t
have to write as much code to get a project running. Some features most
web frameworks include are:

- URL routing
- Input form management and validation
- Templating engines for HTML and CSS
- Database configuration
- Web security
- Session repository and retrieval

Out of the box, Django comes with an admin panel, a user authentication
system, a database, and something called _object-relational mapper_
(ORM) that helps a web application interact with a database. These are
some of the “batteries” included in Django to help build projects faster
without having to worry about which tools to use.

Later we’ll see how we can bootstrap a fully featured web application in
only a handful of commands.

### Instructions

Take a look at the diagram to the right to see common parts of a web
application that web frameworks can help you with.

### Solution

<img src="https://static-assets.codecademy.com/skillpaths/django/first_app/WebFramework-nobg.svg" alt="A browser with different sections highlighted showing what a web framework provides, some examples being:

- URL resolvers
- User Accounts and Authentication
- Form Submission and handling
- Database
- Page Templates and static assets" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## How Django Works

Before we create our first Django web app, let’s take a little look into
how Django works underneath the hood. The Django project describes
itself as an MTV framework, using _Models_, _Templates_ and _Views_.
Let’s break down these components:

- The model portion deals with data and databases, it can retrieve,
  store, and change data in a database.
- The template determines how the data looks on a web page.
- The view describes the data to be presented, and passes this
  information to the template.

With the basics of the components explained let’s understand how they
work together when we visit a Django website. When a request comes to a
web server, it’s passed to Django to figure out what is requested. A
client requests a URL, let’s use codecademy.com as an example, Django
will take the web address and pass it to its _urlresolver_. Django will
try to match the URL to a list of patterns, and if there is a match,
then pass the request to the associated view function.

Imagine a mail carrier delivering a letter. They walk down the street
checking each house number until they find the exact one on the letter.
Once they find the house, they deliver the letter. That’s how the
urlresolver works!

When we land on the right page, Django uses data from the model and
feeds it into the view function to determine what data is shown. That
data is given to the template and presented to us via the web page.

This is a bit of a simplified version of what Django is doing underneath
the hood, but a key takeaway is that Django follows this MTV pattern.

### Instructions

Take a look at the diagram to the right to see the the structure of MTV
in Django.

### Solution

<img src="https://static-assets.codecademy.com/skillpaths/django/first_app/django_mtv_diagram_v2.svg" alt="The MTV framework is broken down according to the steps:
1 -3. A user visits a URL provided by a Django project
4. The request is processed by the View
5. The View gets information from the Model
6. The information is given back to the View and inserted into the Template and served to the user." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Starting a Django Project

Now that we have a basic understanding of what Django is and how it
works, let’s get started with creating a project. Django provides us
with `django-admin`, a command-line utility that helps us with a variety
of administrative tasks. We can use it with various commands by calling
it in the terminal like this:

```bash
django-admin <command> [options]
```

Running `django-admin help` will provide a list of possible commands.

A Django project can be easily created with the `startproject` command.
It takes a couple of options– the name of the project and optionally the
directory for our project. The full command would look like this:

```bash
django-admin startproject projectname
```

Django will then create a directory for the project, or the project root
folder.

```
my-project/
  ├── my-project/
  └── manage.py
```

Inside the project root folder is a Python file, **manage.py**, that
contains a collection of useful functions used to administer the
project. This file performs the same actions as `django-admin` but is
set specifically to the project. We can do a number of things with it,
such as starting a server.

Alongside the **manage.py** is another directory with the same name as
the project. This folder is treated as a <a
href="https://docs.python.org/3/reference/import.html#regular-packages"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Python package</a> because of the
presence of **\_\_init\_\_.py**, and inside this directory contains
important settings and configuration files for the project.

We’ll start a project in this exercise, and in the next exercise we will
go into more detail about the specific files that are created.

### Instructions

**1.**

Start a Django project called **djangovet** using the `django-admin`
utility in the terminal.

**2.**

View the project directory that was created inside the file explorer.
Click on the button the folder at the top left hand corner of the code
editor expand the menu or select “Open file”. After you’ve explored the
files, click “Check work” to pass this step and move on to the next
exercise.

### Solution

```bash
django-admin startproject djangovet
```

## Configuring Django Settings

With only a one-line command, Django has started a functioning project!
Behind the scenes, Django will do all the configurations for us and
store them in an inner directory with the same name as the project.
Important for us are **settings.py** and **urls.py**. We can safely
ignore the other files, just remember to not delete them by accident!

**settings.py** is a Python file that contains configurations that we’ll
be editing throughout the development of our project. Inside, there is a
list called `INSTALLED_APPS` which contains the apps that make up the
Django project, more on these later. After running the `startproject`
command, our **settings.py** should contain:

```python
INSTALLED_APPS = [
  'django.contrib.admin',
  'django.contrib.auth',
  'django.contrib.contenttypes',
  'django.contrib.sessions',
  'django.contrib.messages',
  'django.contrib.staticfiles',
]
```

We can see that Django pre-installs some common apps for us, such as
admin, authentication, sessions, and an app to help manage static files.
When we create new applications for the project, we have to include them
here so that Django will know about them!

Further down in **settings.py**, is a dictionary named `DATABASES`. It
looks like:

```python
DATABASES = {
  'default': {
    'ENGINE': 'django.db.backends.sqlite3',
    'NAME': BASE_DIR / 'db.sqlite3',
  }
}
```

We see that Django by default will set up an SQLite database for us. In
later lessons, we’ll learn how to use it to store content.

Next, in the same directory where **settings.py** is located, is another
Python file named **urls.py**. Inside are the URL declarations for this
Django project, or a “table of contents” for the Django project.
Remember earlier when we said that Django goes down a list of patterns
to match a URL? This is that list!

When we first create the project, **urls.py** will include this:

```python
urlpatterns = [
  path('admin/', admin.site.urls),
]
```

This means that the admin app already has a route.

Since the project comes pre-configured, we can start a server to test
that the project works. A development server can be started by using
**manage.py** and providing the `runserver` command. This command must
be run in the root directory, the same directory where **manage.py** is
located. By default, Django will start a development server with port
8000, but an alternate port can be provided as an option.

The full command will look like this:

```bash
python3 manage.py runserver <port number>
```

The Django development server will _hot-reload_ as changes are made to
the project, so we don’t have to keep restarting the server as we
develop. The server will keep running until we stop it with the
<span class="kbd">ctrl</span> + <span class="kbd">c</span>.

**Note:** Our Codecademy Django environment must run the development
server on port 4001 by providing the option `0.0.0.0:4001` This port is
specific to working on Codecademy. If you want to work locally on your
computer, you can let Django set the default port for you.

### Instructions

**1.**

**settings.py** is already opened in the file editor. Please find
`INSTALLED_APPS` list and leave a comment directly above the list that
says, `# I found INSTALLED_APPS`.

Next, find the `DATABASES` dictionary and leave a comment directly above
the dictionary that says, `# I found DATABASES`.

**2.**

Navigate to **urls.py** and leave a comment that says
`# I found urlpatterns` before the `urlpatterns` list.

**3.**

In the terminal, change to the root directory for your project using the
command:

```bash
cd djangovet
```

**4.**

In the terminal, start a development server on port `4001` with:

```bash
python3 manage.py runserver 0.0.0.0:4001
```

### Solution

```python
"""
Django settings for djangovet project.

Generated by 'django-admin startproject' using Django 3.1.4.

For more information on this file, see
https://docs.djangoproject.com/en/3.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.1/ref/settings/
"""

from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '(o2&bobn_4*)$ka&6mg44y7#+ivru-njpi=0aulye&=2tcgw*b'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['.cc-propeller.cloud']


# Application definition

# I found INSTALLED_APPS

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'djangovet.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'djangovet.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases

# I found DATABASES

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}


# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/

STATIC_URL = '/static/'
```

```bash
cd djangovet
python3 manage.py runserver 0.0.0.0:4001
```

## Migrating the Database

When we started the server, Django gave us an error message that there
were unapplied migrations:

```
You have 15 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): auth, contenttypes, sessions.
Run 'python manage.py migrate' to apply them.
```

A _migration_ is a pending database change. As we saw in
**settings.py**, by default, Django will have some apps installed. Some
of these default apps, for example, the admin interface, use the
database and the migrations must be applied to the SQLite database.

Whenever we make changes to the model of the database, we must apply the
changes by running `python3 manage.py migrate`. After applying the
migration, when we run the server our errors are gone.

By applying our migration, we have access to the admin app! The admin
app comes pre-installed and can be navigated to since it has its URL
provided in **urls.py** we saw earlier. At the moment there aren’t any
admin users but we can still visit `localhost/admin` to see the admin
login page.

### Instructions

**1.**

In the terminal, `cd` into the root project directory, **djangovet/**,
and apply the database migration with `python3 manage.py migrate` in the
terminal. After running the commands, please click “Check Work”.

**2.**

Start the server on port `0.0.0.0:4001` and see that the error messages
are gone!

**3.**

In the workspace browser, navigate to the admin page at
`localhost/admin`. You should see an admin login page. Click on “Check
work” when you are ready.

### Solution

```bash
cd djangovet
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:4001
```

## Django Apps

We’ve been talking about Django projects and apps for a while, but what
exactly are apps? How are apps different from a project? Well, a Django
app is a submodule to a project, that contains the code for a specific
feature. In the submodule, we’ll find things like: a **models.py** file,
a migration directory, and other files and directories related to the
application. Django apps should be self-sufficient and in theory, can be
picked up and placed in another project without any modification. A
Django project refers to the entire code base and its parts. The Django
project folder holds **manage.py** and the other module that includes
**settings.py**.

In a real-world example, think of a website for a veterinarian’s office
as a Django project. It would consist of smaller apps, such as an
appointment calendar, patient profiles, and perhaps a testimonial
section. Apps are part of what makes Django projects so scalable. Since
they should be entirely self-sufficient, they shouldn’t break any parts
as more features are added to a project. A Django app can be created by
running the `startapp` command in the project root directory, the
directory with **manage.py**, and providing the name of the app as an
additional option.

```
python3 manage.py startapp myapp
```

This will create a new directory called **myapp** alongside the project
settings folder. Running `startapp` will result in the following folder
structure.

```
mysite/
├── manage.py
└── mysite/
   ├── __init__.py
   ├── settings.py
   └── urls.py
└── myapp/
```

Inside our project root folder, we have our previous folder which held
our project settings and a new folder for our app. Inside it are files
related specifically for the app such as **models.py** and **tests.py**.

In order for Django to be aware of the app’s existence, it needs to be
added to the list of `INSTALLED_APPS` in the project’s **settings.py**
file.

```python
INSTALLED_APPS = [
  "myapp.apps.MyappConfig"
]
```

### Instructions

**1.**

Change to the project root directory, **djangovet**, and create a Django
app called **vetoffice** using the `startapp` command in the terminal.

**2.**

Add `"vetoffice.apps.VetofficeConfig"` to the `INSTALLED_APPS` list
inside **settings.py**.

### Solution

```bash
python3 manage.py startapp vetoffice
```

```python
"""
Django settings for djangovet project.

Generated by 'django-admin startproject' using Django 3.1.4.

For more information on this file, see
https://docs.djangoproject.com/en/3.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.1/ref/settings/
"""

from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '+yie--d!=_0329k=dzo*dvwkhl&#z(sq+y@1%(l=1*5*azs+g_'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['.cc-propeller.cloud']


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    "vetoffice.apps.VetofficeConfig"
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'djangovet.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'djangovet.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}


# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/

STATIC_URL = '/static/'
```

## Creating a View for an App

Earlier, we discussed the MTV pattern and the integral role that views
play. They are the information brokers in a Django application that
decides what data gets delivered to a template and displayed. More
simply put, a view is a class or function that processes a request and
sends a response back.

In our veterinarian’s office example website, a customer might go to the
`/profile` page of the website and their request gets passed to a view
function to be processed. The view function may:

1.  Check to see if the customer is logged in
2.  Request their profile information from a database
3.  Format the information in a template
4.  Send back the profile page as an HTML file for the customer to view
    in their browser

The view function does quite a bit of work!

At the core, Django uses a protocol called,
<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Hypertext Transfer Protocol</a>, which is
the foundation for data communication on the worldwide web. In Django,
requests, and responses are handled as `HttpRequest` and `HttpResponse`
objects from a module called `django.http`.

When a page is requested:

1.  Django creates an `HttpRequest` object that contains information
    about the request
2.  Django loads the appropriate view, passing the `HttpRequest` as the
    first argument to the view function

Each view function is responsible for returning an `HttpResponse`
object. The `HttpResponse` response object can be the HTML contents of a
web page, a redirect, an error, an XML document, an image, or just about
anything that can display on a web page.

A simple view function would look like this:

```
# In views.py
def index(request):
  return HttpResponse("This is the response!")
```

Above, we have an `index()` view function for our home page. When users
visit our home page, the view function sends back an `HttpResponse` with
the string `"This is the response!"` to be displayed on a web page.

### Instructions

**1.**

Import the `HttpResponse` module from `django.http` inside **views.py**.

**2.**

Create a function named `home()` that takes `request` as an argument.
Return an `HttpResponse` object with the string
`"Welcome to the Vet's office!"`.

### Solution

```python
from django.shortcuts import render
#Import HttpResponse here
from django.http import HttpResponse

# Create your views here.

def home(request):
  return HttpResponse("Welcome to the Vet's office!")
```

## Using a View To Send an HTML Page

We just made a view that sends raw text to the browser. But, websites
aren’t just plain text! In order to create stylish web pages, we mainly
use HTML, CSS, and JavaScript.

We can use Django to render an HTML page when a view function is called.
Django will look in each app folder inside `INSTALLED_APPS` for
directories named **templates**. The <a
href="https://docs.djangoproject.com/en/3.0/intro/tutorial03/#namespacing-url-names"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">best practice</a> for structuring this
folder is to _namespace_ them. That is to place our HTML pages inside a
directory that has the same name as your app within the **templates/**
directory.

The resulting templates folder structure will look like this:

```
myapp/
└── templates/
    └── myapp/
      └── mytemplate.html
```

The reason for this nested structure is if there was a template file
with the same name in a different application, Django would be unable to
distinguish between them. We need to be able to point Django at the
right one and namespacing them ensures against future conflicts, so that
apps lower down in the `INSTALLED_APPS` setting do not override previous
templates.

With our file structure set up, we can build out the logic in our view
function in **views.py** like so:

```
from django.template import loader
def home():
  template = loader.get_template("app/home.html")
  return HttpResponse(template.render())
```

In the above code, we import `loader` from `django.template`. Inside the
view function (`home()`) we load the template with `.get_template()`.
Then, we use the `.render()` method on the template object inside the
`HttpResponse` object to send HTML pages to clients.

### Instructions

**1.**

Create the template directory structure inside the vetoffice app folder.
Click on the folder icon on the top-left corner and hover the
**vetoffice/** folder. Select the three dots to the right of the menu
item to bring up the options menu. Click on the “New Folder” option and
provide **templates** as the name. Again, select the “New Folder” option
on the **templates/** folder create another folder within it named,
**vetoffice/**.

The final folder structure should look like this.

```
djangovet/
└──vetoffice/
  └── templates/
    └── vetoffice/
```

**2.**

Create a file named **home.html** inside the **vetoffice/** template
folder by selecting the **vetoffice/** folder options in the file
explorer and select “New File”. Inside it copy in the following HTML:

```
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <title>Vet Office</title>
</head>
<body>
  <h1>Welcome to the Vet Office Page</h1>
</body>
</html>
```

### Solution

```bash
mkdir -p templates/vetoffice  # create the 'templates' and 'vetoffice' directories if they don't exist
touch templates/vetoffice/home.html  # create an empty 'home.html' file
```

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Vet Office</title>
  </head>
  <body>
    <h1>Welcome to the Vet Office Page</h1>
  </body>
</html>
```

## Creating a Django Template

To place content generated from Django inside the HTML file, we need to
turn our static HTML file into a _template_.

In the context of a web framework, templates are pages created with
special markup that allows for backend data and commands to modify the
contents of a page. Django employs a special syntax called _Django
Templating Language_ to distinguish itself from HTML, CSS, and
JavaScript. That syntax in many template languages uses curly braces,
sometimes referred to as _handlebars_, as a placeholder for data that is
passed by Django.

In HTML, we use curly braces like this:

```html
<h1>Hello, {{name}}</h1>
```

When we call the view to render the template, we can use something
called a context to tell Django what to replace in the template. The
relationships in the context are referred to as a name/value pair. By
default, a context is an empty dictionary. Our context for `name` will
look like this inside the view function:

```python
context = {"name": "Junior"}
```

We then pass the context as an argument in the render function. The full
**view.py** will look like this:

```python
from django.http import HttpResponse
from django.template import loader
def home(request):
  context = {"name": "Junior"}
  template = loader.get_template("app/home.html")
  return HttpResponse(template.render(context))
```

This would return a webpage that says “Hello, Junior” inside an `<h1>`
tag.

It’s quite common in Django to load templates, fill their context, and
return an `HttpResponse` object with their rendered template. Django
provides a shortcut for this pattern called the `render()` function! The
`render()` function will do the work of loading the template and provide
the contexts when they are passed as arguments.

Our example above can be rewritten with the shortcut function like this:

```python
from django.shortcuts import render

def home(request):
  context = {"name": "Junior"}
  return render(request, "app/home.html", context)
```

Note that we no longer need to import `loader` and `HttpResponse` when
we use the `render()` function. The <a
href="https://docs.djangoproject.com/en/3.1/topics/http/shortcuts/#django.shortcuts.render"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">render()</code> function</a> takes
the request object as its first argument, a template name as its second
argument, and a dictionary as an optional third argument that passes the
context variables to the template.

### Instructions

**1.**

Refactor the `home()` function in **views.py** to use the `render()`
function and pass the `request`, template path as a string,
`"vetoffice/home.html"` and `context`.

### Solution

```python
from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader

def home(request):
  context = {"name": "Spot"}
  return render(request, 'vetoffice/home.html', context)
```

## Wiring Up a View

On the internet, every page needs its own URL because each URL displays
unique information. In Django, we can use something called a
**URLconf**, for URL configuration. This module is a set of patterns
that Django will try to match the requested URL to find the correct
view.

An app’s URLconf is located in a file named **urls.py** inside the app’s
directory. At the top of the **urls.py** we import the `path` object
from `django.urls` and we import the view functions from **views.py**
and add routes that direct to each of our view functions.

The **urls.py** will look like this:

```python
from django.urls import path
from . import views

urlpatterns = [
  path('', views.home),
  path('profile/', views.profile, name="profile")  
]
```

After the import statements is a list of patterns called `urlpatterns`,
which contain the routes to each view function. Each route is provided
as a `path()` object that has three arguments: the URL route as a
string, the name of the function of the view, and an optional name used
to refer to the view.

With the above example, when we navigate to the URL without any
additional route, `''`, the `home()` view function will be called. Going
to the URL ending with `/profile` will call the `profile()` view
function.

To make Django aware of the app’s URLconf, it must be included in the
project’s URLconf, also called **urls.py**.

The default **urls.py** folder for a project looks like this:

```python
from django.contrib import admin
from django.urls import path

urlpatterns = [
  path("admin/", admin.site.urls),
]
```

We can see that Django already includes some URLs for us in
`urlpatterns`. The admin page we visited earlier is already there:
`path('admin/', admin.site.urls)`.

To include the app’s URLconf we import the include path from
`django.urls` and add a `path()`to the `urlpatterns`.

```python
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
  path("admin/", admin.site.urls),
  path("", include("myapp.urls")),
]
```

With both URLconfs set up, we can properly view our routes for the
application: `myapp` in a web browser.

### Instructions

**1.**

Create a file called **urls.py** in the **djangovet/vetoffice**
directory and import `path` from `django.urls` and the view functions
(`from . import views`).

**2.**

Include a `urlpatterns` list with a `path()` function in the list.
Provide `""` and `views.home` as arguments.

**3.**

You’ve set up the path inside your app, now time to set up the path in
your overall project!

Inside the main URLconf (**djangovet/djangovet/urls.py**), import the
`include` module from `django.urls`.

**4.**

Use the `path` module to include the vetoffice URLconf to the main
URLconf.

After you’ve included the path module, you can launch the server and
check out your newly created page!

### Solution

```
touch djangovet/vetoffice/urls.py
```

```python
from django.urls import path
from . import views

urlpatterns = [
  path("", views.home),
  path('vetoffice/', views.home, name="profile")
]
```

```python
"""djangovet URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('vetoffice.urls'))
]
```

## Review

Great! We just built a simple web application with Django. When we start
up the development server, we will see a welcome message displayed when
we navigate to `localhost` in the browser!

In this lesson, we learned a lot about Django and how it simplifies
making a dynamic database-driven web application. We learned:

- How to use `django-admin` to start a project
- `startproject` command automatically configures default applications
  and a browser
- How to use the `startapp` command to create a Django app
- How to install the app to the list of `INSTALLED_APPS`
- How to write a view function to return a template with context
- How to wire a view function to a URL for us to see

In the following lessons, we’ll learn more features of the Django web
framework to build robust web applications. Next, we’ll learn how to use
additional syntax to make our templates more dynamic.

### Instructions

Start Django’s development server on port `4001` and visit the homepage
of our app in the browser at `localhost`. Try adding another view
function for our app or adding additional contexts to the template file.
Click on “Next” when you are ready to continue learning!

### Solution

## Review

Great! We just built a simple web application with Django. When we start
up the development server, we will see a welcome message displayed when
we navigate to `localhost` in the browser!

In this lesson, we learned a lot about Django and how it simplifies
making a dynamic database-driven web application. We learned:

- How to use `django-admin` to start a project
- `startproject` command automatically configures default applications
  and a browser
- How to use the `startapp` command to create a Django app
- How to install the app to the list of `INSTALLED_APPS`
- How to write a view function to return a template with context
- How to wire a view function to a URL for us to see

In the following lessons, we’ll learn more features of the Django web
framework to build robust web applications. Next, we’ll learn how to use
additional syntax to make our templates more dynamic.

### Instructions

Start Django’s development server on port `4001` and visit the homepage
of our app in the browser at `localhost`. Try adding another view
function for our app or adding additional contexts to the template file.
Click on “Next” when you are ready to continue learning!

# Fortune Teller

Let’s build a Fortune Telling web app!

It’s always nice to get a random positive message to brighten up our
day. We can use our newfound Django skills to make a website just for
that! In this project, we will build a Django project from scratch using
the MTV pattern. Whenever our website is loaded, Django will call on a
view function to select a random fortune from a list and populate a
template to send back to the client.

We’ll start with an empty workspace and build out our **fortuneteller**
project step by step.

## Instructions

Mark the tasks as complete by checking them off

## Start the Fortune Teller Project

1\.

In the workspace on the right is a code editor, terminal, and web
browser. Right now it’s completely empty, but soon we’ll have a fully
functional web application.

Inside the terminal create a Django project named **fortuneteller** by
running in terminal:

```bash
django-admin startproject fortuneteller
```

2\.

Now that the Django project is created, we should see the Django project
files in the file explorer.

Change directories into the the **fortuneteller** project folder by
running in the terminal:

```bash
cd fortuneteller
```

To remove any errors from the server, we’ll have to run a migration to
configure the database used by the default apps. In the terminal run:

```bash
python3 manage.py migrate
```

3\.

Now that the project is created and configured, we can test if there
were any errors while creating the Django project.

Start the development server on port `4001` by running in the terminal:

```bash
python3 manage.py runserver 0.0.0.0:4001
```

4\.

After the server is started, navigate to `localhost` in the browser, and
you should see a default splash page from Django. Then stop the
development server using
<span class="kbd">ctrl</span>+<span class="kbd">c</span>.

## Start the Random Fortune App

5\.

Next, we want to create a new app named **randomfortune** that will
eventually display a fortune at random in the browser.

Use Django’s `startapp` command with the `manage.py` script and create
an app named **randomfortune**.

6\.

Great job! The `startapp` command will create files and folders for the
new app. We’ll have to add our new app, **randomfortune** to our list of
installed apps for our Django project to be aware of it.

In the code editor, open up **settings.py** inside
**fortuneteller/fortuneteller**. Find the list named `INSTALLED_APPS`
and add the config file for **randomfortune** by including
`"randomfortune.apps.RandomfortuneConfig"` to the list.

After you add the app to the list, click “Save”.

## Create a Template

7\.

Our **randomfortune** app is now installed! To see a fortune in the
browser, we’ll create an HTML template file that will be used to display
our fortune in the browser. First, we will create the template
directories to namespace the template.

Inside the project app directory, **randomfortune/**, create a folder
named, **templates**. Next, within the newly created, **templates/**,
create a folder named **randomfortune** to namespace our template file.

The resulting structure should look like:

```
randomfortune/
└── templates/
    └── randomfortune/
```

8\.

Let’s create the actual file which we will send to the client!

Within the namespaced template folder, create an HTML file named,
**fortune.html**. The new file will contain some markup to format our
message. Paste in the following HTML which has some placeholder in the
text which will allow us to see text in the browser:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Django Fortune Teller</title>
    <style>
         body {
           text-align: center;
         }
    </style>
  </head>
  <body>
    <h1>Here is your fortune:</h1>

    <p>Place holder for fortune</p>
  </body>
</html>
```

Take a second and look at the provided HTML. It contains some
boilerplate HTML structure and some barebones CSS. Inside the `<body>`
tags, there is placeholder text that we will soon replace with data.

After you have pasted the HTML and have taken a look at it press “Save”.
We’ll have to write the view functions and the URLconfig before we can
see it.

## Create a View Function

9\.

To send **fortune.html** to our client, we’ll write a view function and
send it when the page is requested.

Inside the **randomfortune** app, open **views.py**. Define a new
function named `fortune()` that takes a single parameter, `request`. In
`fortune()`, return the render function with two arguments, the
`request` and the path to **fortune.html** as a string,
`"randomfortune/fortune.html"`.

## Wire Up View

10\.

Our `fortune()` view function sends back **fortune.html** when called.
We’ll need to tell Django which URL we want to direct to this function.

First, create the URLconf for the **randomfortune** app by creating a
file named **urls.py** inside the app directory.

11\.

Inside **urls.py**, we’ll need to import a couple of things to call the
view function when the URL is requested.

At the top of **urls.py** import:

- `path` module from `django.urls`
- the functions from **views.py**.

12\.

After importing the necessary modules into **urls.py**, we will create a
list of patterns for Django to match URLs against. Create a list called
`urlpatterns` and set it as a blank list.

13\.

Inside the list, we’ll add a route to the `fortune()` function using the
`path()` function.

Since we want to have our random fortune appear as our main page,
provide an empty string, `""`, as the first argument to `path()`. Pass
the view function, `fortune()`, as the second argument. Be sure to use
dot notation since we are referencing the function from **views.py**!

14\.

Now that we have our app’s URLconfig setup, we will have to import it in
the project’s URLconfig for the URLs to be picked up by the Django
project. We’ll have to import the `include` module to include the URL
configuration file.

Inside **fortuneteller/fortuneteller**, import the `include` module from
`django.urls`.

15\.

We’ve imported `include`, now we have to make use of it.

In the existing `urlpatterns` list, add another `path()` with the
arguments:

- `""` to reference the home page
- `include()` with **randomfortune**‘s URLs as a string.

Click on “Save”, and `cd` into the root directory to start the
development server again with `python3 manage.py runserver 0.0.0.0:4001`
and when you refresh the browser page, you should see **fortune.html**.

## Sending a Context to the Template

16\.

Great! Our static **fortune.html** is sent whenever the page,
`localhost` is requested. Now, we want to replace the text with a new
message every time we load the page!

First, start by creating a list of fortunes named `fortuneList` inside
our app’s **views.py** file. Define it outside of the `fortune()`
function.

Add some strings containing fortune-telling sayings in the
`fortuneList`. Be as creative as you’d like! (There’s also some samples
in the Hint if you need some inspiration)

17\.

To select a random fortune from the list we’ll use a built-in Python
function,
<a href="https://docs.python.org/3/library/random.html#random.choice"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">random.choice()</code></a>.

Import the `random` module at the top of **views.py**. Then inside the
`fortune()` function create a variable named `fortune` and set it equal
to `random.choice(fortuneList)`.

18\.

Great! We now have a random fortune stored in `fortune`. To send it to
the HTML template, we’ll create a context variable to send with the
template.

Below where we set `fortune`, create a dictionary named `context`. In
the dictionary, create a key named `"fortune"` and set `fortune` as the
value.

19\.

Now add our newly created `context` as the third argument to the
`render()` function that `fortune()` returns.

## Render Context Inside Template

20\.

The last step to render the fortune in the template is to use the Django
template language to replace the placeholder text. Inside
**fortune.html**, between the `<p></p>` tags, replace the text with
`{{ fortune }}`.

Click “Save”, and now whenever the `context` is passed to the template,
the value of `fortune` will be placed in the template!

21\.

As the old saying goes: “From nothing, sprouts a Django project.”Take a
moment to refresh the browser a few times. On each page reload you
should see a new fortune appear in the browser!

Optionally, you can continue to play around with the code and challenge
yourself.

- Try adding additional CSS styles to the **fortune.html** page to make
  it stylish.
- Creating a new view function to populate the template with a different
  type of message.
- Perhaps incorporate horoscopes!

## Solution

[Django Project Fortune Teller](https://www.youtube.com/watch?v=YocABMoieNg)

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
echo "${red}>>> Starting the Fortune Teller Project${reset}"
project_name='fortuneteller'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the Random Fortune App ${reset}"
app_name="randomfortune"
python manage.py startapp $app_name
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${red}>>> Creating a Template${reset}"
echo "${green}>>> Creating templates directory${reset}"
templates_path="$app_name"\/templates\/"$app_name"
mkdir -p $templates_path
echo "${green}>>> Creating fortune.html${reset}"
cat << 'EOF' > $templates_path/fortune.html
<!DOCTYPE html>
<html lang="en">
<head>
 <title>Django Fortune Teller</title>
 <style>
   body {
     text-align: center;
   }
 </style>
</head>
<body>
 
 <h1>Here is your fortune:</h1>
 
 <p>Place holder for fortune</p>
 
</body>
</html>
EOF
echo "${red}>>> Creating a View Function${reset}"
sed -i '' 's/# Create your views here./# Create your views here.\
def fortune(request):\
  return render(request, \"randomfortune\/fortune.html\")/g' $app_name/views.py
echo "${red}>>> Wiring Up View${reset}"
cat << 'EOF' > $app_name/urls.py
from django.urls import path
from . import views

urlpatterns = [
  path('', views.fortune)
]
EOF
echo "${green}>>> Importing app’s URLconfig setup in the project’s URLconfig${reset}"
sed -i '' 's/from django.urls import/from django.urls import include,/g' $project_name/urls.py
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n    path\(\'\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py
echo "${red}>>> Sending a Context to the Template in views.py${reset}"
echo "${green}>>> Adding some strings containing fortune-telling sayings in the fortuneList${reset}"
sed -i '' 's/# Create your views here./# Create your views here.\
fortuneList = [\
  \"Here is a good luck charm\",\
  \"Do not give up, keep pushing\",\
  \"Tough times do not last, tough people do\",\
  \"Forward ever, backwards never\",\
  \"We are gonna make it\",\
  \"To infinity and beyond\",\
  \"We are mooning\",\
]\
/g' $app_name/views.py
echo "${green}>>> Importing the random module at the top of views.py${reset}"
sed -i '' 's/from django.shortcuts import render/from django.shortcuts import render\
import random/g' $app_name/views.py
echo "${green}>>> Creating a context variable to send with the template in views.py${reset}"
sed -i '' 's/def fortune(request):/def fortune(request):\
  fortune = random.choice(fortuneList)\
  context = {\
    \"fortune\": fortune\
  }/g; s/return render(request, \"randomfortune\/fortune.html\")/return render(request, \"randomfortune\/fortune.html\", context)/g' $app_name/views.py
echo "${red}>>> Rendering Context Inside Template fortune.html${reset}"
sed -i '' 's/<p>Place holder for fortune<\/p>/<p>{{ fortune }}<\/p>/g' $templates_path/fortune.html
# List installed Python packages
pip freeze -l > requirements.txt
```