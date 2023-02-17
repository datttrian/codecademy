# Djaunty Rent-a-Bike

The owners of the Djaunty Rent-a-Bike company have asked that you help
them revamp their old paper and pencil method of renting out bikes. They
know that you’ve learned about Django models, databases, and “CRUD” —
and they’re excited to see you apply your skills.

In your conversation with the owners, you realized that their booking
system is rather streamlined. Their bikes are rented for the day at a
set price and they mainly care about three things: bikes, renters, and
rentals. You can boil it down to a schema like:

-   `Bike`
    -   `bike_type` (Rent-a-Bike offers standard, tandem, and electric
        bikes)
    -   `color` (color of the bike)
-   `Renter`
    -   `first_name` (the first name of the renter)
    -   `last_name` (the last name of the renter)
    -   `phone` (the phone number of the renter)
    -   `vip_num` (renter’s VIP status and number)
-   `Rental`
    -   `bike` (what bike is being rented)
    -   `renter` (who is renting the bike)
    -   `date` (the date of the rental)
    -   `price` (how much does the bike rental cost)

The owners have asked you to solely focus your skills on the models and
not worry about the templates or views.

## Getting Started

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `4-data-in-django` directory
- Create & activate a new virtual environment for the project
- Switch to the `BikeRental` directory
- Install project dependencies
- Apply the migrations
- Launch the Python shell 

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/4-data-in-django
python3 -m venv env && source env/bin/activate
cd BikeRental
pip install -r requirements.txt
python manage.py makemigrations && python manage.py migrate
python3 manage.py shell
```

- Populate Data into the Database & exit the Python shell

```sh
>>> from BikeRentalApp.models import Bike, Renter, Rental
>>> bike1 = Bike(bike_type="ST", color="black")
>>> bike1.save()
>>> bike2 = Bike(bike_type="TA", color="green")
>>> bike2.save()
>>> bike3 = Bike(bike_type="EL", color="white")
>>> bike3.save()
>>> bike4 = Bike(bike_type="EL", color="red")
>>> bike4.save()
>>> bike5 = Bike(bike_type="TA", color="blue")
>>> bike5.save()
>>> renter1 = Renter(first_name="John", last_name="Boo", phone="0236985471", vip_num=2)
>>> renter1.save()
>>> renter2 = Renter(first_name="Beck", last_name="Sam", phone="0243110022", vip_num=4)
>>> renter2.save()
>>> renter3 = Renter(first_name="Lee", last_name="Shim", phone="050698521")
>>> renter3.save()
>>> first_bike = Bike.objects.first()
>>> last_bike = Bike.objects.last()
>>> first_renter = Renter.objects.first()
>>> last_renter = Renter.objects.last()
>>> rental1 = Rental(bike=last_bike, renter=first_renter)
>>> rental1.save()
>>> rental2 = Rental(bike=first_bike, renter=last_renter)
>>> rental2.save()
>>> exit()
```

- Run the development server

```bash
python manage.py runserver
```

## Getting Started with Bash Script

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `4-data-in-django` directory
- Add executable permission & execute `BikeRental.sh`
- Activate the virtual environment for the project
- Switch to `BikeRental` project
- Apply the migrations
- Launch the Python shell 

- Run the development server

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/4-data-in-django
chmod +x BikeRental.sh && ./BikeRental.sh
source env/bin/activate
cd BikeRental
python manage.py makemigrations && python manage.py migrate
python3 manage.py shell
```

- Populate Data into the Database & exit the Python shell

```sh
>>> from BikeRentalApp.models import Bike, Renter, Rental
>>> bike1 = Bike(bike_type="ST", color="black")
>>> bike1.save()
>>> bike2 = Bike(bike_type="TA", color="green")
>>> bike2.save()
>>> bike3 = Bike(bike_type="EL", color="white")
>>> bike3.save()
>>> bike4 = Bike(bike_type="EL", color="red")
>>> bike4.save()
>>> bike5 = Bike(bike_type="TA", color="blue")
>>> bike5.save()
>>> renter1 = Renter(first_name="John", last_name="Boo", phone="0236985471", vip_num=2)
>>> renter1.save()
>>> renter2 = Renter(first_name="Beck", last_name="Sam", phone="0243110022", vip_num=4)
>>> renter2.save()
>>> renter3 = Renter(first_name="Lee", last_name="Shim", phone="050698521")
>>> renter3.save()
>>> first_bike = Bike.objects.first()
>>> last_bike = Bike.objects.last()
>>> first_renter = Renter.objects.first()
>>> last_renter = Renter.objects.last()
>>> rental1 = Rental(bike=last_bike, renter=first_renter)
>>> rental1.save()
>>> rental2 = Rental(bike=first_bike, renter=last_renter)
>>> rental2.save()
>>> exit()
```

- Run the development server

```bash
python manage.py runserver
```

## Planning



1\.

Let’s first think about the schema provided. This step is very important
because you should start thinking about the underlying shape of the data
needed to support your app.

Before you write any code, check out **models.py** to see what’s
provided.



## Creating the Bike Model



2\.

Now that you’ve had the chance to think about the program, it’s time to
code! Let’s first start by creating a `Bike` model.





