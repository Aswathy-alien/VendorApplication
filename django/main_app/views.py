from django.http import HttpResponse
from django.shortcuts import redirect, render


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