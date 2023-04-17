# Introduction: Deploying Websites

The goal of this unit is to introduce you to web hosting and deploying
websites with GitHub Pages. You will also learn how to use the command
line to navigate file structures.

After this unit, you will be able to:

- Understand web hosting
- Deploy a simple website using GitHub pages
- Navigate file structures

You will put all of this knowledge into practice with an upcoming
Portfolio Project. You can complete the Portfolio Project either in
parallel with or after taking the prerequisite content—it’s up to you!

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

# What is Hosting?

[What Is Web Hosting? Different Types of Hosting Providers
Explained](https://www.youtube.com/watch?v=EOJxpgRmtxA)

# What is a Domain Name?

[What Is a Domain Name? Domain vs. Web
Hosting](https://www.youtube.com/watch?v=se3ujLcBsAE)

# What is GitHub Pages?

## [GitHub](https://www.youtube.com/watch?v=2MsN8gpT6jY)

In this resource, you will learn how to launch a website using GitHub
Pages. This is helpful if you want to publish your website on the
internet using a simple and user-friendly platform.

# Creating a Website on GitHub Pages

<a href="https://pages.github.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">GitHub Pages</a>, a tool provided by
<a href="https://github.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">GitHub</a>, lets you easily create and
deploy a website online. GitHub allows you to store all the files and
code for your website in a repository. You can then use GitHub Pages to
generate a personal URL and share your site with friends, family, and
the world!

For this tutorial, you need a GitHub account and basic HTML knowledge.
You don’t need to know Git or the command line. (But if you do want to
learn how to use these tools, check out our
<a href="https://www.codecademy.com/learn/learn-git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn Git & GitHub</a> and
<a href="https://www.codecademy.com/learn/learn-the-command-line"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn the Command Line</a> courses.)

## GitHub vs. GitHub Pages

In GitHub, code is stored in a *repository*, or repo. You can think of
it as a special folder that lives online. GitHub hosts that folder so
that it is accessible to you and your teammates from anywhere in the
world.

In our case, our repository will contain HTML and CSS code that defines
a website. But you can’t SEE the website anywhere. GitHub just displays
the code like any other text. GitHub Pages essentially connects your
repository to a unique URL so that, when you go to that URL – say
`username.github.io` – in your browser, you’ll find your website
displayed.

## Create a Repository

Let’s get started!

<a href="https://github.com/new"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Create a new repository</a> named
`username.github.io`, where `username` is your GitHub username.

<img
src="https://content.codecademy.com/articles/github-pages-via-web-app/create-a-new-repository.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the create a new repository page" />

You have the option here to use a template, add a description, make your
repository private, and initialize some additional files. These items
make it easy for other developers to learn about your repository: what
it’s about, who can access it, who can use the code, etc. For
simplicity, we’re going to skip those items for now. Your site will work
without them.

Click “Create Repository”.

## Creating Your First Page

You should be redirected to the repository page, which shows an empty
repository. It’s time to add a file! On that page, click the “creating a
new file” link.

<img
src="https://content.codecademy.com/articles/github-pages-via-web-app/creating-a-new-file-link.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the repository page with a rectangle around the creating a new file link" />

Name your file **index.html**. Now copy and paste the following code
into the file.

``` html
<html>
 
<body>
  <h1>YOUR NAME</h1>
  <p>Welcome to my website!</p>
  <img src="https://content.codecademy.com/articles/github-pages-via-web-app/happy-ice-cream.gif" />
</body>
 
</html>
```

You can customize the text that says `YOUR NAME` and
`Welcome to my website!`.

<img
src="https://content.codecademy.com/articles/github-pages-via-web-app/commit-index-html.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Screenshot of the create index.html page after everything is filled out" />

Changes to your repository are called *commits*. You can imagine each
commit as a snapshot of your repository at different times.

Time to create our first commit! In the first textbox, name your commit
“Create index.html”. Commits usually start with a verb describing
changes made to the repository.

Press the “Commit new file” button.

## Viewing Your Website

Your website is now accessible at `https://username.github.io`!
(Remember to replace `username` with your GitHub username.)

<img
src="https://content.codecademy.com/articles/github-pages-via-web-app/deployed-website.gif"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="An animated gif of the website you created" />

If you’d like, you can develop your website by adding more HTML and CSS!
Your site should update a few minutes after each commit.

## Troubleshooting

If your site isn’t appearing after 10 minutes, try these additional
steps:

1.  Within your `username.github.io` repo, go to Settings and scroll
    down to GitHub Pages. Under Source, make sure that your repo is
    linked to your web page. If you see `None`, then select the `main`
    branch.

2.  Within the same GitHub Pages section, go to Theme Chooser and select
    any theme.

<img
src="https://static-assets.codecademy.com/Paths/front-end-career-path/github-pages/github-pages-settings-ii.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Repo Settings, GitHub Pages section" />

# Navigation

## Introduction

The **command line** is a text interface for your computer. It’s a
program that takes in commands and passes them on to the computer’s
operating system to run.

From the command line, you can navigate through files and folders on
your computer, just as you would with Finder on Mac OS or Windows
Explorer on Windows. The difference is that the command line is fully
text-based.

The advantage of using the command line is its power. You can run
programs, write scripts to automate common tasks, and combine simple
commands to handle difficult tasks. All of these traits come together to
make it an important programming tool.

This course is for unix-based systems such as Linux and Mac OS X. You
can also download programs on Windows that will allow you to use the
same commands. An appendix of all commands taught in this course is
available
<a href="https://www.codecademy.com/articles/command-line-commands"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">here</a>.



When using the command line, we refer to folders as *directories*. Files
and directories on your computer are organized into a *filesystem*.

Move on to the next exercise to find out how the filesystem works.

## Filesystem

A filesystem organizes a computer’s files and directories into a tree
structure:

1.  The first directory in the filesystem is the *root directory*. It is
    the parent of all other directories and files in the filesystem.
2.  Each parent directory can contain more child directories and files.
    In the filesystem on the right, **blog/** is the parent of
    **2014/**, **2015/**, and **hardware.txt**.
3.  Each directory can contain more files and child directories. The
    parent-child relationship continues as long as directories and files
    are nested.

You’re probably already familiar with this tree structure - Mac Finder
and Windows Explorer represent the filesystem as trees as well.

We are going to use the pictured filesystem for the rest of the lesson.
You can reference it at anypoint <a
href="https://content.codecademy.com/courses/learn-command-line/img/LCL-fileTrees-01.png"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.



Move on to the next exercise to start learning about the different
commands!

## ls

The first command we’re going to look at is `ls`. A *command* is a
directive to the computer to perform a specific task. When you type
`ls`, the command line looks at the directory you are in, and then
“lists” all the files and directories inside of it. Be sure to type the
letter `l` as in “List” and not the number 1.

In the terminal, the first thing you see is `$`. This is called a *shell
prompt*. It appears when the terminal is ready to accept a command.

If we typed:

``` bash
$ ls
```

the terminal would display our current directory’s files and
directories:

``` bash
2014  2015  hardware.txt
```

The directories **2014/**, **2015/**, and the file **hardware.txt** are
the contents of the current directory.



**1.**

The exercises in this lesson use the <span class="kbd">Check Work</span>
button with the terminal. To move through the instructions, perform the
tasks and click the <span class="kbd">Check Work</span> button. If you
accomplish the task correctly, you can move to the next task or
exercise.

To start, after the `$` in the terminal, type:

``` bash
ls 
```

and press <span class="kbd">enter</span>.

You should see the three items print out below the command.

Click <span class="kbd">Check Work</span> to see how you did.



``` bash
ls
```

## pwd

The next command we’re going to look at is `pwd`, which stands for
“print working directory.” It outputs the name of the directory you are
currently in, called the *working directory*.

Here the working directory is **blog/**. In Codecademy courses, your
working directory is usually inside the **/home/ccuser/workspace/**
directory.

Together with `ls`, the `pwd` command is useful to show where you are in
the filesystem.



**1.**

Let’s continue with more commands. In the terminal, print the working
directory.

Make sure to click the <span class="kbd">Check Work</span> button once
you’ve completed each checkpoint.

**2.**

List all files and directories in the working directory.

Click the “Check Work” button when you are done.



``` bash
pwd
ls
```

## cd I

Our next command is `cd`, which stands for “change directory.” Just as
you would click on a folder in Windows Explorer or Finder, `cd` switches
you into the directory you specify. In other words, `cd` changes the
working directory.

Let’s say the directory we change into is **2015/**:

``` bash
$ cd 2015
```

When a file, directory, or program is passed into a command, it is
called an *argument*. Here the **2015/** directory is an argument for
the `cd` command.

The `cd` command takes a directory name as an argument and switches into
that directory.

It is also important to move up one directory. For this, we use:

``` bash
$ cd ..
```

The argument `..` stands for the directory above the current working
directory. Assuming we are in **/home/ccuser/workspace/blog/2015**:

``` bash
$ pwd
/home/ccuser/workspace/blog/2015
$ cd ..
$ pwd
/home/ccuser/workspace/blog
```

The above example uses the command `cd ..` to navigate up to the
**/home/ccuser/workspace/blog/** directory.



**1.**

Our current working directory is **/home/ccuser/workspace/blog/**.
Change into the **2015/** directory.

Confirm you are in the **2015/** directory using `pwd`.

Make sure to click the <span class="kbd">Check Work</span> button once
you’ve completed each checkpoint.

**2.**

Now move back up to the **blog/** directory using the `..` notation.

Confirm your location again with `pwd` and click the
<span class="kbd">Check Work</span> button?

**3.**

Let’s move further into the filesystem. We are currently in the
**blog/** directory. From here we want to move into the **2015/**
directory, then into a directory named **jan/** and lastly, a directory
named **memory/**. (You can reference the filesystem for this lesson <a
href="https://content.codecademy.com/courses/learn-command-line/img/LCL-fileTrees-01.png"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.)

Move down the filesystem into the **memory/** directory and print the
working directory again to see the new location.



``` bash
cd 2015
pwd
cd ..
pwd
cd 2015/jan/memory
pwd
```

## cd II

In the previous exercise, we used `cd` multiple times to go from the
**blog/** directory to the **memory/** directory. You can reference the
file system <a
href="https://s3.amazonaws.com/codecademy-content/courses/learn-command-line/img/LCL-fileTrees-01.png"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

To move across multiple directories with a single command, we can
provide `cd` a relative path to the **memory/** directory as an
argument. From the **blog/** directory use:

``` bash
$ cd 2015/jan/memory
```

The relative path is a forward slash (/) separated list of all the
directories leading to the goal directory. In the above example, we
navigate directly to **memory/** from **blog/** using `cd` with the
relative path `2015/jan/memory`.

We can also move up multiple directories using the `..` argument. To go
from **memory** up 2 directories to **2015**, we use \`../..:

``` bash
$ pwd
/home/ccuser/workspace/blog/2015/jan/memory
$ cd ../..
$ pwd
/home/ccuser/workspace/blog/2015
```

The relative path `../..` can be read: the directory above and the
directory above that.

Lastly, we can move to an adjacent directory using `..` and then a
directory name. If we are in the **2015/** directory and we want to go
into the **2014/** directory, we go up one directory then into the
**2014/** directory:

``` bash
$ ls
2014  2015  hardware.txt
$ cd 2015
$ pwd
/home/ccuser/workspace/blog/2015
$ cd ../2014
$ pwd
/home/ccuser/workspace/blog/2014
```

The relative path is the directory above **2015/** (which is **blog/**)
and then the **2014/**.



**1.**

For this exercise, we want to start in the **blog/2015/** directory.
Check your location and navigate to this directory. Remember, you can
always use `cd` with the absolute path,
**/home/ccuser/workspace/blog/2015/**.

Once in the **blog/2015/** directory, change the directory to the
**feb/** directory using a single command.

When in the **feb/** directory, check the working directory.

Make sure to click the <span class="kbd">Check Work</span> button once
you’ve completed each checkpoint.

**2.**

Now we’re in **2015/feb/**, but what if we want to move to the adjacent
directory **2015/jan/**? (You can reference the filesystem for this
lesson <a
href="https://s3.amazonaws.com/codecademy-content/courses/learn-command-line/img/LCL-fileTrees-01.png"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.)

Using a single `cd` command, navigate from **2015/feb/** to
**2015/jan/** and confirm your working directory.

**3.**

Navigate back to **/home/ccuser/workspace/blog** using a single `cd`
command and then use `pwd` to confirm your working directory.

Click the <span class="kbd">Check Work</span> button when you are done.



``` bash
cd /home/ccuser/workspace/blog/2015/
cd feb
pwd
cd ../jan
pwd
cd ../..
pwd
```

## mkdir

Now that we can traverse the existing filesystem, let’s try editing it
by making directories (folders) through the command line. The command
for that is `mkdir`:

``` bash
$ mkdir media
```

The `mkdir` command stands for “make directory”. It takes in a directory
name as an argument and then creates a new directory in the current
working directory.

Here we used `mkdir` to create a new directory named **media/** inside
our working directory.



**1.**

Navigate to the **/home/ccuser/workspace/blog/2014/dec/** directory.

Then list all files and directories in the working directory to see
what’s currently in there.

Make sure to click the <span class="kbd">Check Work</span> button once
you’ve completed each checkpoint.

**2.**

Create a new directory named **media**. If you list the contents of the
working directory again, you should see your new directory.

**3.**

Within our new **media/** directory we would like to create another
directory name **tv/**.

To do this we could:

- `cd` into **media/** and then use `mkdir`
- use `mkdir` from our current position by using the relative path
  `media/tv` as an argument

Create a new directory named **tv/** inside **media/** using either of
the above approaches.

Click the <span class="kbd">Check Work</span> button when you are done.



``` bash
cd /home/ccuser/workspace/blog/2014/dec/
ls
pwd
mkdir media
cd media
mkdir tv
```

## touch

Now we know how to create directories through the command line, but how
do we create new files?

We can do this using the command `touch`:

``` bash
$ touch keyboard.txt
```

The `touch` command creates a new file inside the working directory. It
takes in a filename as an argument and then creates an empty file with
that name in the current working directory.

Here we used `touch` to create a new file named **keyboard.txt**.



**1.**

Make sure you are in the **/home/ccuser/workspace/blog/** directory.
List your working directory’s current contents.

Make sure to click the <span class="kbd">Check Work</span> button once
you’ve completed each checkpoint.

**2.**

Create a new file named **keyboard.txt** inside the working directory.
If you list its contents again, you should now see your file listed.



``` bash
cd /home/ccuser/workspace/blog/
ls
touch keyboard.txt
```

## Helper Commands

Now that we’ve covered the basics of navigating your filesystem from the
command line, let’s look at some helpful commands that will make using
it easier!

<span class="kbd">tab</span> can be used to autocomplete your command.
When you are typing the name of an existing file or directory, you can
use <span class="kbd">tab</span> to finish the rest of the name.

The up and down arrows (<span class="kbd">↑</span> and
<span class="kbd">↓</span>) can be used to cycle through your previous
commands. <span class="kbd">↑</span> will take you up through your most
recent commands, and <span class="kbd">↓</span> will take you back
through to the most recent one.

`clear` is used to clear your terminal, which is useful when it’s full
of previous commands and outputs. It doesn’t change or undo your
previous commands, it just clears them from view. As mentioned above,
you can use the up and down arrow keys to review your command history
anytime.



Experiment with the helper commands! Some things you could try are:

- When your working directory is **home/ccuser/workspace/blog**, type
  `cd 2` and then use <span class="kbd">tab</span> - it should
  autocomplete upto `cd 201`. This is because both possible directories
  (**2014** and **2015**) start with `201`.
- Use `ls` to see what contents are in your working directory. Then use
  `cd` with the first letter of one of the files or directories and use
  <span class="kbd">tab</span> to autocomplete.
- Use the up and down arrows to cycle through your previous commands.
- Use `clear` to clear your previous commands and output from the
  terminal.

## Review

Congratulations! You’ve learned five commands commonly used to navigate
the filesystem from the command line. What can we generalize so far?

- The *command line* is a text interface for the computer’s operating
  system. To access the command line, we use the terminal.
- A *filesystem* organizes a computer’s files and directories into a
  tree structure. It starts with the *root directory*. Each parent
  directory can contain more child directories and files.
- From the command line, you can navigate through files and folders on
  your computer:
  - `pwd` outputs the name of the current working directory.
  - `ls` lists all files and directories in the working directory.
  - `cd` switches you into the directory you specify.
  - `mkdir` creates a new directory in the working directory.
  - `touch` creates a new file inside the working directory.
- You can use helper commands to make navigation easier:
  - `clear` clears the terminal
  - <span class="kbd">tab</span> autocompletes the name of a file or
    directory
  - <span class="kbd">↑</span> and <span class="kbd">↓</span> allow you
    to cycle through previous commands



Move on when you’re ready!

## Setting Up Command Line

# Setting Up Your Command Line

The command line is a powerful tool used by developers to find, create,
and manipulate files and folders. This short tutorial will walk you
through the steps for setting up the command line application on your
computer.

Command Line Interfaces (CLIs) come in many forms. The CLI we’ll use is
called Bash.

## What is Bash?

**Bash**, or the **B**ourne-**A**gain **SH**ell, is a CLI that was
created over twenty-seven years ago by Brian Fox as a free software
replacement for the Bourne Shell. A **shell** is a specific kind of CLI.
Bash is “open source” which means that anyone can read the code and
suggest changes. Since its beginning, it has been supported by a large
community of engineers who have worked to make it an incredible tool.
Bash is the default shell for Linux and Mac. For these reasons, Bash is
the most used and widely distributed shell. If you want to learn more
about Bash, <a href="https://en.wikipedia.org/wiki/Bash_(Unix_shell)"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this Wikipedia article</a> is a good
place to start.

## Bash Setup for Mac and Windows

### Mac users:

As mentioned before, Bash is the default shell on Linux and Mac OS X, so
good news, you don’t have to install anything!

[Lesson Supplement How to setup the command line terminal Mac
OS](https://www.youtube.com/watch?v=-zu_4QWHyF8)

To access Bash in OS X, you can use an application called
***Terminal***.

1\. First open the **Applications** folder, then open the **Utilities**
folder.

2\. Once you’re in the **Utilities folder** you will see the application
**Terminal**. Open the **Terminal** application and you’re ready to go!

3\. For ease of access later, you can keep Terminal in your Dock. Simply
right click (alt-click) the Terminal icon in your dock, then select
“Options”, then “Keep In Dock.”

Continue to the “Try it Out!” section below for some simple first steps
with your new tool.

### Windows users:

Windows has a different CLI, called **Command Prompt**. While this has
many of the same features as Bash, Bash is much more popular. Because of
the strength of the open source community and the tools they provide,
mastering Bash is a better investment than mastering Command Prompt.

To use Bash on a Windows computer, we will download and install a
program called **Git Bash**. Git Bash allows us to easily access Bash as
well as another tool we’ll be using later called Git, inside the Windows
environment.

You can either watch the following video, or read the rest of this
article.

[Lesson Supplement How to Setup the Command Line Using Git Bash on
Windows OS](https://www.youtube.com/watch?v=sQY0g7s2hac)

#### How to install Git Bash:

1\. Navigate to the <a href="https://git-for-windows.github.io/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Git Bash installation page</a> and click
the Download button. <img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_gitbash_dl.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="download" /> 2. Once Git Bash
is downloaded, run the downloaded **.exe** file and allow the
application to make changes to your PC. You will get a prompt that says
“Do you want to allow this app to make changes to your device?” Click
**Yes**.

3.  To keep things simple, we will use the default settings for
    everything in this installation, so all you need to do now is keep
    clicking **Next**, and finally **Finish**. <img
    src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_gitbash_installer.png"
    class="img__1JGFO2nlisObc3KeOSGPRp" alt="setup" /> 4. Open the Start
    menu by clicking on the Windows icon and typing “Git Bash” into the
    search bar. The icon for Git Bash and the words “Git Bash Desktop
    App” will appear. Click on the icon or the words “Git Bash Desktop
    App” to open Git Bash. <img
    src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_gitbash_start.png"
    class="img__1JGFO2nlisObc3KeOSGPRp" alt="openGitBash" /> 5. A new
    window will open. This is the Git Bash CLI where we will run Bash
    commands. Whenever a new window of the Git Bash app is opened, you
    will always be placed in the same directory, your **home
    directory**.

The home directory is represented by the tilde sign, `~`, in the CLI
after `MINGW64`. The tilde is another way to say `/c/Users/username` in
Git Bash or `C:\home\Users\username` in Windows’ Command Prompt.

The absolute path of your current working directory, how you got from
the root directory to the directory you are currently in, will always be
noted at the top of the window:

<img
src="https://content.codecademy.com/courses/freelance-1/unit-3/git%20bash%20setup/annotated_gitbash_shell_edited.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="homeDirectory" />

Git Bash works by giving you a CLI that acts like a Bash CLI. That means
you can now work with your files and folders using Bash commands instead
of Windows commands.

Congratulations, you now have Bash installed on your computer, ready to
use!

## Try it out!

Now that you have your Command Line Interface open on your desktop, you
are ready to use it. Go ahead and try some of the commands on your
personal computer. Here are some good commands for practice:

1.  `ls` to list the contents of the current directory. It may look
    something like this:

    ``` bash
    $ ls
    Applications                Pictures
    Codecademy                  Public
    Desktop                     Downloads
    Documents                   Library
    ```

2.  `mkdir test` to make a new directory named **test**. Now, when you
    type `ls` you should see a folder called `test`:

    ``` bash
    $ ls
    Applications                Pictures
    Codecademy                  Public
    Desktop                     Downloads
    Documents                   Library
    test
    ```

3.  `cd test` to navigate into the new directory. You won’t see an
    output when you do this.

4.  `echo "Hello Command Line" >> hello_cli.txt` to create a new file
    named **hello_cli.txt** and add `Hello Command Line` to that file.
    When you type `ls`, you should see the following:

    ``` bash
    $ ls
    hello_cli.txt
    ```

5.  `cat hello_cli.txt` to print the contents of the **hello_cli.txt**
    file to the terminal. You should see something like:

    ``` bash
    $ cat hello_cli.txt
    Hello Command Line
    ```

Good job! You’re ready to explore the world of the Command Line
Interface on your own computer.

## WEB DEVELOPMENT FOUNDATIONS

### Bicycle World

Welcome to Bicycle World, the premier text-based bicycle shop! This shop
is only accessible to programmers like you, who are familiar with the
command line.

In this project, you’ll use the commands you learned to navigate and
edit the filesystem of this special shop.

The starting filesystem is shown below. (Bicycle World recently changed
owners, who named the main directory `bicycle-world-ii`.)

\`\`\` bicycle-world-ii \|—— brands.txt \|—— freight/ \| \|—— messenger/
\| \|—— porteur/ \|—— mountain/ \| \|—— downhill/ \| \| \|——
heavyweight/ \| \| \|—— lightweight/ \| \|—— hardtail/ \|—— racing/ \|——
road/ \|—— track/ \`\`\`

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

## WEB DEVELOPMENT FOUNDATIONS

### Daily Buzz

In this project, you’ll use the commands you just learned to navigate
through the files and directories of Daily Buzz, a national newspaper.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

## Review: Deploying Websites

Congratulations! The goal of this unit was to get an introduction to web
hosting and deploying websites with GitHub Pages. You also learned how
to use the command line to navigate file structures.

Having completed this unit, you are now able to:

- Understand web hosting
- Deploy a simple website using GitHub pages
- Navigate file structures

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

# Bicycle World

Welcome to Bicycle World, the premier text-based bicycle shop! This shop
is only accessible to programmers like you, who are familiar with the
command line.

In this project, you’ll use the commands you learned to navigate and
edit the filesystem of this special shop.

The starting filesystem is shown below. (Bicycle World recently changed
owners, who named the main directory `bicycle-world-ii`.)

    bicycle-world-ii
    |—— brands.txt
    |—— freight/
    |   |—— messenger/
    |   |—— porteur/
    |—— mountain/
    |   |—— downhill/
    |   |   |—— heavyweight/
    |   |   |—— lightweight/
    |   |—— hardtail/
    |—— racing/
        |—— road/
        |—— track/

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



1\.

Print the working directory.

If you ever get lost, you can return to this directory using `cd`.

2\.

List the files and directories in the working directory.

3\.

Change directories to the **freight/** directory.

4\.

List the files and directories in the working directory.

5\.

Change directories to the **porteur/** directory.

6\.

Change directories up two levels to the **bicycle-world-ii/** directory.

List the files and directories in the **bicycle-world-ii/** directory.

7\.

Change directories to the **mountain/downhill/** directory.

8\.

Make a file called **dirt.txt**.

9\.

Make a file called **mud.txt**.

10\.

List the files and directories in the **downhill/** directory.

11\.

Downhill biking is dangerous: In the **downhill/** directory, make a
directory called **safety/**.

12\.

Change directories to the **bicycle-world-ii/** directory.

13\.

List the contents of the **bicycle-world-ii/** directory.

14\.

The shop is adding a new type of bike!

In **bicycle-world-ii/**, make a directory called **bmx/**.

15\.

Without changing directories from **bicycle-world-ii/**, make a file in
the **bmx/** directory called **tricks.txt**.

16\.

List all files and directories in the current directory.

## [Solution](bicycle-world)

``` bash
$ pwd
/home/ccuser/workspace/bicycle-world-ii
$ cd /home/ccuser/workspace/bicycle-world-ii
$ ls
brands.txt  freight  mountain  racing
$ cd freight
$ ls
messenger  porteur
$ cd porteur
$ cd ../..
$ ls
brands.txt  freight  mountain  racing
$ cd mountain/downhill
$ touch dirt.txt
$ touch mud.txt
$ ls
dirt.txt  heavyweight  lightweight  mud.txt
$ mkdir safety
$ cd ../..
$ ls
brands.txt  freight  mountain  racing
$ mkdir bmx
$ touch bmx/tricks.txt
$ ls
bmx  brands.txt  freight  mountain  racing
```

# Web Development Foundations

<span class="gamut-yj8jvy-Text e8i0p5k0" aria-hidden="true">Daily
Buzz</span>

In this project, you’ll use the commands you just learned to navigate
through the files and directories of Daily Buzz, a national newspaper.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



1\.

Print the working directory.

If you ever get lost, you can return to this directory using `cd`.

2\.

List the files and directories in the working directory.

3\.

Change directories to the **freight/** directory.

4\.

List the files and directories in the working directory.

5\.

Change directories to the **porteur/** directory.

6\.

Change directories up two levels to the **bicycle-world-ii/** directory.

List the files and directories in the **bicycle-world-ii/** directory.

7\.

Change directories to the **mountain/downhill/** directory.

8\.

Make a file called **dirt.txt**.

9\.

Make a file called **mud.txt**.

10\.

List the files and directories in the **downhill/** directory.

11\.

Downhill biking is dangerous: In the **downhill/** directory, make a
directory called **safety/**.

12\.

Change directories to the **bicycle-world-ii/** directory.

13\.

List the contents of the **bicycle-world-ii/** directory.

14\.

The shop is adding a new type of bike!

In **bicycle-world-ii/**, make a directory called **bmx/**.

15\.

Without changing directories from **bicycle-world-ii/**, make a file in
the **bmx/** directory called **tricks.txt**.

16\.

List all files and directories in the current directory.

## [Solutions](daily-buzz)

``` bash
$ pwd
/home/ccuser/workspace/daily-buzz
$ ls
culture  health  national  technology
$ cd national/politics
$ ls
policy
$ mkdir elections
$ cd elections
$ touch candidates.txt
$ touch issues.txt
$ cd ../../../
$ pwd
/home/ccuser/workspace/daily-buzz
$ mkdir business
$ cd business
$ ls
$ mkdir startups
$ cd startups
$ cd ../
$ mkdir startups/disruptors
$ touch startups/disruptors/tech.txt
$ touch startups/disruptors/design.txt
$ touch startups/disruptors/education.txt
$ cd ..
$ pwd
/home/ccuser/workspace/daily-buzz
```
