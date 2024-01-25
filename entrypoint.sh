#!/bin/bash
set -e

echo "Running migrations..."
poetry run python manage.py migrate

echo "Starting the Django development server..."
poetry run python manage.py runserver 0.0.0.0:8000