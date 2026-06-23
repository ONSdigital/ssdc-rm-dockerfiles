# Set the container runtime based on architecture, default to docker for amd64 and podman for arm64
DOCKER ?= $(shell if [ "$$(uname -m)" = "arm64" ]; then echo podman; else echo docker; fi)

.PHONY: jdk17-maven-node22 gcloud-firestore-emulator gcloud-pubsub-emulator modsecurity cloud-sdk-firebase-cli tinyproxy cloudsql-proxy python-pipenv cloud-sdk-terraform eq-stub owasp-venom

jdk17-maven-node22:
	$(DOCKER) build --platform linux/amd64 ./jdk17-maven-node22 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/jdk17-mvn-node22-npm:latest

gcloud-pubsub-emulator:
	$(DOCKER) build --platform linux/amd64 ./gcloud-pubsub-emulator -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/gcloud-pubsub-emulator:latest

gcloud-firestore-emulator:
	$(DOCKER) build --platform linux/amd64 ./gcloud-firestore-emulator -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/gcloud-firestore-emulator:latest

modsecurity:
	$(DOCKER) build --platform linux/amd64 ./modsecurity -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/modsecurity:latest

cloud-sdk-firebase-cli:
	$(DOCKER) build --platform linux/amd64 ./cloud-sdk-firebase-cli --platform linux/amd64 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/cloud-sdk-firebase-cli:latest

tinyproxy:
	$(DOCKER) build --platform linux/amd64 ./tinyproxy --platform linux/amd64 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/tinyproxy:latest

cloudsql-proxy:
	$(DOCKER) build --platform linux/amd64 ./cloudsql-proxy --platform linux/amd64 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/cloudsql-proxy:latest

python-pipenv: python-pipenv-3.12

python-pipenv-3.13:
	$(DOCKER) build --platform linux/amd64 --build-arg="PYTHON_TAG=$$(cat python-pipenv/python-3.13-tag.txt)" ./python-pipenv -t europe-west2-docker.pkg.dev/ons-ci-rm/docker/python-pipenv:3.13

python-pipenv-3.12:
	$(DOCKER) build --platform linux/amd64 --build-arg="PYTHON_TAG=$$(cat python-pipenv/python-3.12-tag.txt)" ./python-pipenv -t europe-west2-docker.pkg.dev/ons-ci-rm/docker/python-pipenv:3.12

python-pipenv-3.11:
	$(DOCKER) build --platform linux/amd64 --build-arg="PYTHON_TAG=$$(cat python-pipenv/python-3.11-tag.txt)" ./python-pipenv -t europe-west2-docker.pkg.dev/ons-ci-rm/docker/python-pipenv:3.11

cloud-sdk-terraform:
	$(DOCKER) build --platform linux/amd64 ./cloud-sdk-terraform -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/cloud-sdk-terraform:latest

eq-stub:
	$(DOCKER) build --platform linux/amd64 ./eq-stub -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/ssdc-rm-eq-stub:latest

owasp-venom:
	$(DOCKER) build --platform linux/amd64 ./owasp-venom -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/venom:latest

build-all: gcloud-pubsub-emulator gcloud-firestore-emulator modsecurity cloud-sdk-firebase-cli tinyproxy cloudsql-proxy python-pipenv-3.11 python-pipenv-3.12 cloud-sdk-terraform eq-stub owasp-venom
