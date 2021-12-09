FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4002
EXPOSE 4003
EXPOSE 5002
EXPOSE 5003
EXPOSE 9090

CMD [ "node", "index.js" ]