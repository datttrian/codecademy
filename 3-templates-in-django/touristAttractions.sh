#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${green}>>> Removing project directory if exists${reset}"
rm -rf env
echo "${green}>>> Creating virtualenv${reset}"
python3 -m venv env
echo "${green}>>> Activating the venv${reset}"
source env/bin/activate
echo "${green}>>> Upgrading pip version${reset}"
pip install -U  --upgrade pip
echo "${green}>>> Installing Django${reset}"
pip install django
echo "${red}>>> Starting the Fortune Teller Project${reset}"
project_name='touristAttractions'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the Random Fortune App ${reset}"
app_name="tourist_attractions"
python manage.py startapp $app_name
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${red}>>> Creating overall structure of the application${reset}"
sed -i '' '3,$d' $app_name/views.py
echo "$(cat <<-END
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
)"  >> $app_name/views.py
cat << 'EOF' > $app_name/urls.py
from django.urls import path

from . import views

urlpatterns = [
    path('', views.home, name="home"),
    path('details/<statename>', views.details, name='details')
]
EOF
echo "${green}>>> Importing app’s URLconfig setup in the project’s URLconfig${reset}"
sed -i '' 's/from django.urls import/from django.urls import include,/g' $project_name/urls.py
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n    path\(\'$app_name\/\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py
echo "${red}>>> Creating static directory${reset}"
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
echo "${red}>>> Creating templates directory${reset}"
templates_path="$app_name"\/templates\/"$app_name"
mkdir -p $templates_path
echo "${green}>>> Creating a base template${reset}"
cat << 'EOF' > $templates_path/base.html
{% load static %}
<!DOCTYPE html>
<html>

<head>
    {% block head %}
    {% endblock %}
</head>

<body>
    <a href="{% url 'home' %}">Take me home</a>
    {% block content %}
    {% endblock %}
</body>

</html>
EOF
echo "${green}>>> Creating a home template${reset}"
cat << 'EOF' > $templates_path/home.html
{% extends 'tourist_attractions/base.html' %}

{% block head %}
{% endblock %}

{% block content %}
{% endblock %}
EOF
echo "${green}>>> Loading in the static files in home.html${reset}"
sed -i '' 's/{% extends '\''tourist_attractions\/base.html'\'' %}/{% extends '\''tourist_attractions\/base.html'\'' %}\
\
{% load static %}/g' $templates_path/home.html
echo "${green}>>> Loading in 'tourist_attractions/style.css' in home.html${reset}"
sed -i '' 's/{% block head %}/{% block head %}\
<link rel=\"stylesheet\" href=\"{% static '\''tourist_attractions\/style.css'\'' %}\">/g' $templates_path/home.html
echo "${green}>>> Adding a <h1> saying 'This is a list of attractions in America!' in home.html${reset}"
sed -i '' 's/{% block content %}/{% block content %}\
<h1>This is a list of attractions in America!<\/h1>/g' $templates_path/home.html
echo "${green}>>> Showing the users each attraction and what state that attraction is in; Going through and displaying all attractions in home.html${reset}"
sed -i '' 's/<h1>This is a list of attractions in America!<\/h1>/<h1>This is a list of attractions in America!<\/h1>\
<table>\
    <tr>\
        <th>Attraction State<\/th>\
        <th>State<\/th>\
        <th>State details<\/th>\
    <\/tr>\
    {% for item in attractions|dictsort:\"state\" %}\
    <tr>\
        <td>{{ item.attraction_name }}<\/td>\
        <td>{{ item.state }}<\/td>\
        <td><a href=\"{% url '\''details'\'' item.state|slugify %}\">State Details<\/a><\/td>\
    <\/tr>\
    {% endfor %}\
<\/table>/g' $templates_path/home.html
echo "${red}>>> Creating the details page${reset}"
echo "${green}>>> Create a template called details.html extending from base.html and load in the CSS${reset}"
cat << 'EOF' > $templates_path/details.html
{% extends 'tourist_attractions/base.html' %}

{% load static %}

{% block head %}
<link rel="stylesheet" href="{% static 'tourist_attractions/style.css' %}">
{% endblock %}
EOF
echo "${green}>>> Going into details for each state in details.html${reset}"
echo "$(cat <<-END
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
)"  >> $templates_path/details.html
echo "${red}>>> We now have a website that displays attractions for any state!${reset}"
# List installed Python packages
pip freeze -l > requirements.txt