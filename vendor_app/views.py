# Create your views here.
from django.shortcuts import get_object_or_404, redirect, render
from django.core.paginator import Paginator
from django.db.models import Q
from django.contrib.auth.decorators import login_required

from admin_app.forms import ProductCategoryForm
from admin_app.models import ProductCategory, Product  # Import the ProductCategory model

from web_app.decorators import allowed_users


@login_required(login_url='/login')
@allowed_users(allowed_roles=['vendor'])
def vendor_dashboard(request):
    product_count = Product.objects.count()
    product_category_count = ProductCategory.objects.count()
    context = {
        'product_count': product_count,
        'product_category_count': product_category_count,
    }
    return render(request, 'vendor_dashboard.html', context)


@login_required(login_url='/login')
@allowed_users(allowed_roles=['vendor'])
def vendor_add_category(request):
    if request.method == 'POST':
        form = ProductCategoryForm(request.POST)
        if form.is_valid():
            form.save()
            # Redirect to a success URL after form submission
            return redirect('administrator:admin_view_category')
    else:
        form = ProductCategoryForm()
    return render(request, 'vendor_add_category.html', {'form': form})


@login_required(login_url='/login')
@allowed_users(allowed_roles=['vendor'])
def vendor_review_product(request):
    return render(request, 'vendor_review_product.html')


@login_required(login_url='/login')
@allowed_users(allowed_roles=['vendor'])
def vendor_view_product(request):
    search_query = request.GET.get('search', '')
    products = Product.objects

    if search_query:
        products = products.filter(
            Q(name__icontains=search_query) |
            Q(type__icontains=search_query) |
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
    return render(request, 'vendor_view_product.html', context)


@login_required(login_url='/login')
@allowed_users(allowed_roles=['vendor'])
def admin_add_product(request):
    products = Product.objects.all()  # Fetch all ProductCategory objects from the database
    return render(request, 'addproduct.html', {'products': products})


@login_required(login_url='/login')
@allowed_users(allowed_roles=['vendor'])
def vendor_delete_category(request, category_id):
    category = get_object_or_404(ProductCategory, id=category_id)
    if request.method == 'POST':
        category.delete()
    return redirect('vendor_view_category')  # Redirect to appropriate URL after deletion
