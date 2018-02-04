#!/bin/bash

# Replacement dynamic IP addresses in the file config.json

SRC=`cat /etc/shadowsocks/config.json | grep -oE '\b[0-9]{1,3}(\.[0-9]{1,3}){3}\b'`
IP=`curl -s http://whatismijnip.nl | cut -d " " -f 5`

sed -i -e "s/$SRC/$IP/g" /etc/shadowsocks/config.json
