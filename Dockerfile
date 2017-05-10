FROM dimdm/node:7.10.0

RUN npm install -g redis-commander &&\
    adduser -D -u 1000 redis-commander

USER redis-commander
WORKDIR /tmp
CMD redis-commander --redis-port 6379 --redis-host redis
