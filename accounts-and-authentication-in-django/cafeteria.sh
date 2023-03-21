#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${red}>>> Initiate the Django project ...${reset}"
project_name='cafeteria'
app_name="weeklydessert"
templates_path="$app_name"\/templates
echo "${green}>>> Remove project directory if exists${reset}"
rm -rf $project_name
rm -rf env
echo "${green}>>> Creating virtualenv${reset}"
echo "${green}>>> venv is created${reset}"
python3 -m venv env
echo "${green}>>> Activate the venv${reset}"
source env/bin/activate
echo "${green}>>> Upgrading pip version${reset}"
pip install -U  --upgrade pip
echo "${green}>>> Installing Django${reset}"
pip install django
echo "${green}>>> Creating the project '$project_name' ${reset}"
django-admin startproject $project_name && cd $project_name
echo "${green}>>> Creating the app '$app_name' ${reset}"
python manage.py startapp $app_name
echo "${red}>>> Creating the main skeleton of the $app_name application ...${reset}"
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${green}>>> Applying the locale-dictated format to settings.py${reset}"
sed -i '' "s,USE_I18N = True,USE_I18N = True\n\nUSE_L10N = True,g"  $project_name/settings.py
echo "${green}>>> Disabling auto-incrementing primary key in settings.py${reset}"
sed -i '' '123,$d' $project_name/settings.py
echo "${green}>>> Adding Week and Choice models in models.py${reset}"
cat << 'EOF' > $app_name/models.py
import datetime
from django.utils import timezone
from django.db import models

class Week(models.Model):
  pub_date = models.DateTimeField("date published")

  # When creating a new instance, we want to inform students of the menu for the following week starting on Monday:
  def start_of_week(self):
		# Using the module `datetime`, we can take todays date:
    today = datetime.date.today()
		# Subtract the number of days which already passed this week (this gets you 'last' monday).
		# And add one week
    start_of_week = today + datetime.timedelta(days=-today.weekday(), weeks=1)
    return start_of_week

  def was_published_recently(self):
    return self.pub_date >= timezone.now() - datetime.timedelta(days=1)


class Choice(models.Model):
  week = models.ForeignKey(Week, on_delete=models.CASCADE)
  dessert_choice = models.CharField(max_length=200)
  dessert_details = models.CharField(max_length=200)
  votes = models.IntegerField(default=0)
  def __str__(self):
    return self.dessert_choice
EOF
echo "${green}>>> Editing admin.py${reset}"
cat << 'EOF' > $app_name/admin.py
from django.contrib import admin
# Import your Week and Choice models below:

# Register your Week and Choice models below:


EOF
echo "${green}>>> Creating index, details, results and vote in views.py${reset}"
cat << 'EOF' > $app_name/views.py
from django.shortcuts import render, redirect
from django.http import Http404
from django.urls import reverse
from .models import Week, Choice
# import the login_required decorator and the LoginRequiredMixin mixin below


# Import the logout function from django.contrib.auth below

from django.urls import reverse_lazy
from django.contrib.auth.forms import UserCreationForm
from django.views.generic import ListView, DetailView
from django.views.generic.edit import CreateView

# Add login_required decorator:
def index(request):
  latest_week_poll = Week.objects.get(pk=1)
  context = {
    "name": request.user,
    "week_poll": latest_week_poll
  }
  return render(request, "index.html", context)

# Create your class-based Signup view below:

class DetailsView(DetailView):
  model = Week
  template_name = "detail.html"

class ResultsView(DetailView):
  model = Week
  template_name = "results.html"

# Create your logout function, logout_request, below:

# Add login_required decorator:
def vote(request, week_id):
  try:
    week = Week.objects.get(pk=week_id)
    selected_choice = week.choice_set.get(pk=request.POST["choice"])
  except Week.DoesNotExist:
    raise Http404("Poll for said week does not exists")
  else:
    selected_choice.votes += 1
    selected_choice.save()
    return redirect("results", week_id)
EOF
echo "${green}>>> Adding path to home, details, results and vote links in app urls.py${reset}"
cat << 'EOF' > $app_name/urls.py
from django.urls import path, include

from . import views

