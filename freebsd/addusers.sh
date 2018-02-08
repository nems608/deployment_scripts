#!/bin/sh

for userpass in $(cat userpass.txt); do
   user="${userpass%%:*}"
   pass="${userpass#*:}"
   echo "$pass" | pw useradd $user -h 0
done
