build_jdk17_maven_node_16:
	docker build ./jdk17_maven_node16 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/jdk17-mvn-node16-npm:latest

build_pubsub_emulator:
	docker build ./gcloud_pubsub_emulator -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/gcloud-pubsub-emulator:latest

build_firestore_emulator:
	docker build ./gcloud_firestore_emulator -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/gcloud-firestore-emulator:latest

build_rh_modsecurity_rate_limiter:
	docker build ./rh-modsecurity-rate-limiter -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/modsecurity:latest