FROM node:14.4.0-stretch

WORKDIR /mycake_cms

RUN npm install -g strapi

COPY ./src/mycake-cms/package*.json /mycake_cms

RUN npm install
COPY ./src/mycake-cms/ /mycake_cms

CMD ["npm", "run", "start"]

EXPOSE 1337