FROM ubuntu:latest

RUN apt update

RUN apt install libmysqlclient-dev -y

RUN apt install pkg-config -y

CMD ["bash"]

FROM python:3.11

ENV PYTHONUNBUFFERED 1

RUN mkdir /teerdhanew

WORKDIR /teerdhanew

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN pip install django

RUN pip install django-rest-framework

RUN pip install mysqlclient

RUN pip install requests

RUN pip install psycopg2-binary

RUN pip install wheel

RUN pip install pillow

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
