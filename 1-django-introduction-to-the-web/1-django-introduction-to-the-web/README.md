# Welcome to Build Python Web Apps with Django

Get an overview of the Djourney you’ll be starting by taking this Skill
Path.

Welcome! In this Skill Path, you’ll be utilizing your Python skills in
the exciting world of web development.

By now, you should have a solid grasp of Python fundamentals and syntax
— this will serve you well as you write Python code that uses the
powerful <a href="https://www.djangoproject.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django framework</a> to create your app.

If you need a refresher on the Python programming language, take our
<a href="https://www.codecademy.com/learn/learn-python-3"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn Python 3 course</a>.

The path is broken into 9 main sections.

1.  **Introduction to the Web** — Get acquainted with the fundamentals
    of what makes a web application.
2.  **Introduction to Django** — Learn how web applications function,
    and create your own first app!
3.  **Templates in Django** — Make use of Django’s templates that
    combine HTML and Python to present web pages for your users.
4.  **Data in Django** — Create the informational backbone of your app.
    Decide how to structure the information in your database and how to
    interact with it.
5.  **Views in Django** — Finish off the Models-Views-Templates design
    pattern to control what information shows up in your templates.
6.  **Forms in Django** — Get user input using forms and safely include
    that information into your database.
7.  **Admin and Authentication in Django** — Set up accounts and control
    the access of your web application.
8.  **Deploying a Django Project** — Learn how to locally install Django
    and set up your project for others to see and use.
9.  **Capstone Project** — Put all of your knowledge to the test and
    build a fully-featured Django application.

This first section (Introduction to the Web) will give you a run-through
of the topics you’ll need to be aware of in order to make sense of your
Django Web App. These topics include:
<a href="https://www.codecademy.com/learn/learn-html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">HTML</a>,
<a href="https://www.codecademy.com/learn/learn-css"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">CSS</a>,
<a href="https://www.codecademy.com/learn/build-interactive-websites"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">JavaScript and the Document Object Model (DOM)</a>.

We’re excited for you to get started, and good luck!

# Exploring HTML and CSS

Before creating web apps, introduce yourself to the structure of a web
page and how to style it.

When viewing a web page everything on the page exists as an HTML element
— things like
<a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">images</a>,
<a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">hyper links (anchor elements)</a>,
<a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forms</a>, and anything else that a user
can view and interact is part of the HTML code that makes up the page.

Here’s an example of a plain HTML that has an `<h1>` element:

Coding question

Inside the `<h1>` element change the text from `Hello, World!` to
`Django, here I come!`.

<!-- ![](data:image/svg+xml;base64,PHN2ZyBkYXRhLXRlc3RpZD0ibG9hZGVyLWljb24iIHdpZHRoPSIzMTJweCIgaGVpZ2h0PSI5NnB4IiB2aWV3Ym94PSIwIDAgMzEyIDk2IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgaWQ9IlBhZ2UtMSIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9IiMyQTI4M0UiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgaWQ9IlNoaW1tZXItLS1SZXN0IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTYuMDAwMDAwLCAtMTYuMDAwMDAwKSIgZmlsbD0iIzIyMUUzMSI+PGcgaWQ9IkN1dG91dCIgZmlsbD0idXJsKCNwYXR0ZXJuKSI+PGcgaWQ9IlNoaW1tZXIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE2LjAwMDAwMCwgMTYuMDAwMDAwKSI+PHJlY3QgaWQ9IkN1dG91dCIgeD0iMCIgeT0iMCIgd2lkdGg9IjQwIiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjIwIiB5PSIyOCIgd2lkdGg9IjExMiIgaGVpZ2h0PSIxMiIgcng9IjIiPjwvcmVjdD48cmVjdCBpZD0iQ3V0b3V0IiB4PSIwIiB5PSI4NCIgd2lkdGg9IjExMiIgaGVpZ2h0PSIxMiIgcng9IjIiPjwvcmVjdD48cmVjdCBpZD0iQ3V0b3V0IiB4PSI2MCIgeT0iNTYiIHdpZHRoPSIxNjAiIGhlaWdodD0iMTIiIHJ4PSIyIj48L3JlY3Q+PHJlY3QgaWQ9IkN1dG91dCIgeD0iMTQ4IiB5PSIyOCIgd2lkdGg9IjI0IiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjIwIiB5PSI1NiIgd2lkdGg9IjI0IiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjU2IiB5PSIwIiB3aWR0aD0iMTYwIiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjIzMiIgeT0iMCIgd2lkdGg9IjgwIiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjwvZz48L2c+PC9nPjwvZz48ZGVmcz48bGluZWFyZ3JhZGllbnQgaWQ9ImdyYWRpZW50IiB4MT0iMCUiIHkxPSIwJSIgeDI9IjEwMCUiIHkyPSIwIj48c3RvcCBvZmZzZXQ9IjAlIiBzdHlsZT0ic3RvcC1jb2xvcjogcmdiKDExNCwgMTA1LCAyMTcpOyBzdG9wLW9wYWNpdHk6IDAuNTsiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjQwJSIgc3R5bGU9InN0b3AtY29sb3I6IHJnYigxMTQsIDEwNSwgMjE3KTsgc3RvcC1vcGFjaXR5OiAwLjU7Ij48L3N0b3A+PHN0b3Agb2Zmc2V0PSI0NyUiIHN0eWxlPSJzdG9wLWNvbG9yOiByZ2IoMTcyLCAxNjUsIDI1NSk7IHN0b3Atb3BhY2l0eTogMC41OyI+PC9zdG9wPjxzdG9wIG9mZnNldD0iNTMlIiBzdHlsZT0ic3RvcC1jb2xvcjogcmdiKDE3MiwgMTY1LCAyNTUpOyBzdG9wLW9wYWNpdHk6IDAuNTsiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjYwJSIgc3R5bGU9InN0b3AtY29sb3I6IHJnYigxMTQsIDEwNSwgMjE3KTsgc3RvcC1vcGFjaXR5OiAwLjU7Ij48L3N0b3A+PHN0b3Agb2Zmc2V0PSIxMDAlIiBzdHlsZT0ic3RvcC1jb2xvcjogcmdiKDExNCwgMTA1LCAyMTcpOyBzdG9wLW9wYWNpdHk6IDAuNTsiPjwvc3RvcD48L2xpbmVhcmdyYWRpZW50PjxwYXR0ZXJuIGlkPSJwYXR0ZXJuIiB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwJSIgaGVpZ2h0PSIxMDAlIiBwYXR0ZXJudW5pdHM9InVzZXJTcGFjZU9uVXNlIj48cmVjdCBjbGFzcz0ic2hpbW1lckdyYWRpZW50X18xMVFyUk14RW9OaDg5QzJVYmlLa2pSIiB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI2dyYWRpZW50KSI+PC9yZWN0PjwvcGF0dGVybj48L2RlZnM+PC9zdmc+)

