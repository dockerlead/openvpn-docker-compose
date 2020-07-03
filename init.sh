#!/bin/bash
# Initialization Script by CrazyOptimist

# Export .env to use in the script 
if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

docker-compose run --rm openvpn ovpn_genconfig -u udp://$HOST_IP
docker-compose run --rm openvpn ovpn_initpki
sudo chown -R $(whoami): ./openvpn-data
