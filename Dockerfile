# FROM directive instructing base image to build upon
FROM python:2-onbuild

ENV PYTHONUNBUFFERED 1

COPY manage.py /manage.py
COPY requirements.txt /requirements.txt
COPY start.sh /start.sh

RUN chmod +x /start.sh
RUN pip install -r /requirements.txt

CMD ["/start.sh"]
