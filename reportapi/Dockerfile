FROM node:16

WORKDIR /api

ENV TZ=Asia/Tokyo

COPY ./reportapi /api

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
