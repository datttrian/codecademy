# Tourist Attractions with Forms

A local travel agency can’t keep up with all the new attractions being
added all over the country! They want an easier way to add not only new
attractions, but new states that they forgot to include originally. This
is keeping the agency from staying up to date on what attractions are in
each state and they need your help to create a solution to this!

Using the skills learned for Django on creating forms, we’ll practice:

-   Generic form creation
-   Using forms to create instances
-   Form security

Let’s get started!

## Getting Started

### Clone the project in this repo

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `6-forms-in-django` directory
- Create & activate a new virtual environment for the project
- Switch to the `touristAttractions` directory
- Install project dependencies
- Apply the migrations


```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/6-forms-in-django
python3 -m venv env && source env/bin/activate
cd touristAttractions
pip install -r requirements.txt
python manage.py makemigrations && python manage.py migrate
```

### Build the project with Bash Script

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `6-forms-in-django` directory
- Add executable permission & execute `touristAttractions.sh`
- Activate the virtual environment for the project
- Switch to `touristAttractions` project
- Apply the migrations

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/6-forms-in-django
chmod +x touristAttractions.sh && ./touristAttractions.sh
source env/bin/activate
cd touristAttractions
python manage.py makemigrations && python manage.py migrate
```

### Run Development Server

- Run the development server

```bash
python manage.py runserver
```

## Instructions

Mark the tasks as complete by checking them off

### Working with Forms


1\.

After taking a look around we’ll see that this application looks a lot
like the original application we built before. The templates are about
the same and all we changed was what was inside of **models.py**.

Feel free to take a look at **models.py** and see what changes were
made. You’ll notice that some fields have a `verbose_name` argument.
This just changes how the field is displayed in a generic form. Look
over the new models and their fields.


2\.

Now we want to make it to where users can add the data themselves to
**models.py**. We’ll do this using Django generics.

To start we need to:

-   Create **forms.py**
-   Import `forms` from `django`
-   Import the `State` and `Attraction` models from `.models`




3\.

Now that we have imported the models, we can create the classes needed
for later use when submitting data to the forms and creating the forms.

To get started, create one class called `StateCreateForm`. Remember,
this class should inherit from `forms.ModelForm`.




4\.

Inside of our `StateCreateForm` class, we need to add in more
information.

Create a nested `Meta` class that contains a `model` property assigned
to `State` and `fields` assigned to `"__all__"` to display all of
`State`‘s fields.




5\.

Now that we have our `StateCreateForm` created, we’re going to want to
do the same thing again for a class called `AttractionCreateForm` for
`Attraction`.



### Moving on to Views


6\.

Once **forms.py** has been built, we can start connecting that to the
front end of our application. This will let Django render the form onto
a template.

To do this, we need to first navigate to **views.py**. Then:

-   import over `StateCreateForm` and `AttractionCreateForm` from
    `.forms`
-   import `CreateView`




7\.

Now that we imported what we need, we can start building the classes we
need to link to a template.

Go ahead and create the first class, `StateCreate()` which will need
`CreateView` as a parameter.




8\.

The `StateCreate` class will have three properties that set what goes
into the form.

The three properties are:

-   `model` set as `State`
-   `form_class` set as `StateCreateForm`
-   `template_name` set as `""`

You’ll change the value for `template_name` later!




9\.

Now that we have `StateCreate` complete, we can start working on the
`AttractionCreate`. Go ahead and create the `AttractionCreate` just like
the `StateCreate`. Make sure to include the `CreateView` parameter and
to include all the same 3 properties.



### Modifying URLs


10\.

Now that we have our views created, we can add our `path()`s to our
**urls.py** that use those views.

Start by navigating to **urls.py** and adding a `path()` leading to
`"state/create"`. This path should use the
`views.StateCreate.as_view()`. Add an appropriate name so it can be
referenced later, like `"statecreate"`.




11\.

Once the path is set up to create a `State`, we can do the same thing
for an `Attraction`. Create a path that uses `"attraction/create"` along
with the right view and give it a name of `"attractioncreate"`.

### Adding Our Templates


12\.

Since most of the back-end work is done, we can create our templates
inside of **templates/tourist_attractions/**. This is where we’ll make
everything we want the user to see and will house our forms. Both of
these templates will be the same, so repeat these instructions for the
second template.

Go ahead and create a template for `State` name the template
`state_create_form.html`. Inside of this template, we’ll need to:

-   Extend the template from `"tourist_attractions/base.html"`.
-   Load in `static`
-   Add a head block that will add in the same CSS file as in
    **home.html**.
-   Finally, go ahead and create the content block for the template.




13\.

Inside of your content block, add a `<h1>` signifying whether users are
creating a new state or new attraction.

Then add a `<form>` element that uses a `csrf_token` and loads in the
`form.as_p` variable. Finally, add a submit button and close the
`<form>` element.




14\.

Once our template for `State` is created, we can move on to creating our
`Attraction` template.

Create a new template for the `Attraction` model. This time name the
file, `attraction_create_form.html`.

Once that’s created, go ahead and copy and paste everything from our
`State` template to our `Attraction` template. Remember to change the
`<h1>` text to now mention `Attraction`, but just like that we’ve
created forms for our `State` and `Attraction` model!




15\.

Now that the templates are created, we can go back to our **views.py**
and change the empty strings for both `template_name` fields to their
correlating templates.

It also means that we will finally be able to render the template at the
defined path! Remember the paths are:

```python
# urls.py
path("state/create", views.StateCreate.as_view(), name="statecreate")
path("attraction/create", views.AttractionCreate.as_view(), name="attractioncreate")
```

We can find the respective templates at
`https://localhost/tourist_attractions/state/create` and
`https://localhost/tourist_attractions/attraction/create`!



### Adding a Redirect


16\.

With the form now rendering properly, we want to make sure that when the
user submits the data they are redirected to the homepage.

To do this, we need to add a `get_absolute_url()` method to both the
`State` and `Attraction` models in **models.py**. Have the method return
to the home page (`"/tourist_attractions/"`) in both cases.



### Linking to the Forms


17\.

While our forms have been created, the users don’t have a way to find
them easily. But we want our users to be able to find them easily.

To do this, we’re going to navigate to **home.html** and:

-   Under the closing `</table>` tag, add a link to our `State` template
-   Set the `href` set to `"{% url 'statecreate' %}"`
-   Have the text read `Add a state`




18\.

Now we can create another link to the `AttractionCreate` path.




19\.

And that’s it, congrats! We’ve now created two forms for adding any
states or attractions. Try out your forms, first create a state, then
create an attraction. Watch your home page populate!

If you want, try adding some more fields to the models in **models.py**
that you think would be useful and add those to the forms as well! One
field you could add would be to add the city to the `Attraction` model.
You can also add in other forms for updating and deleting instances as
well!

## Solution

[Django Project Tourist Attractions with Forms](https://www.youtube.com/watch?v=z96peq-ceG4)

```bash
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
```
