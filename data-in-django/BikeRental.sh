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
project_name='BikeRental'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the App ${reset}"
app_name="BikeRentalApp"
python manage.py startapp $app_name
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${red}>>> Creating schema${reset}"
echo "${green}>>> Providing data for models.py${reset}"
sed -i '' 's/from django.db import models/from django.db import models\
import datetime\
\
BASE_PRICE = 25.00\
TANDEM_SURCHARGE = 15.00\
ELECTRIC_SURCHARGE = 25.00/g' $app_name/models.py
echo "${green}>>> Importing app’s URLconfig setup in the project’s URLconfig${reset}"
sed -i '' 's/from django.urls import/from django.urls import include,/g' $project_name/urls.py
echo "${red}>>> Creating the Bike, Renter and Rental Model${reset}"
echo "$(cat <<-END
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
)"  >> $app_name/models.py
# List installed Python packages
pip freeze -l > requirements.txt