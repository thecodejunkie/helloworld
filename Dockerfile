FROM node:8-alpine
EXPOSE 8080

WORKDIR /usr/app

COPY package.json .
COPY package.json package-lock.json ./

RUN npm install --quiet

COPY . .

CMD [ "npm", "start" ]