from . import views
from django.urls import path
from .views import index, login_page, logout_user, register, product_listing, profile_page, basetemp, product_detail, viewprofile_page, company_listing, company_details
app_name = 'main_app'

urlpatterns = [
    path('', views.index, name='index'),
    path('index', views.index, name='index'),
    path('login', views.login_page, name='login'),
    path('logout', views.logout_user, name='logout'),
    path('register', views.register, name='register'),
    path('productlisting', views.product_listing, name='product_listing'),
    path('profilepage', views.profile_page, name='profile_page'),
    path('basetemplate', views.basetemp, name='base_template'),
    path('product-details/<str:product_name>', views.product_detail, name='product_detail'),
    path('viewprofilepage', views.viewprofile_page, name='viewprofile_page'),
    path('companylisting', views.company_listing, name='company_listing'),
    path('company-details/<int:company_id>/', views.company_details, name='company_details')

]


   