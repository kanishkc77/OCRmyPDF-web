FROM jbarlow83/ocrmypdf

USER root

RUN mkdir -p /app
WORKDIR /app

ADD requirements.txt /app

RUN pip install -r requirements.txt

ADD server.py index.htm entrypoint.sh /app/
ADD static /app/static/

USER docker

ENTRYPOINT ["/app/entrypoint.sh"]
