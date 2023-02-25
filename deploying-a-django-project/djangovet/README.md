# Vetoffice

Hello! This project is intended to be used with the article in [the parent folder](../).

Make sure to follow the steps as outlined in the article to see how to use GitHub and PythonAnywhere for your deployment needs!

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
project_name='djangovet'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the App ${reset}"
app_name="vetoffice"
python manage.py startapp $app_name
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${green}>>> Adding models${reset}"
sed -i '' "s,from django.db import models,from django.db import models\nfrom django.contrib.auth.models import User,g" $app_name/models.py
cat << 'EOF' >> $app_name/models.py
class Owner(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    phone = models.CharField(max_length=30)

    def multipleOwner(self):
        return self.patient_set.count() > 1

    def get_absolute_url(self):
        return '/owner/list'

    def __str__(self):
        return self.first_name + " " + self.last_name

class Patient(models.Model):
    DOG = 'DO'
    CAT = 'CA'
    BIRD = 'BI'
    REPTILE = 'RE'
    OTHER = 'OT'
    ANIMAL_TYPE_CHOICES = [
        (DOG, 'Dog'),
        (CAT, 'Cat'),
        (BIRD, 'Bird'),
        (REPTILE, 'Reptile'),
        (OTHER, 'Other'),
    ]
    animal_type = models.CharField(max_length=2, choices=ANIMAL_TYPE_CHOICES, default=OTHER)
    breed = models.CharField(max_length=200)
    pet_name = models.CharField(max_length=30)
    age = models.IntegerField(default=0)
    owner = models.ForeignKey(Owner, on_delete=models.CASCADE)

    def get_absolute_url(self):
        return '/patient/list'

    def __str__(self):
        return self.pet_name + ", " + self.animal_type

class Appointment(models.Model):
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    day = models.DateField(auto_now=False, auto_now_add=False)
    time = models.TimeField(auto_now=False, auto_now_add=False)
    user = models.ForeignKey(
        User,
        models.SET_NULL,
        blank=True,
        null=True,
    )

    def get_absolute_url(self):
        return '/appointment/list'

    def __str__(self):
        return self.patient.__str__() + "\t" + str(self.day.month) + " " + str(self.day.day) + " " + str(self.day.year) + " " + str(self.time.hour) + " " + str(self.time.min)
EOF
echo "${green}>>> Registering models for admin${reset}"
sed -i '' "s,from django.contrib import admin,from django.contrib import admin\n\nfrom .models import Owner\, Patient,g" $app_name/admin.py
cat << 'EOF' >> $app_name/admin.py
admin.site.register(Owner)
admin.site.register(Patient)
EOF
echo "${green}>>> Adding forms${reset}"
cat << 'EOF' > $app_name/forms.py
from django import forms
from .models import Owner, Patient, Appointment

# CRUD - Create
class OwnerCreateForm(forms.ModelForm):
    class Meta:
        model = Owner
        fields = ('first_name', 'last_name', 'phone',)

class PatientCreateForm(forms.ModelForm):
    class Meta:
        model = Patient
        fields = ('pet_name', 'animal_type', 'breed', 'age', 'owner')

class AppointmentCreateForm(forms.ModelForm):
    class Meta:
        model = Appointment
        fields = ('patient', 'day', 'time')

#CRUD - Update
class OwnerUpdateForm(forms.ModelForm):
    #form for updating owners
    class Meta:
        model = Owner
        fields = ('first_name', 'last_name', 'phone',)

class PatientUpdateForm(forms.ModelForm):
    #form for updating patients
    class Meta:
        model = Patient
        fields = ('pet_name', 'animal_type', 'breed', 'age', 'owner')

class AppointmentUpdateForm(forms.ModelForm):
    class Meta:
        model = Appointment
        fields = ('patient', 'day', 'time')
EOF
echo "${green}>>> Adding views${reset}"
sed -i '' "s,from django.shortcuts import render,from django.shortcuts import render\nfrom django.views.generic import ListView\nfrom django.views.generic.edit import CreateView\, DeleteView\, UpdateView\nfrom django.contrib.auth.decorators import login_required\nfrom django.contrib.auth.mixins import LoginRequiredMixin\nfrom django.urls import reverse_lazy\nfrom django.contrib.auth.forms import UserCreationForm\n\nfrom .models import Owner\, Patient\, Appointment\nfrom .forms import OwnerCreateForm\, OwnerUpdateForm\, PatientCreateForm\, PatientUpdateForm\, AppointmentCreateForm\, AppointmentUpdateForm,g" $app_name/views.py
cat << 'EOF' >> $app_name/views.py
@login_required
def home(request):
   context = {"name": request.user}
   return render(request, 'vetoffice/home.html', context)

# CRUD - (R)ead
class OwnerList(LoginRequiredMixin, ListView):
   model = Owner

class PatientList(LoginRequiredMixin, ListView):
    model = Patient

class AppointmentList(LoginRequiredMixin, ListView):
    model = Appointment

# CRUD - (C)reate
class SignUp(CreateView):
   form_class = UserCreationForm
   success_url = reverse_lazy('login')
   template_name = 'registration/signup.html'

class OwnerCreate(LoginRequiredMixin, CreateView):
   model = Owner
   template_name = 'vetoffice/owner_create_form.html'
   form_class = OwnerCreateForm

class PatientCreate(LoginRequiredMixin, CreateView):
    model=Patient
    template_name = 'vetoffice/patient_create_form.html'
    form_class = PatientCreateForm

class AppointmentCreate(LoginRequiredMixin, CreateView):
    model=Appointment
    template_name = 'vetoffice/appointment_create_form.html'
    form_class = AppointmentCreateForm

    def form_valid(self, form):
        form.instance.user = self.request.user
        return super().form_valid(form)

# CRUD - (U)pdate
class OwnerUpdate(LoginRequiredMixin, UpdateView):
   model = Owner
   template_name = 'vetoffice/owner_update_form.html'
   form_class = OwnerUpdateForm

class PatientUpdate(LoginRequiredMixin, UpdateView):
   model = Patient
   template_name = 'vetoffice/patient_update_form.html'
   form_class = PatientUpdateForm

class AppointmentUpdate(LoginRequiredMixin, UpdateView):
    model = Appointment
    template_name = 'vetoffice/appointment_update_form.html'
    form_class = AppointmentUpdateForm

# CRUD - (D)elete
class OwnerDelete(LoginRequiredMixin, DeleteView):
    model = Owner
    template_name = 'vetoffice/owner_delete_form.html'
    success_url = '/owner/list'

class PatientDelete(LoginRequiredMixin, DeleteView):
    model = Patient
    template_name = 'vetoffice/patient_delete_form.html'
    success_url = '/patient/list'

class AppointmentDelete(LoginRequiredMixin, DeleteView):
    model = Appointment
    template_name = 'vetoffice/appointment_delete_form.html'
    success_url = '/appointment/list'
EOF
echo "${green}>>> Wiring views${reset}"
cat << 'EOF' > $app_name/urls.py
from django.urls import path, include

from . import views

urlpatterns = [
   path('', views.home, name="home"),
   path('account/', include('django.contrib.auth.urls'), name="login"),
   path('signup/', views.SignUp.as_view(), name='signup'),
   path('owner/list', views.OwnerList.as_view(), name="ownerlist"),
   path('owner/create', views.OwnerCreate.as_view(), name="ownercreate"),
   path('owner/update/<pk>', views.OwnerUpdate.as_view(), name="ownerupdate"),
   path('owner/delete/<pk>', views.OwnerDelete.as_view(), name="ownerdelete"),
   path('patient/list', views.PatientList.as_view(), name="patientlist"),
   path('patient/create', views.PatientCreate.as_view(), name="patientcreate"),
   path('patient/update/<pk>', views.PatientUpdate.as_view(), name="patientupdate"),
   path('patient/delete/<pk>', views.PatientDelete.as_view(), name="patientdelete"),
   path('appointment/list', views.AppointmentList.as_view(), name="apptlist"),
   path('appointment/create', views.AppointmentCreate.as_view(), name="apptcreate"),
   path('appointment/update/<pk>', views.AppointmentUpdate.as_view(), name="apptupdate"),
   path('appointment/delete/<pk>', views.AppointmentDelete.as_view(), name="apptdelete"),
]
EOF
sed -i '' "s,from django.urls import path,from django.urls import include\, path,g" $project_name/urls.py
sed -i '' "s,urlpatterns = \[,urlpatterns = \[\n    path\(\'\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py
echo "${green}>>> Applying the locale-dictated format to settings.py${reset}"
sed -i '' "s,USE_I18N = True,USE_I18N = True\n\nUSE_L10N = True,g"  $project_name/settings.py
echo "${green}>>> Disabling auto-incrementing primary key in settings.py${reset}"
sed -i '' '123,$d' $project_name/settings.py
echo "${green}>>> Configuring authentication in settings.py${reset}"
echo "$(cat <<-END
LOGIN_URL = '/account/login'
LOGIN_REDIRECT_URL = 'home'
LOGOUT_REDIRECT_URL = 'home'
END
)"  >> $project_name/settings.py
echo "${red}>>> Creating templates${reset}"
echo "${green}>>> Creating templates directory${reset}"
templates_path="$app_name"\/templates\/"$app_name"
mkdir -p $templates_path
echo "${green}>>> Creating templates/registration directory${reset}"
mkdir -p $app_name/templates/registration
echo "${green}>>> Creating header.html${reset}"
cat << 'EOF' > $templates_path/base.html
<head>
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
}
table {
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #ddd;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #ddd;
}

