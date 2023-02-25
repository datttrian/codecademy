from django.urls import path

from . import views

urlpatterns = [
  path("", views.home, name="home"),
  path("details/<statename>", views.details, name="details"),
  path('state/create', views.StateCreate.as_view(), name='statecreate'),
  path('attraction/create', views.AttractionCreate.as_view(), name='attractioncreate'),
]