urlpatterns = [
	path("", views.index, name="index"),
	# Add a path to your auth links below:
  
	# Add a path to your signup request below:

	# Add a path to your logout request below:

	path("polls/<int:pk>/", views.DetailsView.as_view(), name="detail"),
	path("polls/<int:pk>/results/", views.ResultsView.as_view(), name="results"),
	path("polls/<int:week_id>/vote/", views.vote, name="vote"),
]
EOF
echo "${green}>>> Adding app paths to project urls.py${reset}"
sed -i ''  "s,from django.urls import,from django.urls import include\,,g; s,urlpatterns = \[,urlpatterns = \[\n    path\(\'\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py
echo "${red}>>> Creating templates${reset}"
echo "${green}>>> Creating templates directory${reset}"
mkdir -p $templates_path
echo "${green}>>> Creating templates/registration directory${reset}"
mkdir -p $templates_path/registration
echo "${green}>>> Creating header.html${reset}"
cat << 'EOF' > $templates_path/header.html
{% load static %}

<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/header.css' %}">

<div class="header">
  <img src="{% static 'weeklydessert/Dessert.png' %}" >
	{% if user.username %}
	  {% comment %} Add your logout link below {% endcomment %}
    
  {% endif %}
  <div class="header-content">
    <h1 class="header-title">Dessert Island</h1>
    {% if user.username %}
    <h4 class="header-greet">Welcome {{ user.username }}!</h4>
    {% endif %}
  </div>
</div>

{% block content%}
{% endblock %}
EOF
echo "${green}>>> Creating index.html${reset}"
cat << 'EOF' > $templates_path/index.html
{% extends "header.html"%}

{% block content %}
{% load static %}
<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/styles.css' %}">

<div class="vote-block">
  {% if week_poll %}
    <h2>Vote below for the next desert of the week!<h1>
    <a class="poll-link" href="/polls/{{ week_poll.id }}/">Week of: {{ week_poll.start_of_week }}</a>
  {% else %}
    <p>No polls are available.</p>
  {% endif %}
<div>

{% endblock %}
EOF
echo "${green}>>> Creating registration/login.html${reset}"
cat << 'EOF' > $templates_path/registration/login.html
{% extends "header.html" %}

{% block content %}
{% load static %}
<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/login.css' %}">

<div class="login-form">
<h2>Please login</h2>
  <form class="login" method="post">
      <div>
        {% csrf_token %}
          {% comment %} Add your form rendering tags below {% endcomment %}
          
        <input type="submit" value="Login"/>
      </div>
  </form>
</div>
{% endblock %}
EOF
echo "${green}>>> Creating registration/signup.html${reset}"
cat << 'EOF' > $templates_path/registration/signup.html
{% extends "header.html" %}

{% block content %}
{% load static %}
<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/signup.css' %}">
<div class="signup-form">
<h2>Sign Up</h2>
	<form class="signup" method="POST">
			<div>
				{% csrf_token %}
				{{ form.as_p }}
				<input type="submit" value="Signup"/>
			</div>
	</form>
</div>
{% endblock %}
EOF
echo "${green}>>> Creating detail.html${reset}"
cat << 'EOF' > $templates_path/detail.html
{% extends "header.html" %}

{% block content %}

{% load static %}
<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/detail.css' %}">

<h1>Week of: {{ week.start_of_week }}</h1>

{% if error_message %}<p><strong>{{ error_message }}</strong></p>{% endif %}

<form action="{% url 'vote' week.id %}" method="post">
{% csrf_token %}
{% for choice in week.choice_set.all %}
    <input type="radio" name="choice" id="choice{{ forloop.counter }}" value="{{ choice.id }}">
    <label for="choice{{ forloop.counter }}">{{ choice.dessert_choice }}</label><br>
		<p>{{ choice.dessert_details }}</p>
{% endfor %}
<input type="submit" value="Vote">
</form>

{% endblock %}
EOF
echo "${green}>>> Creating results.html${reset}"
cat << 'EOF' > $templates_path/results.html
{% extends "header.html" %}

{% block content %}
<h1>Week of: {{ week.start_of_week }}</h1>

<ul>
{% for choice in week.choice_set.all %}
  <li>{{ choice.dessert_choice }} -- {{ choice.votes }} vote{{ choice.votes|pluralize }}</li>
{% endfor %}
</ul>

