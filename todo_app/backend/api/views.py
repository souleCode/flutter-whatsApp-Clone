from django.shortcuts import render
from rest_framework import viewsets
from .models import Task
from .serializers import *
# Create your views here.


class TaskViewsSet(viewsets.ModelViewSet):
    queryset= Task.objects.all()
    serializer_class= TaskSerializer