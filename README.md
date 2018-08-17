# echo-sctp
An echo server with sctp protocol, useful for testing

This is the Dockerfile that creates the image `sofianinho/echo-sctp:scratch` on docker hub. The code itself is from the repo: https://github.com/ishidawataru/sctp.git 

You can use the image on the docker hub, or rebuild like this:

```sh
docker build --no-cache -t echo-sctp:local https://github.com/sofianinho/echo-sctp.git#master
```

## Use the image

### Server 

```sh
# Adapt the ip address to that of the container
docker run -it --rm sofianinho/echo-sctp:scratch -server -port 2000 -ip 172.17.0.2
```

### Client
```sh
docker run -it --rm sofianinho/echo-sctp:scratch -port 2000 -ip 172.17.0.2
```
