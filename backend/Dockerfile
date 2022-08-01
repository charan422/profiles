FROM node:lts-alpine3.15

WORKDIR /src

COPY package.json .

RUN npm install

COPY . .

EXPOSE 9000

ENTRYPOINT [ "node", "./https.js" ]