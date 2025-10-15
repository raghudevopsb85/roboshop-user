FROM            docker.io/redhat/ubi9
RUN             dnf module disable nodejs -y && dnf module enable nodejs:22 -y && dnf install nodejs -y && dnf clean all && useradd -u 1000 roboshop && mkdir /app && chown roboshop:roboshop /app
WORKDIR         /app
USER            roboshop
ADD             ./ /app/
ENTRYPOINT      ["node", "/app/server.js"]
