FROM ubuntu:16.04

ENV BROOK_VERSION="20180601"

RUN apt-get update \
    apt-get install -y wget

RUN wget "https://github.com/txthinking/brook/releases/download/v20180601/brook" -O /usr/local/bin/brook \
    chmod +x /usr/local/bin/brook

ENTRYPOINT ["/usr/local/bin/"]
