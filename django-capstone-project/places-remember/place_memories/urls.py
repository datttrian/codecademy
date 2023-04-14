"""place_memories web app URL configurations

The urlpatterns route URL to specific pages in the web app.
"""
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from django.views.decorators.cache import never_cache
from . import views

app_name = 'place_memories'

urlpatterns = [
    path('', views.home, name='home'),
    # Do not cache the show memories view in order to always show new updates
    path('home', never_cache(views.UserMemoriesView.as_view()), name='home'),
    path('add-memory', views.AddMemoryView.as_view(), name='add_memory')
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)