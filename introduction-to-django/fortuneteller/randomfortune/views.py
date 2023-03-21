from django.shortcuts import render
import random

# Create your views here.
fortuneList = [
  "Here is a good luck charm",
  "Do not give up, keep pushing",
  "Tough times do not last, tough people do",
  "Forward ever, backwards never",
  "We are gonna make it",
  "To infinity and beyond",
  "We are mooning",
]

def fortune(request):
  fortune = random.choice(fortuneList)
  context = {
    "fortune": fortune
  }
  return render(request, "randomfortune/fortune.html", context)
