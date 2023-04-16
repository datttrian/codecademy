from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.urls import reverse_lazy

from users.models import Place


@login_required(login_url=reverse_lazy('account_login'))
def home_page_view(request):
    places = Place.objects.filter(user__user=request.user)
    return render(request, 'pages/home.html', context={'places': places})
