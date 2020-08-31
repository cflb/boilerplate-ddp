FROM python:3.7-alpine
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev vim jpeg-dev zlib-dev tzdata
ENV TZ America/Bahia
LABEL maintainer="Your Django Project"

ENV PYTHONUNBUFFERED 1
ENV PIP_DEFAULT_TIMEOUT 100 

COPY ./src/requirements.txt /requirements.txt

RUN pip install --upgrade pip

RUN mkdir /src
WORKDIR /src
COPY ./src /src

RUN pip install -r requirements.txt
CMD python manage.py makemigrations
CMD python manage.py migrate

#RUN adduser -D user
#USER user

CMD python manage.py runserver 0.0.0.0:$PORT