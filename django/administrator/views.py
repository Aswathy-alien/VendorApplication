# Create your views here.
from django.shortcuts import get_object_or_404, redirect, render
from administrator.forms import ProductCategoryForm
from administrator.models import Company, ProductCategory, Product  # Import the ProductCategory model
from django.core.paginator import Paginator
from django.db.models import Q



def admin_dashboard(request):
    company_count = Company.objects.count()
    product_count = Product.objects.count()
    product_category_count = ProductCategory.objects.count()
    context = {
        'company_count': company_count,
        'product_count': product_count,
        'product_category_count': product_category_count,
    }
    return render(request, 'dashboard.html', context)


def admin_add_category(request):
    if request.method == 'POST':
        form = ProductCategoryForm(request.POST)
        if form.is_valid():
            form.save()
            # Redirect to a success URL after form submission
            return redirect('administrator:admin_view_category')
    else:
        form = ProductCategoryForm()
    return render(request, 'add_category.html', {'form': form})


def admin_review_product(request):
    return render(request, 'review_product.html')



def admin_view_product(request):
    search_query = request.GET.get('search', '')
    products = Product.objects.select_related('company')

    if search_query:
        products = products.filter(
            Q(name__icontains=search_query) |
            Q(type__icontains=search_query) |
            Q(company__name__icontains=search_query) |
            Q(cloud_type__icontains=search_query) |
            Q(business_areas__icontains=search_query)
        )

    products = products.order_by('id')
    paginator = Paginator(products, 8)  # Show 10 products per page
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {
        'products': page_obj,
        'search_query': search_query
    }
    return render(request, 'view_product.html', context)


def admin_view_category(request):
    categories = ProductCategory.objects.all()  # Fetch all ProductCategory objects from the database
    return render(request, 'view_category.html', {'categories': categories})


def delete_category(request, category_id):
    category = get_object_or_404(ProductCategory, id=category_id)
    if request.method == 'POST':
        category.delete()
        return redirect('../view_category')
    return redirect('../view_category')  # Redirect to appropriate URL after deletion


def admin_view_product_details(request, product_id):
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
    return render(request, 'view_product_details.html', context)

def admin_view_vendors(request):
    companies = Company.objects.all()
    search_query = request.GET.get('search', '')

    if search_query:
        companies = companies.filter(
            Q(name__icontains=search_query) |
            Q(website__icontains=search_query) |
            Q(location_countries__icontains=search_query) |
            Q(location_cities__icontains=search_query) |
            Q(address__icontains=search_query)
        )

    companies = companies.order_by('id')
    paginator = Paginator(companies, 8)  # Show 8 companies per page
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context = {
        'companies': page_obj,
        'search_query': search_query,
    }

    return render(request, 'view_vendors.html', context)

def admin_edit_category(request, category_id):
    category = get_object_or_404(ProductCategory, id=category_id)

    if request.method == 'POST':
        form = ProductCategoryForm(request.POST, instance=category)
        if form.is_valid():
            form.save()
            return redirect('../../view_category')  # Redirect to the category list page after updating
    else:
        form = ProductCategoryForm(instance=category)

    context = {
        'form': form,
        'category': category,
    }
    return render(request, 'edit_category.html',context)
