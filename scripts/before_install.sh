#!/bin/bash

DIT="/home/ec2-user/chatto-backend"
if [ -d "$DIR" ]; then
  cd /home/ec2-user
  sudo rm -rf chatto-backend
else
  echo "Directory does not exist"
fi
