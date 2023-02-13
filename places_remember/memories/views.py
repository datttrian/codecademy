import logging
from django.conf import settings
from django.contrib import messages
from django.http import HttpRequest
from django.shortcuts import render, redirect
from django.views import View
from .models import UserMemories
from .forms import AddMemoryForm

logger = logging.getLogger(__name__)

# Homepage
def home(request: HttpRequest):
    """Render the homepage of the app.
    """
    return render(request, "memories/home.html")

# "Memory Creation" page
class AddMemoryView(View):
    """Render a template that embed a Google Map to let the user
    select a location on the map to add to the memory database.
    """
    form_class = AddMemoryForm
    template_name = "memories/memory_creation.html"
    
    def get(self, request: HttpRequest, *args, **kwargs):
        form = self.form_class()
        context = {
            "GOOGLE_API_KEY": settings.GOOGLE_API_KEY,
            "form": form
        }
        return render(request, self.template_name, context)