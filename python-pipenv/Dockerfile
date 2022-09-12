FROM python:3.10.6-slim@sha256:ddfe4839f1516d0484944e07ea22200ede3d48828ecbf1f68eec1a9a06b79406
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
build-essential gcc 
RUN pip3 install --user pipenv