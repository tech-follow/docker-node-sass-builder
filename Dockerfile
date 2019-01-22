FROM node:dubnium-alpine

ARG FILE='linux-x64-64_binding.node'
# install node-sass
RUN \
  mkdir /opt/node-sass/ && \
  wget https://github.com/sass/node-sass/releases/download/v4.11.0/$FILE -O /opt/node-sass/$FILE

# install latest npm version
RUN npm install -g npm@latest

ENV SASS_BINARY_PATH=/opt/node-sass/$FILE

WORKDIR /usr/src/app/

CMD [ "yarn" ]
