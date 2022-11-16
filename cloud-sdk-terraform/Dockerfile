FROM google/cloud-sdk:slim

ARG TFENV_VERSION="v3.0.0"
ARG TERRAFORM_INITIAL_VERSION="1.2.9"

# Tfenv depends on unzip
RUN apt-get update && \
    apt-get install -y unzip && \
    rm -rf /var/lib/apt/lists/*

# Install tfenv from the github release tarball
# Configure tfenv to use gpgv (which is included in the cloud-sdk) for verification
# "trust-tfenv: yes" means tfenv will use its own packaged key for verification
RUN curl -L "https://github.com/tfutils/tfenv/archive/refs/tags/$TFENV_VERSION.tar.gz" -o "/home/cloudsdk/tfenv.tar.gz" && \
    mkdir "/home/cloudsdk/.tfenv" && \
    tar -xzf "/home/cloudsdk/tfenv.tar.gz" -C "/home/cloudsdk/.tfenv" --strip-components 1 && \
    rm "/home/cloudsdk/tfenv.tar.gz" && \
    echo 'trust-tfenv: yes' > "/home/cloudsdk/.tfenv/use-gpgv"
ENV PATH="/home/cloudsdk/.tfenv/bin:${PATH}"

# Install an initial version of terraform
RUN tfenv install "$TERRAFORM_INITIAL_VERSION" && \
    tfenv use "$TERRAFORM_INITIAL_VERSION"


### Install GKE plugin needed for authentication
RUN apt-get update && \
    apt-get install google-cloud-cli-gke-gcloud-auth-plugin

###ENV PATH="/usr/local/gcloud/google-cloud-sdk/bin:${PATH}"
##ENV export USE_GKE_GCLOUD_AUTH_PLUGIN=True
##
##RUN #gcloud components install gke-gcloud-auth-plugin --quiet --no-user-output-enabled



#FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine
#RUN gcloud components install kubectl
#RUN gcloud components install gke-gcloud-auth-plugin