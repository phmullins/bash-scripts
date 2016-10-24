#!/usr/bin/env bash
# This script backs up your interface configuration, uninstalls dhcpcd5, restores the network config,
# and then reboots the system. Once finished, you will have only one IP address associated with your
# Raspberry Pi.

echo -n "Your Raspberry Pi must be rebooted after patching. Continue? (y/n)? "
read -r answer
if echo "$answer" | grep -iq "^y" ;then
  echo "Backing up original /etc/network/interfaces file."
  sudo cp /etc/network/interfaces /etc/network/interfacesbackup
  echo "Uninstalling the dhcpcd5 package."
  sudo apt-get purge dhcpcd5 -y
  echo "Restoring original /etc/network/interfaces file."
  sudo cp /etc/network/interfacesbackup /etc/network/interfaces
  echo "Rebooting system."
  sudo reboot
else
    echo "Exiting application"
    exit
fi
