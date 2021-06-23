FROM ubuntu:latest
WORKDIR /usr/src/app
RUN export DEBIAN_FRONTEND=noninteractive && \
    export TZ=Europe/Oslo && \
    apt update && \
    apt upgrade -y && \
    apt install -y software-properties-common && \
    apt install -y openjdk-16-jdk-headless
CMD [ "java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui" ]
