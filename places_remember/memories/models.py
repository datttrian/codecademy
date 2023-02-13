from django.db import models
from social_django.models import UserSocialAuth

# A model to store place memories of the users
class UserMemories(models.Model):
    user = models.ForeignKey(UserSocialAuth.user_model(), on_delete=models.CASCADE)
    place_name = models.CharField(max_length=128)
    address = models.CharField(max_length=200)
    comment = models.TextField()
    datetime = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return f"{self.place_name} by {self.user}"