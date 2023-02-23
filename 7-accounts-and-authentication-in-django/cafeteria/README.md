# Weekly Dessert

It’s time to choose some delicious desserts!

We’ve been hired by a school to work on an application for their
cafeteria’s dessert options. The principal of the school wants us to
build a voting app that allows students to choose their favorite dessert
for the upcoming week.

We have the skeleton of the application built but we want to add a layer
of authentication so that only authenticated users can vote for dessert
options, and only one admin can manage the app’s data.

We’ll end up working with the admin interface as well as implementing
the whole authentication flow and adding a security layer to our paths.

## Getting Started

### Clone the project in this repo

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `7-accounts-and-authentication-in-django` directory
- Create & activate a new virtual environment for the project
- Switch to the `cafeteria` directory
- Install project dependencies
- Apply the migrations


```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/datttrian/build-python-web-apps-with-django
cd build-python-web-apps-with-django/7-accounts-and-authentication-in-django
python3 -m venv env && source env/bin/activate
cd cafeteria
pip install -r requirements.txt
python manage.py makemigrations && python manage.py migrate
```

### Build the project with Bash Script

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `7-accounts-and-authentication-in-django` directory
- Add executable permission & execute `cafeteria.sh`
- Activate the virtual environment for the project
- Switch to `cafeteria` project
- Apply the migrations

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/datttrian/build-python-web-apps-with-django
cd build-python-web-apps-with-django/7-accounts-and-authentication-in-django
chmod +x cafeteria.sh && ./cafeteria.sh
source env/bin/activate
cd cafeteria
python manage.py makemigrations && python manage.py migrate
```

### Admin Interface

- Create super user

```bash
python3 manage.py createsuperuser
```

```sh
admin
admin@codecademy.com
admin123
admin123
y
```

### Populate Data

- Launch the Python shell 

```bash
python3 manage.py shell
```

- Create a user
- Populate data into the database & exit the Python shell

```sh
from django.contrib.auth.models import User
user = User.objects.create_user(username="Anthony",email="tony@email.com",password="tony90941")
user.save()
import datetime
from django.utils import timezone
from weeklydessert.models import Week, Choice
week1 = Week(pub_date=timezone.now() - datetime.timedelta(days=7))
week1.save()
choice1 = Choice(week=week1, dessert_choice='Apple', dessert_details='A delicious apple')
choice1.save()
choice2 = Choice(week=week1, dessert_choice='Banana', dessert_details='A delicious banana')
choice2.save()
exit()
```

### Run Development Server

- Run the development server

```bash
python manage.py runserver
```

The student will be able to sign up and vote for their favorite dessert!

## Instructions

### Admin Interface


1\.

So far, we have created the main skeleton of our weekly dessert
application. In the code editor, we’ll find our **urls.py** file, along
with our view functions in **views.py** and our login and signup
templates.

Take a few minutes to explore the code provided. Take a look at the
models under the **models/** directory to see the structure of the
objects we’ll be working with. And feel free to open other files to
understand how the application is built and what are some of the missing
parts.





2\.

Let’s provide our client with a user to create, read, update and delete
data in the Django admin.

Within the Python terminal, create a `superuser` with your own
credentials. Make sure to remember these credentials since you’ll be
using them in the next following steps.

**NOTE**: When entering the password, you might be warned that the
password and username are too similar. Bypass this warning by typing
`y`.





3\.

Now that we have a superuser created, let’s navigate into the admin
interface and log in.

In the mini-browser, go to `/admin` and type in the admin credentials.





4\.

Through the admin interface, we’re able to see our authentication and
authorization table. But we’re missing our other table holding our two
other models.

Let’s start by importing the models `Week` and `Choice` in **admin.py**.





5\.

For the models to appear on the `/admin` page, we still need to register
them.

Using the `register()` function, register both the `Week` and `Choice`
models in our **admin.py** file.





6\.

Let’s test that the models are registered. In the admin interface,
create a new dessert from the `Choice` model.




### Login and Registration


7\.

We’re able to use the admin interface to handle our data and users, but
let’s practice creating users from the Python shell.

Start by opening the Python shell and importing the `User` model.





8\.

Create a new user object with your credentials (username, email, and
password), and store it in a variable called `user`. Make sure to save
`user`.





9\.

We’ve learned what happens behind the scenes when a user logs in and how
to authenticate existing users. Instead of writing all the logic for
this, let’s take advantage of Django’s built-in authentication views.

In **urls.py** add the path `"account/"` followed by
`include("django.contrib.auth.urls")` as the second argument. Remember
to add a `,` after the `path()`!

Note that we don’t need to add the `name` attribute since Django’s
built-in auth views will provide the `name` attribute for us.





10\.

If we navigate to `account/login` our login form will be missing! This
is because our form fields are not being rendered in our login template.

In **templates/registration/login.html**. Let’s add some form rendering
tags to display a `username` and `password` field.

Once rendered, attempt to log in!





11\.

Now let’s allow other users to sign up. In **views.py**, create a new
class-based view called `SignUp`.

Add the generic `CreateView` as the argument and give it the following
properties:

-   Assign the `UserCreationForm` to the `form_class` property
-   Add the right property to redirect users to `reverse_lazy("login")`
    upon a successful registration.
-   Set the template to `"registration/signup.html"`.





12\.

We need a path for users to access the sign up page.

In **urls.py** add the path, `"signup/"`, using our class-based view as
the second argument. Let’s also assign `"signup"` to the `name`
attribute. Remember to add the `,` after the `path()` element!





13\.

Let’s attempt to sign up a new user. Navigate to `/signup` to make sure
our form is being rendered. Try out the form by signing up a new user.

Once redirected to the login page, log in with the newly created user.




### Logging Out


14\.

We can now register new users, and log them in. However, we need the
ability to log out as well.

In **views.py**, import the function `logout` function.





15\.

In `views.py`, create a logout view function called `logout_request` and
make use of Django’s built-in function `logout`.

Once a user logs out, redirect them to the `"index"` page.





16\.

Let’s add the `logout` path. In **urls.py**, create a new path,
`"logout/"`, and use our newly created view for the second argument.
Let’s also assign `"logout"` to the `name` attribute. Remember to add
the `,` after the `path()` element.





17\.

Let’s add a logout button in our header for users to log out.

In **header.html** create an anchor tag with the class name
`"logout-button"`.

Using Django’s templating language, add the `href` attribute and direct
the user to the `logout` view. Add text that also says `Log Out`.

Save the page and in the app, vote for a new dessert. After landing on
the results page, click on the “Log Out” link to make sure logging out
can happen successfully.




### Securing Your Paths


18\.

We have successfully added authentication to our app! However, our paths
are not entirely secure.

Currently, anyone can navigate to our app and vote for desserts. But we
only want to allow authenticated users to do so.

Let’s secure our home page and voting page with the `login_required`
decorator.

Start by importing the `login_required` decorator in **views.py** from
`django.contrib.auth.decorators`.





19\.

Remember decorators are used for view functions.

Add your decorator to the `index` and the `vote` views.





20\.

The home page and voting page are now secured, let’s secure our other
paths using a mixin.

Still in **views.py**, import the `LoginRequiredMixin`.





21\.

Mixins are used for class-based views. Add the `LoginRequiredMixin` to
your `DetailsView` and `ResultsView` to ensure a user is logged in in
order to access those pages.

Once implemented our app should be secured and only authenticated and
logged in users will be allowed to use it!




### Review


22\.

Great job! Now the student will be able to sign up and vote for their
favorite dessert!

Optionally, you can continue to play around with the code and challenge
yourself.

-   Try experimenting with the rendered
    <a href="https://docs.djangoproject.com/en/3.1/topics/forms/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener"><code
    class="code__2rdF32qjRVp7mMVBHuPwDS">forms</code></a> and rendering
    the user fields with different tags.
-   Use the admin interface to add another option on top of a dessert,
    perhaps a Friday snack?
-   Add a few more fields, such as `age` or `year`, within your `SignUp`
    view in order for a new user to sign up.

## Solution

[Django Project Weekly Dessert](https://www.youtube.com/watch?v=4Abe5jCjgh0)

```bash
#!/bin/bash

