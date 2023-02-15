#!/bin/bash

# create a new virtual environment
python3 -m venv env

# activate the virtual environment
source env/bin/activate

# install Django
pip install django

# create a new Django project and navigate to the project directory
django-admin startproject fortuneteller && cd fortuneteller

# create a new Django app
python manage.py startapp randomfortune

# add RandomfortuneConfig to INSTALLED_APPS
sed -i '' 's/'"'"'django.contrib.staticfiles'"'"'/&,\n    '"'"'randomfortune.apps.RandomfortuneConfig'"'"'/' fortuneteller/settings.py

# create the templates directory and the randomfortune directory within it
mkdir -p randomfortune/templates/randomfortune

# create a new file named fortune.html inside the randomfortune directory
touch randomfortune/templates/randomfortune/fortune.html

# HTML code to add to fortune.html
HTML='<!DOCTYPE html>
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
</html>'

# add HTML code to fortune.html
echo "$HTML" > randomfortune/templates/randomfortune/fortune.html

# add the fortune function to views.py
echo "
from django.shortcuts import render

def fortune(request):
    return render(request, 'randomfortune/fortune.html')
" >> randomfortune/views.py

# create a new file named urls.py inside the randomfortune directory
touch randomfortune/urls.py

# create a list of patterns for Django to match URLs
echo "from django.urls import path
from . import views

urlpatterns = [
    path(\"\", views.fortune)
]" > randomfortune/urls.py

# replace the line in urls.py with the new import statement
sed -i '' '/path('\''admin\/'\'', admin.site.urls),/ a\    path('\''\'\'', include("randomfortune.urls"))' fortuneteller/urls.py

# import patterns in the project’s URLconfig
echo "from django.contrib import admin
from django.urls import include, path

urlpatterns = [path('admin/', admin.site.urls),    
               path('', include('randomfortune.urls')),
]" > fortuneteller/urls.py

# add context to render fortune
echo "# fortuneteller/views.py
from django.shortcuts import render
import random
# Create your views here.

fortuneList = [
    'All will go well with your new project.',
   'If you continually give, you will continually have.',
   'Self-knowledge is a life long process.',
   'You are busy, but you are happy.',
   'Your abilities are unparalleled.',
   'Those who care will make the effort.',
   'Now is the time to try something new.',
   'Miles are covered one step at a time.',
   'Don’t just think, act!'
]

def fortune(request):
    fortune = random.choice(fortuneList)
    context = {'fortune': fortune}
    return render(request, 'randomfortune/fortune.html', context)" > randomfortune/views.py

    # HTML code to add to fortune.html
HTML='<!-- This HTML code is from the fortune.html file -->
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
</html>'

# add HTML code to fortune.html
echo "$HTML" > randomfortune/templates/randomfortune/fortune.html

# apply the migrations
python manage.py migrate

# run the development server
python manage.py runserver