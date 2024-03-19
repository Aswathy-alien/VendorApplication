from django.http import HttpResponse
from django.shortcuts import redirect, render
from djangoapp.forms import ProductCategoryForm

def index(request):
    return render(request, 'index.html')

def login(request):
    return render(request, 'login.html')

def register(request):
    return render(request, 'register.html')

def admindashboard(request):
    return render(request, 'adminis/dashboard.html')

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


from djangoapp.models import ProductCategory, Company  # Import the ProductCategory model

def adminviewcategory(request):
    categories = ProductCategory.objects.all()  # Fetch all ProductCategory objects from the database
    return render(request, 'adminis/viewcategory.html', {'categories': categories})


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

def company_count_view(request):
    company_count = Company.objects.count()
    context = {'company_count': company_count}
    return render(request, 'adminis/dashboard.html', context)