
FROM node:20 AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

FROM node:20-alpine

WORKDIR /app

COPY --from=builder /app ./

RUN npm install --omit=dev

EXPOSE 5000

CMD ["node", "server.js"]