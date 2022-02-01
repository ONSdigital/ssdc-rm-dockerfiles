build_jdk11_maven_node_14:
	docker build ./jdk11_maven_node14 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/jdk11-mvn-node-npm:latest

build_jdk17_maven_node_14:
	docker build ./jdk17_maven_node14 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/jdk17-mvn-node14-npm:latest

build_jdk17_maven_node_16:
	docker build ./jdk17_maven_node16 -t europe-west2-docker.pkg.dev/ssdc-rm-ci/docker/jdk17-mvn-node16-npm:latest
