FROM google/cloud-sdk:slim

ARG TFENV_VERSION="v3.0.0"
ARG TERRAFORM_INITIAL_VERSION="1.2.9"

# Tfenv depends on unzip
RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*

# Install tfenv from release tar
RUN curl -L "https://github.com/tfutils/tfenv/archive/refs/tags/$TFENV_VERSION.tar.gz" > "/home/cloudsdk/tfenv.tar.gz"
RUN mkdir "/home/cloudsdk/.tfenv" && tar -xzf "/home/cloudsdk/tfenv.tar.gz" -C "/home/cloudsdk/.tfenv" --strip-components 1
ENV PATH="/home/cloudsdk/.tfenv/bin:${PATH}"

# Configure tfenv to use gpgv for verification with tfenv copy of Hashicorp key
RUN echo 'trust-tfenv: yes' > "/home/cloudsdk/.tfenv/use-gpgv"

# Install an initial up to date version of terraform
RUN tfenv install "$TERRAFORM_INITIAL_VERSION"
