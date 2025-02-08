FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y nano less curl wget tree bat python3 python3-pip python3-venv
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -s /bin/bash ubuntu

USER ubuntu
WORKDIR /home/ubuntu

RUN python3 -m venv --prompt venv /home/ubuntu/pip_demo/.venv
COPY --chown=ubuntu files/ /home/ubuntu/
