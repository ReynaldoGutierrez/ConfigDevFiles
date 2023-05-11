#!/bin/bash
#set ip
#connect to device
#link db dir to local

echo Most recent IP: $DIP
read -p "Would you like to change it?" REPLY
if [[ "$REPLY" =~ ^[Yy]$ ]]
then
  cd ..
  fusermount -u ./dbs
  cd ./dbs
  echo enter device IP
  read dip

  export DIP="$dip"
  sshfs root@$dip:/opt/siteiq .
  cd ..
  cd ./dbs
  echo dbs is now ready
else
  echo nothing happened
fi
