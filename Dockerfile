FROM node:18-alpine

WORKDIR /app

# copy package files first
COPY package*.json ./

RUN npm install

# copy all project files
COPY . .

# expose your server port
EXPOSE 3000

# start server
CMD ["node", "server.js"]