from . import views
from django.urls import path

app_name = 'djangoapp'

urlpatterns = [
    path('', views.index, name='index'),
    path('login.html', views.login, name='login'),
    path('register.html', views.register, name='register'),
    path('adminis/dashboard.html', views.admindashboard, name='admindashboard'),
    path('adminis/addcategory.html', views.adminaddcategory, name='adminaddcategory'),
    path('adminis/reviewproduct.html', views.adminreviewproduct, name='adminreviewproduct'),
    path('adminis/viewproduct.html', views.adminviewproduct, name='adminviewproduct'),
    path('adminis/viewcategory.html', views.adminviewcategory, name='adminviewcategory'),
    path('delete_category/<int:category_id>/', views.delete_category, name='delete_category'),

]