#!/bin/bash

echo " 1. Removing likely former assets..."

sudo rm -rf /etc/systemd/user/rspctl-cdn-server.service 
sudo rm -rf /usr/lib/rsp/service/rspctl-cdn-server

echo " 2. Installing systemd service..."

sudo cp -rf systemd/rspctl-cdn-server.service /etc/systemd/user

echo " 3. Installing service script on rsp lib directory..."

sudo mkdir -p /usr/lib/rsp/service # ensures existente of lib/rsp/service

sudo mkdir -p /usr/lib/rsp/service/rspctl-cdn-server
sudo cp -rf service/* /usr/lib/rsp/service/rspctl-cdn-server

echo " 4. Testing service..."

systemctl restart rspctl-cdn-server.service --user
systemctl status rspctl-cdn-server.service --user

exit 0