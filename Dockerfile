FROM node:17.4.0-alpine3.14

ARG SERVER_DIR=/opt/server

RUN mkdir -p ${SERVER_DIR}

COPY . ${SERVER_DIR}/

RUN cd ${SERVER_DIR} && \
    npm install

WORKDIR ${SERVER_DIR}

ENTRYPOINT [ "npm", "run", "start" ]