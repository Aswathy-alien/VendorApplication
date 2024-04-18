# Generated by Django 5.0.2 on 2024-04-17 14:18

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254, unique=True)),
                ('business_email', models.EmailField(blank=True, max_length=254)),
                ('phone', models.CharField(max_length=20)),
                ('country', models.CharField(max_length=100)),
                ('business_website', models.URLField(blank=True)),
                ('professional_bio', models.TextField(blank=True)),
            ],
        ),
    ]
