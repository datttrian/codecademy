from django.contrib import admin
# Import your Week and Choice models below:
from .models import Week, Choice
# Register your Week and Choice models below:
admin.site.register(Week)
admin.site.register(Choice)