3\.

You can tell from the provided constants that there are 3 specific types
of bikes. Since the `Bike` will have a field for bike type, this is a
great time to implement a choice option.

Inside the `Bike` class, create 3 constants:

-   `STANDARD` with a value of `"ST"`
-   `TANDEM` with a value of `"TA"`
-   `ELECTRIC` with a value of `"EL"`





4\.

With the constants set up, you can create a list called
`BIKE_TYPE_CHOICES` that stores tuples. Here’s an example of how the
first tuple should look.

-   `(STANDARD, "Standard")`

Create the other two using that example.





5\.

With the setup out of the way, you can create a character field called
`bike_type`. Provide the arguments:

-   a max length of 2,
-   `choices` that only accept values from `BIKE_TYPE_CHOICES`
-   defaults to `STANDARD`.





6\.

Bikes also have a color and you should track what colors the rental
bikes are.

Add a new field called `color` which:

-   is a character field
-   has a max length of `10` characters
-   defaults to an empty string (`""`)





7\.

You’ve added fields for `Bike`, but the `__str__` method should be
overridden.

Define a new `__str__` method that returns a string with the bike type
and color, like:

```python
"ST - blue"
```



## Creating the Renter Model



8\.

Since `Bike` is set up, you can create the `Renter` model now.

Create a new `Renter` class that has the following fields:

-   `first_name` a character field that has a max length of `30`
-   `last_name` a character field with max length of `30`
-   `phone` a character field with max length of `15`
-   `vip_num` an integer field that defaults to `0`





9\.

`Renter` should also have a custom `__str__` method.

Have the `__str__` method return the instance’s first name, last name,
and phone as a string. Here’s a sample output:

```python
Padma Lak - #123-456-7890
```



## Creating the Rental Model



10\.

`Bike` and `Renter` are set up, the only one left is `Rental`.

Start with the fields:

-   `bike` which is a foreign key for the `Bike` model
    -   upon the foreign key’s deletion, it should cascade
-   `renter` which is a foreign key for the `Renter` model
    -   upon the foreign key’s deletion, it should cascade
-   `date` a date field which defaults to today’s date
    (`datetime.date.today`)
-   `price` a float field which defaults to `0.0`





11\.

While prices default to `0.0`, you’ll need a method to calculate the
actual price.

Define a method called `calc_price`. Inside the function body, create a
variable called `curr_price` with a value of `BASE_PRICE`.





12\.

You can now implement the additional charges.

Add the following conditionals:

-   If `self.bike`‘s `.bike_type` is `"TA"` , then increase `curr_price`
    by `TANDEM_SURCHARGE`.
-   If `self.bike`‘s `.bike_type` is `"EL"` , then increase `curr_price`
    by `ELECTRIC_SURCHARGE`.
-   If `self.renter`‘s `.vip_num` is greater than `0`, then discount
    `curr_price` by 20%.





13\.

Still within the `.calc_price()` method, finalize the cost of the
`Rental` instance by setting the `.price` field as `curr_price`.



## Database Setup



14\.

Nice, your models are all set up now! This means it’s time to set up the
schema in your database.

In the terminal execute the command:

```python
python3 manage.py makemigrations
```

If there are any error messages, read through and fix them before
proceeding.





15\.

The migration file now needs to be run to properly set up your database.
Run:

```python
python3 manage.py migrate
```



## Populating Database and Running Queries



16\.

To check that your models actually work, make some instances!

Start up the Python shell using:

```python
python3 manage.py shell
```

Then, import your models!





17\.

You’re now set to make instances of your models.

You can first start with `Bike`s. Remember to add in both `bike_type`
and `color` fields. Also, you’ll need to save these instances to the
database! Try to create ~ 5 `Bike` instances.





18\.

Moving on to `Renter`.

Create ~ 3 `Renter` instances with the proper field types and save them
to the database.





19\.

With instances of both `Bike` and `Renter` in the database, you can now
make `Rental` instances!

Create at least 2 `Rental` instances that use 2 different `Bike` objects
and 2 different `Renter` objects. You should practice using querying
methods to find the objects you want (e.g. `.first()`, `.get()`,
`.all()`, etc.)!





20\.

Now try to fine-tune your querying using methods like `.filter()` and
`.exclude()` and even reverse relationship! It’s up to you how you want
to practice.



## Finishing up



21\.

Congratulations! You’ve implemented the models and helped out Djaunty
Rent-a-Bike!

Now you can rest easy and let your program take care of the work of
tracking bikes, renters, and rentals.

However, if you want to challenge yourself, consider:

-   Adding extra fields to the existing models, e.g. an AM/PM field for
    the `Rental` model.
-   Marking when a `Bike` is rented and cannot be booked.
-   Find out how many rentals one specific person has.
-   Adding in metadata for the models.

```bash
#!/bin/bash

# Remove project directory if exists
project_name='BikeRental'
app_name='BikeRentalApp'
templates_path="$app_name"\/templates\/"$app_name"
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
python manage.py startapp $app_name
## add RandomfortuneConfig to INSTALLED_APPS
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
## Match URLs in the app
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
## Match URLs in the project
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
