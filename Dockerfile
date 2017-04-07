FROM dimdm/node

RUN npm install -g redis-commander

ENTRYPOINT ["redis-commander"]
CMD ["--redis-port", "6379", "--redis-host", "redis"]