![](data:image/svg+xml;base64,PHN2ZyBkYXRhLXRlc3RpZD0ibG9hZGVyLWljb24iIHdpZHRoPSIzMTJweCIgaGVpZ2h0PSI5NnB4IiB2aWV3Ym94PSIwIDAgMzEyIDcyIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHN2ZyB3aWR0aD0iMzEycHgiIGhlaWdodD0iNzJweCIgdmlld2JveD0iMCAwIDgwIDcyIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgaWQ9IlBhZ2UtMSIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgaWQ9Ikljb24tLS1Ccm93c2VyIiBmaWxsPSJ1cmwoI3BhdHRlcm4tYnJvd3NlcikiPjxnIGlkPSJJY29uLUJyb3dzZXIiPjxwYXRoIGQ9Ik0yLDAgTDc4LDAgQzc5LjEwNDU2OTUsLTIuMDI5MDYxMjVlLTE2IDgwLDAuODk1NDMwNSA4MCwyIEw4MCw3MCBDODAsNzEuMTA0NTY5NSA3OS4xMDQ1Njk1LDcyIDc4LDcyIEwyLDcyIEMwLjg5NTQzMDUsNzIgMS4zNTI3MDc1ZS0xNiw3MS4xMDQ1Njk1IDAsNzAgTDAsMiBDLTEuMzUyNzA3NWUtMTYsMC44OTU0MzA1IDAuODk1NDMwNSwyLjAyOTA2MTI1ZS0xNiAyLDAgWiBNNiw3IEM3LjEwNDU2OTUsNyA4LDYuMTA0NTY5NSA4LDUgQzgsMy44OTU0MzA1IDcuMTA0NTY5NSwzIDYsMyBDNC44OTU0MzA1LDMgNCwzLjg5NTQzMDUgNCw1IEM0LDYuMTA0NTY5NSA0Ljg5NTQzMDUsNyA2LDcgWiBNMTQsNyBDMTUuMTA0NTY5NSw3IDE2LDYuMTA0NTY5NSAxNiw1IEMxNiwzLjg5NTQzMDUgMTUuMTA0NTY5NSwzIDE0LDMgQzEyLjg5NTQzMDUsMyAxMiwzLjg5NTQzMDUgMTIsNSBDMTIsNi4xMDQ1Njk1IDEyLjg5NTQzMDUsNyAxNCw3IFogTTIyLDcgQzIzLjEwNDU2OTUsNyAyNCw2LjEwNDU2OTUgMjQsNSBDMjQsMy44OTU0MzA1IDIzLjEwNDU2OTUsMyAyMiwzIEMyMC44OTU0MzA1LDMgMjAsMy44OTU0MzA1IDIwLDUgQzIwLDYuMTA0NTY5NSAyMC44OTU0MzA1LDcgMjIsNyBaIiBpZD0iU2hhcGUtQnJvd3NlciI+PC9wYXRoPjwvZz48L2c+PC9nPjwvc3ZnPg==) -->

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple HTML page</title>
  </head>
  <body>
    <!-- Edit the text below -->
    <h1>Django, here I come!</h1>
  </body>
