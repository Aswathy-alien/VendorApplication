from django.db import models
from django.shortcuts import redirect, render

class ProductCategory(models.Model):
    category_name = models.CharField(max_length=30)
    category_description = models.TextField(max_length=500)
    class Meta:
     verbose_name_plural = 'Product Categories'
     db_table = 'djangoapp_productcategory'

class Companies(models.Model):
    name = models.CharField(max_length=255, unique=True)
    website = models.TextField(null=True, blank=True)
    established_year = models.CharField(max_length=10, default='1964')
    location_countries = models.JSONField(null=True, blank=True)
    location_cities = models.JSONField(null=True, blank=True)
    contact_telephone = models.JSONField(null=True, blank=True)
    address = models.JSONField(null=True, blank=True)
    employee_count = models.CharField(max_length=255, null=True, blank=True)
    has_internal_professional_services = models.BooleanField(null=True, blank=True)
    last_demo_date = models.DateField(null=True, blank=True)
    last_reviewed_date = models.DateField(null=True, blank=True)

    class Meta:
        verbose_name_plural = 'Companies'
        db_table = 'companies'

    def __str__(self):
        return self.name