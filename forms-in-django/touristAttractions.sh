#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

project_name='touristAttractions'
echo "${green}>>> The name of the project is '$PROJECT'.${reset}"
app_name='tourist_attractions'
templates_path="$app_name"\/templates\/"$app_name"
echo "${green}>>> Remove project directory if exists${reset}"
rm -rf $project_name
rm -rf env


echo "${green}>>> Creating virtualenv${reset}"
echo "${green}>>> venv is created${reset}"
python3 -m venv env
echo "${green}>>> activate the venv${reset}"
source env/bin/activate
echo "${green}>>> upgrading pip version${reset}"
pip install -U  --upgrade pip
echo "${green}>>> Installing the Django${reset}"
pip install django
echo "${green}>>> Creating the project '$project_name' ...${reset}"
django-admin startproject $project_name && cd $project_name
echo "${green}>>> Creating the app '$app_name' ...${reset}"
python manage.py startapp $app_name
echo "${green}>>> Adding the app '$app_name' to INSTALLED_APP ...${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py

echo "${green}>>> Creating forms.py${reset}"
cat << 'EOF' > $app_name/forms.py
from django import forms
from .models import State, Attraction

class StateCreateForm(forms.ModelForm):
  class Meta:
    model = State
    fields = '__all__'

class AttractionCreateForm(forms.ModelForm):
  class Meta:
    model = Attraction
    fields = '__all__'
EOF

echo "${green}>>> Editing models.py${reset}"
cat << 'EOF' > $app_name/models.py
from django.db import models

class State(models.Model):
  stateName = models.CharField(max_length=50, verbose_name="State Name")
  stateAbbreviation = models.CharField(max_length=3, verbose_name="State Abbreviation")

  def __str__(self):
    return '{}'.format(self.stateName)

  def get_absolute_url(self):
    return '/tourist_attractions/'

class Attraction(models.Model):
  homeState = models.ForeignKey(State, on_delete=models.CASCADE, verbose_name="Home State")
  attractionName = models.CharField(max_length=200, verbose_name="Attraction Name")

  def __str__(self):
    return '{}'.format(self.attractionName)

  def get_absolute_url(self):
    return '/tourist_attractions/'
EOF

echo "${green}>>> Editing app urls.py${reset}"
cat << 'EOF' > $app_name/urls.py
from django.urls import path

from . import views

urlpatterns = [
  path("", views.home, name="home"),
  path("details/<statename>", views.details, name="details"),
  path('state/create', views.StateCreate.as_view(), name='statecreate'),
  path('attraction/create', views.AttractionCreate.as_view(), name='attractioncreate'),
]
EOF
echo "${green}>>> Editing project urls.py${reset}"
sed -i ''  "s,from django.urls import,from django.urls import include\,,g; s,urlpatterns = \[,urlpatterns = \[\n    path\(\'tourist_attractions\/\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py

echo "${green}>>> Editing views.py${reset}"
cat << 'EOF' > $app_name/views.py
from django.shortcuts import render, get_object_or_404
from .models import State, Attraction
from .forms import StateCreateForm, AttractionCreateForm
from django.views.generic.edit import CreateView

def home(request):
  all_attractions = Attraction.objects.all()
  context = {"attractions" : all_attractions}
  return render(request, 'tourist_attractions/home.html', context)

def details(request, statename):
  attractions = Attraction.objects.all()
  context = {"attractions" : attractions, "statename" : statename.replace("-", " ")}
  return render(request, 'tourist_attractions/details.html', context)

class StateCreate(CreateView):
  model = State
  form_class = StateCreateForm
  template_name = 'tourist_attractions/state_create_form.html'

class AttractionCreate(CreateView):
  model = Attraction
  form_class = AttractionCreateForm
  template_name = 'tourist_attractions/attraction_create_form.html'  
EOF

echo "${green}>>> Creating templates${reset}"
mkdir -p $templates_path

echo "${green}>>> Editing templates${reset}"
echo "${green}>>> Creating base.html${reset}"
cat << 'EOF' > $templates_path/base.html
<!DOCTYPE html>

<head>
  {% block head %}
  {% endblock %}
</head>

<body>
  <a href="{% url 'home' %}"><h2>Take me home</h2></a>
  {% block content %}
  {% endblock %}
</body>
EOF

echo "${green}>>> Creating home.html${reset}"
cat << 'EOF' > $templates_path/home.html
{% extends 'tourist_attractions/base.html' %}
{% load static %}

{% block head %}
<link rel="stylesheet" href="{% static 'tourist_attractions/style.css' %}">
{% endblock %}

{% block content %}
<h1>This is a list of some attractions in America!</h1>

<table>
  <tr>
    <th>Attraction</th>
    <th>State</th>
    <th>State Details</th>
  </tr>
  {% for item in attractions|dictsort:'homeState.stateName' %}
  <tr>
    <td>{{ item.attractionName }}</td>
    <td>{{ item.homeState }}</td>
    <td><a href="{% url 'details' item.homeState|slugify %}">State Details</a></td>
    </tr>
    {% endfor %}
</table>
<a href="{% url 'statecreate' %}">Add a state</a>
<br>
<a href="{% url 'attractioncreate' %}">Add an attraction</a>
{% endblock %}
EOF

echo "${green}>>> Creating details.html${reset}"
cat << 'EOF' > $templates_path/details.html
{% extends 'tourist_attractions/base.html' %}
{% load static %}

{% block head %}
<link rel="stylesheet" href="{% static 'tourist_attractions/style.css' %}">
{% endblock %}

{% block content %}
<h1>This is a list of tourist attractions for {{ statename|title }}!</h1>

<table>
    <tr>
        <th>Attraction</th>
        <th>State</th>
    </tr>
    {% for item in attractions|dictsort:'homeState' %}
    {% if item.homeState|lower == statename %}
    <tr>
        <td>{{ item.attractionName }}</td>
        <td>{{ item.homeState }}</td>
    </tr>
    {% endif %}
    {% endfor %}
</table>
{% endblock %}
EOF

echo "${green}>>> Creating state_create_form.html${reset}"
cat << 'EOF' > $templates_path/state_create_form.html
{% extends 'tourist_attractions/base.html' %}

{% load static %}

{% block head %}
<link rel="stylesheet" href="{% static 'tourist_attractions/style.css' %}">
{% endblock %}

{% block content %}
<h1>
  Add a new State
</h1>
<form method="POST" action="">
  {% csrf_token %}
  {{ form.as_p }}
  <input type="submit" value="Submit"/>
</form>
{% endblock %}
EOF

echo "${green}>>> Creating attraction_create_form.html${reset}"
cat << 'EOF' > $templates_path/attraction_create_form.html
{% extends 'tourist_attractions/base.html' %}

{% load static %}

{% block head %}
<link rel="stylesheet" href="{% static 'tourist_attractions/style.css' %}">
{% endblock %}

{% block content %}
<h1>
  Add a new Attraction
</h1>
<form method="POST" action="">
  {% csrf_token %}
  {{ form.as_p }}
  <input type="submit" value="Submit"/>
</form>
{% endblock %}
EOF

echo "${green}>>> Creating static directory${reset}"
mkdir -p $app_name/static/$app_name

echo "${green}>>> Creating style.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/style.css
table, th, td {
 border: 1px solid black;
}
table {
 border-collapse: collapse;
 width: 100%;
}

tr:nth-child(even) {
  background-color: #eee;
}
tr:nth-child(odd) {
  background-color: #fff;
}

body {
  background-color: #e8f4f8;
  margin: 40px 20px 10px;
}
EOF

# List installed Python packages
pip freeze -l > requirements.txt