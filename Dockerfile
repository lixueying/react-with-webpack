FROM node:10.17.0-alpine
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org && cnpm install
COPY . /app/
RUN npm run build

FROM nginx:1.17.5-alpine
WORKDIR /usr/share/nginx/html
COPY --from=0 /app/dist/production .
