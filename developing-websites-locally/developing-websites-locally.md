# Introduction: Developing Websites Locally

In this unit, you will be introduced to text editors and Chrome
DevTools.

The goal of this unit is to introduce you to text editors and how to
develop websites on your own computer. You will also learn about Chrome
DevTools, an essential tool used to analyze a web page’s HTML and CSS.

After this unit, you will be able to:

-   Use text editors to develop websites locally
-   Use Chrome DevTools to inspect webpages in the browser

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

# Getting Started with Visual Studio Code

Visual Studio Code is one of the most popular and powerful text editors
used by software engineers today.

In this article, we will go over the steps necessary to download a
popular text editor called Visual Studio Code, also referred to as “VS
Code.” By the end of this article, you will be all set up to start
interacting with code using VS Code!

## I. Introduction

### What are ‘text editors’?

Text editors, also called code editors, are applications used by
developers to write code. They can highlight and format your code so
that it’s easier to read and understand. If you’ve used Codecademy,
you’re already familiar with a text editor. It’s the area you write your
code in.

Using a text editor is part of creating your “development environment,”
the set of tools that you use for working on coding projects. It will
allow you to take what you’ve learned on Codecademy and put it into
practice as you work on projects on your computer. Not only will this
introduce you to tools that are commonly used by professional developers
but it also means that you’ve grown as a developer and are ready to
start working on your own—great work!

Specific to writing code, text editors provide a number of advantages:

-   Language-specific syntax highlighting
-   Automatic code indentation
-   Color schemes to suit your preferences and make code easier to read
-   Plug-ins, or add-on programs, to catch errors in code
-   A tree view, or visual representation, of a project’s folders and
    files, so you can conveniently navigate your project
-   Key shortcuts, or combinations, for faster development

You may also have read or heard about IDEs, or “integrated development
environments.” An IDE allows you to not only edit, but also compile, and
debug your code through one application or interface. While the text
editor we recommend isn’t considered an IDE, it has many IDE-like
features that make life as a developer easier without needing a lot of
resources that an IDE usually requires. The best of both worlds!

### Choosing a Text Editor

There are a number of text editors to choose from. For example, Visual
Studio Code is one of the most popular text editors used by developers.
(That’s Visual Studio Code and not Visual Studio, which is slightly
different. We want the former, the one with ‘Code’ in the name.) Other
popular text editors you may have heard of are Atom and Sublime Text.

Any of these text editors mentioned are great for development but to
make things easier, we suggest you start off with Visual Studio Code.
Some of the benefits of this editor are:

-   Free to use
-   Open-source, (meaning a program’s code can be viewed, modified, and
    shared)
-   IDE-like features
-   Supported by a large community of users and Microsoft

When you are further along in your coding career, you can try other code
editors to see what features work best with your personal development
workflow.

## II. Installing Visual Studio Code

So, we’ve chosen our text editor, now we just need to install it on our
computer!

### Video Instructions

For visual learners, this video details how to download and install
Visual Studio Code. Written instructions are below.

