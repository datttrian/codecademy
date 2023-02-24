# Tourist Attractions with Templates

You’ll be creating an application that allows for users to see a list of
tourist attractions in each state. Users can also specify the state that
they want to see more detailed attractions with as well. You’ll be
creating the templates for this website, meaning that you’ll be creating
everything the users see using Django!

This will be done using the knowledge gained from the templates lesson,
including extending off of base templates, adding static files, and
adding filters to variables being used within the template!

## Getting Started

### Clone the project in this repo

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `3-templates-in-django` directory
- Create & activate a new virtual environment for the project
- Switch to the `touristAttractions` directory
- Install project dependencies
- Apply the migrations

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/3-templates-in-django
python3 -m venv env && source env/bin/activate
cd touristAttractions
pip install -r requirements.txt
python manage.py migrate
```

### Build the project with Bash Script

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `3-templates-in-django` directory
- Add executable permission & execute `touristAttractions.sh`
- Activate the virtual environment for the project
- Switch to `touristAttractions` project
- Apply the migrations

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/3-templates-in-django
chmod +x touristAttractions.sh && ./touristAttractions.sh
source env/bin/activate
cd touristAttractions
python manage.py migrate
```

### Run Development Server

- Run the development server

```bash
python manage.py runserver
```

## Instructions

### Creating a Base Template

1\.

Before you start writing any code, take a look at the overall structure
of the application. We’ve provided some code for you already to allow
you to focus just on template creation!

Things to consider and explore:

- What’s the project name? app name?
- What functions are provided in **views.py**?
- What paths are in **urls.py**?

2\.

Now that you’ve got a general sense of the app, let’s start by creating
a base template. Right now we are getting a `TemplateDoesNotExist` error
when we try to load our application. This is Django telling us that it’s
not finding the template we’re telling it to render in the location we
told it to look. To fix this, all we have to do is add in the template.

Create **base.html** in
**tourist_attractions/templates/tourist_attractions**.

3\.

Remember that **base.html** should contain some common elements, so add
some structure.

Inside of **base.html**, add the doctype declaration, a `<head>`
element, and a `<body>` element.

4\.

One common feature in all apps is to allow users to be able to navigate
back to the home page.

Inside the `<body>` add a link (`<a>`) that users can click on to send
them to the `"home"` path. The text inside the link should read
`Take me home`.

5\.

Since you also want your **base.html** to be able to display
page-specific content, you’ll need to add some blocks!

- Inside the `<head>` element, add a block called `head`. This block
  will be used for loading assets.
- In the `<body>` element, under the `<a>` element, add another block
  called `content`. This block will be used to display page-specific
  content.

### Creating the Home Page

6\.

Now that we have our base template created, we can start making the
homepage for the application. This will be the home of every state and
every attraction.

Create a new HTML page called **home.html** in the same location as
**base.html**.

- Have it extend off of **base.html**
- Add a head block
- Add a content block

After implementing **home.html** the error in the browser should be gone
and you should see your link appear!

7\.

Currently, our page looks a little bland, to change this we need to add
some CSS files. This can be done by loading in the static files. Then,
load in the static file `'tourist_attractions/style.css'`.

You’ll know this is done correctly when the background color changes to
a light blue.

8\.

We want to welcome our users to the application and tell them what
they’ll be looking at. To do this, inside of the `content` block, add a
`<h1>` that says something like
`This is a list of attractions in America!`.

9\.

Now we want to show the users each attraction and what state that
attraction is in. The best way to do this would be to build a table.

Under the `<h1>` add:

- A `<table>` element
- Inside the table, a table row (`<tr>`) element
- Nested in the row, individual table headings (`<th>`) for
  `Attraction`, `State`, and `State details`.

By now you should have a table header on the webpage with three columns
being `Attraction`, `State`, and `State details`.

10\.

Now that we have the table mostly built, we need to go through every
attraction and display it.

To get started with the process:

- Inside the `<table>` and after the first row, add a `for` loop using
  DTL.
- Have it loop through each `item` in `attractions`.
- Sort `attractions` based on the `state` using the filter `dictsort`.
- Make sure to include the `endfor`.

11\.

Now that we have the loop set up, we want to show everything about that
attraction.

Inside of the `for` loop, we need to add some more HTML and DTL to
display everything about the attraction. Let’s add these elements:

- A table row (`<tr>`).
- Inside of the table row, add a table detail element (`<td>`)
- This `<td>` element should display `item.attraction_name`.

We’ll only see the first column displayed. But we’ll continue to work on
this table!

12\.

We still need to fill in two other columns.

Add another `<td>` element that will render `item.state`.

13\.

For the third column, “State details”, we’ll add a link to a separate
page that lists attractions only for a specific state using the
urlpattern named `details` that is pre-defined in **urls.py**.

In the table we created in **home.html**, create another `<td>` element
containing a link element, `<a>`, which displays the text “State
details”. The `href` attribute will use the <a
href="https://docs.djangoproject.com/en/3.2/ref/templates/builtins/#url"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">url</code></a> built-in tag, with
`'details'` as the pattern name. We can provide the state name as an
argument, using the <a
href="https://docs.djangoproject.com/en/3.2/ref/templates/builtins/#slugify"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">slugify</code></a> filter to remove
any spacing and capitalization.

### Creating the details page

14\.

Now that we have every state listed out and their attractions, we can
start going into details for each state in case a user wants to look at
attractions for specific states.

Create a template called **details.html**. Extend the template from
**base.html** and load in the CSS sheet like before.

15\.

Inside of the content block, add an `<h1>` that says
`This is a list of tourist attractions for` followed by the state name
with the `title` filter.

Once this is added, go ahead and click on one of the state details
buttons to see what this page looks like!

16\.

This page is going to look similar to the homepage.

Start by adding a table with the headers `Attraction` and `State` to the
`content` block.

17\.

We still want to go through each attraction. Therefore, create a loop
similar to the one from before that goes through every item in
`attractions`. This loop should also use the `dictsort:"state"` filter.

18\.

One thing we want to do differently here is that we only want to display
attractions in the selected state. We know what state we want to use
because we have a variable called `statename` passed in from
**views.py**.

To do this, we are going to want to add an `if` statement that checks to
see if the attractions state is the same as `statename`. However, we
need to add the `lower` filter to the attractions state since that is
capitalized, but `statename` is not capitalized.

19\.

Inside of the `if` statement, add a table row with two table details.
One displaying the attraction name and the other displaying the
attraction state.

If done correctly, when you click on the “State details” link, you’ll
get linked to a page that only displays that state’s attractions!

20\.

And that’s it! We now have a website that displays attractions for any
state! Go ahead and modify **views.py** to add more states and see how
our templates react! If you want, go ahead and try to add an image on
the homepage!

## Solution

[Django Project Tourist Attractions](https://www.youtube.com/watch?v=7DjKnlfACL8)

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
project_name='touristAttractions'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the App ${reset}"
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
```