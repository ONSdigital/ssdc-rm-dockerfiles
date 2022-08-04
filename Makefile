.PHONY: jdk17-maven-node-16 gcloud-firestore-emulator gcloud-pubsub-emulator rh-modsecurity-rate-limiter cloud-sdk-firebase-cli tinyproxy cloudsql-proxy

jdk17-maven-node16:
	docker build ./jdk17-maven-node16 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/jdk17-mvn-node16-npm:latest

gcloud-pubsub-emulator:
	docker build ./gcloud-pubsub-emulator -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/gcloud-pubsub-emulator:latest

gcloud-firestore-emulator:
	docker build ./gcloud-firestore-emulator -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/gcloud-firestore-emulator:latest

rh-modsecurity-rate-limiter:
	docker build ./rh-modsecurity-rate-limiter -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/modsecurity:latest

cloud-sdk-firebase-cli:
	docker build ./cloud-sdk-firebase-cli -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/cloud-sdk-firebase-cli:latest

tinyproxy:
	docker build ./tinyproxy -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/tinyproxy:latest

cloudsql-proxy:
	docker build ./cloudsql-proxy -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/cloudsql-proxy:latest

build-all: jdk17-maven-node-16 gcloud-pubsub-emulator gcloud-firestore-emulator rh-modsecurity-rate-limiter cloud-sdk-firebase-cli tinyproxy cloudsql-proxy
