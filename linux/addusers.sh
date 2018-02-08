#!/bin/sh

for userpass in $(cat userpass.txt); do
   user="${userpass%%:*}"
   useradd -m -s /bin/sh $user
done

chpasswd < userpass.txt
