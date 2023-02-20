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
) && echo "$templates_bikelist" > $templates_path/bikelist.html

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
) && echo "$templates_rentallist" > $templates_path/rentallist.html

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
) && echo "$templates_renterlist" > $templates_path/renterlist.html

# List installed Python packages
pip freeze -l > requirements.txt