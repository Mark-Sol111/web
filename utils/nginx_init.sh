#!/bin/bash

DEFAULT_CONFIG=/etc/nginx/sites-enabled/default
MY_CONFIG=/home/box/web/etc/nginx-proxy.conf

# install proxy config
if test -f  "$DEFAULT_CONFIG"; then
    sudo rm $DEFAULT_CONFIG
    sudo cp $MY_CONFIG /etc/nginx/sites-enabled/
    echo "default deleted, nginx-proxy installed"
fi

sudo /etc/init.d/nginx restart