</html>
```

This is a very simple page, it has one heading element that displays
some text. After passing the test, you can play around with the page
itself. If you need a refresher, or want to dive deeper, we recommend
our <a href="https://www.codecademy.com/learn/learn-html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn HTML course</a>.

Without styling, web pages can be really plain. That’s where Cascading
Style Sheets (CSS) come into play. Let’s revisit the HTML page again,
take note of some slight differences in the HTML. You’ll be adding a CSS
file to this page to make it pop!

Coding question

Inside the `<head>` element, copy and paste in this line of code:

```html
<link rel="stylesheet" href="styles.css" />
```

<!-- ![](data:image/svg+xml;base64,PHN2ZyBkYXRhLXRlc3RpZD0ibG9hZGVyLWljb24iIHdpZHRoPSIzMTJweCIgaGVpZ2h0PSI5NnB4IiB2aWV3Ym94PSIwIDAgMzEyIDk2IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgaWQ9IlBhZ2UtMSIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9IiMyQTI4M0UiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgaWQ9IlNoaW1tZXItLS1SZXN0IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTYuMDAwMDAwLCAtMTYuMDAwMDAwKSIgZmlsbD0iIzIyMUUzMSI+PGcgaWQ9IkN1dG91dCIgZmlsbD0idXJsKCNwYXR0ZXJuKSI+PGcgaWQ9IlNoaW1tZXIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE2LjAwMDAwMCwgMTYuMDAwMDAwKSI+PHJlY3QgaWQ9IkN1dG91dCIgeD0iMCIgeT0iMCIgd2lkdGg9IjQwIiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjIwIiB5PSIyOCIgd2lkdGg9IjExMiIgaGVpZ2h0PSIxMiIgcng9IjIiPjwvcmVjdD48cmVjdCBpZD0iQ3V0b3V0IiB4PSIwIiB5PSI4NCIgd2lkdGg9IjExMiIgaGVpZ2h0PSIxMiIgcng9IjIiPjwvcmVjdD48cmVjdCBpZD0iQ3V0b3V0IiB4PSI2MCIgeT0iNTYiIHdpZHRoPSIxNjAiIGhlaWdodD0iMTIiIHJ4PSIyIj48L3JlY3Q+PHJlY3QgaWQ9IkN1dG91dCIgeD0iMTQ4IiB5PSIyOCIgd2lkdGg9IjI0IiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjIwIiB5PSI1NiIgd2lkdGg9IjI0IiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjU2IiB5PSIwIiB3aWR0aD0iMTYwIiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjIzMiIgeT0iMCIgd2lkdGg9IjgwIiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjwvZz48L2c+PC9nPjwvZz48ZGVmcz48bGluZWFyZ3JhZGllbnQgaWQ9ImdyYWRpZW50IiB4MT0iMCUiIHkxPSIwJSIgeDI9IjEwMCUiIHkyPSIwIj48c3RvcCBvZmZzZXQ9IjAlIiBzdHlsZT0ic3RvcC1jb2xvcjogcmdiKDExNCwgMTA1LCAyMTcpOyBzdG9wLW9wYWNpdHk6IDAuNTsiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjQwJSIgc3R5bGU9InN0b3AtY29sb3I6IHJnYigxMTQsIDEwNSwgMjE3KTsgc3RvcC1vcGFjaXR5OiAwLjU7Ij48L3N0b3A+PHN0b3Agb2Zmc2V0PSI0NyUiIHN0eWxlPSJzdG9wLWNvbG9yOiByZ2IoMTcyLCAxNjUsIDI1NSk7IHN0b3Atb3BhY2l0eTogMC41OyI+PC9zdG9wPjxzdG9wIG9mZnNldD0iNTMlIiBzdHlsZT0ic3RvcC1jb2xvcjogcmdiKDE3MiwgMTY1LCAyNTUpOyBzdG9wLW9wYWNpdHk6IDAuNTsiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjYwJSIgc3R5bGU9InN0b3AtY29sb3I6IHJnYigxMTQsIDEwNSwgMjE3KTsgc3RvcC1vcGFjaXR5OiAwLjU7Ij48L3N0b3A+PHN0b3Agb2Zmc2V0PSIxMDAlIiBzdHlsZT0ic3RvcC1jb2xvcjogcmdiKDExNCwgMTA1LCAyMTcpOyBzdG9wLW9wYWNpdHk6IDAuNTsiPjwvc3RvcD48L2xpbmVhcmdyYWRpZW50PjxwYXR0ZXJuIGlkPSJwYXR0ZXJuIiB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwJSIgaGVpZ2h0PSIxMDAlIiBwYXR0ZXJudW5pdHM9InVzZXJTcGFjZU9uVXNlIj48cmVjdCBjbGFzcz0ic2hpbW1lckdyYWRpZW50X18xMVFyUk14RW9OaDg5QzJVYmlLa2pSIiB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI2dyYWRpZW50KSI+PC9yZWN0PjwvcGF0dGVybj48L2RlZnM+PC9zdmc+)

![](data:image/svg+xml;base64,PHN2ZyBkYXRhLXRlc3RpZD0ibG9hZGVyLWljb24iIHdpZHRoPSIzMTJweCIgaGVpZ2h0PSI5NnB4IiB2aWV3Ym94PSIwIDAgMzEyIDcyIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHN2ZyB3aWR0aD0iMzEycHgiIGhlaWdodD0iNzJweCIgdmlld2JveD0iMCAwIDgwIDcyIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgaWQ9IlBhZ2UtMSIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgaWQ9Ikljb24tLS1Ccm93c2VyIiBmaWxsPSJ1cmwoI3BhdHRlcm4tYnJvd3NlcikiPjxnIGlkPSJJY29uLUJyb3dzZXIiPjxwYXRoIGQ9Ik0yLDAgTDc4LDAgQzc5LjEwNDU2OTUsLTIuMDI5MDYxMjVlLTE2IDgwLDAuODk1NDMwNSA4MCwyIEw4MCw3MCBDODAsNzEuMTA0NTY5NSA3OS4xMDQ1Njk1LDcyIDc4LDcyIEwyLDcyIEMwLjg5NTQzMDUsNzIgMS4zNTI3MDc1ZS0xNiw3MS4xMDQ1Njk1IDAsNzAgTDAsMiBDLTEuMzUyNzA3NWUtMTYsMC44OTU0MzA1IDAuODk1NDMwNSwyLjAyOTA2MTI1ZS0xNiAyLDAgWiBNNiw3IEM3LjEwNDU2OTUsNyA4LDYuMTA0NTY5NSA4LDUgQzgsMy44OTU0MzA1IDcuMTA0NTY5NSwzIDYsMyBDNC44OTU0MzA1LDMgNCwzLjg5NTQzMDUgNCw1IEM0LDYuMTA0NTY5NSA0Ljg5NTQzMDUsNyA2LDcgWiBNMTQsNyBDMTUuMTA0NTY5NSw3IDE2LDYuMTA0NTY5NSAxNiw1IEMxNiwzLjg5NTQzMDUgMTUuMTA0NTY5NSwzIDE0LDMgQzEyLjg5NTQzMDUsMyAxMiwzLjg5NTQzMDUgMTIsNSBDMTIsNi4xMDQ1Njk1IDEyLjg5NTQzMDUsNyAxNCw3IFogTTIyLDcgQzIzLjEwNDU2OTUsNyAyNCw2LjEwNDU2OTUgMjQsNSBDMjQsMy44OTU0MzA1IDIzLjEwNDU2OTUsMyAyMiwzIEMyMC44OTU0MzA1LDMgMjAsMy44OTU0MzA1IDIwLDUgQzIwLDYuMTA0NTY5NSAyMC44OTU0MzA1LDcgMjIsNyBaIiBpZD0iU2hhcGUtQnJvd3NlciI+PC9wYXRoPjwvZz48L2c+PC9nPjwvc3ZnPg==) -->

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HTML w/ CSS</title>
    <!-- Link the CSS stylesheet below: -->
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <section id="container">
      <h1 id="text">Django, here I come!</h1>
    </section>
  </body>
</html>
```

