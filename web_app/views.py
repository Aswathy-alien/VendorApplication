from django.shortcuts import redirect, render, get_object_or_404
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout

from .forms import CustomUserCreationForm
from .models import home_product_list, home_categories_list
from .decorators import unauthenticated_user

from admin_app.models import Product, ProductCategory, Company


def index(request):
    products = home_product_list()
    categories = home_categories_list()
    return render(request, 'index.html', {'products': products, 'categories': categories})


@unauthenticated_user
def login_page(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)

            if user.groups.all()[0].name == 'vendor':
                return redirect('/vendor/dashboard')
            elif user.groups.all()[0].name == 'admin':
                return redirect('/administrator/dashboard')
            else:
                logout(request)
                return redirect('/')

        else:
            messages.error(request, 'Username or password is incorrect')

    context = {}
    return render(request, 'login.html', context)


def logout_user(request):
    logout(request)
    return redirect('/login')


@unauthenticated_user
def register(request):
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            user.first_name = form.cleaned_data.get('first_name')
            user.last_name = form.cleaned_data.get('last_name')
            user.email = form.cleaned_data.get('email')
            user_group = form.cleaned_data.get('user_group')
            user.groups.add(user_group)
            user.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'Account created for {username}!')
            return redirect('main_app:login')
        else:
            messages.error(request, 'Please correct the errors below.')
    else:
        form = CustomUserCreationForm()
    return render(request, 'register.html', {'form': form})
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


def product_detail(request, product_name):
    product = get_object_or_404(Product, name=product_name)
    business_areas = product.business_areas.split(',') if product.business_areas else []
    financial_services_client_types = product.financial_services_client_types.split(
        ',') if product.financial_services_client_types else []

    # Retrieve the categories of the given product
    categories = product.categories.all()

    # Find other products that belong to any of these categories
    similar_products = Product.objects.filter(categories__in=categories).exclude(name=product_name).distinct()

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
        'products': products,
        'categories': categories

    }
    return render(request, 'company-details.html', context)
