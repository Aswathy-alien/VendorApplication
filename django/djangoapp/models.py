from django.db import models
from django.shortcuts import redirect, render

class ProductCategory(models.Model):
    category_name = models.CharField(max_length=30)
    category_description = models.TextField(max_length=500)