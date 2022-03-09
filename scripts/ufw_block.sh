#!/bin/bash

IP=$1


if [[ -z "$IP" ]]; then
    echo "Usage: $0 <ip>"
    exit 1
fi

echo "blocking $IP"

sudo ufw insert 1 deny from $IP to any
