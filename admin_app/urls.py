from . import views
from django.conf import settings
from django.urls import path
from django.conf.urls.static import static

app_name = 'admin_app'

urlpatterns = [

    path('dashboard', views.admin_dashboard, name='admin_dashboard'),
    path('add_category', views.admin_add_category, name='admin_add_category'),
    path('review_product', views.admin_review_product, name='admin_review_product'),
    path('view_product', views.admin_view_product, name='admin_view_product'),
    path('view_category', views.admin_view_category, name='admin_view_category'),
    path('edit_category', views.admin_edit_category, name='edit_category'),
    path('view_vendors', views.admin_view_vendors, name='admin_view_vendors'),
    path('view_product_details/<int:product_id>/', views.admin_view_product_details, name='admin_view_product_details'),
    path('view_vendor_details/<int:company_id>/', views.admin_view_vendor_details, name='admin_view_vendor_details'),

    path('edit_category/<int:category_id>/', views.admin_edit_category, name='admin_edit_category'),
    path('delete_category/<int:category_id>', views.delete_category, name='delete_category'),
]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)  # new
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
