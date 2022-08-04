# Dockerfiles

This repo is where the rm team store their docker image files used in builds and tooling.

## [JDK 17 Maven Node 16](/jdk17-maven-node16)

A tooling image with JDK, Maven, and Node, to enable the building of JS front end resources in Java backend services.

Build with

```shell
make jdk17_maven_node_16
```

## [GCloud PubSub Emulator](/gcloud-pubsub-emulator)

A dockerized version of the GCloud PubSub emulator tool, useful for local testing and development.

Build with

```shell
make gcloud-pubsub-emulator
```

## [GCloud Firestore Emulator](/gcloud-firestore-emulator)

A dockerized version of the GCloud Firestore emulator tool, useful for local testing and development

Build with

```shell
make gcloud-firestore-emulator
```

## [RH ModSecurity Rate Limiter](/rh-modsecurity-rate-limiter/)

The dockerfile used for the RH rate limiter based off the ModSecurity image.

Build with

```shell
make rh-modsecurity-rate-limiter
```

## [Cloud SDK Firebase CLI](/cloud-sdk-firebase-cli/)

Adds the Firebase cli to the base cloud-sdk image used by the database wipe concourse task to enable Firestore to be
wiped as part of it.

Build with

```shell
make cloud-sdk-firebase-cli
```

## [Tinyproxy](/tinyproxy/)

A lightweight Alpine image with Tinyproxy installed and configured for our needs.

Build with

```shell
make tinyproxy
```

## [CloudSQL Proxy](/cloudsql-proxy/)

A lightweight google Cloud SQL proxy.

Build with

```shell
make cloudsql-proxy
```