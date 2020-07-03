#!/bin/bash
# User Create Script by CrazyOptimist

# Without a passphrase 
docker-compose run --rm openvpn easyrsa build-client-full $1 nopass

# With a passphrase
# docker-compose run --rm openvpn easyrsa build-client-full $1

# Retrieve the client credential
docker-compose run --rm openvpn ovpn_getclient $1 > $1.ovpn