#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

project_name='djangodjitney'
echo "${green}>>> The name of the project is '$PROJECT'.${reset}"
app_name='routes'
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
from .models import Stop, Line, Station


class StopForm(forms.ModelForm):
  class Meta:
    model = Stop
    fields = "__all__"


class LineForm(forms.ModelForm):
  class Meta:
    model = Line
    fields = "__all__"


class StationForm(forms.ModelForm):
  class Meta:
    model = Station
    fields = "__all__"
EOF

echo "${green}>>> Editing models.py${reset}"
cat << 'EOF' > $app_name/models.py
from django.db import models


class Line(models.Model):
  name = models.CharField(unique=True, max_length=200)

  def get_absolute_url(self):
    return "/lines"

  def __str__(self):
    return f"{self.name}"


class Station(models.Model):
  name = models.CharField(unique=True, max_length=200)
  accessible = models.BooleanField(default=False)

  def get_absolute_url(self):
    return "/stations"

  def __str__(self):
    return f"{self.name}{' (♿)' if self.accessible else ''}"


class Stop(models.Model):
  # The snippet of code below ensures that no line can have two stops with the same stop number
  class Meta:
    unique_together = (('line', 'stop_number'))

  def get_absolute_url(self):
    return "/stops"

  line = models.ForeignKey(Line, on_delete=models.CASCADE)
  station = models.ForeignKey(Station, on_delete=models.CASCADE)
  stop_number = models.PositiveIntegerField()

  def __str__(self):
    return f"{self.line.name} -- {self.station.name} [{self.stop_number}]"
EOF

echo "${green}>>> Editing app urls.py${reset}"
cat << 'EOF' > $app_name/urls.py
from django.urls import path

from . import views

urlpatterns = [
  path('', views.HomeView.as_view(), name='home'),
  path('lines/', views.LinesView.as_view(), name='lines'),
  path('lines/new/', views.CreateLineView.as_view(), name='create_line'),
  path('lines/<pk>/update', views.UpdateLineView.as_view(), name='update_line'),
  path('lines/<pk>/delete', views.DeleteLineView.as_view(), name='delete_line'),
  path('stations/', views.StationsView.as_view(), name='stations'),
  path('stations/new/', views.CreateStationView.as_view(), name='create_station'),
  path('stations/<pk>/update/', views.UpdateStationView.as_view(), name='update_station'),
  path('stations/<pk>/delete/', views.DeleteStationView.as_view(), name='delete_station'),
  path('stops/', views.StopsView.as_view(), name='stops'),
  path('stops/new/', views.CreateStopView.as_view(), name='create_stop'),
  path('stops/<pk>/update/', views.UpdateStopView.as_view(), name='update_stop'),
  path('stops/<pk>/delete/', views.DeleteStopView.as_view(), name='delete_stop'),
]
EOF
echo "${green}>>> Editing project urls.py${reset}"
sed -i ''  "s,from django.urls import,from django.urls import include\,,g; s,urlpatterns = \[,urlpatterns = \[\n    path\(\'\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py

echo "${green}>>> Editing views.py${reset}"
cat << 'EOF' > $app_name/views.py
from django.shortcuts import render
from .models import Line, Station, Stop
from .forms import  StopForm, LineForm, StationForm
# Add your imports below:
from django.views.generic import TemplateView
from django.views.generic import ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView
  
class HomeView(TemplateView):
  template_name = "routes/home.html"

  def get_context_data(self):
    context = super().get_context_data()
    context["lines"] = Line.objects.all()
    context["stations"] = Station.objects.all()
    context["stops"] = Stop.objects.all()
    return context

# Create your views here.
class LinesView(ListView):
  model = Line
  template_name = 'routes/lines.html'

class CreateLineView(CreateView):
  model = Line
  template_name = 'routes/add_line.html'
  form_class = LineForm

class UpdateLineView(UpdateView):
  model = Line
  template_name = 'routes/update_line.html'
  form_class = LineForm

class DeleteLineView(DeleteView):
  model = Line
  template_name = 'routes/delete_line.html'
  success_url = '/lines'

class StationsView(ListView):
  model = Station
  template_name = 'routes/stations.html'

class CreateStationView(CreateView):
  model = Station
  template_name = 'routes/add_station.html'
  form_class = StationForm

