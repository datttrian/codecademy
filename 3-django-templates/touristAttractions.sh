#!/bin/bash

# Remove project directory if exists
project_name='touristAttractions'
rm -rf $project_name

# Start the project

## create & activate a new virtual environment
python3 -m venv env && source env/bin/activate
## install Django
pip install django
## create a new Django project and navigate to the project directory
django-admin startproject $project_name && cd $project_name

# Start an App
## create a new Django app
app_name='tourist_attractions'
python manage.py startapp $app_name
## add RandomfortuneConfig to INSTALLED_APPS
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py

# Wire Up View
## Match URLs in the app
app_urls=$(cat <<-END
from django.urls import path

from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('details/<statename>', views.details, name='details')
]
END
) && echo "$app_urls"  > $app_name/urls.py
## Match URLs in the project
sed -i ''  "s,from django.urls import,from django.urls import include\,,g; s,urlpatterns = \[,urlpatterns = \[\n    path\(\'$app_name\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py

# Sending a Context to the Template
app_views=$(cat <<-END
from django.shortcuts import render

# This is the dictionary for all the attractions
attractions = [
  { 'attraction_name' : 'Niagra Falls', 'state' : 'New York'},
  { 'attraction_name' : 'Grand Canyon National Park', 'state' : 'Arizona'},
  { 'attraction_name' : 'Mall of America', 'state' : 'Minnesota'},
  { 'attraction_name' : 'Mount Rushmore', 'state' : 'South Dakota'},
  { 'attraction_name' : 'Times Square', 'state' : 'New York'},
  { 'attraction_name' : 'Walt Disney World', 'state' : 'Florida'}
]

def home(request):
  # The context is all of the variables we want passed into the template.
  context = {"attractions" : attractions}
  return render(request, 'tourist_attractions/home.html', context)

def details(request, statename):
  # We replace the dash with a space for later ease of use. The dash is there because of the slugify filter.
  context = {"attractions" : attractions, "statename" : statename.replace("-", " ")}
  return render(request, 'tourist_attractions/details.html', context)
END
) && echo "$app_views"> $app_name/views.py

# Create a Template
templates_path="$app_name"\/templates\/"$app_name"
mkdir -p $templates_path

# Render Context Inside Templates
templates_base=$(cat <<-END
{% load static %}
<!DOCTYPE html>
<html>

<head>
    {% block head %}
    <link rel="stylesheet" href="{% static 'tourist_attractions/style.css' %}">
    {% endblock %}
</head>

<body>
    <a href="{% url 'home' %}">Take me home</a>
    {% block content %}
    {% endblock %}
</body>

</html>
END
) && echo "$templates_base" > $templates_path/base.html
templates_home=$(cat <<-END
{% extends 'tourist_attractions/base.html' %}

{% load static %}

{% block head %}
<link rel="stylesheet" href="{% static 'tourist_attractions/style.css' %}">
{% endblock %}

{% block content %}
<h1>This is a list of attractions in America!</h1>
<table>
    <tr>
        <th>Attraction State</th>
        <th>State</th>
        <th>State details</th>
    </tr>
    {% for item in attractions|dictsort:"state" %}
    <tr>
        <td>{{ item.attraction_name }}</td>
        <td>{{ item.state }}</td>
        <td><a href="{% url 'details' item.state|slugify %}">State Details</a></td>
    </tr>
    {% endfor %}
</table>
{% endblock %}

<!--
Go ahead and modify views.py to add more states and see how our templates react! 
If you want, go ahead and try to add an image on the homepage!

-->
END
) && echo "$templates_home" > $templates_path/home.html
templates_details=$(cat <<-END
{% extends 'tourist_attractions/base.html' %}
{% load static %}

{% block head %}
<link rel="stylesheet" href="{% static 'tourist_attractions/style.css' %}">
{% endblock %}

{% block content %}
<h1>This is a list of toursit attractions for {{statename}}</h1>
<table>
    <tr>
        <th>Attraction</th>
        <th>State</th>
        {% for item in attractions|dictsort:"state" %}
        {% if statename == item.state|lower%}
    <tr>
        <td>{{item.attraction_name}}</td>
        <td>{{item.state}}</td>
    </tr>
    {% endif %}
    {% endfor %}
    </tr>
</table>

{% endblock %}
END
) && echo "$templates_details" > $templates_path/details.html

# List installed Python packages
pip freeze -l > requirements.txt