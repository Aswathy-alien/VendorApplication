# Generated by Django 5.0.2 on 2024-04-17 23:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('administrator', '0010_alter_company_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='company',
            name='logo',
            field=models.ImageField(blank=True, null=True, upload_to='company_logos'),
        ),
    ]