th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
input[type=text], input[type=password], select {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
button, input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}


input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

</style>
</head>
<body>
{% load static %}
<a href="{% url 'home' %}"><img src="{% static 'vetoffice/vetoffice.png' %}" alt="VO Logo"></a>
<h3>Welcome to Vet Office {{ name }}!</h3>
    {% block content %}
    {% endblock %}
</body>
EOF
echo "${green}>>> Creating home.html${reset}"
cat << 'EOF' > $templates_path/home.html
{% extends './base.html' %}
{% block content %}

<div>
    <a href="{% url 'ownerlist' %}">Owners</a>
    <a href="{% url 'patientlist' %}">Patients</a>
    <a href="{% url 'apptlist' %}">Appointments</a>
</div>

{% endblock %}
EOF
cat << 'EOF' > $app_name/templates/registration/login.html
<head>
<style>
body {
    font-family: Arial;
}
input[type=submit]{
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

</style>
</head>
    <h2>Please login</h2>
<form class="login" method="post">
    <div>
      {% csrf_token %}
      {{ form.as_p }}
      <input type="submit" value="Login"/>
    </div>
</form>
EOF
cat << 'EOF' > $app_name/templates/registration/signup.html
<h2>Sign up</h2>
<form class="signup" method="post">
   {% csrf_token %}
   {{ form.as_p }}
   <input type="submit" value="Signup"/>
</form>
EOF
echo "${green}>>> Creating patient_list.html${reset}"
cat << 'EOF' > $templates_path/patient_list.html
{% extends './base.html' %}
{% block content %}
<h2>Patient List</h2>
<a href="{% url 'patientcreate' %}"><button class="btn">Add Patient</button></a>
<table id="patients">
  <tr>
    <th>Pet Name</th>
    <th>Animal Type</th>
      <th>Breed</th>
      <th>Age</th>
      <th>Owner</th>
      <th> </th>
      <th> </th>
  </tr>
  {% for patient in patient_list %}
  <tr>
  <tr>
      <td>{{ patient.pet_name }}</td>
      <td>{{ patient.animal_type }}</td>
      <td>{{ patient.breed }}</td>
      <td>{{ patient.age }}</td>
      <td>{{ patient.owner }}</td>
      <td><a href="{% url 'patientupdate' patient.id %}"><button>Edit</button></a></td>
      <td><a href="{% url 'patientdelete' patient.id %}"><button>Delete</button></a></td>
  </tr>
  {% endfor %}
</table>
{% endblock %}
EOF
echo "${green}>>> Creating patient_create_form.html${reset}"
cat << 'EOF' > $templates_path/patient_create_form.html
{% extends './base.html' %}
{% block content %}
<h2>Create Patient</h2>
<form method="post">
<div>
  {% csrf_token %} {{ form.as_p }}
  <input type="submit" value="Submit" />
</div>
</form>
{% endblock %}
EOF
echo "${green}>>> Creating patient_update_form.html${reset}"
cat << 'EOF' > $templates_path/patient_update_form.html
{% extends './base.html' %}
{% block content %}
<h2>Update Patient</h2>
<form method="post">
<div>
  {% csrf_token %} {{ form.as_p }}
  <input type="submit" value="Submit" />
</div>
</form>
{% endblock %}
EOF
echo "${green}>>> Creating patient_delete_form.html${reset}"
cat << 'EOF' > $templates_path/patient_delete_form.html
{% extends './base.html' %}
{% block content %}
<h2>Delete Patient</h2>
<form method="post">
<div>
  {% csrf_token %}
  <p>Are you sure you want to delete "{{ object }}"?</p>
  <input type="submit" value="Confirm" />
</div>
</form>
{% endblock %}
EOF
echo "${green}>>> Creating owner_list.html${reset}"
cat << 'EOF' > $templates_path/owner_list.html
{% extends './base.html' %}
{% block content %}
<h2>Owner List</h2>
<a href="{% url 'ownercreate' %}"><button class="btn">Add Owner</button></a>
<table id="owners">
  <tr>
    <th>First</th>
    <th>Last</th>
    <th>Multiple Pets</th>
    <th>Phone</th>
      <th> </th>
      <th> </th>
  </tr>
  {% for owner in owner_list %}
  <tr>
  <tr>
      <td>{{ owner.first_name }}</td>
      <td>{{ owner.last_name }}</td>
      <td>{% if owner.multipleOwner %}YES{% else %}NO{% endif %}</td>
      <td>{{ owner.phone }}</td>
      <td><a href="{% url 'ownerupdate' owner.id %}"><button>Edit</button></a></td>
      <td><a href="{% url 'ownerdelete' owner.id %}"><button>Delete</button></a></td>
  </tr>
  {% endfor %}
</table>
{% endblock %}
EOF
echo "${green}>>> Creating owner_create_form.html${reset}"
cat << 'EOF' > $templates_path/owner_create_form.html
{% extends './base.html' %}
{% block content %}
<h2>Create Owner</h2>
<form method="post">
<div>
  {% csrf_token %} {{ form.as_p }}
  <input type="submit" value="Submit" />
</div>
</form>
{% endblock %}
EOF
echo "${green}>>> Creating owner_update_form.html${reset}"
cat << 'EOF' > $templates_path/owner_update_form.html
{% extends './base.html' %}
{% block content %}
<h2>Update Owner</h2>
<form method="post">
<div>
  {% csrf_token %} {{ form.as_p }}
  <input type="submit" value="Submit" />
</div>
</form>
{% endblock %}
EOF
echo "${green}>>> Creating owner_delete_form.html${reset}"
cat << 'EOF' > $templates_path/owner_delete_form.html
{% extends './base.html' %}
{% block content %}
<h2>Delete Owner</h2>
<form method="post">
<div>
  {% csrf_token %}
  <p>Are you sure you want to delete "{{ object }}"?</p>
  <input type="submit" value="Confirm" />
</div>
</form>
{% endblock %}
EOF
echo "${green}>>> Creating appointment_list.html${reset}"
cat << 'EOF' > $templates_path/appointment_list.html
{% extends './base.html' %}
{% block content %}
<h2>Appointments</h2>
<a href="{% url 'apptcreate' %}"><button class="btn">Add Appointment</button></a>
<table id="owners">
 <tr>
   <th>Patient</th>
   <th>Day</th>
   <th>Time</th>
   <th>Entered by</th>
   <th> </th>
   <th> </th>
 </tr>
 {% for appt in appointment_list %}
 <tr>
 <tr>
     <td>{{ appt.patient }}</td>
     <td>{{ appt.day }}</td>
     <td>{{ appt.time }}</td>
     <td>{{ appt.user }}</td>
     <td><a href="{% url 'apptupdate' appt.id%}"><button>Edit</button></a></td>
     <td><a href="{% url 'apptdelete' appt.id%}"><button>Delete</button></a></td>
 </tr>
 {% endfor %}
</table>
{% endblock %}
EOF
echo "${green}>>> Creating appointment_create_form.html${reset}"
cat << 'EOF' > $templates_path/appointment_create_form.html
{% extends './base.html' %}
{% block content %}
<h2>Create Appointment</h2>
<form method="post">
<div>
  {% csrf_token %} {{ form.as_p }}
  <input type="submit" value="Submit" />
</div>
</form>
{% endblock %}
EOF
echo "${green}>>> Creating appointment_update_form.html${reset}"
cat << 'EOF' > $templates_path/appointment_update_form.html
{% extends './base.html' %}
{% block content %}
<h2>Update Appointment</h2>
<form method="post">
<div>
    {% csrf_token %} {{ form.as_p }}
    <input class="btn" type="submit" value="Save" />
    <a href=""><button class="btn">Cancel</button></a>
</div>
</form>
{% endblock %}
EOF
echo "${green}>>> Creating appointment_delete_form.html${reset}"
cat << 'EOF' > $templates_path/appointment_delete_form.html
{% extends './base.html' %}
{% block content %}
<h2>Delete Appointment</h2>
<form method="post">
<div>
  {% csrf_token %}
  <p>Are you sure you want to delete "{{ object }}"?</p>
  <input type="submit" value="Confirm" />
</div>
</form>
EOF
echo "${red}>>> Creating static${reset}"
echo "${green}>>> Creating static directory${reset}"
mkdir -p $app_name/static/$app_name
echo "${green}>>> Downloading djitney.png${reset}"
IMAGE_URL="https://raw.githubusercontent.com/Codecademy/djangovet/main/vetoffice/static/vetoffice/vetoffice.png"
curl -o "$app_name/static/$app_name/vetoffice.png" "$IMAGE_URL"
# List installed Python packages
pip freeze -l > requirements.txt
```