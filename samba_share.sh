#!/bin/sh

echo "
[share]
    path=/var/share
    browsable=yes
    read only = no
    writable = yes
    create mask = 0766
    force create mode = 0766
    guest ok = yes
"
