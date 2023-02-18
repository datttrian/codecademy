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

### Clone the project in this repo

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `4-data-in-django` directory
- Create & activate a new virtual environment for the project
- Switch to the `BikeRental` directory
- Install project dependencies
- Apply the migrations


```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/4-data-in-django
python3 -m venv env && source env/bin/activate
cd BikeRental
pip install -r requirements.txt
python manage.py makemigrations && python manage.py migrate
```

### Build the project with Bash Script

- Remove the repository if exists
- Clone the repository from Github
- Switch to the `4-data-in-django` directory
- Add executable permission & execute `BikeRental.sh`
- Activate the virtual environment for the project
- Switch to `BikeRental` project
- Apply the migrations

```bash
rm -rf build-python-web-apps-with-django
git clone https://github.com/dattranvnu/build-python-web-apps-with-django
cd build-python-web-apps-with-django/4-data-in-django
chmod +x BikeRental.sh && ./BikeRental.sh
source env/bin/activate
cd BikeRental
python manage.py makemigrations && python manage.py migrate
```

### Populate Data

- Launch the Python shell 

```bash
python3 manage.py shell
```

- Populate data into the database & exit the Python shell

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

### Run Development Server

- Run the development server

```bash
python manage.py runserver
```

## Instructions

### Planning



1\.

Let’s first think about the schema provided. This step is very important
because you should start thinking about the underlying shape of the data
needed to support your app.

Before you write any code, check out **models.py** to see what’s
provided.



### Creating the Bike Model



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



### Creating the Renter Model



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



### Creating the Rental Model



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



### Database Setup



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



### Populating Database and Running Queries



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



### Finishing up



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

## Solution


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

