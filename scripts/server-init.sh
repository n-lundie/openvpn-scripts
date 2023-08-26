#!/bin/bash

if [ ! -f /home/ubuntu/update.done ]; then
  sudo apt update && sudo apt upgrade -y
  sudo apt install expect -y

  touch /home/ubuntu/update.done

  sudo reboot
elif [ ! -f /home/ubuntu/init.done ]; then

  cd /home/ubuntu

  wget https://git.io/vpn -O openvpn-install.sh
  sudo chmod +x ./openvpn-install.sh

  wget https://raw.githubusercontent.com/n-lundie/openvpn-scripts/main/scripts/ovpn-install.exp -O ovpn-install.exp
  sudo chmod +x ./ovpn-install.exp

  sudo ./ovpn-install.exp

  sudo cp /root/client.ovpn ./client.ovpn

  touch init.done
fi
