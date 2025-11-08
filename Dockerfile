FROM node:22-alpine

ENV PORT=3001

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY server .

RUN npm run build

EXPOSE $PORT

CMD ["npm", "start"]