[Django Project Djaunty Rent-a-Bike](https://www.youtube.com/watch?v=k6xBxeb_V6o)

hey everyone this is rob with codecademy i'm a software developer based out of seattle washington in this video we're going to walk through the django project jaunty rent the bike we're going to take what we have learned about databases in django to complete this project 

to complete this project you'll need to be familiar with how to design a schema for the data in an application how to create a model with characteristics and behavior how to relate a model to others using a foreign key how to commit our models to the database with a two-step migration procedure also how to use the four basic functions of a database crud create read update and delete and finally how to use query methods on our database 

alright let's get started the owners of jaunty rent-a-bike are recruiting your special abilities and working with databases and modules they want you to help them update their paper and pencil system now their bikes are rented for the day at set prices and they mainly care about three things bikes renters and rentals which is going to be all the information we need for our schema we can see for our bike that we're going to want to track the bike type whether it's standard tandem or electric bikes and also the color for the renter we want to get the renter's first name last name their phone number and their vip number and then finally for the rental we're going to track the bike that's being rented and the renter who is renting the bike and we're also going to get the date of the rental along with the price in this project we don't have to worry about the templates or the views because the owners have asked you to solely focus your skills on the models 

let's move on to our first section which is planning we've had some time to think about the schema now let's go ahead and look at our models.pi that's we're going to write all the code for this project we can see that we're importing models from django db and also we're importing in date time we can see that three constants have been created for our bike price a tandem bike surcharge and also an electric bike surcharge and we'll go ahead and write our models down below so let's mark step one as complete 

and we'll move on to step two in this section we're going to work on creating our bike model so let's go ahead and create a bike model on line nine this will be class bike and all of our models are going to accept models that we imported in on line 1 dot model perfect we'll mark step 2 is complete 

and move on to step 3. now we can tell by our provided constants on lines four through six that there's three specific types of bike so let's go ahead and implement a choice option inside of our bike class we'll go ahead and create three constants standard which will be set to a value of the string st tandem which we set to string ta and then finally electric which will be set to a value of el awesome let's mark step three as complete 

and we'll move on to step four now that we have our constants set up let's go ahead and create a list we'll call this bike type choices we'll set this to a list and we're gonna fill it with three tuples we've provided you with the first example of standard our constant we just created and the string standard our next two will be similar we'll have tandem and the string tandem and then finally we'll have electric and just a reminder you can always open up the hint if you need some help accomplishing a step all right let's mark step four is complete 

and we'll move on to step five let's add another field bike type and this is going to be a character field and we'll go ahead and set this equal to models dot car field and we have a max length set equal to 2 and choices which we'll set equal to bike type choices and then finally we'll go ahead and default to standard great let's mark step five is complete 

and move on to step six we want a field for our bikes color so let's create a field color and this is going to be a character field so models dot car field and we'll give this a max length set equal to 10 and a default set equal to an empty string all right great well mark step six is complete 

and we'll move on to step seven i'm going to add a little bit of space in our text editor next thing we want to do is override our string method we want the result to be something similar to this below where we have the bike type in this case standard then a space hyphen space then our bike color so let's override the string method so def double underscore str double underscore and our methods are always going to take a value of self passed in and we want to return first the bike type so self dot bike type and then we want that space hyphen space and then we want to add the byte color so we'll add self dot color perfect let's mark step seven is complete 

and we'll move on to our next section we're going to work on creating the renter model so this is going to be class renter and we'll pass in models dot model and we're gonna have the following fields first name last name phone and vip so first name is gonna be a character field so models dot car field and we'll give it a max length set equal to 30 and we're going to do the same for last name so i'm just going to go ahead and copy this line of code and paste it in and change this to last name and it looks like we also want a phone as well this will be a car field so i'll change last name to phone and a max length of 15 and then finally we want a vip number this is going to be an integer field and we're going to give this a default value of 0. okay that's all the fields that we needed to add to our renter class we'll mark step 8 is complete 

and move on to step 9. again we're going to override the string method so def double underscore str double underscore we'll pass in self and we want to return something that has the first name space last name and then a space hyphen space and the pound symbol and then the phone number to accomplish this by returning self dot first name plus space plus self dot last name plus a space a hyphen a space then the pound symbol and then finally self dot phone all right we're done with step nine 

let's go ahead and move on to our next section working on creating the rental model this is our last model so we'll say class rental and we'll pass in models dot model all right every rental is going to include the bike that's being rented and the renter who is renting it so let's start with our bike it's going to be a foreign key so models dot foreign key and we're going to pass in our model bike and upon our foreign keys deletion it should cascade so on delete equals models dot cascade now we're going to do something similar for the renter so i'm going to copy this line of code and paste it in and change bike to renter and this is a foreign key field and we'll change the model bike to renter and again upon the foreign keys deletion it should cascade all right our next field is going to be a date field so date is going to be set equal to models dot date field and it's going to have a default set equal to date time dot date dot today and date time is the module that we imported in at the top of our file now finally we have a float field price this is going to be models dot float field with the default set equal to zero 0.0 all right we have our bike renter date and price fields all finished up 

now while our price defaults to 0.0 we need a method to calculate the actual price so let's create a method calc price we're going to pass in self and we'll begin by creating a current price field set to the value of base price this was the constant at the top of our file for the base price of a bike so current price is set to base price let's mark step 11 is complete 

and we'll move on to step 12. in this step we're going to add some additional charges based on what bike is being used and also apply a discount if they're a vip member so first we'll ask if self dot bike which is the bike being rented and we're going to get the bike type if it is equal to ta so if it's a tandem bike make sure you have this colon at the end of it then we're going to take our current price which is initially that 25 dollars and we're going to add the value of the tandem surcharge which is another of our constants at the top of our file which means that we're adding another fifteen dollars to the twenty-five dollars so next we're going to check if it's an electric bike so if self dot bike dot bike type is equal to el for electric then we'll take our current price and we'll add electric surcharge which is 25 now we want to check if a user is a vip to offer them their discount so if self.renter remember we have access to our model so we know what renter this rental belongs to if their vip number is greater than zero remember defaults to zero but if it's greater than zero then we're going to give them their discount we're going to take the current price whatever it is whether it's the fifteen dollar base price or the tandem surcharge raising it to forty dollars or the electric surcharge raising it to fifty dollars and we're going to multiply that value by point eight so they're going to get a 20 discount and then at the end of that we're going to set self.price what we have on line 38 to whatever current price is all right well mark step 12 is complete along with step 13 where we set the price field as current price perfect 

okay now let's go ahead and work on our database setup with all of our models set up and our code saved we can start to set up our schema in our database so we've provided you with the command here python3 manage dot apply make migrations all right everything looks as we would expect if there is an error message we've given you some advice in the hint how to problem solve what error you might be getting 

now in step 15 our migration file now needs to be run to properly set up the database so python3 manage dot pi migrate all right everything looks great let's mark step 15 is complete 

and let's start populating our database and running queries i'm going to go ahead and clear out this terminal here just so things look a little bit more clean let's start our python shell with python3 manage.pi shell and now that we've done that let's go ahead and import our models you can take a look at a hint to see how we might do this we'll say from bike rental app dot models we're going to import in our models that we created bike renter and rental okay let's mark step 16 is complete 

and we'll move on to step 17. in this step we want to start to make instances of our models we're going to go ahead and start with bikes and remember our bike model has two fields bike type and color let's make five of these all right let's go ahead and create this first instance of a bike together bike one will set equal to bike and this is going to look for a bike type field and we're going to provide a value for the bike type field bike type equals and we'll say el for electric and a comma in our next field color and let's go ahead and set this to blue and when we're done with that let's go ahead and save our instance perfect you can check and see that it's there awesome electric and blue now i'll go ahead and do this quickly for the next four bikes you're free to follow my example or come up with ones of your own all right i've created five instances of bikes and saved them all hopefully you've built out all yours yourself but if you need to pause the video and take a look at mine you're free to follow my pattern as well for now with step 17 as complete i might go ahead and clear out this terminal over here clean things up 

now let's go ahead and move on to our renter we're going to create three renter instances and we want to make sure to use the right property types and save them to the database you can open up the hint to see that the property types are first name last name phone and vip number let's go ahead and build out this first one together renter 1 will be set equal to we'll name our renter model and our first name set equal to jill a last name set equal to simpson then we need to get a phone field which is going to be a car field and we'll set this equal to 5 5 5. five five five five five five five and then finally a vip number and we'll make jill a vip perfect and we'll go ahead and save renter one go ahead and build the next two on your own or you can follow mine that i'll quickly input okay our three renters have been added and saved let's mark step 18 is complete 

and in step 19 we're gonna work on our rental instances so let's go ahead and create our rental instances using at least two different bike objects and renter objects now to get some use with our query methods you can take advantage of first get all etc so i'm going to clear out the terminal and i'm going to create a first bike and i'm going to set this equal to bike dot objects dot first and we can see that first bike is that bike we created it's electric and it's blue next i'm going to create a renter first renter and i'm going to set this equal to our renter model objects dot first as well and so first renter is that jill simpson with her provided phone number and so let's go ahead and create our first rental instance rental one will be our rental model and we need a bike so bike will be set equal to first bike and we also need a renter field and renter is going to be set equal to first renter let's make sure to save it now let's go ahead and look at rental one and we can see that it's in there you might even reconsider overriding the string method so that we print out more useful information in the terminal so go ahead and create a second rental instance on your own and i'll go ahead and create one quickly on my site as well i'll make sure to save the rental perfect we'll go ahead and mark step 19 as complete 

and we'll move on to step 20 where you can fine tune your query skills a little bit more i'll clear out the terminal and let's go ahead and practice using filter and exclude let's go ahead and start with the filter method to come up with a collection of only blue bikes so let's create a variable blue bikes and we'll set this equal to bike dot objects dot filter and we use the field of color and this is a car field so we're looking for the color blue now when we type in blue bikes we can see that we did create two bikes an electric blue bike and a separate electric blue bike perfect now let's try this one more time i'll clear out the terminal and we'll use the exclude method for a collection of bikes that aren't blue so i've created a variable name non blue bikes and set the sequel to bike for our model dot objects dot exclude and we'll pass in the field of color and then the color blue the color we want to exclude so non blue bikes shows that in our database we have a pink bike an orange bike and a yellow bike all right great job we'll mark step 20 as complete 

congratulations on making it this far we've done everything that the people of jaunty rent-a-bike have asked us to do for them they're no longer reliant on paper and pencil we've given you a few different suggestions below you can implement to enhance this project and further enhance your skills and abilities in this project we're able to design a schema for jaunty build a bike implementing our models with their specific character fields and behavior methods we're able to relate our rental model to our renter and bike model with the foreign key as well as commit our models to our database using a two-step migration procedure and we got a good bit of practice using query methods on our database great job this is rob with codecademy happy coding 