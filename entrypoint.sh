#!/bin/sh

# Set environment variables
export DJANGO_SETTINGS_MODULE="blogsite.settings"

# Run your application command
poetry run python manage.py migrate
poetry run python manage.py runserver 0.0.0.0:8000
