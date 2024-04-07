from django.contrib.auth import authenticate, login
from django.http import HttpResponse
from django.shortcuts import redirect, render


def index(request):
    return render(request, 'index.html')


def login(request):
    return render(request, 'login.html')


def register(request):
    return render(request, 'register.html')


def product_listing(request):
    return render(request, 'productlisting.html')

# def user_login(request):
#     if request.method == 'POST':
#         form l= CustomAuthenticationForm(request, request.POST)
#         if form.is_valid():
#             username = form.ceaned_data['username']
#             password = form.cleaned_data['password']
#             user = authenticate(request, username=username, password=password)
#             if user is not None:
#                 login(request, user)
#                 # Redirect to a success page or wherever you want
#                 return redirect('dashboard')  # Change 'dashboard' to your desired URL name
#     else:
#         form = CustomAuthenticationForm()
#     return render(request, 'login.html', {'form': form})
