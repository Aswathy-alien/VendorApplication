# VendorApplication

## Install Dependencies
- Run ```pip install -r requirements.txt``` to install all dependencies

## Setting up Database Migrations and Seeding Data

- Step 1. Create Migrations ```python manage.py makemigrations```
- Step 2. Run Migrations ```python manage.py migrate```
- Step 3. Run the SQL Data scripts from Data folder inside MySQL Workbench or Any other SQL Client

## Very Important Note

If adding a new library/package to the project, Run ```pip freeze > requirements.txt``` to add the newly added package/library to the requirements.txt file. This will make sure others can seamlessly install all the required dependencies.
