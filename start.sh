#!/bin/bash

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn djangosample.wsgi:application \
    --bind 0.0.0.0:$PORT \
    --workers 3 --reload
#python manage.py runserver 0.0.0.0:3000
