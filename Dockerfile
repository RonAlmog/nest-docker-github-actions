FROM node:12.13

WORKDIR /app
COPY ./package.json .
RUN npm i
COPY . .

ENV NODE_ENV=production
ENV HOST 0.0.0.0

RUN npm run build-server
EXPOSE 3000