[Intro to Visual Studio Code](https://www.youtube.com/watch?v=Do0tl_u0WZk)

### Installation Steps

The installation process for computers running macOS, Windows, and
Linux, (specifically Ubuntu and Debian), will be very similar. Also,
using Visual Studio Code across all of them will be the same.

1.  Visit the <a href="https://code.visualstudio.com/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Visual Studio Code website</a> to
    download the latest version of Visual Studio Code.

    <img
    src="https://content.codecademy.com/articles/visual-studio-code/vsc-screenshot.png"
    class="img__1JGFO2nlisObc3KeOSGPRp" />

2.  You should see your computer’s operating system displayed, but if
    it’s not correct, click on the down arrow and find the option that
    matches your operating system from the drop-down menu, and click on
    the down arrow icon under “Stable.”

    **Windows users:** This will download the latest version of Visual
    Studio Code as an .exe file.

    **Mac users:** This will download the latest version of Visual
    Studio Code for Mac as a .zip file.

    **Linux users:** .deb and .rpm are different file types for storing
    data. We suggest you download the .deb file so auto-updates work as
    the Visual Studio Code documentation suggests.

3.  Once the Visual Studio Code file is finished downloading, we need to
    install it. Find the Visual Studio Code file in your file manager,
    the program that lets you see the files and folders on your
    computer.

    **Windows users:** Open the .exe file by clicking on it and on run
    the installer. Keep clicking ‘Next’ and then finally ‘Finish.’

    **Mac users:** The downloaded .zip file should be in your
    ‘Downloads’ folder. Open the file. If you see this message choose
    “Open.”

    **Linux users:** The downloaded file should be in your ‘Downloads’
    folder.

    Find it in your file manager, double click and choose ‘Install’ in
    the GUI software center, or run the following commands, one at a
    time, in the terminal:

    ``` bash
    sudo dpkg -i downloaded_filename.deb
    sudo apt-get install -f
    ```

4.  Make sure you have your Visual Studio Code application saved in a
    place you know you will easily be able to find it.

    **Windows users:** It will automatically be placed in your Start
    menu.

    **Mac users:** Click and drag the Visual Studio Code icon from the
    Downloads folder to the Applications folder.

    **Linux users:** It should appear in your taskbar of programs.

That’s it, you’ve successfully installed your text editor and are ready
to start coding!

# Building Projects with VS Code

Use Visual Studio Code in your local environment and create an HTML
website!

## Practice using Visual Studio Code to start an off-platform project

As you move through various lessons and paths here on Codecademy, you
may find yourself needing to create a project on your own computer and
not on the Codecademy learning environment. This can be tricky, but it’s
an exciting step that signals that you are ready to work independently.

To do this, we’ll need to use a
<a href="https://www.codecademy.com/resources/docs/general/code-editor"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">code editor</a>, we recommend
<a href="https://code.visualstudio.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Visual Studio Code</a> (or “VS Code”).

### What are development folders?

Before using your text editor, it’s important to establish an organized
<a href="https://www.codecademy.com/resources/docs/general/file-paths"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">file system</a>. As the number and size of your projects
grow, it becomes increasingly important to know where to save new
projects and find old projects.

Most developers store their projects in an easy-to-find directory, (what
you might be used to calling a “folder”). Here at Codecademy, we
recommend naming this folder as `projects`. It will store all of your
coding projects. Whenever you create a new project, no matter how small,
you should always make a new folder inside your `projects` directory.
You will find that single-file projects can quickly turn into larger,
multi-folder projects.

### Let’s make a project

Below are the steps you need to follow to create a new folder for all of
your programming projects. You will also learn how to load a new project
folder into VS Code and make your very first “hello world” HTML project.

[How to create a website](https://www.youtube.com/watch?v=47GaFnnex5w)

We’d recommend that you watch the above video and then follow the
written steps below.

##### 1. Make a development folder

Navigate to a folder using your file manager or the terminal. Make sure
it is a folder you visit regularly and will remember. Create a new
folder called `projects`.

-   **macOS users:** This may be your user account or `Home` folder.
-   **Windows users:** You may want to save this on your `C:` drive.
-   **Linux users:** You may want to save this in your user folder
    inside of the `home` folder.

Inside the `projects` directory, create a new folder called
`HelloWorld`. Everything you add to this folder will be part of your
`HelloWorld` project.

##### 2. Open VS Code

For this step, VS Code will need to be
<a href="https://code.visualstudio.com/download"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">downloaded</a>. Then, it can either be
launched with the desktop icon or by opening a
<a href="https://www.codecademy.com/resources/docs/general/terminal"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">terminal</a> and doing the following:

1.  Change into the `projects` directory with the `cd` command:

    ``` bash
    cd projects
    ```

2.  Open VS Code from the `projects` directory with the following
    command:

    ``` bash
    code .
    ```

> **Note:** Depending on the operating system, there may be some extra
> steps needed to <a
> href="https://code.visualstudio.com/docs/editor/command-line#_launching-from-command-line"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">launch VS Code from the terminal</a>.

##### 3. Open your development folder

Click on the “Explorer” icon on the left-hand menu and click on the
“Open Folder” button and choose your development folder. This will
launch your file manager.

Navigate to the `HelloWorld/` folder and select Open. The folder will
open in VS Code’s side pane. At this point, there should not be any
contents in the folder. We’ll add a file in the next step.

##### 4. Add a file

Before you learn how to add files to a project folder, it is important
to understand the purpose of
<a href="https://www.codecademy.com/resources/docs/general/file-formats"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">file formats</a>. File formats include the file
*extension*, or the suffix of a filename (the last 3 - 4 characters in a
filename, preceded by a period `.`), and describe the type of content
the file contains. For example, the HTML file extension is `.html`, and
it tells the browser (and other applications) to interpret the contents
of the file as an HTML document. Once VS Code loads a project folder,
you can add files. The steps below describe how to add files. Don’t
worry about doing this on your own computer. We’ll get to that next.

In VS Code’s “Explorer” pane, click on your development folder’s name.
You’ll see four icons appear to the right of the folder name. Click the
“New File” icon. Type the new file’s name with its appropriate file
extension ( e.g., `.html`, `.css`, and `.csv`). It is critical that you
include the correct
<a href="https://www.codecademy.com/resources/docs/general/file-paths"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">file path</a>, so programs like linters know how to
interpret its contents. Press <span class="kbd">Enter</span> when done.

##### 5. Begin coding

Copy and paste the following boilerplate HTML code:

``` html
<html> 
  <head>
    <title>Hello World</title> 
  </head>
 
  <body> 
    <h1>Hello World</h1> 
  </body>
</html>
```

To decrease the chances of losing unsaved work, save your file often
with the Auto Save feature and track changes with a version control
system, like <a href="https://www.codecademy.com/resources/docs/git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Git</a>, if you know how to use one. (To turn Auto Save
on, click on “File”, then “Auto Save”. When it’s on, you’ll see a
checkmark next to “Auto Save”.)

**File Formats and Syntax Highlighting**

Syntax is the set of rules that tell us how to create correctly written
code. VS Code and other text editors are able to interpret file formats
and provide language-specific syntax highlighting. Syntax highlighting
is a tool for making code easier to read. Take a look at your index.html
file. The text and tags are different colors. This is how VS Code
highlights .html syntax. With each new language you learn, VS Code will
highlight text in a way that makes your code easy to read. This may be
different than other text editors and also different than the way your
code is highlighted on Codecademy.

**Optional: Change the color scheme**

Although VS Code comes with default syntax highlighting, you may want to
change the colors used. Good color themes will make reading all those
lines of code easy on your eyes. (Try out low contrast, dark themes like
“Solarized Dark” or “Dracula Dark.”)

To do this, select Color Theme from the Welcome page when you first open
VS Code, or click on Code in the menu bar at the top of your desktop
window, then click on Preferences, followed by Color Theme. You can also
search for color themes to install using the Extensions menu.

##### 6. View your HTML file in the browser

At this point, your file is ready to be viewed in a web browser. The
following steps should be taken outside of VS Code:

Navigate to the `index.html` file in your Hello World folder through
your file manager or terminal.

Double-click or open `index.html`. The page should open in your default
web browser. Take a second to marvel at your handiwork — you made your
first project with VS Code.

## Wrapping up

Congratulations, you’ve successfully used your VS Code text editor to
create a website — all on your own computer! As you work more with VS
Code, you’ll get a better sense of how to personalize it to fit your
needs. Don’t be afraid to experiment and try out different things!

### Go further with VS Code’s features

If you already feel comfortable with the previous steps, explore the
following features to further customize your development environment.
You don’t need to use these suggestions to complete the projects on
Codecademy but they can help make you more efficient when writing code.
They are part of are what makes VS Code such a useful editor!

-   <a href="https://code.visualstudio.com/docs/editor/debugging"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener"><strong>Debugging code in the
    editor:</strong></a> That’s right, you can run and test code from
    the editor!

-   <a href="https://code.visualstudio.com/docs/editor/versioncontrol"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener"><strong>Version control:</strong></a>
    You don’t need to switch to the terminal on your computer to track
    changes with Git.

-   <a href="https://code.visualstudio.com/docs/editor/integrated-terminal"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener"><strong>Integrated terminal:</strong></a>
    You can run command line commands from your editor with VS Code.

# Create Your First Local HTML/CSS Project

Use the tools on your own computer to start your own HTML/CSS project!

Requirements:

-   Text editor (we recommend VS Code)
-   An Internet browser

#### Introduction

In this article, we’ll cover how to take the CSS skills you’ve learned
on Codecademy and use them to create a basic web page built entirely
from the tools you have on your computer. Before you proceed, you should
already be familiar with the basics of text editors, local files, and
directories, all of which are covered
<a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">elsewhere</a> on Codecademy.

We recommend that you watch this explainer video and then follow the
instructions below.

[Create your first HTML/CSS project](https://www.youtube.com/watch?v=wzWmZYi4qMg)

If you’d like some optional extra guidance on real-world CSS, watch the
<a href="https://youtu.be/EGMSlY2v5xk"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">second part</a> of the video.

#### Step 1: Create a Folder Structure For Your Web Page

Let’s create a folder structure to support your web page. A
well-designed folder structure will help you quickly navigate to the
HTML or CSS files that contain your code.

First, open Finder (in Mac) or Explorer (in Windows). Next, create a
folder (also known as a directory) called **DevProject**. This folder
will contain all of the files for your HTML and CSS project.

Open the **DevProject** folder. Inside, create the following items:

1.  A new file called **index.html** (use your preferred text editor)
2.  A new folder called **resources**

The **index.html** file will contain the HTML code for your web page,
while the **resources** folder will contain all of the necessary
resources needed by the HTML files (CSS files, images, etc.).

Next, open the newly created **resources** folder. Inside of this
folder, create the following:

1.  An additional folder named **css**

The **css** folder will contain the CSS files needed to style your web
page.

Finally, open the **css** folder you just created. Inside of this
folder, create the following:

1.  A new file named **index.css** (use your preferred text editor)

The **index.css** file will contain all of the CSS styling rules that
will be applied to your web page.

This overall folder structure will help support your workflow as you add
files or resources. At a high-level, here’s what it should look like:

<img
src="https://content.codecademy.com/courses/freelance-1/unit-2/filesystem-start.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="filesystem" />

#### Step 2: Add Content To Your Web Page

Great! With your folder structure, HTML, and CSS files all in the right
place, we can add content to the web page.

First, open the **index.html** file in your preferred text editor. Next,
add the required boilerplate HTML code:

``` html
<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body>
 
 
</body>
</html>
```

After you add the boilerplate HTML code, feel free to also add the
following items:

1.  Your own title between the `<title>` tags
2.  Your own content within the `<body>` tags. If you need some quick,
    pre-written content, feel free to use the following and modify as
    you wish:

``` html
<h1>FirstName LastName</h1>
<p>I'm learning to code on Codecademy! My goals include:</p>
<ul>
  <li>Learn to code</li>
  <li>Start a company</li>
  <li>Help the world</li>
</ul>
<p>This is one of my favorite websites: <a href="https://www.google.com/" target="_blank">Google</a></p>
```

Finally, open the **index.css** file in your preferred text editor. Add
the following pre-written CSS rules to the file (feel free to modify as
you wish):

``` css
* {
  font-family: Helvetica, Arial, sans-serif;
}
 
 
h1 {
  color: SeaGreen;
}
 
 
p, 
li {
  font-size: 18px;
}
 
 
a {
  text-decoration: none;
}
```

Be sure to save your changes for both files!

#### Step 3: Link Your HTML File and CSS File

As it turns out, the HTML content you added will not be styled by the
CSS rules unless **index.html** and **index.css** are linked together.
In the `<head>` section, link the stylesheet to the HTML file.

``` html
<link href="./resources/css/index.css" type="text/css" rel="stylesheet">
```

You might be wondering why the `href` attribute is set to
`./resources/css/index.css`. This is because you must specify exactly
where the **index.css** file lives within your folder(s) *relative* to
where **index.html** lives (otherwise, the two files won’t link).

If you have trouble linking your HTML and CSS, head to the <a
href="https://discuss.codecademy.com/t/how-do-i-link-my-html-and-css/423288"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Codecademy community forums</a> for help.

Again, make sure to save your changes!

#### Step 4: View Your Project

Great work - let’s take a look at your web page in the browser.

Open your preferred web browser. In the menu bar, click on “File” and
then click on “Open File…” (or equivalent). Navigate to your
**index.html** file and then click “Open” (or equivalent). The browser
should load your web page. What do you see?

At this point, feel free to make changes to your HTML or CSS code. Keep
in mind that in order to view any *new* changes you make, you’ll have to
refresh your browser.

#### Review

Congrats! In this short time, you learned how to take what you’ve been
learning on Codecademy and apply it using the tools you have available
on your own personal computer. You successfully learned how to:

1.  Create a folder structure to support both your workflow and your web
    page
2.  Add HTML content and CSS styling to respective files
3.  Link the HTML and CSS files together
4.  View your web page in a browser (and refresh the browser to view new
    changes)

In general, the four points above are a strong starting point for your
own developer workflow. As you learn more, you may modify the workflow
to fit your specific needs. At this point, feel free to modify the
content of the web page or create an entirely new project. Happy coding!

# Intro to Chrome Devtools

[Chrome DevTools](https://www.youtube.com/watch?v=VuQ4pF_hfag)

# CSS Visual Rules in Chrome Inspector

In this article, you’ll learn how to use browser developer tools to
analyze a web page’s HTML and CSS, as well as learn techniques to help
speed up your development workflow.

## Using Chrome DevTools for CSS Visual Rules

Requirements:

-   An Internet browser

#### Introduction

Browser developer tools allow web developers to quickly collect
important information on most websites. These tools are available within
most major web browsers, like Chrome, Safari, and Firefox, to name a
few. Because Google Chrome is the preferred browser for many
professional developers, we’ll learn how to use the browser developer
tools within Google Chrome, known as Chrome DevTools.

#### Step 1: Accessing DevTools

The quickest way of accessing DevTools in Chrome is to navigate to any
website (like this one) and *right click* (press
<span class="kbd">control</span> and click for a single button mouse)
anywhere on the page. Upon doing so, a menu will appear directly beside
the area you clicked on. In the menu, select “Inspect.” This will
automatically launch DevTools within your browser. DevTools will appear
as a window on either the bottom or right-hand side of your screen. It
should look something like this:

<img
src="https://content.codecademy.com/courses/freelance-1/unit-2/devtools.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="devtools" />

You should see the `Elements`, `Console`, `Sources`, and `Network` tabs,
among many others.

This rest of this article will focus exclusively on the `Elements` tab.

#### Step 2: Using DevTools to View CSS Styles

DevTools can provide you with a lot of information about a website, but
it’s particularly exceptional at examining a page’s HTML elements, along
with the CSS styles for those respective elements. Let’s try it out!

1\. Open an incognito Chrome browser (in the browser’s menu, click on
“File” then “New Incognito Window”). This will allow you to read this
article while completing the following steps.

2\. Navigate to <a href="https://codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Codecademy’s homepage</a> (make sure you
are logged out).

3\. Right click (or <span class="kbd">control</span> and click
simultaneously) on any text on the page. (This article uses screenshots
from a previous version of the Codecademy home page. Your home page may
look different from the one shown in the screenshots.)

4\. Select “Inspect” in the menu that appears.

5\. DevTools should appear at the bottom of your page (it’s normal if
its appears in another location, as its location can be changed).

6\. Click on the “Elements” tab of DevTools (if you’re not already on
it).

<img
src="https://content.codecademy.com/courses/freelance-1/unit-2/click-on-elements-tab.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="elementstab" />

7\. In the left pane, notice the interactive DOM (HTML elements) that
contains the current content of the web page.

8\. Mouse over the HTML code — as you mouse over, notice that DevTools
will highlight the corresponding HTML element on the web page.

9\. Note that you can expand closed elements by clicking the arrow
directly to the left of them.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-2/expand-element.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="expandelement" />

10\. Alternatively, click the “Select element” icon (shown in the image
below) in the top-left corner of the console and then click on an
element within the web page — this is a much quicker way of accessing a
specific element on the web page that you want to inspect.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-2/select-element.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="selectelement" />

11\. On the right hand side of DevTools, click on the tab named `Styles`
(if you’re not already on it) — this tab displays *all* of the CSS
styles associated with the element highlighted in the left side of
DevTools.

12\. Scroll down in the `Styles` tab, notice that some CSS styles are
crossed out with a horizontal black line.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-2/unused-styles.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="unused" />

13\. Remember, the `Styles` tab shows *all* styles applied to that
element (rules can often be overwritten by more specific rules, which
causes the horizontal black line through some CSS rules, denoting that
that rule is not being used).

14\. To instead view *only* the styles applied to that specific element,
click on the `Computed` tab directly next to the `Styles` tab in the
right pane. In this pane, you will see only the styles that are being
applied to that element, also known as the *computed styles*. (If the
`Computed` tab is not appearing for you, your browser may be sized too
small. Expand the width of the browser until it appears.)

<img
src="https://content.codecademy.com/courses/freelance-1/unit-2/computed-tab.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="computed" />

#### Step 3: Modifying CSS Styles with DevTools

DevTools is also useful for modifying *existing* CSS rules and
previewing those changes directly on the page you’re viewing.

To try it out, click again on the `Styles` tab in the right pane of
DevTools (feel free to use the Codecademy website again). Scroll down to
a CSS rule (one that is *not* crossed out with a black line), click on
the value of any applied CSS rule, change the value, and press
<span class="kbd">enter</span> on your keyboard. You should see the
change automatically update on the page.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-2/edit-a-style.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="editStyles" />

There are a few things to keep in mind when using DevTools to modify a
web page:

1\. When you modify or change a CSS rule, you may be affecting more than
one element.

2\. DevTools provides easy-to-use tools when you modify certain CSS
rules. (For example, when modifying color values, DevTools will provide
you with a color picker to help you select a color.)

3\. DevTools is only a *sandbox* tool, meaning that any changes you make
to the web page will *not be saved*, so make sure to write down any
changes you’d like to make when using DevTools for your own web page!

#### Step 4: Add CSS Styles with DevTools

In addition to modifying existing CSS rules, you can add *new* CSS rules
as well. Let’s continue using DevTools on the Codecademy homepage.

1\. Locate some text on the home page (i.e. find a heading, paragraph,
link, etc.).

2\. Right click on the text and click “Inspect” in the menu that
appears. DevTools will highlight the corresponding HTML element in its
left pane.

3\. Take a look at the `Styles` tab and click on the `+` icon in the
top-right corner of the right pane — notice that this creates a new,
empty CSS rule for that element.

4\. Within the element’s selector, click and add a new CSS declaration.
The following is an example (feel free to add your own declaration):

``` css
background-color: red;
```

You should see the background color of the text you selected change to
red. You can also continue to add your own CSS styling as you wish.

In the future, try this technique on your own website(s) as you build
them from the ground up. Building with DevTools can result in a more
efficient workflow, as it can help you avoid repeatedly saving and
viewing changes manually.

#### Step 5: Modify HTML with DevTools

DevTools also lets you directly *modify* the HTML content of a web page.
Let’s try this out one more time on the Codecademy homepage.

1\. Again, right click on a piece of text on the homepage and click
“Inspect” in the menu that appears.

2\. DevTools will automatically highlight the HTML code in the left pane
associated with the content that you inspected on the web page.

3\. In DevTools, double click on the text between the opening and
closing tags of the text you right-clicked on.

4\. Change the heading to say something else, like your name, or
“Codecademy”, and press <span class="kbd">enter</span>.

<img
src="https://content.codecademy.com/courses/freelance-1/unit-2/edit-an-element.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="editElement" />

At this point, you should see the text change!

You can also add HTML of your own as well. Let’s add an `<h2>` element
directly below the element you just modified.

1\. Right click on the element you just modified, a menu should appear.
Click on “Edit as HTML.” (You can also delete elements using this menu.)

2\. A large text field should appear. Directly edit the HTML by adding
an `<h2>` element below with the text of your choice.

3\. To complete/view your changes, click on any other element in the
left window pane or press <span class="kbd">command</span> and
<span class="kbd">enter</span> at the same time (on a Mac keyboard).

What happens to the web page? Remember, these are sandboxed changes, so
your changes will *not* be saved, nor permanently affect the website you
are applying changes to.

#### Review

The Chrome web browser provides you with robust web developer tools
known as DevTools. With DevTools, you can view a web page’s existing DOM
elements and associated styles, as well as modify and preview changes
you make to the web page, resulting in an efficient workflow. If you’re
interested in learning more about DevTools, visit the official
documentation at <a href="https://developer.chrome.com/devtools"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">https://developer.chrome.com/devtools</a>.

Happy coding!

# Off-Platform Project: Dasmoto's Arts & Crafts

In this project, you’ll build a simple website for a fictional arts and
crafts store using the tools on your own computer. This project will
provide you with less guidance than previous projects. You should expect
to use the internet, Codecademy, and other resources when you encounter
a problem that you cannot easily solve.

At a high-level, this project will require the following:

1.  A folder structure that makes sense for the project
2.  An HTML file
3.  A CSS file

To successfully complete the project, you’ll require the following
images:

1.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-2/pattern.jpeg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Image 1</a>
2.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-2/hacksaw.jpeg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Image 2</a>
3.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-2/frames.jpeg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Image 3</a>
4.  <a
    href="https://content.codecademy.com/courses/freelance-1/unit-2/finnish.jpeg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Image 4</a>

The rest of the page’s styling (font sizes, colors, etc.) is outlined in
the following design spec, which is a standard document you’d expect to
receive as a freelance web developer:

-   <a
    href="https://content.codecademy.com/courses/freelance-1/unit-2/dasmotos-arts_redline.jpg"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Spec</a>

Use the website to the right and the resources above to guide you
through the project.



Mark the tasks as complete by checking them off


1\.

This project is intended to be completed on your own computer. To
successfully finish the project, make sure to download the images that
are linked above. There’s no single, correct way to complete this
project, so experiment and have fun!

If you do want more assistance, i.e. read a transcription of the image
for more guidance, please continue reading the steps below. Otherwise,
you can use the image as a blueprint for your project!

## Additional Help


2\.

The hint provided in this step is the transcription of the first section
of the Dasmoto site’s specifications.




3\.

The hint provided in this step is the transcription of the second
section.




4\.

The hint provided in this step is the transcription of the third
section.




5\.

The hint provided in this step is the transcription of the fourth and
final section.



## [Solution](dasmoto)

# Dasmoto Project Solution

Compare your code to our official solution!

<a
href="https://content.codecademy.com/courses/freelance-1/project-solutions/F1U2P2_solution.zip"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Download the solution code</a> for the
Dasmoto Project.

Please attempt to finish this project on your own, and use this resource
only to compare your work at the end, or to help you get unstuck if your
struggle has become totally unproductive.

# Review: Developing Websites Locally

In this unit, you learned about text editors and Chrome DevTools.

Congratulations! The goal of this unit was to get an introduction to
text editors and how to develop websites on your own computer. You also
learned about Chrome DevTools, an essential tool used to analyze a web
page’s HTML and CSS.

Having completed this unit, you are now able to:

-   Use text editors to develop websites locally
-   Use Chrome DevTools to inspect webpages in the browser

If you are interested in learning more about these topics, here are some
additional resources:

-   Video:
    <a href="https://code.visualstudio.com/docs/introvideos/basics"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Getting started with Visual Studio
    Code</a>
-   Resource:
    <a href="https://developers.google.com/web/tools/chrome-devtools"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Chrome DevTools</a>

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
