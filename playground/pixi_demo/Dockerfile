FROM ubuntu:24.04
RUN apt-get update
RUN apt-get install -y nano less curl wget tree bat
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

USER ubuntu
WORKDIR /home/ubuntu

RUN curl -fsSL https://pixi.sh/install.sh | bash
COPY --chown=ubuntu files/ /home/ubuntu/
RUN cd /home/ubuntu/pixi_demo && /home/ubuntu/.pixi/bin/pixi install --all
