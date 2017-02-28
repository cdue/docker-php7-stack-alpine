# docker-php7-stack-alpine
This Docker image (base on Alpine) is intended to run php7 code which may need to use Mysqli or GD libraries.

## Installation:
### Build image
```sh
$ docker build -t "cdue/docker-php7-stack-alpine:latest" .
```

### Or get it from the Docker Hub
```sh
$ docker pull "cdue/docker-php7-stack-alpine"
```

## Run a bash with a volume mounted:
```sh
$ docker run --rm -it -v $(pwd):/app/ "cdue/docker-php7-stack-alpine:latest" /bin/sh
```
Windows users must add a / before $(pwd)
