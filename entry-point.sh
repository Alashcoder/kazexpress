#!/bin/bash
python3 /home/whiterose/programing/python/django/kazexpress/kazexpress/manage.py makemigrations
python3 /home/whiterose/programing/python/django/kazexpress/kazexpress/manage.py migrate
thon3 /home/whiterose/programing/python/django/kazexpress/kazexpress/manage.py runserver
jupyter notebook --ip=* --allow-root

