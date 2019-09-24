FROM node:lts-slim

LABEL maintainer="Anton Kozik"

RUN apt-get update -qq
RUN apt-get install -y \
    jq \
    nano

RUN npm install serverless@1.52.2 -g

RUN adduser --disabled-login --gecos '' sls
WORKDIR /home/sls

USER sls

EXPOSE 8000
VOLUME ["/home/sls/shared"]

ENTRYPOINT ["/bin/bash"]
