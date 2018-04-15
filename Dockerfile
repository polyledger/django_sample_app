# FROM directive instructing base image to build upon
FROM python:2-onbuild

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

ADD . /app/
RUN chmod +x start.sh

CMD /app/start.sh
