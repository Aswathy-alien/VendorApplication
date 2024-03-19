from django.db import models
from django.shortcuts import redirect, render

class ProductCategory(models.Model):
    category_name = models.CharField(max_length=30)
    category_description = models.TextField(max_length=500)

class Company(models.Model):
    id = models.AutoField(primary_key=True) 
    name = models.CharField(max_length=255)
    website = models.URLField()
    established_year = models.PositiveIntegerField()
    location_countries = models.CharField(max_length=255)
    location_cities = models.CharField(max_length=255)
    contact_telephone = models.CharField(max_length=20)
    address = models.TextField()
    employee_count = models.PositiveIntegerField()
    has_internal_professional_services = models.BooleanField()
    last_demo_date = models.DateField(null=True, blank=True)
    last_reviewed_date = models.DateField(null=True, blank=True)