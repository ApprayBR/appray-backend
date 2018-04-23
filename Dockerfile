FROM python:3

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi

WORKDIR /usr/src/appray-backend

ADD . .

RUN pip install --no-cache-dir -r requirements.txt

USER uwsgi

CMD ./app.sh
