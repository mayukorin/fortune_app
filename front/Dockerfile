FROM node:12.18.3-alpine

ENV APP_HOME /fortune_app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN apk update 
COPY package.json .
RUN npm install