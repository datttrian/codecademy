from django.db import models

class State(models.Model):
  stateName = models.CharField(max_length=50, verbose_name="State Name")
  stateAbbreviation = models.CharField(max_length=3, verbose_name="State Abbreviation")

  def __str__(self):
    return '{}'.format(self.stateName)

  def get_absolute_url(self):
    return '/tourist_attractions/'

class Attraction(models.Model):
  homeState = models.ForeignKey(State, on_delete=models.CASCADE, verbose_name="Home State")
  attractionName = models.CharField(max_length=200, verbose_name="Attraction Name")

  def __str__(self):
    return '{}'.format(self.attractionName)

  def get_absolute_url(self):
    return '/tourist_attractions/'
