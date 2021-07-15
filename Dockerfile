FROM archlinux:latest
WORKDIR /usr/src/app
RUN pacman -Syu --noconfirm
RUN pacman -S jre-openjdk-headless git --noconfirm
RUN git clone https://github.com/Frixxie/minecraft-server .
CMD [ "java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui" ]
