# NB this version of the image is required for python3.10
FROM --platform=linux/amd64 ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y nano less curl wget tree bat python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Needed for the 22.04 image
RUN useradd -s /bin/bash ubuntu

USER ubuntu
WORKDIR /home/ubuntu

RUN python3 -m venv --prompt venv /home/ubuntu/pip_demo/.venv
COPY --chown=ubuntu files/ /home/ubuntu/
