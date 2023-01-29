FROM docker.io/ubuntu:20.04

COPY ./entrypoint.sh /

RUN apt update && apt install -y vim curl wget htop

RUN curl -o /usr/bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.3/ttyd.x86_64

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/entrypoint.sh"]

EXPOSE 7681/tcp

