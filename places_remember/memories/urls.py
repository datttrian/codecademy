"""memories web app URL configurations
The urlpatterns route URL to specific pages in the web app.
"""
from django.urls import path
from . import views

app_name = 'memories'

urlpatterns = [
    path('', views.home, name='home'),
    path('memory-creation', views.AddMemoryView.as_view(), name='memory_creation')
]