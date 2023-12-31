FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install typescript
RUN npm ci 

COPY . .

EXPOSE 4000/tcp

CMD [ "npm","run", "start:prod" ]