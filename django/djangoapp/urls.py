from . import views
from django.urls import path

app_name = 'djangoapp'

urlpatterns = [
    path('', views.index, name='index'),
    path('login.html', views.login, name='login'),
    path('register.html', views.register, name='register'),
    path('adminis/dashboard.html', views.admindashboard, name='admindashboard'),
]