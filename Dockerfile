FROM node:12

WORKDIR /usr/src/app
COPY . .
RUN npm install

FROM nginx
COPY dist/ /usr/share/nginx/html

EXPOSE 80