In the code editor, you added a `<link>` to a CSS file, but you could
also include <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/style"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">inline CSS</a>, use a <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/style"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">&lt;style&gt;</code> element</a>,
and more! With CSS, you can transform your HTML pages into something
visually stunning. If you need a CSS refresher or want to learn more,
visit our <a href="https://www.codecademy.com/learn/learn-css"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn CSS course</a>.

Here’s a glance at another way HTML and CSS can work together for an
interactive web experience — using `<form>`s to grab users’ input and
interact with data:

Coding question

Play around with the code and the web page to see how `<form>` adds an
interactive element on the page. Take note of how `<input>`, `<select>`,
and `<datalist>`, etc. take in information. The “Submit” button then
sends this information on the form.

<!-- ![](data:image/svg+xml;base64,PHN2ZyBkYXRhLXRlc3RpZD0ibG9hZGVyLWljb24iIHdpZHRoPSIzMTJweCIgaGVpZ2h0PSI5NnB4IiB2aWV3Ym94PSIwIDAgMzEyIDk2IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgaWQ9IlBhZ2UtMSIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9IiMyQTI4M0UiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgaWQ9IlNoaW1tZXItLS1SZXN0IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTYuMDAwMDAwLCAtMTYuMDAwMDAwKSIgZmlsbD0iIzIyMUUzMSI+PGcgaWQ9IkN1dG91dCIgZmlsbD0idXJsKCNwYXR0ZXJuKSI+PGcgaWQ9IlNoaW1tZXIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE2LjAwMDAwMCwgMTYuMDAwMDAwKSI+PHJlY3QgaWQ9IkN1dG91dCIgeD0iMCIgeT0iMCIgd2lkdGg9IjQwIiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjIwIiB5PSIyOCIgd2lkdGg9IjExMiIgaGVpZ2h0PSIxMiIgcng9IjIiPjwvcmVjdD48cmVjdCBpZD0iQ3V0b3V0IiB4PSIwIiB5PSI4NCIgd2lkdGg9IjExMiIgaGVpZ2h0PSIxMiIgcng9IjIiPjwvcmVjdD48cmVjdCBpZD0iQ3V0b3V0IiB4PSI2MCIgeT0iNTYiIHdpZHRoPSIxNjAiIGhlaWdodD0iMTIiIHJ4PSIyIj48L3JlY3Q+PHJlY3QgaWQ9IkN1dG91dCIgeD0iMTQ4IiB5PSIyOCIgd2lkdGg9IjI0IiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjIwIiB5PSI1NiIgd2lkdGg9IjI0IiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjU2IiB5PSIwIiB3aWR0aD0iMTYwIiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjxyZWN0IGlkPSJDdXRvdXQiIHg9IjIzMiIgeT0iMCIgd2lkdGg9IjgwIiBoZWlnaHQ9IjEyIiByeD0iMiI+PC9yZWN0PjwvZz48L2c+PC9nPjwvZz48ZGVmcz48bGluZWFyZ3JhZGllbnQgaWQ9ImdyYWRpZW50IiB4MT0iMCUiIHkxPSIwJSIgeDI9IjEwMCUiIHkyPSIwIj48c3RvcCBvZmZzZXQ9IjAlIiBzdHlsZT0ic3RvcC1jb2xvcjogcmdiKDExNCwgMTA1LCAyMTcpOyBzdG9wLW9wYWNpdHk6IDAuNTsiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjQwJSIgc3R5bGU9InN0b3AtY29sb3I6IHJnYigxMTQsIDEwNSwgMjE3KTsgc3RvcC1vcGFjaXR5OiAwLjU7Ij48L3N0b3A+PHN0b3Agb2Zmc2V0PSI0NyUiIHN0eWxlPSJzdG9wLWNvbG9yOiByZ2IoMTcyLCAxNjUsIDI1NSk7IHN0b3Atb3BhY2l0eTogMC41OyI+PC9zdG9wPjxzdG9wIG9mZnNldD0iNTMlIiBzdHlsZT0ic3RvcC1jb2xvcjogcmdiKDE3MiwgMTY1LCAyNTUpOyBzdG9wLW9wYWNpdHk6IDAuNTsiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjYwJSIgc3R5bGU9InN0b3AtY29sb3I6IHJnYigxMTQsIDEwNSwgMjE3KTsgc3RvcC1vcGFjaXR5OiAwLjU7Ij48L3N0b3A+PHN0b3Agb2Zmc2V0PSIxMDAlIiBzdHlsZT0ic3RvcC1jb2xvcjogcmdiKDExNCwgMTA1LCAyMTcpOyBzdG9wLW9wYWNpdHk6IDAuNTsiPjwvc3RvcD48L2xpbmVhcmdyYWRpZW50PjxwYXR0ZXJuIGlkPSJwYXR0ZXJuIiB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwJSIgaGVpZ2h0PSIxMDAlIiBwYXR0ZXJudW5pdHM9InVzZXJTcGFjZU9uVXNlIj48cmVjdCBjbGFzcz0ic2hpbW1lckdyYWRpZW50X18xMVFyUk14RW9OaDg5QzJVYmlLa2pSIiB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI2dyYWRpZW50KSI+PC9yZWN0PjwvcGF0dGVybj48L2RlZnM+PC9zdmc+)

