from django.contrib import admin

# Register your models here.
from .models import Company, ProductCategory, Product;
admin.site.register(Company)
admin.site.register(ProductCategory)
admin.site.register(Product)
