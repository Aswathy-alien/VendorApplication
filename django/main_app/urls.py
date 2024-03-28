from . import views
from django.urls import path

app_name = 'main_app'

urlpatterns = [
    path('', views.index, name='index'),
    path('index.html', views.index, name='index'),
    path('login.html', views.login, name='login'),
    path('register.html', views.register, name='register'),
    path('productlisting.html', views.product_listing, name='product_listing'),
    path('profilepage.html', views.profile_page, name='profile_page')


]