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
