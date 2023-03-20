from django import forms
from .models import State, Attraction

class StateCreateForm(forms.ModelForm):
  class Meta:
    model = State
    fields = '__all__'

class AttractionCreateForm(forms.ModelForm):
  class Meta:
    model = Attraction
    fields = '__all__'