<a href="{% url 'detail' week.id %}">Vote again?</a>
<a href="{% url 'index' %}">Home</a>
{% endblock %}
EOF
echo "${red}>>> Creating static${reset}"
echo "${green}>>> Creating static directory${reset}"
mkdir -p $app_name/static/$app_name
echo "${green}>>> Downloading Dessert.png${reset}"
IMAGE_URL="https://raw.githubusercontent.com/catiemo/Weekly-Dessert/main/cafeteria/weeklydessert/static/weeklydessert/Dessert.png"
curl -o "$app_name/static/$app_name/Dessert.png" "$IMAGE_URL"
echo "${green}>>> Creating header.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/header.css
body {
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  display: flex;
  flex-direction: row;
  background-color: #FFF5FF;
  margin-left: 10px;
}

.header-title {
  margin-bottom: 0;
}

.header-content {
  display: flex;
  flex-direction: column;
  margin-left: 30px;
  align-items: center;
  justify-content: center;
}

.header-greet {
  width: 100%;
}

.logout-button {
  position: absolute;
  top: 100px;
  right: 15px;
  display: block;
  width: 80px;
  height: 15px;
  background: #3A10E5;
  padding: 10px;
  text-align: center;
  border-radius: 5px;
  color: white;
  font-weight: bold;
  line-height: 15px;
  text-decoration: none;
}
EOF
echo "${green}>>> Creating style.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/styles.css
body {
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  display: flex;
  flex-direction: row;
  background-color: #FFF5FF;
  margin-left: 10px;
}

.header-title {
  margin-bottom: 0;
}

.header-content {
  display: flex;
  flex-direction: column;
  margin-left: 30px;
  align-items: center;
  justify-content: center;
}

.header-greet {
  width: 100%;
}

.poll-link {
  text-decoration: none;
}

.vote-block {
  margin-left: 20px;
  width: 100%;
}
EOF
echo "${green}>>> Creating login.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/login.css
body {
	font-family: Arial;
}

.login-form {
	display: flex;
	width: 420px;
	flex-direction: column;
	margin: auto;
}

