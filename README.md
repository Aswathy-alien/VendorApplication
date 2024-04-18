# VendorApplication

## Install Dependencies
- Run ```pip install -r requirements.txt``` to install all dependencies

## Setting up Database Migrations and Seeding Data

- Step 1. Create Migrations ```python manage.py makemigrations```
- Step 2. Run Migrations ```python manage.py migrate```
- Step 3. Run the SQL Data scripts from Data folder inside MySQL Workbench or Any other SQL Client

## Getting the app to work
1. Install dependencies by running ```pip install -r requirements.txt```.
2. Run migrations by running ```python manage.py migrate```.
3. Start the local server by running ```python manage.py runserver```.
4. Run ```python manage.py createsuperuser``` and follow the instructions on-screen to create an Admin User.
5. Go to ```http://127.0.0.1/admin``` and login with the credentials used in the above step.
6. Click on groups and create two groups named ```admin``` and ```vendor``` **(case-sensitive)**.
7. Create some test users using the django admin panel.
8. Once you have at-least 2 users, click on the user and go to their details page in the same admin panel.
9. Find the groups bit and add ```admin``` group to few test users and ```vendor``` group to few test users.
10. Now go to ```http://127.0.0.1/login``` and use one of the test user's login credentials to login.
11. Notice that if the test user is added to the admin group, you will see the Admin Dashboard with more options.
12. If the test user belongs to the vendor group, you see slightly reduced access level and few things missing.
13. Logout now works (Right-top corner, click your test user's name and click logout).
14. Once logged out, you will have to log in again.


## Very Important Note

If adding a new library/package to the project, Run ```pip freeze > requirements.txt``` to add the newly added package/library to the requirements.txt file. This will make sure others can seamlessly install all the required dependencies.
