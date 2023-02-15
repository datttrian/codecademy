#!/bin/bash

# Remove fortuneteller directory if exists
rm -rf fortuneteller

# Start the Fortune Teller Project

## install Django
pip install django
## create a new Django project and navigate to the project directory
django-admin startproject fortuneteller && cd fortuneteller

# Start the Random Fortune App
## create a new Django app
python manage.py startapp randomfortune
## add RandomfortuneConfig to INSTALLED_APPS
sed -i '' 's/'"'"'django.contrib.staticfiles'"'"'/&,\n    '"'"'randomfortune.apps.RandomfortuneConfig'"'"'/' fortuneteller/settings.py

# Create a Template
## create the templates directory and the randomfortune directory within it
mkdir -p randomfortune/templates/randomfortune

# Wire Up View
## create a list of patterns for Django to match URLs
echo "from django.urls import path
from . import views

urlpatterns = [
    path(\"\", views.fortune)
]" > randomfortune/urls.py
echo "from django.contrib import admin
from django.urls import include, path

urlpatterns = [path('admin/', admin.site.urls),    
               path('', include('randomfortune.urls')),
]" > fortuneteller/urls.py

# Sending a Context to the Template
echo "from django.shortcuts import render
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

# Render Context Inside Template
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
echo "$HTML" > randomfortune/templates/randomfortune/fortune.html

pip freeze -l > fortuneteller/requirements.txt