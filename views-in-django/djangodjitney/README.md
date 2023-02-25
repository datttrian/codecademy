# The Django Djitney

The Codes-ville Official Department of Transportation needs your help!
They recently finished building the routes for their new commuter train,
the Django Djitney, and need someone to create an easy-to-use site for
commuters to be able to see the train routes. They’ve supplied the train
routes in a database, but they need your help to create a site that they
can use to show the different routes across all the stations, as well as
update them when there are changes in the routes.

Each jitney line takes different routes through the stations. You can
take a look through **models.py** to see how each model relates to each
other. But the basic breakdown is that a “stop” consists of a “line”, a
“station”, and a “stop number”.

The town wishes to have the ability to view, edit, update, and delete
lines, stops, and stations. They’ve outsourced the creation of the
templates, and they’ve supplied the models on their own. All you’ll need
to do is create the views and link them up to the templates.

## Getting Started

### Clone the project in this repo

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `views-in-django` directory
- Create & activate a new virtual environment for the project
- Switch to the `djangodjitney` directory
- Install project dependencies
- Apply the migrations


```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/views-in-django
python3 -m venv env && source env/bin/activate
cd djangodjitney
pip install -r requirements.txt
python manage.py makemigrations && python manage.py migrate
```

### Build the project with Bash Script

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `views-in-django` directory
- Add executable permission & execute `djangodjitney.sh`
- Activate the virtual environment for the project
- Switch to `djangodjitney` project
- Apply the migrations

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/views-in-django
chmod +x djangodjitney.sh && ./djangodjitney.sh
source env/bin/activate
cd djangodjitney
python manage.py makemigrations && python manage.py migrate
```

### Run Development Server

- Run the development server

```bash
python manage.py runserver
```

## Instructions

[Django Project The Django Djitney](https://www.youtube.com/watch?v=YVeCwpAb2ic&t=119s)

### Understand the Context

1.

The project has been pre-populated with everything required to run the
application except the views and the URLs.

Take a look at the models for the **routes** app. There should be three:
`Line`, `Station`, and `Stop`.

Examine their fields, and take a look at the comments to understand what
each field represents and how the models are connected to one another.





2.

Take a look at the templates that have been provided. All of the
templates already exist for all of the views that you will need to
create. The templates also help to indicate what paths you will need to
make in **routes/urls.py**, and what objects will need to be available
for each page.





3.

The forms for the **routes** app will come in handy when you need to
implement your “Create” and “Update” views. Look over **forms.py** to
see how this file will be used in the overall project.





4.

Now navigate to **views.py** to see what’s imported for you and the
provided class. After you’ve taken a look at the setup that’s been
provided, let’s try to run the provided code and see what happens in the
browser! As you add your own code, run it so that you can see the
application update while you work on it.





### Implement the views for Lines

5.

The town has named each of their jitney **lines** after different
species of python! The town currently has three lines in its database.
We’ll create a `ListView` that can display the different lines using the
**routes/lines.html** template. Then we’ll add a `CreateView`,
`UpdateView`, and `DeleteView` to allow the town to edit the lines as
they please.

Let’s start by importing all of the generics we’ll require. You should
have opened **routes/views.py**, import the `ListView`, `CreateView`,
`UpdateView`, and `DeleteView`.





6.

The `Line` model is already imported in **routes/views.py**, from
`.models`.

Create a new `LinesView` class that inherits from the `ListView` you
imported. Populate the `template_name` and `model` attributes of your
class to bind the **routes/lines.html** template and `Line` model to
your class.





7.

Notice that your code didn’t do anything just yet – that’s because you
need a `path`.

In **routes/urls.py**, add a `path` that calls the `LinesView` we made
as a function. Your path should ensure that your page is visible at
`lines/`. Use the **routes/base.html** template (with the `<nav>` inside
linking to each of the pages) to infer what the `name` attribute for
that `path` should be.





8.

Now that you’ve got your `ListView`, you need to add the functionality
to be able to **create** a new jitney line. You’ll need to:

-   Add a `CreateLineView` class that uses the `CreateView` generic.
    -   Make sure it uses the `Line` model!
-   Add fields to `CreateLineView` that specify:
    -   `form_class` as `LineForm` (this is already imported for you and
        you can see the forms in **routes/forms.py**).
    -   `template_name` as `"routes/add_line.html"`.
-   Add a new `path` for this view in **routes/urls.py**.
    -   For the `name` argument, look over **routes/lines.html** to find
        the `name` that the template expects for the `CreateLineView`.
    -   Ensure that the page is available at `"lines/new/"`.





9.

Create an `UpdateLineView` to help Codes-ville change the name of their
jitney lines at their leisure. You’ll need to:

-   Add an `UpdateLineView` class to **routes/views.py** that inherits
    from the `UpdateView` generic to update the `Line` model
    -   Add a field that tells the view to use the
        **routes/update_line.html** template.
    -   Add another field tells the view to use the `LineForm` that you
        imported in the previous step.
-   Add a new `path` for this view in **routes/urls.py**.
    -   For the `name` argument, look over **routes/lines.html** to find
        the `name` that the template expects for the `UpdateLineView`.
    -   Ensure that the page is available at `"lines/<pk>/update/"`.





10.

The town should also be able to delete any lines that have to be
decommissioned.

Create a `DeleteLineView` that they can use for this. Follow the general
pattern for adding a new View, and specifically for `DeleteLineView`,
add a `success_url` property with a value of `"/lines"`.

Then, add a `path` so that the view is accessible at
`"lines/<pk>/delete/"` with `name="delete_line"`.





11.

Before you can test the functionality you’ve built for viewing,
creating, updating, and deleting lines, you’ll have to edit the **base**
template to uncomment the link corresponding to `lines` in the navbar.

Navigate to **routes/base.html** and find the `<nav>` element. You’ll
notice that the links for the `lines`, `stations`, and `stops` pages are
commented out. Uncomment only the `lines` link in the `<nav>`, and then
refresh the application in the browser pane on the right.

You can check if your `LinesView` worked by navigating to
`localhost:8000/lines` in the web browser, or clicking that link in the
navbar. You should see the three jitney lines that have been installed
by the town and you have a `+` button to add new `Line`s!





12.

Test your `CreateLineView` by adding some new lines. Hit the add button
below the lines table, and add a new line called
<a href="https://en.wikipedia.org/wiki/Morelia_spilota"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“Carpet”</a>, and another called
<a href="https://en.wikipedia.org/wiki/Green_tree_python"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“Green Tree”</a>. These should show up in
the lines table now, thanks to the `LinesView` we created earlier.

Now, the town wishes to be more specific with the name of the “Carpet”
line, and rename it to the
**<a href="https://en.wikipedia.org/wiki/Morelia_spilota_cheynei"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“Jungle Carpet”</a>** line to indicate
the correct subspecies. Click on the **Carpet** line in your lines table
to be taken to your update page and validate that you can rename it to
**Jungle Carpet**.

Lastly, validate your `DeleteLineView` by clicking the ❌ next to the
“Green Tree” route. Codes-ville has agreed that four lines is more than
enough to service their commuters for now. After you’ve confirmed the
delete, “Green Tree” should no longer appear in the lines table.





### Implement the views for Stations

13.

Now that your lines are all set up, you’ll need to be able to view,
create, update, and delete the **stations** that these lines will visit.
You should already have seen these stations populated on the **home**
page and **lines** page, but now you’ll give them their own table on
their own page. Similar to what we did for **lines**:

-   Start by creating a `ListView`. Create a new view called
    `StationsView`.
-   Bind it to the `Station` model, and use the **routes/stations.html**
    template.
-   Add a `path` to **routes/urls.py** so that we can access our
    `StationsView` at `"stations/"`





14.

Implement the `CreateStationView`, so that the town will be able to add
new stations as they come into operation.

The `CreateStationView` should:

-   inherit from the `CreateView` generic
-   use the `Station` model
-   use the **routes/add_station.html** template
-   use the `StationForm` (imported from `.forms` like you did with
    `LineForm`)
-   have a `path` so that you can use it at `"stations/new/"`, with the
    `name` as specified by the **routes/stations.html** template on the
    “add” button





15.

The `Station` model has an additional field: `accessible`. The town uses
this to indicate whether or not the station has accessibility features
for their commuters, such as elevators or wheelchair-accessible
entryways to the jitney platforms.

Implement an `UpdateStationView`, so that as the town of Codes-ville
adds accessible accommodations to their older stations, they’re able to
update the database to reflect the improvements.

The `UpdateStationView` should:

-   inherit from the `UpdateView` generic
-   use the `Station` model
-   use the **routes/update_station.html** template
-   use the `StationForm` like you did for the `CreateStationView`
-   have a `path` at `"stations/<pk>/update/"`, with the `name` as
    specified in **routes/stations.html** on each entry of the station
    table.





16.

Implement a `DeleteStationView`, so that the town can delete the
stations that are just too out-of-date to be renovated and must be
demolished.

The `DeleteStationView` should:

-   inherit from the `DeleteView` generic
-   use the `Station` model
-   use the **routes/delete_station.html** template
-   have a `success_url` of `"/stations/"`
-   have a `path` at `"stations/<pk>/delete/"` with the `name` that’s
    used on the ❌ button in the **routes/stations.html** template





17.

The functionality for viewing, creating, updating, and deleting stations
for the Django Djitney rail system should be complete! Time to test out
your functionality.

Like we did for **lines**, update the **routes/base.html** template to
uncomment the link in the `<nav>` for `stations`. Then, when you
refresh, you should be able to see the new link in your app’s navbar to
test out the functionality you’ve implemented for stations!

If your views were correct, you should see a new entry in the app’s
navbar now, **Stations** that you can click to view all the stations
that the town currently has in place. This is your `StationsView` at
work!





18.

Let’s try adding a new station. Use the “add” button under the table to
test out your `CreateStationView`, by adding a new *accessible* station,
<a href="https://en.wikipedia.org/wiki/Basuto_pony"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><strong>Basuto</strong></a> station.





19.

The town of Codes-ville has done some renovations! The
<a href="https://en.wikipedia.org/wiki/Exmoor_pony"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><strong>Exmoor</strong></a> station is
now accessible.

Use your `UpdateStationView` to update the **Exmoor** station so that it
is marked in the stations table as accessible.





20.

The **Exmoor** station is remarkably close to the worn-down
<a href="https://en.wikipedia.org/wiki/Kerry_Bog_Pony"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><strong>Kerry Bog</strong></a> station.
Since the town’s new **Exmoor** station is newer and accessible, they’ve
decided to demolish the **Kerry Bog** station.

Use your `DeleteStationView` to delete the **Kerry Bog** station.

After this, you’ll have tested all the functionality you’ve implemented
for stations!





### Implement the views for Stops

21.

**Stops** are used to create a route for a jitney **line** through the
different **stations**. As you did for lines and stations, you’ll need
to create the views and add URLs so that the town can manage the stops
for the jitney line. Like before, start with the `ListView`. You should:

-   Create a `StopsView` that inherits from the `ListView` generic
-   Set the `model` as `Stop`
-   Use the template at **routes/stops.html** for your `StopsView`
-   Make the page available at `"stops/"` using a `path` with
    `name="stops"`





22.

Implement a `CreateStopView`, so that the town can add stations to
different jitney routes.

Your view should:

-   inherit from the `CreateView` generic
-   use the `Stop` model
-   use the `StopForm`, imported from `.forms`
-   use the template at **routes/add_stop.html**
-   be used in a `path` available at `"stops/new/"`, with
    `name="create_stop"`





23.

Now, add an `UpdateStopView`, so that the town can change stop numbers
around to make routes more convenient for commuters during rush hour.

The `UpdateStopView` should:

-   inherit from the `UpdateView` generic
-   use the `Stop` model
-   use the `StopForm`, imported from `.forms`
-   use the template at **routes/update_stop.html**
-   be available in a `path` at `"stops/<pk>/update/"`, with
    `name="update_stop"`





24.

Lastly, you’ll need to add a `DeleteStopView`. Using what you’ve
learned, set the:

-   generic this class will inherit from
-   the model
-   the template
-   a `success_url`
-   the correct `path()`






25.

Time to test out your functionality! Like you did before, you’ll have to
uncomment the link in the `<nav>` for **stops**.

Once you do that and refresh the browser, you’ll see a new link,
**Stops**, in the navbar. Click it to see what your stops page looks
like!

Check for any errors, and try to view your stops. After that, try to
insert a stop at **Basuto** station on the **Monty** line, between
**Cob** and **Anadolu** station.

To do this:

-   Update stop number **6** on the Monty line at Anadolu station to
    have stop number **7** instead.
-   Add a new stop, with:
    -   the line set to **Monty**
    -   the station set to **Basuto**
    -   the stop number set to **6**





### Djazz It Up!

26.

Congratulations! You’ve completed your app for The Django Djitney. The
town of Codes-ville owes you a sincere thanks!

Now that you’ve implemented the base functionality for the app, here are
some things you can try to enhance the app:

-   Add a `color` field to lines, like you may have seen on your local
    public transportation lines. Update the templates so that the text
    of each line in the **Lines** table is colored according to the
    line’s color.
-   Add more fields to a station, such as **age** or
    **last_cleaned_date**, to help the town manage the maintenance for
    the stations. Update the templates so that these fields are shown on
    the **Stations** table
-   Update the models and views to add a **schedule** to the jitney
    lines. Show the times that each train will stop at a given station.





## Solution

[Django Project The Django Djitney](https://www.youtube.com/watch?v=YVeCwpAb2ic&list=LL&index=1)

```bash
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
echo "${red}>>> Starting the Project${reset}"
project_name='djangodjitney'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the App ${reset}"
app_name="routes"
python manage.py startapp $app_name
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${red}>>> Pre-populating the project ${reset}"
echo "${green}>>> Adding Line, Station, and Stop models in models.py${reset}"
cat << 'EOF' >> $app_name/models.py
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
echo "${green}>>> Adding Line, Station, and Stop forms in forms.py${reset}"
cat << 'EOF' >> $app_name/forms.py
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
echo "${green}>>> Importing models and forms and creating Homeview in views.py${reset}"
sed -i '' "s,from django.shortcuts import render,from django.shortcuts import render\nfrom .models import Line\, Station\, Stop\nfrom .forms import  StopForm\, LineForm\, StationForm\n\# Add your imports below:\nfrom django.views.generic import TemplateView\n\nclass HomeView\(TemplateView\):\n  template_name = \"routes/home.html\"\n\n  def get_context_data\(self\):\n    context = super\(\).get_context_data\(\)\n    context\[\"lines\"\] = Line.objects.all\(\)\n    context\[\"stations\"\] = Station.objects.all\(\)\n    context\[\"stops\"\] = Stop.objects.all\(\)\n    return context,g" $app_name/views.py
echo "${green}>>> Wiring Up View${reset}"
cat << 'EOF' > $app_name/urls.py
from django.urls import path