# Remove project directory if exists
project_name='BikeRental'
app_name='BikeRentalApp'
templates_path="$app_name"\/templates\/"$app_name"
rm -rf $project_name

# Start the project

### create & activate a new virtual environment
python3 -m venv env && source env/bin/activate
### install Django
pip install django
### create a new Django project and navigate to the project directory
django-admin startproject $project_name && cd $project_name

# Start an App
### create a new Django app
python manage.py startapp $app_name
### add RandomfortuneConfig to INSTALLED_APPS
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py

# Define models
app_urls=$(cat <<-END
from django.db import models
import datetime


BASE_PRICE = 25.00
TANDEM_SURCHARGE = 15.00
ELECTRIC_SURCHARGE = 25.00

# Create your models here.
class Bike(models.Model):
  STANDARD="ST"
  TANDEM="TA"
  ELECTRIC="EL"

  BIKE_TYPE_CHOICES=[(STANDARD,"Standard"),
  (TANDEM,"Tandem"), 
  (ELECTRIC,"Electric")]

  bike_type=models.CharField(max_length=2,choices=BIKE_TYPE_CHOICES, default=STANDARD)
  color=models.CharField(max_length=10,default="")

  def __str__(self):
      return self.bike_type + " - " + self.color


class Renter(models.Model):
  first_name =models.CharField(max_length=30)
  last_name =models.CharField(max_length=30)
  phone =models.CharField(max_length=30)
  vip_num =models.IntegerField(default=0)
  def __str__(self):
     return self.first_name +" " + self.last_name + " - " +"#"+ self.phone
      

class Rental(models.Model):
  bike=models.ForeignKey(Bike,on_delete =models.CASCADE)
  renter=models.ForeignKey(Renter,on_delete =models.CASCADE)
  date=models.DateField(default=datetime.date.today)
  price=models.FloatField(default=0.0)

  def calc_price(self,curr_price):
    self.curr_price =BASE_PRICE
    if self.bike.bike_type=="TA":
      curr_price+=TANDEM_SURCHARGE
    if self.bike.bike_type=="EL":
      curr_price+=ELECTRIC_SURCHARGE
    if self.renter.vip_num > 0:
      curr_price*=0.8
    self.price=curr_price
END
) && echo "$app_urls"  > $app_name/models.py

