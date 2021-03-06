FROM node:10

# Create app directory
WORKDIR /usr/src/app

RUN npm install -g parcel-bundler


COPY package*.json ./
RUN npm i --production
COPY . .
RUN npm run build

ENV NODE_ENV production
EXPOSE 9000
CMD [ "node", "src/index.js" ]
