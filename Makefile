build_jdk11_maven_node_14:
	docker build ./jdk11_maven_node14 -t eu.gcr.io/ssdc-rm-ci/rm/jdk11-mvn-node-npm:latest

build_jdk17_maven_node_14:
	docker build ./jdk17_maven_node14 -t eu.gcr.io/ssdc-rm-ci/rm/jdk17-mvn-node14-npm:latest

build_jdk17_maven_node_16:
	docker build ./jdk17_maven_node16 -t eu.gcr.io/ssdc-rm-ci/rm/jdk17-mvn-node16-npm:latest