input[type=submit]{
	background-color: #3A10E5;
	color: white;
	padding: 10px 14px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

input[type=text],
input[type=password]{
	margin: 10px 0;
	padding: 5px;
	width: 100%;
	border-radius: 4px;
}
EOF
echo "${green}>>> Creating signup.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/signup.css
body {
	font-family: Arial;
}

.signup-form {
	display: flex;
	width: 420px;
	flex-direction: column;
	margin: auto;
}

input[type=submit]{
	background-color: #3A10E5;
	color: white;
	padding: 10px 14px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

input[type=text],
input[type=password]{
	margin: 10px 0;
	padding: 5px;
	width: 100%;
	border-radius: 4px;
}
EOF
echo "${green}>>> Creating detail.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/detail.css
body {
  font-family: Arial, Helvetica, sans-serif;
}

input[type=radio] {
	-ms-transform: scale(1.5); /* IE 9 */
	-webkit-transform: scale(1.5); /* Chrome, Safari, Opera */
	transform: scale(1.5);
}

label {
	font-weight: bold;
}

input[type=submit]{
	background-color: #3A10E5;
	color: white;
	padding: 10px 14px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 25%;
	font-size: 18px;
}
EOF
# python3 manage.py createsuperuser
# admin
# admin@codecademy.com
# admin123
# admin123
# y
echo "${red}>>> Adding a layer of authentication ...${reset}"
echo "${red}>>> Login${reset}"
echo "${green}>>> Importing the models Week and Choice in admin.py${reset}"
sed -i '' '3s/^/from .models import Week\, Choice/' $app_name/admin.py
echo "${green}>>> Registering the Week model in admin.py${reset}"
sed -i '' '5s/^/admin.site.register(Week)/' $app_name/admin.py
echo "${green}>>> Registering the Choice model in admin.py${reset}"
sed -i '' '6s/^/admin.site.register(Choice)/' $app_name/admin.py
# source env/bin/activate
# cd cafeteria
# python manage.py makemigrations && python manage.py migrate
# python3 manage.py shell
# import datetime
# from django.utils import timezone
# from weeklydessert.models import Week, Choice
# week1 = Week(pub_date=timezone.now() - datetime.timedelta(days=7))
# week1.save()
# choice1 = Choice(week=week1, dessert_choice='Apple', dessert_details='A delicious apple')
# choice1.save()
# choice2 = Choice(week=week1, dessert_choice='Banana', dessert_details='A delicious banana')
# choice2.save()
# from django.contrib.auth.models import User
# user = User.objects.create_user(username="Anthony",email="tony@email.com",password="tony90941")
# user.save()
# exit()
# python manage.py runserver
echo "${green}>>> Adding Django’s built-in authentication views in app urls.py${reset}"
sed -i '' "8s/^/	path(\'account\/\'\, include(\'django.contrib.auth.urls\'))\,/" $app_name/urls.py
echo "${green}>>> Configuring authentication in settings.py${reset}"
echo "$(cat <<-END
LOGIN_URL = '/account/login'
LOGIN_REDIRECT_URL = 'index'
LOGOUT_REDIRECT_URL = 'index'

CSRF_COOKIE_SAMESITE = 'None'
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SECURE = True
END
)"  >> $project_name/settings.py
echo "${green}>>> Adding form rendering tags to display a username and password field in login.html${reset}"
sed -i '' '13s/^/          {{ form.as_p }}/' $templates_path/registration/login.html
echo "${red}>>> Registration${reset}"
echo "${green}>>> Creating a SignUp class in views.py${reset}"
sed -i '' 's/# Create your class-based Signup view below:/# Create your class-based Signup view below:\
class SignUp(CreateView):\
  form_class = UserCreationForm\
  success_url = reverse_lazy(\"login\")\
  template_name = \"registration\/signup.html\"/g' $app_name/views.py
echo "${green}>>> Adding signup views in app urls.py${reset}"
sed -i '' "10s/^/	path(\'signup\/\'\, views.SignUp.as_view()\, name='signup')\,/" $app_name/urls.py
echo "${red}>>> Logging Out${reset}"
echo "${green}>>> Importing the logout function in views.py${reset}"
sed -i '' '9s/^/from django.contrib.auth import logout/' $app_name/views.py
echo "${green}>>> Creating a logout view function in views.py${reset}"
sed -i '' 's/# Create your logout function, logout_request, below:/# Create your logout function, logout_request, below:\
def logout_request(request):\
  logout(request)\
  return redirect(\"index\")/g' $app_name/views.py
echo "${green}>>> Adding the logout path in app urls.py${reset}"
sed -i '' "12s/^/	path(\'logout\/\'\, views.logout_request\, name='logout')\,/" $app_name/urls.py
echo "${green}>>> Adding a logout button in header.html${reset}"
sed -i '' '9s/^/	  <a class=\"logout-button\" href=\"{% url '\''logout'\'' %}\">Log Out<\/a>/' $templates_path/header.html
echo "${red}>>> Securing Paths${reset}"
echo "${green}>>> Importing the login_required decorator in views.py${reset}"
sed -i '' '6s/^/from django.contrib.auth.decorators import login_required/' $app_name/views.py
echo "${green}>>> Adding decorators to the index and the vote views in views.py${reset}"
sed -i '' 's/# Add login_required decorator:/# Add login_required decorator:\
@login_required/g' $app_name/views.py
echo "${green}>>> Importing the LoginRequiredMixin in views.py${reset}"
sed -i '' '7s/^/from django.contrib.auth.mixins import LoginRequiredMixin/' $app_name/views.py
echo "${green}>>> Adding the LoginRequiredMixin to DetailsView in views.py${reset}"
sed -i '' 's/class DetailsView(/class DetailsView(LoginRequiredMixin, /g' $app_name/views.py
echo "${green}>>> Adding the LoginRequiredMixin to ResultsView in views.py${reset}"
sed -i '' 's/class ResultsView(/class ResultsView(LoginRequiredMixin, /g' $app_name/views.py
echo "${red}>>> Great job! Now the student will be able to sign up and vote for their favorite dessert!${reset}"
# List installed Python packages
pip freeze -l > requirements.txt