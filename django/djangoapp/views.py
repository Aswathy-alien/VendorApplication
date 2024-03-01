from django.shortcuts import render

# Create your views here.
from django.shortcuts import render

def index (request): 
    return render(request, 'index.html')
def login (request): 
    return render(request, 'login.html')
def register (request): 
    return render(request, 'register.html')
def admindashboard (request): 
    return render(request, 'adminis/dashboard.html')