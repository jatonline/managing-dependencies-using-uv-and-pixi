FROM --platform=linux/amd64 ubuntu:24.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y nano less curl wget tree bat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER ubuntu
WORKDIR /home/ubuntu

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
COPY --chown=ubuntu files/ /home/ubuntu/
RUN cd /home/ubuntu/uv_lib_demo && /home/ubuntu/.local/bin/uv sync
