FROM node:lts-slim

LABEL maintainer="Anton Kozik"

RUN npm install serverless@1.35.1 -g

VOLUME ["/usr/src/shared"]

WORKDIR /usr/src

ENTRYPOINT ["/bin/bash"]
