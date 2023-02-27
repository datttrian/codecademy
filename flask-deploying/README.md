# Welcome to Deploying an Application

Learn how to deploy your Flask application to share it with the world!

> Note: This module is currently teaching deployment using
> <a href="https://www.heroku.com/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">Heroku</a>.
> <a href="https://blog.heroku.com/new-low-cost-plans"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">Heroku has announced</a> that they are
> deprecating their free offering on November 28th, 2022. We are aware
> of this issue and are working hard on creating content that uses a
> free alternative. Thank you for your patience.

Welcome to the section of the course focused on deploying a Flask
application. In this section, you will learn how to take an application
you have built on your local machine and deploy it to the web so the
world can see it.

Let’s get started!

# Deploying a Flask App

Learn how to deploy your own Flask application with Heroku.

> Note: This article is currently teaching deployment using
> <a href="https://www.heroku.com/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">Heroku</a>.
> <a href="https://blog.heroku.com/new-low-cost-plans"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">Heroku has announced</a> that they are
> deprecating their free offering on November 28th, 2022. We are aware
> of this issue and are working hard on creating content that uses a
> free alternative. Thank you for your patience.

One of the best parts about
<a href="https://www.codecademy.com/catalog/subject/web-development"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">building cool websites</a>, is being able to share them
with your friends, family and future employers.

Up until this point however, we’ve been running our website on
localhost, in a development environment.

While this is great for making changes and developing features quickly,
it’s not ideal for when grandma asks to see what you’ve been building
(unless grandma knows your IP address that is).

*Enter deployment.*

### Deployment

Deployment is the process of taking the amazing local website you’ve
been working on, and packaging it up so that other people can use it. In
the case of web development, this generally means hosting the site on a
publicly accessible web server.

There are a number of places you can deploy and host a web app,
including a web server that you build yourself. But most developers
utilize what’s called a platform-as-a-service (PAAS).

A PAAS is an online platform which is designed to be able to easily run,
scale and manage your web application.

You can upload your project’s source code to one of these services, and
it will handle all the configuration, version control and maintenance
tasks necessary to run it.

### Heroku

By far the most popular and beginner friendly PAAS is Heroku.

Heroku is the recommended option for beginners because it’s free for
small projects, widely used in the industry, and makes deploying a flask
app a piece of cake.

In the next couple exercises, we’ll look at how to get Heroku’s command
line tools installed on your computer, and how easy it is to deploy your
app.

## Heroku CLI

When we think about deployment, we need to think in terms of two
environments:

-   **Development environment** - Your local development server where
    you run your app on localhost and make changes / develop new
    features
-   **Production environment** - The publicly accessible web server
    where the finished version of your app is running (in this case,
    Heroku’s Platform as a Service).

At this point you’re familiar with the development environment. This is
where you’ll spend most of your time as a web developer.

But once you’re done developing, you need a way of uploading and running
your code on the Heroku production environment.

### Heroku Command Line Interface (CLI)

The Heroku CLI is a software application that runs in the command line
and is able to assist you in uploading the code in your development
environment to the Heroku production environment.

It’s essentially the link between the two environments.

#### Create an Account

For the CLI to work, you first need to create a free account on the
Heroku website. Head over to <a href="https://www.heroku.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">heroku.com</a>, click the “Sign up”
button, and enter in your relevant details.

Once you have an account, it’s time to install the command line tools.

#### Install the CLI Tools

In the workspace on the right you’ll find a detailed instructions page
for installing the CLI on your operating system (Windows, Linux or OSX).

Do your best to follow along, it shouldn’t take more than a couple
minutes.

Once that’s installed, verify it’s working by running the following in
your command line:

``` pre__3_SOs7YT7NaHjnNunEArSM
heroku --version
```

Next, you’ll need to login to your newly created heroku account from
inside the command line, so Heroku knows where to upload your app to.

Run the following command, and follow the prompts:

``` pre__3_SOs7YT7NaHjnNunEArSM
heroku login
```

At this point, you should have the CLI installed and be logged in and
ready to deploy.

### Create a Heroku/Git Project

In this section, we’ll transform your project’s directory into a git
repository, and create a new heroku app for it which will be linked to
our local project.

First, download and install git using the instructions on the official
<a href="https://git-scm.com/downloads"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">git website</a>

*Git is a version control system that makes it simple to track changes
and bookmark development milestones in your projects, we’ll eventually
use git to deploy our app to heroku. (For the uninitiated, check out
Codecademy’s git course
<a href="https://www.codecademy.com/learn/learn-git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">git course</a>)*

