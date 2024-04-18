from . import views
from django.urls import path

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
    path('product-details', views.product_details, name='product_details'),
    path('productlisting/<int:product_id>/', views.product_detail, name='product_detail'),
    path('viewprofilepage', views.viewprofile_page, name='viewprofile_page'),
    path('companylisting', views.company_listing, name='company_listing'),
    path('company-details/<int:company_id>/', views.company_details, name='company_details')

]
