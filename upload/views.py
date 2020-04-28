from django.shortcuts import render
from . import serializers
from .models import Image 
from rest_framework import generics

# Create your views here.


class UploadImage(generics.CreateAPIView):
    serializer_class = serializers.ImageSerializer