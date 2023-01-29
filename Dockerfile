FROM docker.io/ubuntu:20.04

COPY ./entrypoint.sh /

RUN apt update && apt install -y vim curl wget htop

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/entrypoint.sh"]

EXPOSE 7681/tcp

