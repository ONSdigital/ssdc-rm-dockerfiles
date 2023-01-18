# Dockerfiles

This repo is where the rm team store their docker image files used in builds and tooling.

## [JDK 17 Maven Node 16](/jdk17-maven-node16)

A tooling image with JDK, Maven, and Node, to enable the building of JS front end resources in Java backend services.

Build with

```shell
make jdk17-maven-node-16
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

## [ModSecurity](/modsecurity)

A re-build of the [owasp/modsecurity](https://hub.docker.com/r/owasp/modsecurity) image to keep in our registry. 

**Note:** The version in the [version file](/modsecurity/version) must be kept in step with the modsecurity base image version for our image tagging.

Build with

```shell
make modsecurity
```

## [Cloud SDK Firebase CLI](/cloud-sdk-firebase-cli)

Adds the Firebase cli to the base cloud-sdk image used by the database wipe concourse task to enable Firestore to be
wiped as part of it.

Build with

```shell
make cloud-sdk-firebase-cli
```

## [Tinyproxy](/tinyproxy)

A lightweight Alpine image with Tinyproxy installed and configured for our needs.

Build with

```shell
make tinyproxy
```

## [CloudSQL Proxy](/cloudsql-proxy)

A lightweight google Cloud SQL proxy.

Build with

```shell
make cloudsql-proxy
```

## [Python Pipenv](/python-pipenv)

A python image with pipenv and other build dependencies pre installed.

Build with

```shell
make python-pipenv
```

## [Cloud SDK Terraform](/cloud-sdk-terraform)

A cloud SDK based image with TFenv and a Terraform version pre installed.

Build with

```shell
make cloud-sdk-terraform
```


## [EQ Stub](/eq-stub)

A basic python flask app stubbing EQ API endpoints

Build with

```shell
make eq-stub
```
