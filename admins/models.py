from django.db import models
from django.core.validators import *
from django.core import validators

# Create your models here.


class Notifications(models.Model):
    notification_title=models.CharField(max_length=200, null=True, validators=[validators.MinLengthValidator(2)])
    notification_description = models.TextField(null=True)
    created_date= models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return self.notification_title
    