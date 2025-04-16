FROM node:15-alpine
ARG PORT=80
ENV PORT=$PORT
WORKDIR app
copy src src
copy package.json .
RUN npm install
EXPOSE $PORT
CMD npm start

