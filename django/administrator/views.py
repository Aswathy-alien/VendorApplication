# Create your views here.
from django.shortcuts import get_object_or_404, redirect, render
from administrator.forms import ProductCategoryForm
from administrator.models import Company, ProductCategory, Product  # Import the ProductCategory model


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
    return render(request, 'view_product.html')


def admin_view_category(request):
    categories = ProductCategory.objects.all()  # Fetch all ProductCategory objects from the database
    return render(request, 'view_category.html', {'categories': categories})


def delete_category(request, category_id):
    category = get_object_or_404(ProductCategory, id=category_id)
    if request.method == 'POST':
        category.delete()
        return redirect('../../view_category.html')
    return redirect('view_category.html')  # Redirect to appropriate URL after deletion
