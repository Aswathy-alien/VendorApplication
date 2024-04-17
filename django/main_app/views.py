from django.contrib.auth import authenticate, login
from django.http import HttpResponse
from django.shortcuts import redirect, render,get_object_or_404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q


from administrator.models import Product, ProductCategory, Company
from main_app.models import home_productlist,home_categorieslist


def index(request):
    products=home_productlist()
    categories=home_categorieslist()
    return render(request, 'index.html', {'products': products,'categories':categories})


def login(request):
    return render(request, 'login.html')


def register(request):
    return render(request, 'register.html')
def basetemp(request):
    return render(request, 'basetemplate.html')
def product_details(request):
    return render(request, 'product-details.html')

def product_listing(request):
    products = Product.objects.all()
    categories = ProductCategory.objects.all()

    query = request.GET.get('q', '')
    selected_categories = request.GET.getlist('category', [])
    
    if query:
        products = Product.objects.filter(
            Q(name__icontains=query) |
            Q(description__icontains=query) |
            Q(categories__category_name__icontains=query)
        )
    else:
        products = Product.objects.all()
    if selected_categories:
        products = products.filter(categories__id__in=selected_categories).distinct()
    else:
        products = products.filter(
            Q(name__icontains=query) | Q(categories__category_name__icontains=query)
        ).distinct()

    paginator = Paginator(products, 10)
    page = request.GET.get('page')

    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)

    context = {
        'products': products,
        'categories': categories,
        'selected_categories': selected_categories,
        'query': query,
    }

    return render(request, 'productlisting.html', context)

def profile_page(request):
    
    return render(request, 'profilepage.html')

def product_detail(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    business_areas = product.business_areas.split(',') if product.business_areas else []
    financial_services_client_types = product.financial_services_client_types.split(',') if product.financial_services_client_types else []

    # Retrieve the categories of the given product
    categories = product.categories.all()
    
    # Find other products that belong to any of these categories
    similar_products = Product.objects.filter(categories__in=categories).exclude(id=product_id).distinct()

    context = {
        'product': product,
        'business_areas': business_areas,
        'financial_services_client_types': financial_services_client_types,
        'similar_products': similar_products,
    }
    return render(request, 'product-details.html', context)

def viewprofile_page(request):
    
    return render(request, 'viewprofilepage.html')



def company_listing(request):
    companies = Company.objects.all()
    query = request.GET.get('q', '')
    
    
    if query:
        companies = Company.objects.filter(
            Q(name__icontains=query)
            
        )
    else:
        companies = Company.objects.all()


         
    return render(request, 'companylisting.html', {'companies': companies})



def company_details(request, company_id):
    company = get_object_or_404(Company, id=company_id)
    products = Product.objects.filter(company=company)
    categories = ProductCategory.objects.all()
    context = {
        'company': company,
        'products' : products,
        'categories' : categories
        
    }
    return render(request, 'company-details.html', context)


