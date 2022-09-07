FROM alpine:3.14

WORKDIR /src

RUN apk add --update --no-cache python3 py3-pip python3-dev && ln -sf python3 /usr/bin/python

RUN \
    apk add --no-cache postgresql-libs && \
    apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev

COPY requirements.txt .

COPY ./backend /src/

RUN pip install -r requirements.txt

RUN apk --purge del .build-deps
