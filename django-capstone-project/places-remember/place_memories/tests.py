from django.test import TestCase, Client, RequestFactory
from django.contrib.auth.models import User
from django.urls import reverse
from .models import UserMemories
from .forms import AddMemoryForm
from .views import UserMemoriesView, AddMemoryView
from django.core.management import 