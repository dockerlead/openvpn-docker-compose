# OpenVPN - the coolest deployment by DockerLead

I know it's not so easy as pie to setup a bug-free vpn server for daily use. <br>
I've tried to minimize the hassle for everyone. Hope you love it. <br>
Before you get started, you will need to have a server on which a UDP port is opened.

## How to get it up and running

It's pretty straightforward. Just follow this commands:
```shell
git pull https://github.com/dockerlead/openvpn-docker-compose.git
cd openvpn-docker-compose

# Check the .env.example file and feed your UDP port and public IP address
cp .env.example .env

sh init.sh
# You will be prompted asking password several times, don't freak out. :) Just use your favorite password and remember the one for this prompt, which will be used for managing users:
# "Enter pass phrase for /etc/openvpn/pki/private/ca.key:"

sh user_create.sh username01 # You can create any number of users named username01, username02, etc. Run this command as many times as you want, giving any user names you like.

docker-compose up -d
```
Boom! You got it up and running!

## List/Remove Users, Debug

```shell
sh user_list.sh
sh user_remove.sh username
sh debug.sh
```

## How to connect

Download a user cred file(.ovpn), open it to **change the UDP port** to your own one. Import the file into your client to connect.

Drop a line if any question [here](mailto:hey@crazyoptimist.net)  
Happy networking!
