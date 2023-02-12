from django.http import HttpRequest
from django.shortcuts import render

# Create your views here.

# Homepage
def home(request: HttpRequest):
    """Render the homepage of the app.
    """
    return render(request, "memories/home.html")