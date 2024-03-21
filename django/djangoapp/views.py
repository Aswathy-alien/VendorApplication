from django.http import HttpResponse
from django.shortcuts import redirect, render
from djangoapp.forms import ProductCategoryForm
from djangoapp.models import ProductCategory, Company, Product  # Import the ProductCategory model
import json


def index(request):
    return render(request, 'index.html')


def login(request):
    return render(request, 'login.html')


def register(request):
    return render(request, 'register.html')


def admindashboard(request):
    company_count = Company.objects.count()
    product_count = Product.objects.count()
    product_category_count = ProductCategory.objects.count()
    context = {
        'company_count': company_count,
        'product_count': product_count,
        'product_category_count': product_category_count,
    }
    return render(request, 'adminis/dashboard.html', context)


def adminaddcategory(request):
    if request.method == 'POST':
        form = ProductCategoryForm(request.POST)
        if form.is_valid():
            form.save()
            # Redirect to a success URL after form submission
            return redirect('djangoapp:adminviewcategory')
    else:
        form = ProductCategoryForm()
    return render(request, 'adminis/addcategory.html', {'form': form})


def adminreviewproduct(request):
    return render(request, 'adminis/reviewproduct.html')


def adminviewproduct(request):
    return render(request, 'adminis/viewproduct.html')


def adminviewcategory(request):
    categories = ProductCategory.objects.all()  # Fetch all ProductCategory objects from the database
    return render(request, 'adminis/viewcategory.html', {'categories': categories})


def delete_category(request, category_id):
    if request.method == 'POST':
        try:
            category = ProductCategory.objects.get(pk=category_id)
            category.delete()
            return HttpResponse(json.dumps({'success': True}), content_type='application/json')
        except ProductCategory.DoesNotExist:
            return HttpResponse(json.dumps({'success': False, 'error': 'Category does not exist.'}),
                                content_type='application/json')
    return HttpResponse(json.dumps({'success': False, 'error': 'Invalid request method.'}),
                        content_type='application/json')

