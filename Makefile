jdk17_maven_node_16:
	docker build ./jdk17_maven_node16 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/jdk17-mvn-node16-npm:latest

gcloud_pubsub_emulator:
	docker build ./gcloud_pubsub_emulator -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/gcloud-pubsub-emulator:latest

gcloud_firestore_emulator:
	docker build ./gcloud_firestore_emulator -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/gcloud-firestore-emulator:latest

rh_modsecurity_rate_limiter:
	docker build ./rh-modsecurity-rate-limiter -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/modsecurity:latest

cloud_sdk_firebase_cli:
	docker build ./cloud-sdk-firebase-cli -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/cloud-sdk-firebase-cli:latest

tinyproxy:
	docker build ./tinyproxy -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/tinyproxy:latest
