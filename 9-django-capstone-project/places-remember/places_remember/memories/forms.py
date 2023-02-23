from django import forms

class AddMemoryForm(forms.Form):
    address = forms.CharField(max_length=200, label="Address")
    place_name = forms.CharField(max_length=128, label="Place name")
    comment = forms.CharField(widget=forms.Textarea)