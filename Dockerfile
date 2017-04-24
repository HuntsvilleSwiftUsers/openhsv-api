FROM node:latest

MAINTAINER Jarrod Parkes <parkesfjarrod@gmail.com>

RUN npm cache clean -f; \
    npm install --silent -g strong-deploy strong-build loopback-cli apiconnect; \
    npm cache clear; \
    apt-get clean;

# replace this with your application's default port
EXPOSE 8888

WORKDIR /openhsv
