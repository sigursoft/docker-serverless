FROM node:lts-slim

LABEL maintainer="Anton Kozik"

RUN apt-get update -qq
RUN apt-get install -y \
    jq \
    nano

RUN npm install serverless@1.52.2 -g

EXPOSE 8000

VOLUME ["/usr/src/shared"]

WORKDIR /usr/src

ENTRYPOINT ["/bin/bash"]
