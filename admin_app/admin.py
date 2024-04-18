from django.contrib import admin

# Register your models here.
from .models import Company, ProductCategory, Product

admin.site.register(Company)
admin.site.register(ProductCategory)


class ProductAdmin(admin.ModelAdmin):
    filter_horizontal = ('Category',)  # Add this line to enable a horizontal filter widget
    admin.site.register(Product)
