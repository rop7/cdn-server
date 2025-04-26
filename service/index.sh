#!/bin/bash

HERE="`dirname .`"

cd $HERE;

UserCdnDirectory="$HOME/Space/public/content-delivery-network"

export UserCdnDirectory;

cd $UserCdnDirectory;

http-server . -p 12733 -a 127.0.0.1 --enable-cors;