FROM node:8-alpine

# Create app directory
RUN mkdir -p /usr/app
WORKDIR /usr/app

# Install dependencies
COPY package.json /usr/app/package.json
COPY package.json package-lock.json /usr/app/package-lock.json
RUN npm install --quiet

# Bunlde server files
COPY . /usr/app

ENV NODE_ENV=production

EXPOSE 8080
CMD [ "npm", "start" ]
