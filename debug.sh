#!/bin/bash
# Debug Script by CrazyOptimist

# Export .env to use in the script 
if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

docker-compose run -e DEBUG=1 -p $HOST_PORT:1194/udp openvpn