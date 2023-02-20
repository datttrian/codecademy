from django.urls import path

from . import views

urlpatterns = [
   path("", views.home, name="home"),
   path("bike/list", views.BikeList.as_view(), name="bikelist"),
   path("renter/list", views.RenterList.as_view(), name="renterlist"),
   path("rental/list", views.RentalList.as_view(), name="rentallist"),
]
