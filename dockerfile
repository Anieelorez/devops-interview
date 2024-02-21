FROM python:3.13.0a4-alpine3.18


WORKDIR /app .

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . . 

EXPOSE 8080

CMD python manage.py runserver 0.0.0.0:8080
