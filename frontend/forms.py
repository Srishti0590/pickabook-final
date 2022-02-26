from django import forms
from django.forms import ModelForm
from .models import Writings, Contactus


class WritingForm(ModelForm):
    class Meta:
        model= Writings
        fields = "__all__"


class ContactusForm(ModelForm):
    class Meta:
        model = Contactus
        fields = '__all__'