# Wire Up View
### Match URLs in the app
app_urls=$(cat <<-END
from django.urls import path

from . import views

urlpatterns = [
   path("", views.home, name="home"),
   path("bike/list", views.BikeList.as_view(), name="bikelist"),
   path("renter/list", views.RenterList.as_view(), name="renterlist"),
   path("rental/list", views.RentalList.as_view(), name="rentallist"),
]
END
) && echo "$app_urls"  > $app_name/urls.py
### Match URLs in the project
sed -i ''  "s,from django.urls import,from django.urls import include\,,g; s,urlpatterns = \[,urlpatterns = \[\n    path\(\'\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py

# Sending a Context to the Template
app_views=$(cat <<-END
from django.shortcuts import render
from .models import Bike,Renter,Rental
from django.views.generic import ListView

# Create your views here.
class BikeList(ListView):
    model=Bike
    template_name="BikeRentalApp/bikelist.html"

class RenterList(ListView):
    model=Renter
    template_name="BikeRentalApp/renterlist.html"

class RentalList(ListView):
    model=Rental
    template_name="BikeRentalApp/rentallist.html"


def home(request):
    return render(request, 'BikeRentalApp/home.html')
END
) && echo "$app_views"> $app_name/views.py

# Create a Template
mkdir -p $templates_path

# Render Context Inside Templates
templates_base=$(cat <<-END
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Rent-a-Bike</title>
        {% block head %}{% endblock %}
    </head>
    <body>
        <h1>Welcome to Rent-a-Bike!</h1>
        {% block content %}{% endblock %}
        <a href="{% url 'home' %}">Return Home</a>
    </body>
</html>
END
) && echo "$templates_base" > $templates_path/base.html
templates_home=$(cat <<-END
{%  extends "./base.html" %}
{% load static %}
{% block head %}
    <link rel="stylesheet" href="{% static 'BikeRentalApp/styles.css' %}">
{% endblock %}
{%  block content %}
    <h2>Bike Rental Options:</h2>
    <div id="list-container">
        <ul>
            <li>
                <a href="{% url 'bikelist' %}">Available Bikes</a>
            </li>
            <li>
                <a href="{% url 'renterlist' %}">Renters</a>
            </li>
            <li>
                <a href="{% url 'rentallist' %}">Rentals</a>
            </li>
        </ul>
    </div>
{% endblock %}
END
) && echo "$templates_home" > $templates_path/home.html
templates_bikelist=$(cat <<-END
{% extends './base.html' %}
{% block content %}
    <h2>BIKE LIST</h2>
    <table id="patients">
        <tr>
            <th>BIKE TYPE</th>
            <th>COLOR</th>
        </tr>
        {% for bike in bike_list %}
            <tr>
                <td>{{ bike.bike_type }}</td>
                <td>{{ bike.color }}</td>
            </tr>
        {% endfor %}
    </table>
{% endblock %}
END
) && echo "$templates_details" > $templates_path/bikelist.html

templates_rentallist=$(cat <<-END
{% extends './base.html' %}
{% block content %}
    <h2>RENTAL LIST</h2>
    <table id="patients">
        <tr>
            <th>BIKE</th>
            <th>RENTER</th>
            <th>DATE</th>
            <th>PRICE</th>
        </tr>
        {% for rental in rental_list %}
            <tr>
                <td>{{ rental.bike }}</td>
                <td>{{ rental.renter }}</td>
                <td>{{ rental.date }}</td>
                <td>{{ rental.price }}</td>
            </tr>
        {% endfor %}
    </table>
{% endblock %}
END
) && echo "$templates_details" > $templates_path/rentallist.html

templates_renterlist=$(cat <<-END
{% extends './base.html' %}
{% block content %}
    <h2>RENTAL LIST</h2>
    <table id="patients">
        <tr>
            <th>FIRST NAME</th>
            <th>LAST NAME</th>
            <th>PHONE</th>
            <th>VIP NUMBER</th>
        </tr>
        {% for renter in renter_list %}
            <tr>
                <td>{{ renter.first_name }}</td>
                <td>{{ renter.last_name }}</td>
                <td>{{ renter.phone }}</td>
                <td>{{ renter.vip_num }}</td>
            </tr>
        {% endfor %}
    </table>
{% endblock %}
END
) && echo "$templates_details" > $templates_path/renterlist.html

# List installed Python packages
pip freeze -l > requirements.txt
```