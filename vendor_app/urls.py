from . import views
from django.conf import settings
from django.urls import path
from django.conf.urls.static import static

app_name = 'vendor_app'

urlpatterns = [
    path('dashboard', views.vendor_dashboard, name='vendor_dashboard'),
    path('add_category', views.vendor_add_category, name='vendor_add_category'),
    path('review_product', views.vendor_review_product, name='vendor_review_product'),
    path('view_product', views.vendor_view_product, name='vendor_view_product'),
    path('view_category', views.vendor_view_category, name='vendor_view_category'),
    path('delete_category/<int:category_id>/', views.vendor_delete_category, name='vendor_delete_category'),
]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