![](data:image/svg+xml;base64,PHN2ZyBkYXRhLXRlc3RpZD0ibG9hZGVyLWljb24iIHdpZHRoPSIzMTJweCIgaGVpZ2h0PSI5NnB4IiB2aWV3Ym94PSIwIDAgMzEyIDcyIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHN2ZyB3aWR0aD0iMzEycHgiIGhlaWdodD0iNzJweCIgdmlld2JveD0iMCAwIDgwIDcyIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgaWQ9IlBhZ2UtMSIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PGcgaWQ9Ikljb24tLS1Ccm93c2VyIiBmaWxsPSJ1cmwoI3BhdHRlcm4tYnJvd3NlcikiPjxnIGlkPSJJY29uLUJyb3dzZXIiPjxwYXRoIGQ9Ik0yLDAgTDc4LDAgQzc5LjEwNDU2OTUsLTIuMDI5MDYxMjVlLTE2IDgwLDAuODk1NDMwNSA4MCwyIEw4MCw3MCBDODAsNzEuMTA0NTY5NSA3OS4xMDQ1Njk1LDcyIDc4LDcyIEwyLDcyIEMwLjg5NTQzMDUsNzIgMS4zNTI3MDc1ZS0xNiw3MS4xMDQ1Njk1IDAsNzAgTDAsMiBDLTEuMzUyNzA3NWUtMTYsMC44OTU0MzA1IDAuODk1NDMwNSwyLjAyOTA2MTI1ZS0xNiAyLDAgWiBNNiw3IEM3LjEwNDU2OTUsNyA4LDYuMTA0NTY5NSA4LDUgQzgsMy44OTU0MzA1IDcuMTA0NTY5NSwzIDYsMyBDNC44OTU0MzA1LDMgNCwzLjg5NTQzMDUgNCw1IEM0LDYuMTA0NTY5NSA0Ljg5NTQzMDUsNyA2LDcgWiBNMTQsNyBDMTUuMTA0NTY5NSw3IDE2LDYuMTA0NTY5NSAxNiw1IEMxNiwzLjg5NTQzMDUgMTUuMTA0NTY5NSwzIDE0LDMgQzEyLjg5NTQzMDUsMyAxMiwzLjg5NTQzMDUgMTIsNSBDMTIsNi4xMDQ1Njk1IDEyLjg5NTQzMDUsNyAxNCw3IFogTTIyLDcgQzIzLjEwNDU2OTUsNyAyNCw2LjEwNDU2OTUgMjQsNSBDMjQsMy44OTU0MzA1IDIzLjEwNDU2OTUsMyAyMiwzIEMyMC44OTU0MzA1LDMgMjAsMy44OTU0MzA1IDIwLDUgQzIwLDYuMTA0NTY5NSAyMC44OTU0MzA1LDcgMjIsNyBaIiBpZD0iU2hhcGUtQnJvd3NlciI+PC9wYXRoPjwvZz48L2c+PC9nPjwvc3ZnPg==) -->

