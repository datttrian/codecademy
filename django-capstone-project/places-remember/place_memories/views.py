"""This module contains the views of place_memories web app.
"""
import logging
from urllib.parse import unquote
from django.conf import settings
from django.shortcuts import render, redirect
from django.views.generic import ListView
from django.views import View
from django.contrib import messages
from django.contrib.postgres.search import SearchVector
from django.http import HttpRequest
from .models import UserMemories
from .forms import AddMemoryForm

logger = logging.getLogger(__name__)

# Homepage
def home(request: HttpRequest):
    """Render the homepage of the app.
    """
    return render(request, "place_memories/home.html")

# User memories list
class UserMemoriesView(ListView):
    """Return a paginated list of user memories to the template.
    The result can be filtered by text (in the address, placename, comment fields), and sorted by placename and datetime.
    """
    model = UserMemories
    paginate_by = 1
    template_name = "place_memories/home.html"
    ordering = "placename"

    def get_ordering(self):
        ordering = self.request.GET.get("ordering", None)
        if ordering:
            fieldname, order = ordering.split("_")
            if order == "desc":
                ordering = "-" + fieldname
            else:
                ordering = fieldname
        else:
            ordering = "placename"
        return ordering
    
    def get_queryset(self):
        queryset = super().get_queryset().filter(user_id=self.request.user.id)
        # If the query parameter has "search", use postgresql to do text search
        search_value = self.request.GET.get("search", None)
        if search_value:
            search_value = unquote(str(search_value))
            queryset = queryset.annotate(
                search=SearchVector("placename", "address", "comment")
            ).filter(search=search_value)
        return queryset
    
# "Add memory" page
class AddMemoryView(View):
    """Render a template that embed a Google Map to let the user
    select a location on the map to add to the memory database.
    """
    form_class = AddMemoryForm
    template_name = "place_memories/add_memory.html"
    
    def get(self, request: HttpRequest, *args, **kwargs):
        form = self.form_class()
        context = {
            "GOOGLE_API_KEY": settings.GOOGLE_API_KEY,
            "form": form
        }
        return render(request, self.template_name, context)
    
    def post(self, request: HttpRequest, *args, **kwargs):
        form = self.form_class(request.POST)
        if form.is_valid():
            try:
                data = form.cleaned_data
                # UserMemories.objects.create(user=request.user, address=data["address"], placename=data["placename"], comment=data["comment"])
                UserMemories.objects.create(user=request.user, **data)
                messages.add_message(request, messages.SUCCESS, "Successfully added new memory!")
            except Exception as ex:
                logger.exception(f"Failed to add object to UserMemories model: {str(ex)}")
                messages.add_message(request, messages.ERROR, "Failed to add memory! An error has occurred on the server side.")
            return redirect("place_memories:home")
        else:
            messages.add_message(request, messages.ERROR, "Invalid inputs. Please try again!")
            context = {
                "form": form
            }
            return render(request, self.template_name, context)