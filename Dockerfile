FROM node:0.10-onbuild
MAINTAINER Don Schenck "don.schenck@gmail.com"


RUN mkdir -p /usr/local/src
WORKDIR /usr/local/src

RUN apt-get update
RUN apt-get install -y npm
RUN npm install restify
RUN npm install request

COPY package.json package.json
COPY productws.js productws.js

EXPOSE 80

CMD node productws.js
