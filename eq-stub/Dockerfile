FROM python:3.12.10-slim@sha256:bae1a061b657f403aaacb1069a7f67d91f7ef5725ab17ca36abc5f1b2797ff92

WORKDIR /app
COPY app.py app.py
COPY Pipfile* /app
EXPOSE 5000
RUN pip3 install pipenv && pipenv install --deploy --system

ENTRYPOINT ["python3"]
CMD ["app.py"]
