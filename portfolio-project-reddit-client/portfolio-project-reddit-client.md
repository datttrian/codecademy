# What is a Portfolio Project?

This project is a little different from other Codecademy projects you’ve
encountered. In this project, you will bring together what you have
learned in previous lessons to build a project in your own development
environment and publish it to the web!

Create your own files outside of the Codecademy platform

Write your own code with less guided instructions

Use common project management processes to track your progress

# How Do Portfolio Projects Work?

We’ll provide you with high-level tasks to guide your project to
completion, but you will be responsible for deciding how to implement
them in your code.

There are many possible ways to correctly fulfill all of these
requirements, and you should expect to use the internet, Codecademy, and
other resources when you encounter a problem that you cannot easily
solve.

Note that there are hints that can assist you, but they will only
provide one potential implementation. Do not worry if your program looks
different from ours!

# Project Prompt

## ​​Build Your Own Reddit App

Working with APIs is a common task for front-end engineers. How you
display data is as important as how you fetch it. This project will give
you an overview of how to build a React-Redux app that works with the
Reddit API.

Click Begin to get started!

## Overview

### ​​Build Your Own Reddit App

For this project, you will build an application for
<a href="https://www.reddit.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Reddit</a> using everything you’ve
learned, including React and Redux. Reddit is a website where people
share links to articles, media and other things on the web. The Reddit
API provides data which you will integrate into your application. The
application will allow users to view and search posts and comments
provided by the API.

### Example Project

<a href="https://reddit-client.netlify.app/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><img
src="https://static-assets.codecademy.com/Paths/front-end-career-path/reddit-client/reddit-client-loading-slow.gif"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Reddit client example" /></a>

### Project Requirements:

-   Build the application using React and Redux

-   Version control your application with Git and host the repository on
    GitHub

-   Use a project management tool (GitHub Projects, Trello, etc.) to
    plan your work

-   Write a README (using Markdown) that documents your project
    including:

    -   Wireframes
    -   Technologies used
    -   Features
    -   Future work

-   Write unit tests for your components using Jest and Enzyme

-   Write end-to-end tests for your application

-   Users can use the application on any device (desktop to mobile)

-   Users can use the application on any modern browser

-   Users can access your application at a URL

-   Users see an initial view of the data when first visiting the app

-   Users can search the data using terms

-   Users can filter the data based on categories that are predefined

-   Users are shown a detailed view (modal or new page/route) when they
    select an item

-   Users are delighted with a cohesive design system

-   Users are delighted with animations and transitions

-   Users are able to leave an error state

-   Get 90+ scores on <a href="https://web.dev/measure/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Lighthouse</a>

    -   We understand you cannot control how media assets like videos
        and images are sent to the client. It is okay to have a score
        below 90 for Performance if they are related to the media from
        Reddit.

-   OPTIONAL: <a
    href="https://www.codecademy.com/courses/make-a-website/lessons/setting-up-your-domain/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">Get a custom domain name and use it for your
    application</a>

-   OPTIONAL: Set up a CI/CD workflow to automatically deploy your
    application when the master branch in the repository changes

-   OPTIONAL: Make your application a progressive web app

### Prerequisites:

-   HTML
-   CSS
-   JavaScript
-   React
-   Redux
-   Jest, Enzyme, and Selenium
-   Git and GitHub
-   Command line and file navigation
-   Wireframing

## Setup

### Going off platform

You will be doing this project outside of the Codecademy platform, on
your own computer.

