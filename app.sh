#!/bin/bash
# GUNICORN_CMD_ARGS = variável de configuração do Gunicorn
python manage.py collectstatic --noinput
gunicorn mprjlabeler.wsgi:application --bind=0.0.0.0:8080 --log-file -