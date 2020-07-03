#!/bin/bash
# User Remove Script by CrazyOptimist

docker-compose run --rm openvpn ovpn_revokeclient $1 remove
