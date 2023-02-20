from django.db import models


class Line(models.Model):
  name = models.CharField(unique=True, max_length=200)

  def get_absolute_url(self):
    return "/lines"

  def __str__(self):
    return f"{self.name}"


class Station(models.Model):
  name = models.CharField(unique=True, max_length=200)
  accessible = models.BooleanField(default=False)

  def get_absolute_url(self):
    return "/stations"

  def __str__(self):
    return f"{self.name}{' (♿)' if self.accessible else ''}"


class Stop(models.Model):
  # The snippet of code below ensures that no line can have two stops with the same stop number
  class Meta:
    unique_together = (('line', 'stop_number'))

  def get_absolute_url(self):
    return "/stops"

  line = models.ForeignKey(Line, on_delete=models.CASCADE)
  station = models.ForeignKey(Station, on_delete=models.CASCADE)
  stop_number = models.PositiveIntegerField()

  def __str__(self):
    return f"{self.line.name} -- {self.station.name} [{self.stop_number}]"
