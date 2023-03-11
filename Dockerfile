FROM node:16-alpine3.16

RUN apk update && \
    apk add bash git make && \
    apk add --upgrade bash

WORKDIR /app


COPY package*.json ./

RUN npm ci && \
    npm i -g @nestjs/cli@9.1.2
COPY . .
CMD ["npm", "run","start:dev"]
