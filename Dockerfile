FROM node:20.11.1-alpine3.19

WORKDIR /app

COPY package.json ./
COPY app.js ./

EXPOSE 8080

RUN apk add --no-cache curl bash && \
    npm install && \
    chmod +x app.js

CMD ["node", "app.js"]
USER 10008