```html
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link
      href="https://fonts.googleapis.com/css?family=Rubik"
      rel="stylesheet"
    />
    <title>Form Example</title>
  </head>
  <body>
    <section id="overlay">
      <img
        src="https://content.codecademy.com/courses/web-101/unit-6/htmlcss1-img_burger-logo.svg"
        alt="Davie's Burgers Logo"
        id="logo"
      />
      <hr />
      <form action="submission.html" method="POST">
        <h1>Create a burger!</h1>
        <section class="protein">
          <label for="patty">What type of protein would you like?</label>
          <input type="text" name="patty" id="patty" />
        </section>
        <hr />

        <section class="patties">
          <label for="amount">How many patties would you like?</label>
          <input type="number" name="amount" id="amount" />
        </section>
        <hr />

        <section class="cooked">
          <label for="doneness">How do you want your patty cooked</label>
          <br />
          <span>Rare</span>
          <input
            type="range"
            name="doneness"
            id="doneness"
            value="3"
            min="1"
            max="5"
          />
          <span>Well-Done</span>
        </section>
        <hr />

        <section class="toppings">
          <span>What toppings would you like?</span>
          <br />
          <input type="checkbox" name="topping" id="lettuce" value="lettuce" />
          <label for="lettuce">Lettuce</label>
          <input type="checkbox" name="topping" id="tomato" value="tomato" />
          <label for="tomato">Tomato</label>
          <input type="checkbox" name="topping" id="onion" value="onion" />
          <label for="onion">Onion</label>
        </section>
        <hr />

        <section class="cheesy">
          <span>Would you like to add cheese?</span>
          <br />
          <input type="radio" name="cheese" id="yes" value="yes" />
          <label for="yes">Yes</label>
          <input type="radio" name="cheese" id="no" value="yes" />
          <label for="no">No</label>
        </section>
        <hr />

        <section class="bun-type">
          <label for="bun">What type of bun would you like?</label>
          <select name="bun" id="bun">
            <option value="sesame">Sesame</option>
            <option value="potatoe">Potato</option>
            <option value="pretzel">Pretzel</option>
          </select>
        </section>
        <hr />

        <section class="sauce-selection">
          <label for="sauce">What type of sauce would you like?</label>
          <input list="sauces" id="sauce" name="sauce" />
          <datalist id="sauces">
            <option value="ketchup"></option>
            <option value="mayo"></option>
            <option value="mustard"></option>
          </datalist>
        </section>
        <hr />
        <section class="extra-info">
          <label for="extra">Anything else you want to add?</label>
          <br />
          <textarea id="extra" name="extra" rows="3" cols="40"></textarea>
        </section>
        <hr />

        <section class="submission">
          <input type="submit" value="Submit" />
        </section>
      </form>
    </section>
  </body>
</html>
```

