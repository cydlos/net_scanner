#!/bin/bash

read -p "Enter the base IP address (e.g., 192.168.1): " base_ip

if [ -z "$base_ip" ]; then
    echo "Error: Base IP address is required."
    exit 1
fi

for i in {1..254}
do
    ping -c 1 "$base_ip.$i" | grep ttl | cut -d " " -f 4 | cut -d ":" -f 1 &
done
