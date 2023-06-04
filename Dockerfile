FROM ubuntu:22.10
LABEL author="SpeedWaWhale"
LABEL github="https://github.com/SpeedWaWhale"
LABEL discord="Titof#1619"
LABEL version="1.0"
LABEL description="Image for the banksyd binary"

ARG BANKSYD_URL="https://github.com/notional-labs/composable-centauri/releases/download/v2.3.5/banksyd"

USER root

RUN apt update -y  && \
        apt install -y wget
RUN wget $BANKSYD_URL && mv banksyd /usr/bin && chmod 777 /usr/bin/banksyd
RUN wget -O /usr/local/lib/libwasmvm.x86_64.so https://github.com/CosmWasm/wasmvm/releases/download/v1.2.3/libwasmvm.x86_64.so && \
        ldconfig


RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu
USER ubuntu
WORKDIR /home/ubuntu

ENTRYPOINT ["banksyd"]