Combining everything together you’ll understand on a deeper level how
Django helps simplify the process of creating apps!

# Getting Acquainted with JavaScript and the DOM

See the web page as one big object that can be manipulated.

You might be wondering, “What does JavaScript have to do with Django?”.
While you can incorporate JavaScript into a Django web app, the goal
here isn’t to learn JavaScript. Rather, the main point is to think about
the web pages that make up the app as an object - the <a
href="https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Document Object Model</a> (DOM).

Using JavaScript, you see how to target elements that make up the DOM.
Here’s an introduction:

Coding question

In the opening`<h1>` tag, add an `id` attribute with a value of
`"headline"`.

<!-- 1

2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18

19

20

\<!DOCTYPE html\>

\<html

lang

=

"en"

\>

\<head\>

\<meta

charset

=

"UTF-8"

\>

\<meta

http-equiv

=

"X-UA-Compatible"

content

=

"IE=edge"

\>

\<meta

name

=

"viewport"

content

=

"width=device-width, initial-scale=1.0"

\>

\<title\>

The page is a Document Object Model

\</title\>

\<script

src

=

"app.js"

defer

\>\</script\>

\</head\>

\<body\>

\<section

id

=

"container"

\>

\<!-- Give the \<h1\> an id attribute --\>

\<h1

\>

Give this H1 element an ID

\</h1\>

\<ul

id

=

"facts"

\>

\<li

class

=

"fact"

id

=

"fact-1"

\>

After all, it's one big object.

\</li\>

\<li

class

=

"fact"

id

=

"fact-2"

\>

You can use JavaScript to manipulate this object.

\</li\>

\<li

class

=

"fact"

id

=

"fact-3"

\>

Django works with similar principles

\</li\>

\<li

class

=

"fact"

id

=

"fact-4"

\>

Because it's all web development!

\</li\>

\</ul\>

\</section\>

Enter to Rename, ⇧Enter to Preview

<div class="iframe">

# Give this H1 element an ID

- <span id="fact-1">After all, it's one big object.</span>
- <span id="fact-2">You can use JavaScript to manipulate this
  object.</span>
- <span id="fact-3">Django works with similar principles</span>
- <span id="fact-4">Because it's all web development!</span>

</div>

Run

ctrl + enter

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtbWNqajVqLVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNvcHkgSWNvbjwvdGl0bGU+PHBhdGggZD0iTTIwLjI1IDguMjQ5di0zYTEuNSAxLjUgMCAwMC0xLjUtMS41aC00bS04LjUgMGgtNGExLjUgMS41IDAgMDAtMS41IDEuNXYxNi41YTEuNSAxLjUgMCAwMDEuNSAxLjVoNiIgZmlsbD0ibm9uZSIgc3Ryb2tlPSJjdXJyZW50Q29sb3IiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiPjwvcGF0aD48cGF0aCBkPSJNMTQuNDIxIDQuNzM2YS43NTEuNzUxIDAgMDEtLjcxMi41MTNINy4yOTFhLjc1MS43NTEgMCAwMS0uNzEyLS41MTNsLTEtM2EuNzQ5Ljc0OSAwIDAxLjcxMi0uOTg3aDguNDE4YS43NDkuNzQ5IDAgMDEuNzEyLjk4N3oiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PHJlY3QgeD0iMTEuMjUiIHk9IjExLjI0OSIgd2lkdGg9IjEyIiBoZWlnaHQ9IjEyIiByeD0iMS41IiByeT0iMS41IiBmaWxsPSJub25lIiBzdHJva2U9ImN1cnJlbnRDb2xvciIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNSI+PC9yZWN0PjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41IiBkPSJNMTQuMjUgMTQuMjQ5aDZtLTYgM2g2bS02IDNoMi4yNSI+PC9wYXRoPjwvc3ZnPg=="
class="gamut-mcjj5j-Svg eol2zvm0" />

Copy to Clipboard

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtbWNqajVqLVN2ZyBlb2wyenZtMCI+PHRpdGxlPlJlc2V0IEljb248L3RpdGxlPjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41IiBkPSJNNS4yNSAxNC4yNDh2NC41SC43NW0xOC05di00LjVoNC41bS00LjIxOC0uMDAzQTkuNzUyIDkuNzUyIDAgMDE4LjI0NiAyMW0tMy4yNzktMi4yNDlBOS43NTMgOS43NTMgMCAwMTE1Ljc1NCAzIj48L3BhdGg+PC9zdmc+"
class="gamut-mcjj5j-Svg eol2zvm0" />

