# Generated by Django 5.0.2 on 2024-04-18 00:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('administrator', '0012_alter_company_logo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='logo',
            field=models.ImageField(blank=True, null=True, upload_to='product_logos/'),
        ),
    ]