from . import views

urlpatterns = [
  path('', views.HomeView.as_view(), name='home'),
]
EOF
echo "${green}>>> Importing app’s URLconfig setup in the project’s URLconfig${reset}"
sed -i '' "s,from django.urls import path,from django.urls import include\, path,g" $project_name/urls.py
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n    path\(\'\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py
echo "${red}>>> Creating templates${reset}"
echo "${green}>>> Creating templates directory${reset}"
templates_path="$app_name"\/templates\/"$app_name"
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
    {% block head %}{% endblock %}
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
{% comment block %} <a class="nav-item" href="{% url 'lines' %}">Lines</a> {% endcomment %}
{% comment %} <a class="nav-item" href="{% url 'stations' %}">Stations</a> {% endcomment %}
{% comment %} <a class="nav-item" href="{% url 'stops' %}">Stops</a> {% endcomment %}
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
echo "${red}>>> Creating static${reset}"
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
echo "${red}>>> Implementing the views for Lines${reset}"
echo "${green}>>> Importing the ListView, CreateView, UpdateView generics in views.py, ${reset}"
sed -i '' "s,from django.views.generic import TemplateView,from django.views.generic import TemplateView\, ListView\nfrom django.views.generic.edit import CreateView\, UpdateView\, DeleteView,g" $app_name/views.py
echo "${green}>>> Creating the LinesView class in views.py${reset}"
cat << 'EOF' >> $app_name/views.py
class LinesView(ListView):
  template_name = 'routes/lines.html'
  model = Line

EOF
echo "${green}>>> Adding a path calling the LinesView in urls.py${reset}"
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n  path\(\'lines/\'\, views.LinesView.as_view\(\)\, name=\'lines\'\)\,,g" $app_name/urls.py
echo "${green}>>> Creating the CreateLineView class in views.py${reset}"
cat << 'EOF' >> $app_name/views.py
class CreateLineView(CreateView):
  template_name = 'routes/add_line.html'
  model = Line
  form_class = LineForm

EOF
echo "${green}>>> Adding a path calling the CreateLineView in urls.py${reset}"
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n  path\(\'lines/new/\'\, views.CreateLineView.as_view\(\)\, name=\'create_line\'\)\,,g" $app_name/urls.py
echo "${green}>>> Creating the UpdateLineView class in views.py${reset}"
cat << 'EOF' >> $app_name/views.py
class UpdateLineView(UpdateView):
  template_name = 'routes/update_line.html'
  model = Line
  form_class = LineForm
  
EOF
echo "${green}>>> Adding a path calling the UpdateLineView in urls.py${reset}"
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n  path\(\'lines/\<pk\>/update\'\, views.UpdateLineView.as_view\(\)\, name=\'update_line\'\)\,,g" $app_name/urls.py
echo "${green}>>> Creating the DeleteLineView class in views.py${reset}"
cat << 'EOF' >> $app_name/views.py
class DeleteLineView(DeleteView):
  model = Line
  template_name = 'routes/delete_line.html'
  success_url = '/lines'
  
EOF
echo "${green}>>> Adding a path calling the DeleteLineView in urls.py${reset}"
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n  path\(\'lines/\<pk\>/delete\'\, views.DeleteLineView.as_view\(\)\, name=\'delete_line\'\)\,,g" $app_name/urls.py
echo "${green}>>> Editing the base template to uncomment the link corresponding to lines in the navbar${reset}"
sed -i '' "s,{% comment block %} \<a class=\"nav-item\" href=\"{% url \'lines\' %}\"\>Lines\</a\> {% endcomment %},          \<a class=\"nav-item\" href=\"{% url \'lines\' %}\"\>Lines\</a\>,g" "$app_name"\/templates\/base.html
echo "${red}>>> Implementing the views for Stations${reset}"
echo "${green}>>> Creating the StationsView, CreateStationView, UpdateStationView, DeleteStationView class in views.py${reset}"
cat << 'EOF' >> $app_name/views.py
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

EOF
echo "${green}>>> Adding a path calling the StationsView, CreateStationView, CreateStationView, DeleteStationView in urls.py${reset}"
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n  path\(\'stations/\'\, views.StationsView.as_view\(\)\, name=\'stations\'\)\,\n  path\(\'stations/new/\'\, views.CreateStationView.as_view\(\)\, name=\'create_station\'\)\,\n  path\(\'stations/\<pk\>/update/\'\, views.UpdateStationView.as_view\(\)\, name=\'update_station\'\)\,\n  path\(\'stations/\<pk\>/delete/\'\, views.DeleteStationView.as_view\(\)\, name=\'delete_station\'\)\,,g" $app_name/urls.py
echo "${green}>>> Editing the base template to uncomment the link corresponding to lines in the navbar${reset}"
sed -i '' "s,{% comment %} \<a class=\"nav-item\" href=\"{% url \'stations\' %}\"\>Stations\</a\> {% endcomment %},          \<a class=\"nav-item\" href=\"{% url \'stations\' %}\"\>Stations\</a\>,g" "$app_name"\/templates\/base.html
echo "${red}>>> Implementing the views for Stops${reset}"
echo "${green}>>> Creating the StopsView, CreateStopView, UpdateStopView, DeleteStopView class in views.py${reset}"
cat << 'EOF' >> $app_name/views.py
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
echo "${green}>>> Adding a path calling the StationsView, CreateStationView, CreateStationView, DeleteStationView in urls.py${reset}"
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n  path\(\'stops/\'\, views.StopsView.as_view\(\)\, name=\'stops\'\)\,\n  path\(\'stops/new/\'\, views.CreateStopView.as_view\(\)\, name=\'create_stop\'\)\,\n  path\(\'stops/\<pk\>/update/\'\, views.UpdateStopView.as_view\(\)\, name=\'update_stop\'\)\,\n  path\(\'stops/\<pk\>/delete/\'\, views.DeleteStopView.as_view\(\)\, name=\'delete_stop\'\)\,,g" $app_name/urls.py
echo "${green}>>> Editing the base template to uncomment the link corresponding to lines in the navbar${reset}"
sed -i '' "s,{% comment %} \<a class=\"nav-item\" href=\"{% url \'stops\' %}\"\>Stops\</a\> {% endcomment %},          \<a class=\"nav-item\" href=\"{% url \'stops\' %}\"\>Stops\</a\>,g" "$app_name"\/templates\/base.html
# List installed Python packages
pip freeze -l > requirements.txt
```