Reset Workspace (ctrl + g)

Check answer

Run your code to check your answer -->

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>The page is a Document Object Model</title>
    <script src="app.js" defer></script>
  </head>
  <body>
    <section id="container">
      <!-- Give the <h1> an id attribute -->
      <h1 id="headline">Give this H1 element an ID</h1>
      <ul id="facts">
        <li class="fact" id="fact-1">After all, it's one big object.</li>
        <li class="fact" id="fact-2">
          You can use JavaScript to manipulate this object.
        </li>
        <li class="fact" id="fact-3">Django works with similar principles</li>
        <li class="fact" id="fact-4">Because it's all web development!</li>
      </ul>
    </section>
  </body>
</html>
```

Look over the HTML. Then, navigate to **app.js**, and use
`document.getElementById()` to give the heading some color.

Coding question

Create a variable named `title` that stores
`document.getElementById('title')`. Then set `title`‘s `.style.color`
property to `'red'`.

**Hint**: You can create a variable using the `var` keyword. For
example: `var fruit = "apple";`.

<!-- 1

2

3

// Write your code below:

Enter to Rename, ⇧Enter to Preview

<div class="iframe">

# Change this text to red using JS

- <span id="fact-1">After all, it's one big object.</span>
- <span id="fact-2">You can use JavaScript to manipulate this
  object.</span>
- <span id="fact-3">Django works with similar principles</span>
- <span id="fact-4">Because it's all web development!</span>

This page contains the same structure as the one you just saw.

</div>

Run

ctrl + enter

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtbWNqajVqLVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNvcHkgSWNvbjwvdGl0bGU+PHBhdGggZD0iTTIwLjI1IDguMjQ5di0zYTEuNSAxLjUgMCAwMC0xLjUtMS41aC00bS04LjUgMGgtNGExLjUgMS41IDAgMDAtMS41IDEuNXYxNi41YTEuNSAxLjUgMCAwMDEuNSAxLjVoNiIgZmlsbD0ibm9uZSIgc3Ryb2tlPSJjdXJyZW50Q29sb3IiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiPjwvcGF0aD48cGF0aCBkPSJNMTQuNDIxIDQuNzM2YS43NTEuNzUxIDAgMDEtLjcxMi41MTNINy4yOTFhLjc1MS43NTEgMCAwMS0uNzEyLS41MTNsLTEtM2EuNzQ5Ljc0OSAwIDAxLjcxMi0uOTg3aDguNDE4YS43NDkuNzQ5IDAgMDEuNzEyLjk4N3oiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PHJlY3QgeD0iMTEuMjUiIHk9IjExLjI0OSIgd2lkdGg9IjEyIiBoZWlnaHQ9IjEyIiByeD0iMS41IiByeT0iMS41IiBmaWxsPSJub25lIiBzdHJva2U9ImN1cnJlbnRDb2xvciIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNSI+PC9yZWN0PjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41IiBkPSJNMTQuMjUgMTQuMjQ5aDZtLTYgM2g2bS02IDNoMi4yNSI+PC9wYXRoPjwvc3ZnPg=="
class="gamut-mcjj5j-Svg eol2zvm0" />

Copy to Clipboard

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtbWNqajVqLVN2ZyBlb2wyenZtMCI+PHRpdGxlPlJlc2V0IEljb248L3RpdGxlPjxwYXRoIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41IiBkPSJNNS4yNSAxNC4yNDh2NC41SC43NW0xOC05di00LjVoNC41bS00LjIxOC0uMDAzQTkuNzUyIDkuNzUyIDAgMDE4LjI0NiAyMW0tMy4yNzktMi4yNDlBOS43NTMgOS43NTMgMCAwMTE1Ljc1NCAzIj48L3BhdGg+PC9zdmc+"
class="gamut-mcjj5j-Svg eol2zvm0" />

Reset Workspace (ctrl + g)

Check answer

Run your code to check your answer -->

```js
// Write your code below:
var title = document.getElementById("title");
title.style.color = "red";
```

You can also target other elements in the DOM using JavaScript. Again,
the entire page is one object that can be manipulated. Here’s a diagram
to show how HTML can be thought of as a single object:

<img
src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/DOM/dom_diagram.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="How the HTML structure relates to the DOM" />

If you’re interested, you can learn more in our
<a href="https://www.codecademy.com/learn/build-interactive-websites"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Build Interactive Websites course</a>.

With the prerequisite knowledge out of the way, you’re ready to advance
further!
