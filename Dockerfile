FROM node:15.4.0-alpine3.12

WORKDIR /app

COPY * ./

RUN npm install && \
	npm ci --only=production

EXPOSE 8080
CMD [ "node", "app.js" ]
