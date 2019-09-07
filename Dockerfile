FROM node:8.1-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app/
RUN npm install
RUN npm run test
RUN npm run lint:report

# EXPOSE 8000
EXPOSE 8000

ENV NODE_PATH .
