from django.contrib.auth.models import User
from django.db import models
from django.core.validators import *
from django.core import validators


class Writings(models.Model):
    objects = None
    topic = models.CharField( max_length=500, null=True)
    story = models.TextField(null=True)
    image = models.FileField(upload_to='static/uploads', null=True)
    name= models.CharField(max_length=500, null=True, validators=[validators.MinLengthValidator(2)])
    created_date = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return self.topic


# class favourite(models.Model):
#
#     news = models.ForeignKey(News, on_delete=models.CASCADE)
#     user = models.ForeignKey(User, on_delete=models.CASCADE)
#     created_date = models.DateTimeField(auto_now_add=True)


class Contactus(models.Model):
    username = models.CharField(max_length=100)
    phone = models.CharField(max_length=10)
    email = models.EmailField()
    topic = models.CharField(max_length=100)
    messages = models.TextField()