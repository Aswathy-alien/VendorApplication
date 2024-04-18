from django.db import models
from django.shortcuts import redirect, render


class Product(models.Model):
    id = models.AutoField(primary_key=True)
    company = models.ForeignKey('Company', on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    type = models.CharField(max_length=100)
    description = models.TextField(null=True)
    cloud_type = models.CharField(max_length=100)
    business_areas = models.CharField(max_length=255)
    modules = models.TextField(null=True)
    financial_services_client_types = models.CharField(max_length=255, null=True)
    additional_information = models.TextField(null=True)
    is_document_attached = models.BooleanField(default=False)
    categories = models.ManyToManyField(
        'ProductCategory',
        related_name='products'
    )
    logo = models.ImageField(upload_to='product_logos/', null=True, blank=True)

    class Meta:
        verbose_name_plural = 'Products'
        db_table = 'products'
        indexes = [
            models.Index(fields=['company'], name='company_idx'),
            models.Index(fields=['name'], name='product_name_idx')
        ]

    def __str__(self):
        return self.name

class ProductCategory(models.Model):
    id = models.BigAutoField(primary_key=True)
    category_name = models.CharField(max_length=30, unique=True)
    category_description = models.TextField()

    class Meta:
        verbose_name_plural = 'Product Categories'
        db_table = 'product_category'
        indexes = [
            models.Index(fields=['category_name'], name='category_name_idx'),
        ]

    def __str__(self):
        return self.category_name


class Company(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField(null=True)
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
    logo = models.ImageField(upload_to='company_logos/', null=True, blank=True)

    class Meta:
        verbose_name_plural = 'Companies'
        db_table = 'companies'

    def __str__(self):
        return self.name
