#!/bin/bash

if [ ! -f /home/ubuntu/init.done ]; then
  sudo apt update && sudo NEEDRESTART_MODE=a apt upgrade -y
  sudo NEEDRESTART_MODE=a apt install expect -y

  cd /home/ubuntu

  wget https://git.io/vpn -O openvpn-install.sh
  sudo chmod +x ./openvpn-install.sh

  wget https://raw.githubusercontent.com/n-lundie/openvpn-scripts/main/scripts/ovpn-install.exp -O ovpn-install.exp
  sudo chmod +x ./ovpn-install.exp

  sudo ./ovpn-install.exp

  sudo cp /root/client.ovpn ./client.ovpn

  touch init.done

  sudo reboot
fi
