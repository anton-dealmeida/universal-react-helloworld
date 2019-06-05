FROM node:10.9 as base
EXPOSE 1337
WORKDIR /src

FROM base as build
COPY package.json .
RUN npm install
COPY . .
RUN npm run build-prod

CMD [ "npm", "run", "serve" ]
