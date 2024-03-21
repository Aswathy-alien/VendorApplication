
# Create your views here.
from django.http import HttpResponse
from django.shortcuts import redirect, render
from administrator.forms import ProductCategoryForm

def index(request):
    return render(request, 'index.html')

def login(request):
    return render(request, 'login.html')

def register(request):
    return render(request, 'register.html')

def admindashboard(request):
    return render(request, 'dashboard.html')

def adminaddcategory(request):
    if request.method == 'POST':
        form = ProductCategoryForm(request.POST)
        if form.is_valid():
            form.save()
            # Redirect to a success URL after form submission
            return redirect('administrator:adminviewcategory')
    else:
        form = ProductCategoryForm()
    return render(request, 'addcategory.html', {'form': form})

def adminreviewproduct(request):
    return render(request, 'reviewproduct.html')

def adminviewproduct(request):
    return render(request, 'viewproduct.html')


from administrator.models import Companies, ProductCategory  # Import the ProductCategory model

def adminviewcategory(request):
    categories = ProductCategory.objects.all()  # Fetch all ProductCategory objects from the database
    return render(request, 'viewcategory.html', {'categories': categories})


import json

def delete_category(request, category_id):
    if request.method == 'POST':
        try:
            category = ProductCategory.objects.get(pk=category_id)
            category.delete()
            return HttpResponse(json.dumps({'success': True}), content_type='application/json')
        except ProductCategory.DoesNotExist:
            return HttpResponse(json.dumps({'success': False, 'error': 'Category does not exist.'}), content_type='application/json')
    return HttpResponse(json.dumps({'success': False, 'error': 'Invalid request method.'}), content_type='application/json')


def admindashboard(request):

    company_count = Companies.objects.count()
    category_count = ProductCategory.objects.count()
    context = {
        'company_count': company_count,
        'category_count': category_count
    }
    return render(request, 'dashboard.html', context)