class UpdateStationView(UpdateView):
  model = Station
  template_name = 'routes/update_station.html'
  form_class = StationForm

class DeleteStationView(DeleteView):
  model = Station
  template_name = 'routes/delete_station.html'
  success_url = '/stations/'

class StopsView(ListView):
  model = Stop
  template_name = 'routes/stops.html'
  form_class = StopForm

class CreateStopView(CreateView):
  model = Stop
  template_name = 'routes/add_stop.html'
  form_class = StopForm

class UpdateStopView(UpdateView):
  model = Stop
  template_name = 'routes/update_stop.html'
  form_class = StopForm

class DeleteStopView(DeleteView):
  model = Stop
  template_name = 'routes/delete_stop.html'
  success_url = '/stops/'
  
EOF

echo "${green}>>> Creating templates${reset}"
mkdir -p $templates_path

echo "${green}>>> Editing templates${reset}"
echo "${green}>>> Creating base.html${reset}"
cat << 'EOF' > "$app_name"\/templates\/base.html
{% load static %}
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="https://www.codecademy.com/favicon.ico"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="{% static 'routes/style.css' %}"
    />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Oxygen:wght@300;400;700&display=swap"
      rel="stylesheet"
    />
    <title>{% block title %}Django Djitney{% endblock %}</title>
    {% block head %}
    {% endblock %}
  </head>
  <body>
    <div class="app">
      <header>
        <div class="header-first-row">
          <img
            src="{% static 'routes/djitney.png' %}"
            alt="Django Djitney Logo"
            width="80px"
          />
          <h1 class="title">Django Djitney</h1>
        </div>
        <nav class="navbar">
          <a class="nav-item" href="{% url 'home' %}">Home</a>
 <a class="nav-item" href="{% url 'lines' %}">Lines</a> 
 <a class="nav-item" href="{% url 'stations' %}">Stations</a> 
 <a class="nav-item" href="{% url 'stops' %}">Stops</a> 
        </nav>
      </header>
      <main>{% block content %}{% endblock %}</main>
    </div>
  </body>
</html>
EOF

echo "${green}>>> Creating home.html${reset}"
cat << 'EOF' > $templates_path/home.html
{% extends 'base.html' %} {% load static %} {% block title %}Django Djitney{% endblock %} {% block content %}
<div class="home">
  <div>
    <h2>Lines</h2>
    <table class="line-table">
      <thead>
        <tr>
          <th>Name</th>
          <th>Stops</th>
        </tr>
      </thead>
      <tbody>
        {% for line in lines %}
        <tr>
          <td>{{ line.name }}</td>
          <td>
            <ul>
              {% for stop in line.stop_set.all %}
              <li>{{ stop.stop_number }}</li>
              <div>
                {{ stop.station.name }}{% if stop.station.accessible %} ♿ {% endif %}
              </div>
              {% endfor %}
            </ul>
          </td>
        </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>
</div>
{% endblock %}
EOF

echo "${green}>>> Creating lines.html${reset}"
cat << 'EOF' > $templates_path/lines.html
{% extends 'base.html' %}
{% load static %} 
{% block title %}Django Djitney{% endblock %}
{% block content %}
  <div>
    <h2>Lines</h2>
    <table class="line-table">
      <thead>
        <tr>
          <th>Name</th>
          <th>Stops</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
      {% for line in object_list %}
        <tr>
          <td>
            <a href="{% url "update_line" line.id %}">{{ line.name }}</a>
          </td>
          <td>
            <ul>
                {% for stop in line.stop_set.all %}
                  <li>{{ stop.stop_number }}</li>
                  <div >{{ stop.station.name }}{% if stop.station.accessible %}  ♿  {% endif %} </div>
                {% endfor %}
            </ul>
          </td>
          <td><a href="{% url "delete_line" line.id %}" style="text-decoration: none; color: inherit;">❌</a></td>
        </tr>
      {% endfor %}
      </tbody>
    </table>
    <a href="{% url "create_line" %}" style="display: inherit; text-align: center; border-radius: 15px; text-decoration: none; color: inherit; padding: 4px; background-color: lightgreen;">➕</a>
  </div>
{% endblock %}
EOF

echo "${green}>>> Creating add_line.html${reset}"
cat << 'EOF' > $templates_path/add_line.html
{% extends 'base.html' %} {% load static %} {% block content %}
<h2>Add a New Djitney Line</h2>
<form method="post">
  <div>
      {% csrf_token %}
      {{ form.as_p }}
      <input type="submit" value="Submit" />
  </div>
