from django import forms
from django.forms import ModelForm
from .models import Notifications


class NotificationsForm(ModelForm):
    class Meta:
        model= Notifications
        fields = "__all__"