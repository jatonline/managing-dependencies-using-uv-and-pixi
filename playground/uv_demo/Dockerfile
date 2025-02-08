FROM ubuntu:24.04
RUN apt-get update
RUN apt-get install -y nano less curl wget tree bat
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

USER ubuntu
WORKDIR /home/ubuntu

COPY --chown=ubuntu files/ /home/ubuntu/
