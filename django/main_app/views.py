<<<<<<< Updated upstream
from django.http import HttpResponse
from django.shortcuts import redirect, render


def index(request):
    return render(request, 'index.html')


def login(request):
    return render(request, 'login.html')


def register(request):
    return render(request, 'register.html')

def product_listing(request):
    return render(request, 'productlisting.html')
def profile_page(request):
=======
from django.http import HttpResponse
from django.shortcuts import redirect, render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q


from administrator.models import Product, ProductCategory
from main_app.models import home_productlist,home_categorieslist


def index(request):
    products=home_productlist()
    categories=home_categorieslist()
    return render(request, 'index.html', {'products': products,'categories':categories})


def login(request):
    return render(request, 'login.html')


def register(request):
    return render(request, 'register.html')

def product_listing(request):
    # Fetch all products
    products = Product.objects.all()

    # Fetch all categories
    categories = ProductCategory.objects.all()

    # Filter products based on query parameter 'q' (search)
    query = request.GET.get('q', '')

    # Filter categories based on search query
    selected_categories = request.GET.getlist('category', [])
    category_remove = request.GET.get('category_remove')
    if category_remove:
        selected_categories.remove(category_remove)

    # Filter products based on category
    if selected_categories:
        products = products.filter(category__id__in=selected_categories)
    else:
        products = products.filter(
            Q(name__icontains=query) | Q(category__category_name__icontains=query)
        )

    # Pagination
    paginator = Paginator(products, 10)
    page = request.GET.get('page')
    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)

    # Context data
    context = {
        'products': products,
        'categories': categories,
        'selected_categories': selected_categories,
        'query': query,
    }
    return render(request, 'productlisting.html', context)

def profile_page(request):
    
>>>>>>> Stashed changes
    return render(request, 'profilepage.html')