# This is a dockerized minecraft server

to run in docker using local volume bind:

```sh
docker build -t minecraft .
docker run -d --name minecraft -p 127.0.0.1:25565:25565 -v $(pwd):/usr/src/app minecraft
```
This is for development purposes
