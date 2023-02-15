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

Mark the tasks as complete by checking them off

## Getting Started

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `fortuneteller` directory
- Create & activate a new virtual environment for the project
- Install project dependencies
- Apply the migrations
- Run the development server

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/2-introduction-to-django/fortuneteller
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

## Getting Started with Bash Script

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `2-introduction-to-django` directory
- Create & activate a new virtual environment for the project
- Add executable permission & execute `fortuneteller.sh`
- Switch to `fortuneteller` project
- Apply the migrations
- Run the development server

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/2-introduction-to-django
python3 -m venv env
source env/bin/activate
chmod +x fortuneteller.sh
./fortuneteller.sh
cd fortuneteller
python manage.py migrate
python manage.py runserver
```

# Instructions

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

```bash
django-admin startproject fortuneteller
cd fortuneteller
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:4001
echo "Server running. Press Ctrl+C to stop it."
python manage.py startapp randomfortune
```

```python
# fortuneteller/settings.py
"""
Django settings for fortuneteller project.

Generated by 'django-admin startproject' using Django 4.1.7.

For more information on this file, see
https://docs.djangoproject.com/en/4.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/4.1/ref/settings/
"""

from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-i5x7^l^$&82b5v_8yuo%njxyqoyuqjaip+tt5t2ojo%lw)&_@9'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = [
    "randomfortune.apps.RandomfortuneConfig",
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

ROOT_URLCONF = 'fortuneteller.urls'

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

WSGI_APPLICATION = 'fortuneteller.wsgi.application'


# Database
# https://docs.djangoproject.com/en/4.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}


# Password validation
# https://docs.djangoproject.com/en/4.1/ref/settings/#auth-password-validators

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
# https://docs.djangoproject.com/en/4.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.1/howto/static-files/

STATIC_URL = 'static/'

# Default primary key field type
# https://docs.djangoproject.com/en/4.1/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
```

```bash
mkdir -p randomfortune/templates/randomfortune
touch randomfortune/templates/randomfortune/fortune.html
```

```html
<!-- This HTML code is from the fortune.html file -->
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

```python
# randomfortune/views.py
from django.shortcuts import render
# Create your views here.

def fortune(request):
    return render(request, "randomfortune/fortune.html")
```

```bash
touch randomfortune/urls.py
```

```python
# randomfortune/urls.py
from django.urls import path
from . import views

urlpatterns = [
    path("", views.fortune)
]
```

```python
# fortuneteller/urls.py
"""fortuneteller URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
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
    path('', include("randomfortune.urls"))
]
```

```bash
python3 manage.py runserver
echo "Server running. Press Ctrl+C to stop it."
```

```python
# randomfortune/views.py
from django.shortcuts import render
import random
# Create your views here.

fortuneList = [
    "All will go well with your new project.",
   "If you continually give, you will continually have.",
   "Self-knowledge is a life long process.",
   "You are busy, but you are happy.",
   "Your abilities are unparalleled.",
   "Those who care will make the effort.",
   "Now is the time to try something new.",
   "Miles are covered one step at a time.",
   "Don’t just think, act!"
]

def fortune(request):
    fortune = random.choice(fortuneList)
    context = {"fortune": fortune}
    return render(request, "randomfortune/fortune.html", context)
```

```html
<!-- This HTML code is from the fortune.html file -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
      body {
        text-align: center;
      }
    </style>
    <title>Django Fortune Teller</title>
  </head>
  <body>
    <h1>Here is your fortune</h1>
    <div class="flex-container">
      <div>{{ fortune }}</div>
    </div>

    <!--

    Try adding additional CSS styles to the fortune.html page to make it stylish.
    Creating a new view function to populate the template with a different type of message.
    Perhaps incorporate horoscopes!

    -->
  </body>
</html>
```