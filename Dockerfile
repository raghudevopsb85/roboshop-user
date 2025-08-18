FROM            node:22
RUN             mkdir /app
WORKDIR         /app
ADD             ./ /app/
ENTRYPOINT      ["node", "/app/server.js"]
