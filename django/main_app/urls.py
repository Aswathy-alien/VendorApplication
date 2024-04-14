from . import views
from django.urls import path
from django.conf.urls.static import static  # new
from django.conf import settings  # new
app_name = 'main_app'

urlpatterns = [
    path('', views.index, name='index'),
    path('index', views.index, name='index'),
    path('login', views.login, name='login'),
    path('register', views.register, name='register'),
    path('productlisting', views.product_listing, name='product_listing'),
    path('profilepage', views.profile_page, name='profile_page'),
    path('basetemplate', views.basetemp, name='base_template'),
    path('product-details', views.product_details, name='product_details'),
    path('productlisting/<int:product_id>/', views.product_detail, name='product_detail'),

]   