</form>
{% endblock %}
EOF

echo "${green}>>> Creating update_line.html${reset}"
cat << 'EOF' > $templates_path/update_line.html
{% extends 'base.html' %} {% load static %} {% block content %}
<h2>Update Line</h2>
<form method="post">
    {% csrf_token %}
    {{ form }}
    <input type="submit" value="Update" />
</form>
{% endblock %}
EOF

echo "${green}>>> Creating delete_line.html${reset}"
cat << 'EOF' > $templates_path/delete_line.html
{% extends 'base.html' %} {% load static %} {% block content %}
<h2>Delete Line</h2>
<form method="post">
  <p>Are you sure you want to delete "{{ object }}"?</p>
  <input type="submit" value="Confirm" />
</form>
{% endblock %}
EOF

echo "${green}>>> Creating stations.html${reset}"
cat << 'EOF' > $templates_path/stations.html
{% extends 'base.html' %}
{% load static %} 
{% block title %}Django Djitney{% endblock %}
{% block content %}
<div>
  <h2>Stations</h2>
  <table class="line-table">
    <thead>
      <tr>
        <th>Name</th>
        <th>On Lines</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
    {% for station in object_list %}
        <tr>
          <td>
            <a href="{% url "update_station" station.id %}">{{ station.name }}</a>
            {% if station.accessible %}<span>  ♿️ </span>{% endif %}
          </td>
          <td>
            {% for stop in station.stop_set.all %}{{stop.line.name}}, {% endfor %}
          </td>
          <td><a href="{% url "delete_station" station.id %}" style="text-decoration: none; color: inherit;">❌</a></td>
        </tr>
    {% endfor %}
    </tbody>
  </table>
  <a href="{% url "create_station" %}" style="display: inherit; text-align: center; border-radius: 15px; text-decoration: none; color: inherit; padding: 4px; background-color: lightgreen;">➕</a>
</div>
{% endblock %}
EOF

echo "${green}>>> Creating add_station.html${reset}"
cat << 'EOF' > $templates_path/add_station.html
{% extends 'base.html' %} {% load static %} {% block content %}
<h2>Add a New Djitney Station</h2>
<form method="post">
  <div>
      {% csrf_token %}
      {{ form.as_p }}
      <input type="submit" value="Submit" />
  </div>
</form>
{% endblock %}
EOF

echo "${green}>>> Creating update_station.html${reset}"
cat << 'EOF' > $templates_path/update_station.html
{% extends 'base.html' %} {% load static %} {% block content %}
<h2>Update Station</h2>
<form method="post">
    {% csrf_token %}
    {{ form }}
    <input type="submit" value="Update" />
</form>
{% endblock %}
EOF

echo "${green}>>> Creating delete_station.html${reset}"
cat << 'EOF' > $templates_path/delete_station.html
{% extends 'base.html' %} {% load static %} {% block content %}
<h2>Delete Line</h2>
<form method="post">
  <p>Are you sure you want to delete "{{ object }}"?</p>
  <input type="submit" value="Confirm" />
</form>
{% endblock %}
EOF

echo "${green}>>> Creating stops.html${reset}"
cat << 'EOF' > $templates_path/stops.html
{% extends 'base.html' %}
{% load static %} 
{% block title %}Django Djitney{% endblock %}
{% block content %}
  <div>
    <h2>Stops</h2>
    <table class="line-table">
      <thead>
        <tr>
          <th>Line</th>
          <th>Stop Number</th>
          <th>Station</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
      {% for stop in object_list %}
        <tr>
          <td>{{ stop.line.name }}</td>
          <td><a href="{% url "update_stop" stop.id %}">{{ stop.stop_number }}</a></td>
          <td>{{ stop.station.name }}</td>
          <td><a href="{% url "delete_stop" stop.id %}" style="text-decoration: none; color: inherit;">❌</a></td>
        </tr>
      {% endfor %}
      </tbody>
    </table>
    <a href="{% url "create_stop" %}" style="display: inherit; text-align: center; border-radius: 15px; text-decoration: none; color: inherit; padding: 4px; background-color: lightgreen;">➕</a>
  </div>
{% endblock %}
EOF

