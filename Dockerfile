FROM node:16.10.0-alpine3.12

RUN mkdir -p /apps/bff

COPY src package.json package-lock.json /apps/bff/
RUN cd /apps/bff && npm install

EXPOSE 5000

WORKDIR /apps/bff
CMD [ "npm", "start" ]
