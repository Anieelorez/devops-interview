FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /app
ADD . /app/
COPY . /requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
EXPOSE 8080
CMD python ./manage.py