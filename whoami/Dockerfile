FROM python:3.7-alpine
RUN pip install flask
COPY whoami.py /opt
WORKDIR /opt
CMD flask run --host=0.0.0.0