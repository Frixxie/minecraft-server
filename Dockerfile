FROM ubuntu:latest
WORKDIR /usr/src/app
ENV DEBIAN_FRONTEND=noninteractive TZ=Europe/Oslo 
RUN apt update 
RUN apt upgrade -y
RUN apt install -y software-properties-common openjdk-16-jdk-headless git
RUN git clone https://github.com/Frixxie/minecraft-server .
CMD [ "java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui" ]
