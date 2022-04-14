# Dockerfiles
This repo is where the rm team store their docker image files used in builds and tooling.

## [JDK 17 Maven Node 16](/jdk17_maven_node16)
A tooling image with JDK, Maven, and Node, to enable the building of JS front end resources in Java backend services.

Build with
```shell
make build_jdk17_maven_node_16
```

## [GCloud PubSub Emulator](/gcloud_pubsub_emulator)
A dockerized version of the GCloud PubSub emulator tool, useful for local testing and development.

Build with
```shell
make build_pubsub_emulator
```

## [GCloud Firestore Emulator](/gcloud_firestore_emulator)
A dockerized version of the GCloud Firestore emulator tool, useful for local testing and development

Build with
```shell
make build_firestore_emulator
```
