#!/usr/bin/env bash

set -e

if [ "$ENV" = 'DEV' ]; then
    echo "Running development server"
    exec python app/manage.py runserver 0.0.0.0:8080
else
    echo "Running production server"
    exec gunicorn -w 4 -b :8080 app:app
fi