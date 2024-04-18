from django import forms
from .models import ProductCategory


class ProductCategoryForm(forms.ModelForm):
    class Meta:
        model = ProductCategory
        fields = ['category_name', 'category_description']
        widgets = {
            'category_name': forms.TextInput(attrs={'class': 'form-control'}),
            'category_description': forms.Textarea(attrs={'class': 'form-control'}),
        }