For this particular project, you will be using your own text editor (we
suggest <a href="https://code.visualstudio.com/download"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">VS Code</a>) and Git version control. If
you need help setting up your text editor, read our
<a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article about setting up a text editor for web
development</a>. If you need a refresher on how to work with Git for
version control, <a href="https://www.codecademy.com/learn/learn-git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">review the Git lesson</a> or look at this
<a href="https://education.github.com/git-cheat-sheet-education.pdf"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">cheat sheet</a>.

### Reddit API

For this project, we will be using the
<a href="https://github.com/reddit-archive/reddit/wiki/JSON"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Reddit JSON API</a>. There is no
maintained documentation but the API is simple enough to use. We will
provide you with some pointers on how to use it.

Note that Reddit has 2 APIs: the
<a href="https://www.reddit.com/dev/api/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">official API</a> and an
<a href="https://github.com/reddit-archive/reddit/wiki/JSON"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">undocumented JSON API</a>. You are
welcome to use either APIs but we recommend using the JSON API because
it doesn’t require an OAuth workflow. Using the JSON API does have
limitations such as no write operations. For the purposes of this
project, we find the JSON API adequate.

You can take any Reddit URL, add .json at the end of it, and get JSON.
For example, if you want to get the Popular page data in JSON:

-   Original URL: `https://www.reddit.com/r/popular/`
-   JSON URL: `https://www.reddit.com/r/popular.json`

If you want to search for “cake recipes”:

-   Original URL: `https://www.reddit.com/search?q=cake%20recipes`
-   JSON URL: `https://www.reddit.com/search.json?q=cake%20recipes`

Notice here you didn’t add `.json` at the end of the URL. You actually
added it before the start of the query string. Refer to
<a href="https://www.quora.com/What-are-the-parts-of-a-URL"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this article</a> for a breakdown of the
structure of a URL.

The Reddit API will return some user content (comments) in Markdown. You
should find a way to display the Markdown in your application.

## Resources

### Debugging Tips + Helpful Resources

Feeling stuck? Try the following:

-   *Google your question:* oftentimes, someone has had the same
    question as you! Check out websites like StackOverflow and Quora to
    see how other folks have found solutions.
-   *Read the documentation:* make sure to carefully read through the
    documentation for any languages and libraries that you are using.
    Oftentimes they’ll have examples of what you’re looking for!
-   *Rubber ducking:* try to explain a problem to a friend or co-worker.
    Oftentimes you’ll figure out the solution as you’re trying to
    explain it. And if not, getting another pair of eyes on your code
    can be helpful.

Check out these helpful resources:

-   <a
    href="https://www.codecademy.com/content-items/673d70052fe5627f2222ab7840b4c5db"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">Thinking About Errors in Your Code Differently</a>

-   <a
    href="https://www.codecademy.com/content-items/8e57b181e3c4a62b70476bd76ab11624"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">Intro to Chrome Devtools</a>

-   <a
    href="https://www.codecademy.com/content-items/73ce848773660b8f73086a073113c3fe"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">CSS Visual Rules in Chrome Inspector</a>

-   <a
    href="https://www.codecademy.com/content-items/8219be05381030feb2d9530fedb457fd"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">Documentation and Research</a>

-   <a
    href="https://www.codecademy.com/content-items/e8a7f4f36eae1c4ee642af3cea4bfb4a"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">Debugging JavaScript Code</a>

-   <a
    href="https://www.codecademy.com/paths/build-web-apps-with-react/tracks/bwa-intro-to-react/modules/ravenous-part-one/informationals/ready-react-developer-tools"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">React Developer Tools</a>

-   <a
    href="https://www.codecademy.com/content-items/698c535e3cdf6ce8484bd34138341767"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">Redux DevTools Extension</a>

### Example Code

Want to see an example of how someone else has completed this project?
Click this <a
href="https://static-assets.codecademy.com/Paths/front-end-career-path/reddit-client/reddit-client-master.zip"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">link</a> to download a zip file
containing one example solution to this project. Remember: your project
doesn’t have to look anything like this! It should be unique to your
vision.

Here’s an example for inspiration: <img
src="https://static-assets.codecademy.com/Paths/front-end-career-path/reddit-client/reddit-client-loading-slow.gif"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Example client" />

## Project Tasks

Keep track of your progress by dragging each task from "To Do" to "In
Progress" to "Done" as you work on them. You can also click on a task to
see more information about it.

To Do

**Plan your project**

Visualize your end result. What is it built with? What can it do? Make
sure that it satisfies all of the project objectives.

Make a timeline for yourself and avoid the temptation to build things
that aren’t required. Setting firm boundaries and deadlines will keep
you on track and prevent scope creep.

The following tasks will help you identify natural break points.

**Wireframe your application**

Using pencil and paper, or a wireframing software of your choice, draft
what you’d like your application to look like.

**Create files and run it locally**

On your computer, create the files needed for your React application.
Run your application locally to see what it looks like in the browser.

**Version control**

Set up the folder you created previously to be a Git repository. Push
the initial files to a repository on GitHub. You should be consistently
committing your changes throughout the project. Make sure to have
meaningful commit messages.

**Build the components**

Based on your wireframes, start building your application with fake,
local data. Remember to build reusable components and to keep your
components small.

Other things to keep in mind:

-   Your application should work for all screen sizes
-   You are welcome to use libraries to help you accomplish features
-   You should write unit tests and end-to-end tests where it makes
    sense

**Add Reddit data**

Connect your application to the Reddit API.

When interacting with the API, don’t forget to handle error states.

**Publish to the web**

Congratulations on building your application! Deploy what you’ve built
and share it with the world!

**Next steps**

Go back to the project requirements section and complete the optional
requirements.
