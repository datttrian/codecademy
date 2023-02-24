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
project_name='fortuneteller'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the Random Fortune App ${reset}"
app_name="randomfortune"
python manage.py startapp $app_name
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${red}>>> Creating a Template${reset}"
echo "${green}>>> Creating templates directory${reset}"
templates_path="$app_name"\/templates\/"$app_name"
mkdir -p $templates_path
echo "${green}>>> Creating fortune.html${reset}"
cat << 'EOF' > $templates_path/fortune.html
<!DOCTYPE html>
<html lang="en">
<head>
 <title>Django Fortune Teller</title>
 <style>
   body {
     text-align: center;
   }
 </style>
</head>
<body>
 
 <h1>Here is your fortune:</h1>
 
 <p>Place holder for fortune</p>
 
</body>
</html>
EOF
echo "${red}>>> Creating a View Function${reset}"
sed -i '' 's/# Create your views here./# Create your views here.\
def fortune(request):\
  return render(request, \"randomfortune\/fortune.html\")/g' $app_name/views.py
echo "${red}>>> Wiring Up View${reset}"
cat << 'EOF' > $app_name/urls.py
from django.urls import path
from . import views

urlpatterns = [
  path('', views.fortune)
]
EOF
echo "${green}>>> Importing app’s URLconfig setup in the project’s URLconfig${reset}"
sed -i '' 's/from django.urls import/from django.urls import include,/g' $project_name/urls.py
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n    path\(\'\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py
echo "${red}>>> Sending a Context to the Template in views.py${reset}"
echo "${green}>>> Adding some strings containing fortune-telling sayings in the fortuneList${reset}"
sed -i '' 's/# Create your views here./# Create your views here.\
fortuneList = [\
  \"Here is a good luck charm\",\
  \"Do not give up, keep pushing\",\
  \"Tough times do not last, tough people do\",\
  \"Forward ever, backwards never\",\
  \"We are gonna make it\",\
  \"To infinity and beyond\",\
  \"We are mooning\",\
]\
/g' $app_name/views.py
echo "${green}>>> Importing the random module at the top of views.py${reset}"
sed -i '' 's/from django.shortcuts import render/from django.shortcuts import render\
import random/g' $app_name/views.py
echo "${green}>>> Creating a context variable to send with the template in views.py${reset}"
sed -i '' 's/def fortune(request):/def fortune(request):\
  fortune = random.choice(fortuneList)\
  context = {\
    \"fortune\": fortune\
  }/g; s/return render(request, \"randomfortune\/fortune.html\")/return render(request, \"randomfortune\/fortune.html\", context)/g' $app_name/views.py
echo "${red}>>> Rendering Context Inside Template fortune.html${reset}"
sed -i '' 's/<p>Place holder for fortune<\/p>/<p>{{ fortune }}<\/p>/g' $templates_path/fortune.html
# List installed Python packages
pip freeze -l > requirements.txt