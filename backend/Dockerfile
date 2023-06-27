FROM  mysql
FROM python:3.11-slim-buster

WORKDIR /app

COPY . ./

ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1


RUN apt-get update -y
RUN apt-get install -y libcairo2

RUN pip3 install --upgrade pip
RUN python3 -m pip install --no-cache-dir  -r requirements.txt
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate

EXPOSE 8000


CMD ["python3","manage.py","runserver","0.0.0.0:8000"]

