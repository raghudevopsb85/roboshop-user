FROM            node
RUN             mkdir /app
WORKDIR         /app
ADD             ./ /app/
ENTRYPOINT      ["node", "/app/server.js"]
