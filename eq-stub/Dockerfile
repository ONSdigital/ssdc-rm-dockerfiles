FROM python:3.11-slim

WORKDIR /app
COPY app.py app.py
COPY Pipfile* /app
EXPOSE 5000
RUN pip3 install pipenv && pipenv install --deploy --system

ENTRYPOINT ["python3"]
CMD ["app.py"]
