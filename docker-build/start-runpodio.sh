#!/bin/bash

echo "pod started"

if [[ $PUBLIC_KEY ]]
then
    mkdir -p ~/.ssh
    chmod 700 ~/.ssh
    cd ~/.ssh
    echo $PUBLIC_KEY >> authorized_keys
    chmod 700 -R ~/.ssh
    cd /
    service ssh start
    echo "ssh server listening for connections"
else
    echo "no \$PUBLIC_KEY set, not running ssh server"
fi

echo "sleeping forever"
sleep infinity
