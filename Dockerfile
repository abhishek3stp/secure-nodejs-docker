# FROM node
FROM node:lts-alpine3.13

RUN apk add dumb-init
ARG SERVER_ENV

ENV NODE_ENV $SERVER_ENV

WORKDIR /usr/src/app
COPY --chown=node:node . /usr/src/app

# RUN npm install
RUN npm ci --only=production

USER node
CMD ["dumb-init", "node", "server.js"]
