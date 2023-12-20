#!/bin/bash

for i in {1..254}
do
    ping -c 1 "$1.$i" | grep ttl | cut -d " " -f 4 | cut -d ":" -f 1 &
done
