FROM python:3

WORKDIR /app
COPY ./lib_catalog .
RUN pip install -r requirements.txt

ENTRYPOINT python manage.py migrate && python manage.py runserver 0.0.0.0:8000