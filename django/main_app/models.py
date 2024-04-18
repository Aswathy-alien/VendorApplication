from administrator.models import ProductCategory, Product, Company
from django.contrib.auth.models import User

def home_productlist():
    last_8_items = Product.objects.order_by('-id')[:8]
    return last_8_items


def home_categorieslist():
    last_8_items = ProductCategory.objects.order_by('-id')[:8]
    return last_8_items
