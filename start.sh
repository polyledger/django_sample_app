#!/bin/bash

# Start Gunicorn processes
echo Starting Gunicorn.
# exec gunicorn djangosample.wsgi:application \
#     --bind 0.0.0.0:3000 \
#     --workers 3
python manage.py runserver 0.0.0.0:3000
