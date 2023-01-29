FROM docker.io/ubuntu:20.04
ENV USERNAME="user" \
    PASSWORD="Passw0rd"
COPY ./entrypoint.sh /

RUN apt update && apt install -y vim curl wget htop

RUN wget -O /usr/bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.3/ttyd.x86_64 && chmod +x /usr/bin/ttyd

RUN wget -O /usr/jdk.tar.gz https://github.com/alibaba/dragonwell17/releases/download/dragonwell-standard-17.0.5.0.5%2B8_jdk-17.0.5-ga/Alibaba_Dragonwell_Standard_17.0.5.0.5.8_x64_linux.tar.gz && \
    cd /usr/ && tar zxvf jdk.tar.gz

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/entrypoint.sh"]

EXPOSE 7681/tcp

