FROM debian:bookworm-slim

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y curl wget git vim cmake python3 g++

#USER auditor

# Install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Install foundryup

RUN curl -L https://foundry.paradigm.xyz | bash

# install node and foundry

RUN source ~/.bashrc && nvm install 18 && npm install -g yarn && foundryup 

COPY entrypoint.sh /entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
