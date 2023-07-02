FROM python:3.11-bullseye
WORKDIR /app

COPY . ./

ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1


RUN pip3 install --upgrade pip
RUN python3 -m pip install --no-cache-dir  -r requirements.txt


EXPOSE 8000


CMD ["python3","manage.py","runserver","0.0.0.0:8000"]

