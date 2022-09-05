FROM python:3.10.6-alpine@sha256:5b4e425e03038da758a35dc6f4473b4cf9bbadb9a7cdc2766d5d1d10ef1c9ca9
RUN apk update
RUN apk add build-base gcc
RUN apk add libc-dev linux-headers libffi-dev libpq-dev
RUN pip3 install --user pipenv
