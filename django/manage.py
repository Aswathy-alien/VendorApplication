#!/usr/bin/env python
"""Django's command-line utility for administrative tasks."""
import os
import sys
import mysql.connector


def main():
    dataBase = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="password",
        database="vendorappdb")

    cursorObject = dataBase.cursor()

    print("Displaying NAME from the USERS table:")

    # selecting query
    query = "SELECT name FROM users"
    cursorObject.execute(query)

    result = cursorObject.fetchall()

    for x in result:
        print(x)

    # disconnecting from server
    dataBase.close()

    """Run administrative tasks."""
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'vendordjango.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == '__main__':
    main()
