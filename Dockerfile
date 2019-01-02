FROM node:lts-slim

LABEL maintainer="Anton Kozik"

RUN npm install serverless@1.35.1 -g

EXPOSE 8000

VOLUME ["/usr/src/shared"]

WORKDIR /usr/src

ENTRYPOINT ["/bin/bash"]