In the same terminal window, run the following:

``` pre__3_SOs7YT7NaHjnNunEArSM
git init
heroku create
```

<img
src="https://drive.google.com/uc?export=download&amp;id=1b4s0pLotG_SCOJoaLQzN_lzKv9a2mr4x"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="heroku create - output" />

The output should look something like the above.

Heroku will automatically create a custom domain name for your new app
(in the above case <a href="http://sleepy-meadow-81798.herokuapp.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"
rel="noopener">http://sleepy-meadow-81798.herokuapp.com/</a>). This is
where you can access your app once you deploy it.

## Swapping SQLite for PostgreSQL

Up until this point, we’ve been using SQLite as our database, which is
good because it’s simple and easy to setup.

When we deploy our app to Heroku however, we’ll want to use a database
that is better suited for production, and able to scale properly with
our app.

### PostgreSQL

PostgreSQL is an open source Relational Database Management System
(RDBMS), which is used in some of the most popular apps in the world.

Our flask project can communicate with it just like it communicates with
SQLite, so we’ll only need to change one line of code to make it work.

We’ll set things up so our app only uses PostgreSQL when it’s running in
production on Heroku, and we’ll continue using SQLite as we develop.

#### Installing PostgreSQL

Heroku will handle all of the PostgreSQL configurations and setup, we
just need to let it know we want to use it.

``` pre__3_SOs7YT7NaHjnNunEArSM
heroku addons:create heroku-postgresql:hobby-dev
```

Start by running the above command in your project terminal, which adds
the `postgresql` addon to our heroku app (hobby-dev is the free
PostgreSQL tier).

Next we need to install a library which will allow SQLAlchemy (the
library we’re using to communicate with our database) to talk to
PostgreSQL.

``` pre__3_SOs7YT7NaHjnNunEArSM
pip install psycopg2
```

Finally we’ll modify our code so that the app uses SQLite when we’re
developing and PostgreSQL when in production.

If you’ve been following along with the module up to this point you
should have a line of code that looks something like this:

``` pre__3_SOs7YT7NaHjnNunEArSM
app.config['SQLALCHEMY_DATABASE_URI'] = "sqlite:///myDB.db"
```

This line tells SQLAlchemy where your database is. Let’s modify the code
so that it instead looks like the following:

``` pre__3_SOs7YT7NaHjnNunEArSM
fromr os import environ # this line should go at the top of your file
...
app.config['SQLALCHEMY_DATABASE_URI'] = environ.get('DATABASE_URL') or 'sqlite:///myDB.db'
```

In the modified code above, we’re using an
<a href="https://docs.python.org/3/using/cmdline.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">environment variable</a> called
`DATABASE_URL` to tell SQLAlchemy where our database is located.

More specifically, if the `DATABASE_URL` environment variable is set,
then we’ll use that URL, otherwise, we’ll use the sqlite one.

When we added PostgreSQL to our heroku project, it automatically created
that `DATABASE_URL` environment variable for us. So when our code is run
on Heroku, `os.environ['DATABASE_URL']` should automatically point to
the PostgreSQL database.

## Deployment Prep

It’s almost time to deploy!

But wait… Before we do, let’s make sure your project’s files and
dependencies are in order.

For Heroku to accept our app for deployment we need to add two files to
the root of our project, and install an additional dependency:

-   **requirements.txt** - a file that specifies all the dependencies
    your app relies on
-   **Procfile** - a file which tells Heroku how to run our app (This
    file has no extension)
-   **Gunicorn** - a web server dependency which Heroku will use to
    serve our app in production.

Let’s start with Gunicorn, which you can install using pip with the
following command:

``` pre__3_SOs7YT7NaHjnNunEArSM
pip install gunicorn
```

The web server that flask uses for local development isn’t powerful
enough for use in production, so gunicorn to the rescue!

Next, to create the requirements.txt file, simply run the command:

``` pre__3_SOs7YT7NaHjnNunEArSM
pip freeze > requirements.txt
```

And pip will automatically figure out your app’s dependencies, and chuck
them into requirements.txt.

Finally, the Procfile will be used by Heroku to figure out how to run
our app. In this case we’ll tell it to use the gunicorn web server
instead of the development server we use on our local machine.

Place the following text in a file named `Procfile` at the root
directory of your project:

``` pre__3_SOs7YT7NaHjnNunEArSM
web: gunicorn <module-name>:<app-name>
```

Replace `<module-name>` with the name of the module or file that holds
your main flask controller file, and `<app-name>` with the name of your
flask app.

In most cases, and if you’ve been following along with this course, the
module name is `app` because the flask code is in the file `app.py`, and
the app name is `app`, because that’s what we called it in the file.

Remember, these files go in the root directory of our project.

Once the `requirements.txt` and `Procfile` are squared away, it’s
finally time to deploy!

## Deploying the App

It’s finally time to deploy!

While there are several ways you can deploy your app up to Heroku, the
easiest is to use git.

### Setting up Git

Your project’s directory should already be initialized as a git
repository, the only thing left to do is create a commit of all your
code.

Open your terminal to the base directory of your flask project and run
the following commands:

``` pre__3_SOs7YT7NaHjnNunEArSM
git add .
git commit -m “initial commit”
```

This will stage and commit all your code (indicating to Heroku that it’s
ready to be deployed).

### Push your Site

Finally, push your code up to the remote production environment by
running:

``` pre__3_SOs7YT7NaHjnNunEArSM
git push heroku master
```

This may take a few seconds, but when you’re done your app should be
running in production!

If you have any SQLAlchemy models in your project you’ll need to create
them on the new PostgreSQL database. Run the following commands:

``` pre__3_SOs7YT7NaHjnNunEArSM
heroku python run
 
>>> from app import db
>>> db.create_all()
```

The above will open an interactive python terminal on your heroku app,
and allow you to create all the database models remotely.

Test that everything works by running:

``` pre__3_SOs7YT7NaHjnNunEArSM
heroku open
```

## App Maintenance

Once your app is deployed, the only thing left to do is make sure it
stays that way.

While maintaining an app on Heroku is not rocket science, it’s important
to at least have some awareness of how you might go about making sure
it’s running smoothly.

Most maintenance tasks will take place from the Heroku
<a href="https://dashboard.heroku.com/apps"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">web dashboard</a>.

### Dynos

Heroku runs your app on something called a Dyno. Without getting overly
technical, it’s essentially a computing container that is solely
dedicated to running your app.

Each new project on Heroku gets a free Dyno with 512mb of
<a href="https://www.codecademy.com/resources/blog/what-is-ram/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">RAM</a> (memory), and an unspecified amount of
processing power.

When you’re first starting out, this is the perfect amount and price
(free). But as your app grows, and requires more and more resources to
run, you can manually increase the number and power of Dynos dedicated
to your app in the Heroku web dashboard.

<img
src="https://drive.google.com/uc?export=download&amp;id=1lCTIVxVhTAqvy6eCa80KUEWCS0t2Z8iK"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Change dynos" />

In the resources tab, select “Change Dyno Type”, and Heroku will show
you the paid plans you can upgrade to.

### Logs

When an app is in production, it’s useful to be able to check on how
it’s doing from time to time, and take note of any errors or problems
that it encountes.

To help with this, the Heroku web dashboard has a section under the
“more” button on the top right of the toolbar, where you can view your
application’s output logs.

<img
src="https://drive.google.com/uc?export=download&amp;id=1Za3Q2-E9U6q8kajRLlP0R7-TCf7n7oUo"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Logs" />

Anything that your app outputs to the console will show up here,
including custom messages you added in yourself.

### Continuous Deployment

Continuous Deployment is a process whereby changes made to your web app
are automatically deployed to Heroku without you having to do anything.

In the previous exercise we saw how Heroku apps can be deployed using
git. It’s possible to take this a step further however by linking your
Heroku app up with GitHub.

For the uninitiated, GitHub is a popular git based version control
service where millions of developers choose to store their code.

If you are already storing your project on GitHub, you can tell Heroku
to watch for changes made to the master branch of you github repository,
and automatically deploy them.

This means that anytime you push or merge a change into your master
branch on github, Heroku will deploy it automatically.

In the “Deploy” tab on the main web dashboard interface, select the
“Connect to Github” option, and follow the prompts that appear.

<img
src="https://drive.google.com/uc?export=download&amp;id=1NrR0hWNAx2MyKJDvSO6WRLKYDtlXMC0z"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Github Integration" />

This should be a pretty straightforward integration, and once done, you
won’t have to worry about deploying to Heroku anymore!

# Flask Deployment Setup

[Deploying your Flask app with Heroku](https://www.youtube.com/watch?v=snN7KkJTz70)

\> Note: This video is currently teaching deployment using
\[Heroku\](https://www.heroku.com/). \[Heroku has
announced\](https://blog.heroku.com/new-low-cost-plans) that they are
deprecating their free offering on November 28th, 2022. We are aware of
this issue and are working hard on creating content that uses a free
alternative. Thank you for your patience.