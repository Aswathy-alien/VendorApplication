from . import views
from django.urls import path

app_name = 'administrator'

urlpatterns = [
    
    path('dashboard.html', views.admindashboard, name='admindashboard'),
    path('addcategory.html', views.adminaddcategory, name='adminaddcategory'),
    path('reviewproduct.html', views.adminreviewproduct, name='adminreviewproduct'),
    path('viewproduct.html', views.adminviewproduct, name='adminviewproduct'),
    path('viewcategory.html', views.adminviewcategory, name='adminviewcategory'),
    path('delete_category/<int:category_id>/', views.delete_category, name='delete_category'),

]