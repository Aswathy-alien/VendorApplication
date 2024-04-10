# Generated by Django 5.0.2 on 2024-04-07 14:15

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('administrator', '0002_product_categories_product_logo'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='category',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='products', to='administrator.productcategory'),
        ),
        migrations.AlterField(
            model_name='product',
            name='categories',
            field=models.ManyToManyField(blank=True, related_name='products_many', to='administrator.productcategory'),
        ),
        migrations.AlterModelTable(
            name='productcategory',
            table='product_categories',
        ),
    ]
