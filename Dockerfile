FROM node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .
ENV MONGOURL=mongodb://host.docker.internal:27107/goals

CMD [ "node","app.js" ]