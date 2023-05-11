#!/bin/bash

echo Have you pushed your correct code to your remote repo?
read -p "Proceed?" REPLY
if [[ "$REPLY" =~ ^[Yy]$ ]]
then
  cd ~/siq/build
  mv *dist_* ../dists
  cd ~/siq/siq-edge-apps
  git checkout master
  git pull
  npm run build
  cp dist ../build
else
  echo nothing was done
fi
