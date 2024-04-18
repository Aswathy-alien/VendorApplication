# Create your views here.
from django.shortcuts import get_object_or_404, redirect, render
from django.core.paginator import Paginator
from django.db.models import Q
from django.contrib.auth.decorators import login_required

from .forms import ProductCategoryForm
from .models import Company, ProductCategory, Product  # Import the ProductCategory model

from main_app.decorators import allowed_users


@login_required(login_url='/login')
@allowed_users(allowed_roles=['admin'])
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


@login_required(login_url='/login')
@allowed_users(allowed_roles=['admin'])
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


@login_required(login_url='/login')
@allowed_users(allowed_roles=['admin'])
def admin_review_product(request):
    return render(request, 'review_product.html')


@login_required(login_url='/login')
@allowed_users(allowed_roles=['admin'])
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


@login_required(login_url='/login')
@allowed_users(allowed_roles=['admin'])
def admin_view_category(request):
    categories = ProductCategory.objects.all()  # Fetch all ProductCategory objects from the database
    return render(request, 'view_category.html', {'categories': categories})


@login_required(login_url='/login')
@allowed_users(allowed_roles=['admin'])
def delete_category(request, category_id):
    category = get_object_or_404(ProductCategory, id=category_id)
    if request.method == 'POST':
        category.delete()
        return redirect('../../view_category.html')
    return redirect('view_category.html')  # Redirect to appropriate URL after deletion