echo "${green}>>> Creating add_stop.html${reset}"
cat << 'EOF' > $templates_path/add_stop.html
{% extends 'base.html' %} {% load static %} {% block content %}
<h2>Add a New Djitney Stop</h2>
<form method="post">
  <div>
      {% csrf_token %}
      {{ form.as_p }}
      <input type="submit" value="Submit" />
  </div>
</form>
{% endblock %}
EOF

echo "${green}>>> Creating update_stop.html${reset}"
cat << 'EOF' > $templates_path/update_stop.html
{% extends 'base.html' %} {% load static %} {% block content %}
<h2>Update Stop</h2>
<form method="post">
    {% csrf_token %}
    {{ form }}
    <input type="submit" value="Update" />
</form>
{% endblock %}
EOF

echo "${green}>>> Creating delete_stop.html${reset}"
cat << 'EOF' > $templates_path/delete_stop.html
{% extends 'base.html' %} {% load static %} {% block content %}
<h2>Delete Stop</h2>
<form method="post">
  <p>Are you sure you want to delete "{{ object }}"?</p>
  <input type="submit" value="Confirm" />
</form>
{% endblock %}
EOF

echo "${green}>>> Creating static directory${reset}"
mkdir -p $app_name/static/$app_name
echo "${green}>>> Downloading djitney.png${reset}"
IMAGE_URL="https://raw.githubusercontent.com/glen-anum/The-django-djitney/main/routes/static/routes/djitney.PNG"
curl -o "$app_name/static/$app_name/djitney.png" "$IMAGE_URL"

echo "${green}>>> Creating style.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/style.css
body {
  font-family: "Oxygen", sans-serif;
  margin: 0;
}

input,
select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 1px solid black;
  border-radius: 3px;
}

hr {
  margin: 30px 0;
}

header {
  background-color: #fff5ff;
  min-height: 200px;
  display: flex;
  align-items: center;
  flex-direction: column;
  align-items: flex-start;
  padding-left: 40px;
  padding-top: 40px;
}

.header-first-row {
  width: 100%;
  display: flex;
}

.navbar {
  margin-top: 50px;
  display: flex;
  width: 100%;
}

.navbar a {
  text-decoration: none;
  padding: 8px 0;
  color: #1557ff;
  margin-right: 15px;
}

.navbar a:hover,
.navbar .current-page {
  border-bottom: solid 4px #1557ff;
  border-spacing: 0 15px;
  font-weight: bold;
}

.title {
  font-size: 3em;
  padding: 0px 50px 0 20px;
  margin: auto 0;
  color: #3a10e5;
}

main {
  padding: 40px;
}

main h2 {
  font-size: 2em;
}

.app {
  min-width: 800px;
  max-width: 60%;
  margin: 0 auto;
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.2), 0 3px 10px 0 rgba(0, 0, 0, 0.19);
}

main table {
  text-align: left;
  border-collapse: separate;
  border-spacing: 0 15px;
  width: 100%;
}

main table th {
  text-align: left;
  border-collapse: separate;
  border-spacing: 0 15px;
  text-decoration: underline;
}

ul {
  list-style: none;
}

.line-table li {
  width: 2em;
  height: 2em;
  text-align: center;
  line-height: 2em;
  border-radius: 1em;
  background: dodgerblue;
  margin: 0 1em;
  display: inline-block;
  color: white;
  position: relative;
}

.line-table li::before {
  content: "";
  position: absolute;
  top: 0.9em;
  left: -4em;
  width: 4em;
  height: 0.2em;
  background: dodgerblue;
  z-index: -1;
}

li + div {
  display: none;
}

li:hover {
  background-color: lightblue;
}

li:hover + div {
  display: inline-block;
  background-color: white;
  padding: 5px;
  margin-left: 0px;
  font-size: 0.8em;
  color: dodgerblue;
  border: 2px dashed lightblue;
  border-radius: 5px;
  font-weight: bold;
}

.line-table li:first-child::before {
  display: none;
}

.line-table ul {
  padding: 0;
}

main form input[type="submit"] {
  width: max-content;
}

main form * {
  display: block;
}

main form label {
  font-size: 1em;
  font-weight: bold;
  padding-top: 20px;
}

a {
  text-decoration: none;
  color: #1557ff;
}
a:hover {
  font-weight: bold;
}
EOF

# List installed Python packages
pip freeze -l > requirements.txt