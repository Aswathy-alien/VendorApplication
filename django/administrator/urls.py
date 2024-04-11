from . import views
from django.urls import path
from django.contrib import admin
from django.conf import settings  # new
from django.urls import path, include  # new
from django.conf.urls.static import static  # new

app_name = 'administrator'

urlpatterns = [

    path('dashboard.html', views.admin_dashboard, name='admin_dashboard'),
    path('add_category.html', views.admin_add_category, name='admin_add_category'),
    path('review_product.html', views.admin_review_product, name='admin_review_product'),
    path('view_product.html', views.admin_view_product, name='admin_view_product'),
    path('view_category.html', views.admin_view_category, name='admin_view_category'),
    path('delete_category/<int:category_id>/', views.delete_category, name='delete_category'),
]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) #new
