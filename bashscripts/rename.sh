#!/bin/bash

read -p "Would you like to change the device name? " REPLY
if [[ "$REPLY" =~ ^[Yy]$ ]]
then
  cd ~ 
  read -p "Enter new device name: " NAME
  sudo sh -c "echo $NAME > /etc/hostname"
  echo Device has been renamed, reboot for changes to take effect
  #reboot
else
  echo Process aborted, nothing happened
fi
