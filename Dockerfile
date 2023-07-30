FROM ubuntu:latest

RUN mkdir /home/ovpn
WORKDIR /home/ovpn

RUN apt update
RUN apt install firewalld expect wget iproute2 -y

RUN wget https://git.io/vpn -O openvpn-install.sh
RUN chmod +x openvpn-install.sh

CMD cp /scripts/* ./ && chmod +x ./ovpn-install.exp ./ovpn-new-key.exp && /usr/bin/bash