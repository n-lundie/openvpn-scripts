#!/bin/bash

if [ ! -f /home/ubuntu/init.done ]; then
  sudo apt update && sudo apt upgrade -y
  sudo apt install expect -y

  cd /home/ubuntu

  wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh
  sudo chmod +x ./openvpn-install.sh

  wget https://raw.githubusercontent.com/n-lundie/openvpn-scripts/main/install.exp -O install.exp
  sudo chmod +x ./install.exp

  sudo ./install.exp

  sudo cp /root/client.ovpn ./client.ovpn

  touch init.done

  sudo reboot
fi
