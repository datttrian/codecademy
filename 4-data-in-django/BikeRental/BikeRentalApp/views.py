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
