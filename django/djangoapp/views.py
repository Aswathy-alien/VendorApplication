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


from djangoapp.models import ProductCategory  # Import the ProductCategory model

def adminviewcategory(request):
    categories = ProductCategory.objects.all()  # Fetch all ProductCategory objects from the database
    return render(request, 'adminis/viewcategory.html', {'categories': categories})


